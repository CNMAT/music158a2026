'use strict';
// Pure Node engine; no npm dependencies. All disk writes are staged.
const fs = require('fs');
const fsp = fs.promises;
const path = require('path');
const os = require('os');
const crypto = require('crypto');
const AUDIO = new Set(['.wav', '.wave', '.aif', '.aiff', '.aifc', '.flac', '.mp3', '.ogg', '.m4a', '.caf', '.w64', '.wf64']);
const stamp = () => new Date().toISOString().replace(/[:.]/g, '-');
const equal = (a, b) => process.platform === 'win32' ? a.toLowerCase() === b.toLowerCase() : a === b;
function inside(base, target) {
  const r = path.relative(base, target);
  return r === '' || (!r.startsWith('..' + path.sep) && r !== '..' && !path.isAbsolute(r));
}
function normalize(input, platform = process.platform) {
  if (typeof input !== 'string' || !input || input.includes('\0')) throw new Error('Choose a folder first.');
  // Max conformpath slash boot handles the boot disk; external Mac volumes retain Volume:/.
  if (platform === 'darwin' && /^[^/:]+:\//.test(input)) {
    const colon = input.indexOf(':');
    input = '/Volumes/' + input.slice(0, colon) + input.slice(colon + 1);
  }
  const p = platform === 'win32' ? path.win32 : path.posix;
  if (!p.isAbsolute(input)) throw new Error('An absolute disk path is required: ' + input);
  return p.normalize(input);
}
async function exists(p) { try { await fsp.lstat(p); return true; } catch (e) { if (e.code === 'ENOENT') return false; throw e; } }
async function dir(p) {
  p = normalize(p);
  const s = await fsp.lstat(p);
  if (s.isSymbolicLink() || !s.isDirectory()) throw new Error('Choose a real folder, not a file or symbolic link.');
  return fsp.realpath(p);
}
// savedialog fold can return a new path or a folder created inside the dialog.
// Resolve the existing parent so a new folder can be saved on any mounted disk.
async function destination(input) {
  const requested = path.resolve(normalize(input));
  if (await exists(requested)) {
    const target = await dir(requested), stat = await fsp.stat(target);
    return {target, existed: true, empty: (await fsp.readdir(target)).length === 0,
      dev: stat.dev, ino: stat.ino, mtimeMs: stat.mtimeMs};
  }
  const parent = await dir(path.dirname(requested));
  return {target: path.join(parent, path.basename(requested)), existed: false, empty: true};
}
const filenameKey = name => name.normalize('NFC').toLowerCase();
function flatName(rel, used, reserved) {
  const base = path.basename(rel);
  if (!used.has(filenameKey(base))) return base;
  const ext = path.extname(base), stem = base.slice(0, base.length - ext.length);
  for (let number = 2; ; number++) {
    const suffix = ' (' + number + ')' + ext;
    const letters = Array.from(stem);
    while (Buffer.byteLength(letters.join('') + suffix, 'utf8') > 255) letters.pop();
    const candidate = letters.join('') + suffix, key = filenameKey(candidate);
    if (!used.has(key) && !reserved.has(key)) return candidate;
  }
}
async function scan(root, report = () => {}) {
  const records = [], warnings = [];
  const stack = [''];
  let visited = 0;
  while (stack.length) {
    const rel = stack.pop();
    let entries;
    try { entries = await fsp.readdir(path.join(root, rel), {withFileTypes: true}); }
    catch (e) { if (!rel) throw e; warnings.push(rel + ': ' + e.message); continue; }
    for (const entry of entries) {
      const next = path.join(rel, entry.name);
      // Skip OS resource forks; include real hidden folders and audio files.
      if (entry.name.startsWith('._') || entry.name === '.DS_Store' || entry.name === '.AppleDouble' || entry.name === '__MACOSX') continue;
      if (entry.isSymbolicLink()) { warnings.push(next + ': symbolic link skipped'); continue; }
      if (entry.isDirectory()) stack.push(next);
      else if (entry.isFile() && AUDIO.has(path.extname(entry.name).toLowerCase())) records.push(next);
    }
    if (++visited % 25 === 0) report('Scanning: ' + records.length + ' soundfiles in ' + visited + ' folders…');
  }
  records.sort((a, b) => a.localeCompare(b, undefined, {numeric: true, sensitivity: 'base'}) || a.localeCompare(b));
  return {records, warnings};
}
async function digest(filename) {
  const hash = crypto.createHash('sha256');
  for await (const chunk of fs.createReadStream(filename)) hash.update(chunk);
  return hash.digest('hex');
}
async function verifiedCopy(source, destination, root) {
  // Reject changed paths/links and paths escaping the chosen source root.
  const real = await fsp.realpath(source);
  const before = await fsp.lstat(source);
  if (!before.isFile() || before.isSymbolicLink() || !inside(root, real)) throw new Error('Source is missing, linked, or outside the source folder: ' + source);
  await fsp.mkdir(path.dirname(destination), {recursive: true});
  await fsp.copyFile(source, destination, fs.constants.COPYFILE_EXCL);
  const [a, b] = await Promise.all([digest(source), digest(destination)]);
  const after = await fsp.stat(source);
  if (a !== b || before.size !== after.size || before.mtimeMs !== after.mtimeMs || before.ino !== after.ino) {
    throw new Error('Source changed during export or copy verification failed: ' + source);
  }
  return b;
}
class Sorter {
  constructor(emit = () => {}, options = {}) {
    this.emit = emit;
    this.packageDir = options.packageDir || __dirname;
    this.copy = options.copy || verifiedCopy;
    this.root = ''; this.files = []; this.preferred = [];
    this.selected = {available: -1, preferred: -1}; this.current = null;
    this.pending = null; this.busy = false; this.revision = 0;
    this.cued = false; this.availableAnchor = null;
  }
  status(s) { this.emit('status', s); }
  available() { const keep = new Set(this.preferred); return this.files.filter(f => !keep.has(f)); }
  state() { this.emit('state', JSON.stringify({root: this.root, available: this.available(), preferred: this.preferred,
    selected: this.selected, current: this.current, cued: this.cued, busy: this.busy, pending: !!this.pending})); }
  invalidate() { this.revision++; this.pending = null; this.emit('review', 'No export pending.'); }
  idle() { if (this.busy) throw new Error('Please wait for the current scan or export to finish.'); }
  async exclusive(action) {
    this.idle(); this.busy = true; this.state();
    try { return await action(); } finally { this.busy = false; this.state(); }
  }
  async load(input) {
    return this.exclusive(async () => {
      const root = await dir(input);
      this.status('Scanning all subfolders…');
      const result = await scan(root, s => this.status(s));
      const same = equal(root, this.root);
      this.invalidate(); this.emit('stop'); this.root = root; this.files = result.records;
      this.preferred = same ? Array.from(new Set(this.preferred.filter(f => this.files.includes(f)))) : [];
      this.current = null; this.cued = false; this.availableAnchor = null; this.selected = {available: -1, preferred: -1};
      // Seed both the displayed menu and the audition transport while the scan
      // still owns the busy lock. An empty source sends no play command.
      const available = this.available();
      const which = available.length ? 'available' : 'preferred';
      const first = available.length ? available[0] : this.preferred[0];
      if (first !== undefined) {
        this.selected[which] = 0;
        if (which === 'available') this.availableAnchor = first;
        this.current = {which, rel: first};
        this.cued = true;
        this.state();
        this.emit('cue', path.join(this.root, first));
      }
      this.status(this.files.length + ' soundfiles loaded.' + (this.cued ? ' First sample cued. Press Next Sample or Right Arrow to play.' : '') + (same ? ' Existing preferences retained.' : ' New folder; preferences cleared.') +
        (result.warnings.length ? ' ' + result.warnings.length + ' scan warnings; see Max Console.' : ''));
      result.warnings.forEach(w => this.emit('log', w));
    });
  }
  select(which, index) {
    this.idle();
    if (which !== 'available' && which !== 'preferred') throw new Error('Unknown menu.');
    const list = which === 'available' ? this.available() : this.preferred;
    index = Number(index);
    if (!Number.isInteger(index) || index < 0 || index >= list.length) return;
    this.cued = false;
    this.selected[which] = index; this.current = {which, rel: list[index]};
    if (which === 'available') this.availableAnchor = list[index];
    this.state(); this.emit('play', path.join(this.root, list[index]));
  }
  step(which, offset) {
    const list = which === 'available' ? this.available() : this.preferred;
    if (!list.length) return;
    const old = this.selected[which];
    // The first forward gesture auditions the cued item instead of skipping it.
    if (offset > 0 && this.cued && this.current && this.current.which === which && list[old] === this.current.rel) {
      this.select(which, old);
      return;
    }
    // If the auditioned item was just kept, continue from its original source
    // position on the next manual step, without changing selection in Keep.
    if (which === 'available' && this.availableAnchor && !list.includes(this.availableAnchor)) {
      const anchor = this.files.indexOf(this.availableAnchor);
      if (anchor >= 0) {
        const remaining = new Set(list), direction = offset < 0 ? -1 : 1;
        for (let distance = 1; distance <= this.files.length; distance++) {
          const rel = this.files[(anchor + direction * distance + this.files.length) % this.files.length];
          if (remaining.has(rel)) { this.select(which, list.indexOf(rel)); return; }
        }
      }
    }
    this.select(which, old < 0 ? (offset < 0 ? list.length - 1 : 0) : (old + offset + list.length) % list.length);
  }
  keep() {
    this.idle();
    if (!this.current) throw new Error('Select a sound in Available before clicking Keep.');
    const rel = this.current.rel;
    // An existing member is a no-op, including repeated button messages and
    // stale requests for a file that has already moved to Preferred.
    if (this.preferred.includes(rel)) {
      this.status('Already in Preferred: ' + rel);
      return;
    }
    if (this.current.which !== 'available' || !this.files.includes(rel)) throw new Error('Select a sound in Available before clicking Keep.');
    this.preferred = Array.from(new Set(this.preferred.concat(rel)));
    this.selected.preferred = this.preferred.indexOf(rel);
    this.availableAnchor = rel;
    this.current = {which: 'preferred', rel}; this.cued = false; this.selected.available = -1; this.invalidate();
    this.state(); this.status('Kept: ' + rel);
  }
  remove() {
    this.idle();
    if (!this.current || this.current.which !== 'preferred') throw new Error('Select a sound in Preferred before clicking Return.');
    const rel = this.current.rel;
    this.preferred = this.preferred.filter(f => f !== rel);
    this.selected.preferred = -1; this.current = {which: 'available', rel};
    this.availableAnchor = rel;
    this.selected.available = this.available().indexOf(rel); this.invalidate(); this.state(); this.status('Returned to Available: ' + rel);
  }
  replay() {
    this.idle();
    if (this.current) {
      this.cued = false; this.state();
      this.emit('play', path.join(this.root, this.current.rel));
    }
  }
  snapshot() {
    if (!this.root || !this.preferred.length) throw new Error('Preferred is empty. Keep at least one sound before exporting.');
    return {root: this.root, files: Array.from(new Set(this.preferred)), revision: this.revision};
  }
  async validateTarget(target, replace, snapshot) {
    // A new/empty folder can be anywhere writable, including inside the source.
    // Replacing existing contents retains the original protections and backup.
    if (!replace) return;
    if (equal(target, path.parse(target).root) || equal(target, await fsp.realpath(os.homedir()))) throw new Error('A disk root or home folder cannot be replaced.');
    const pkg = await fsp.realpath(this.packageDir);
    if (inside(target, pkg)) throw new Error('The target contains Sample Sorter itself. Choose another folder.');
    if (equal(target, snapshot.root)) {
      if (!replace) throw new Error('Use Replace for the source folder.');
    } else if (inside(snapshot.root, target) || inside(target, snapshot.root)) {
      throw new Error('Choose a folder outside the source tree, or choose the exact source folder for replacement.');
    }
  }
  async planReplace(input) {
    return this.exclusive(async () => {
      this.pending = null; this.emit('review', 'No export pending.');
      const s = this.snapshot(), chosen = await destination(input);
      const replace = chosen.existed && !chosen.empty;
      await this.validateTarget(chosen.target, replace, s);
      this.pending = {...s, ...chosen, replace};
      this.emit('review', (replace ? 'REPLACE: ' : 'SAVE: ') + chosen.target + '\n' +
        s.files.length + ' Preferred entries → one flat folder; identical copies saved once. ' +
        (replace ? 'Old folder retained as a sibling backup. ' : '') + 'Click CONFIRM EXPORT.');
      this.status('Review the target below. Nothing has been written yet.');
    });
  }
  cancelReplace() { this.idle(); this.pending = null; this.emit('review', 'No export pending.'); this.state(); this.status('Export selection cleared.'); }
  async exportNew(input) {
    return this.exclusive(async () => {
      const snapshot = this.snapshot(), chosen = await destination(input);
      if (chosen.existed && !chosen.empty) throw new Error('That folder is not empty. Choose a new name, or use Choose / create folder to review a replacement.');
      await this.validateTarget(chosen.target, false, snapshot);
      this.invalidate();
      return this.write({...snapshot, ...chosen}, chosen.target, false);
    });
  }
  async confirmReplace() {
    return this.exclusive(async () => {
      const p = this.pending;
      if (!p || p.revision !== this.revision) throw new Error('Choose and review a destination folder first.');
      this.pending = null; this.emit('review', 'Export in progress…');
      await this.checkDestination(p);
      await this.validateTarget(p.target, p.replace, p);
      // Close sfplay~ before replacing a directory that could contain the open file.
      if (p.replace) {
        this.emit('stop');
        await new Promise(resolve => setTimeout(resolve, 150));
      }
      return this.write(p, p.target, p.replace);
    });
  }
  async checkDestination(chosen) {
    if (!chosen.existed) {
      if (await exists(chosen.target)) throw new Error('Target changed: this folder now exists. Choose and review it again.');
      return;
    }
    const target = await dir(chosen.target), stat = await fsp.stat(target);
    if (!equal(target, chosen.target) || stat.dev !== chosen.dev || stat.ino !== chosen.ino || stat.mtimeMs !== chosen.mtimeMs ||
        (chosen.empty && (await fsp.readdir(target)).length)) {
      throw new Error('Target changed since review. Review it again.');
    }
  }
  async write(snapshot, target, replace) {
    const parent = path.dirname(target);
    const stage = await fsp.mkdtemp(path.join(parent, '.sample-sorter-stage-'));
    let backup = null, committed = false, duplicates = 0;
    const entries = [], hashes = new Set(), used = new Set();
    const files = Array.from(new Set(snapshot.files));
    const reserved = new Set(files.map(rel => filenameKey(path.basename(rel))));
    try {
      for (let i = 0; i < files.length; i++) {
        const rel = files[i];
        if (path.isAbsolute(rel) || !inside(snapshot.root, path.resolve(snapshot.root, rel)) || !AUDIO.has(path.extname(rel).toLowerCase())) throw new Error('Invalid relative soundfile path.');
        const name = flatName(rel, used, reserved), output = path.join(stage, name);
        this.status('Copying and verifying ' + (i + 1) + ' / ' + files.length + ': ' + rel);
        const hash = await this.copy(path.join(snapshot.root, rel), output, snapshot.root) || await digest(output);
        // Compare verified file contents, not just filenames. Distinct sounds
        // with the same basename get a suffix; byte-identical copies occur once.
        if (hashes.has(hash)) {
          await fsp.unlink(output); duplicates++;
          this.emit('log', 'Duplicate copy skipped: ' + rel);
          continue;
        }
        hashes.add(hash); used.add(filenameKey(name)); entries.push({source: rel, name});
      }
      await this.checkDestination(snapshot);
      if (snapshot.existed) {
        backup = target + '.backup-' + stamp() + '-' + crypto.randomBytes(3).toString('hex');
        if (await exists(backup)) throw new Error('Backup name already exists. Try again.');
        await fsp.rename(target, backup);
        try { await fsp.rename(stage, target); committed = true; }
        catch (e) {
          try { await fsp.rename(backup, target); backup = null; }
          catch (restoreError) { throw new Error('Could not install new folder. Original is safe at ' + backup + '. Restore error: ' + restoreError.message); }
          throw e;
        }
      } else {
        await fsp.rename(stage, target); committed = true;
      }
      // A folder just created in the native dialog has no old contents to keep.
      // rmdir (never recursive removal) leaves any unexpectedly added files safe.
      if (backup && snapshot.empty) {
        try { await fsp.rmdir(backup); backup = null; }
        catch (e) { this.emit('log', 'Previous folder retained at: ' + backup); }
      }
      if (replace && equal(target, this.root)) {
        this.files = entries.map(entry => entry.name); this.preferred = this.files.slice();
        this.selected = {available: -1, preferred: -1}; this.current = null; this.cued = false; this.availableAnchor = null; this.revision++;
      }
      const result = 'Exported ' + entries.length + ' unique soundfiles to: ' + target +
        (duplicates ? '\nSkipped ' + duplicates + ' byte-identical duplicate' + (duplicates === 1 ? '.' : 's.') : '') +
        (backup ? '\nOriginal folder retained at: ' + backup : '');
      this.emit('result', result); this.emit('review', 'No export pending.'); this.status('Export complete: ' + entries.length + ' unique soundfiles, no subfolders.');
      this.emit('log', result); return {target, backup, count: entries.length, duplicates, entries};
    } catch (e) {
      this.emit('review', 'No export pending.'); throw e;
    } finally {
      if (!committed) await fsp.rm(stage, {recursive: true, force: true}).catch(e => this.emit('log', 'Temporary folder cleanup failed: ' + stage + ': ' + e.message));
    }
  }
}
module.exports = {Sorter, scan, normalize, inside, verifiedCopy};
