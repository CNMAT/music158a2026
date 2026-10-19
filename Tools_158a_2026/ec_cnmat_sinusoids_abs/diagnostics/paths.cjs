/* Static path/port regression audit. Does not execute the native Max file loader.
   The nested bpatcher path context models the user's 1.2 failure log: lane
   Patcher:/ references must include dependencies/, as in the parent instrument.
   Run from any directory: node /path/to/diagnostics/paths.cjs
   Max path semantics: https://docs.cycling74.com/userguide/search_path/#path-prefixes */
'use strict';
const fs = require('fs'), path = require('path'), assert = require('assert');
const root = path.resolve(__dirname, '..');
const main = path.join(root, 'ec_cnmat_sinusoids~.maxpat');
const visited = new Set();
let checks = 0, references = 0, attachedCordEnds = 0, savedScriptFilenames = 0;
const metadataNotes = [];
const targets = new Set();
const ok = (value, label) => { assert.ok(value, label); checks++; };
const readPatch = file => JSON.parse(fs.readFileSync(file, 'utf8')).patcher;

function resolveReference(ref, context) {
  ok(ref.startsWith('Patcher:/'), 'Explicit Max patch-relative prefix: ' + ref);
  const target = path.resolve(context, ref.slice('Patcher:/'.length));
  ok(target.startsWith(root + path.sep), 'Dependency stays inside instrument folder');
  ok(fs.existsSync(target) && fs.statSync(target).isFile(), 'Dependency exists: ' + target);
  // A case-sensitive check also protects users on case-sensitive volumes.
  ok(fs.readdirSync(path.dirname(target)).includes(path.basename(target)), 'Exact filename case');
  references++; targets.add(target);
  return target;
}

function walk(p, owner, context) {
  visited.add(owner);
  const dependentPorts = new Map();
  for (const {box:b} of p.boxes || []) {
    const js = /^js\s+(\S+)/.exec(b.text || '');
    let target, inputs, outputs;
    if (js || b.maxclass === 'jsui') {
      const saved = b.saved_object_attributes?.filename;
      if (saved !== undefined) {
        ok(saved === (js ? js[1] : b.filename), b.id + ': saved filename matches visible script path');
        savedScriptFilenames++;
      }
      target = resolveReference(js ? js[1] : b.filename, context);
      const source = fs.readFileSync(target, 'utf8');
      const ins = /\binlets\s*=\s*(\d+)\s*;/.exec(source);
      const outs = /\boutlets\s*=\s*(\d+)\s*;/.exec(source);
      ok(ins && outs, 'Script declares literal port counts: ' + target);
      inputs = Number(ins[1]); outputs = Number(outs[1]);
    } else if (b.maxclass === 'bpatcher') {
      target = resolveReference(b.name, context);
      const child = readPatch(target);
      inputs = child.boxes.filter(x => x.box.maxclass === 'inlet').length;
      outputs = child.boxes.filter(x => x.box.maxclass === 'outlet').length;
      // Traverse the actual loaded hierarchy. Do not model a bpatcher as an
      // independently opened top-level document: that missed the 1.2 failure.
      walk(child, target, context);
    }
    if (target) {
      ok(b.numinlets === inputs, b.id + ': saved inlets agree with dependency');
      if (b.maxclass === 'jsui' && outputs === 0 && b.numoutlets === 1) {
        // Original ruler boxes cache one outlet; their script has zero and no
        // outgoing cords. Check all connected ports below against the script.
        metadataNotes.push(b.id + ': original cached outlet is unused; script declares zero');
      } else {
        ok(b.numoutlets === outputs, b.id + ': saved outlets agree with dependency');
      }
      dependentPorts.set(b.id, {inputs, outputs});
    }
    if (b.patcher) walk(b.patcher, owner, context);
  }
  for (const {patchline:l} of p.lines || []) {
    for (const [side, countKey] of [['source','outputs'], ['destination','inputs']]) {
      const ports = dependentPorts.get(l[side][0]);
      if (ports) {
        ok(l[side][1] >= 0 && l[side][1] < ports[countKey], 'Cord within loaded dependency ports');
        attachedCordEnds++;
      }
    }
  }
}
walk(readPatch(main), main, root);
function rejectOldFileReferences(value) {
  if (typeof value === 'string') {
    ok(!/v20[^\s"']*\.(js|maxpat|maxhelp)\b/i.test(value), 'No original v20 filename anywhere in saved patch JSON');
  } else if (value && typeof value === 'object') {
    for (const child of Object.values(value)) rejectOldFileReferences(child);
  }
}
for (const file of visited) rejectOldFileReferences(readPatch(file));
ok(savedScriptFilenames === 14, 'All fourteen saved script filename attributes audited');
// The previously shipped lane reference must fail under the reported context.
let rejectsPreviousReference = false;
try { resolveReference('Patcher:/ec_cnmat_sinusoids_envelope_memory.js', root); }
catch (e) { if (e instanceof assert.AssertionError) rejectsPreviousReference = true; else throw e; }
ok(rejectsPreviousReference, 'Regression: old lane path is rejected');
ok(references === 42, 'All 42 JS, JSUI and lane references audited');
ok(targets.size === 28, 'All 16 scripts and 12 lane patchers included');
const report = {
  result:'PASS', assertions:checks, file_references:references,
  unique_dependencies:targets.size, dependency_cord_endpoints:attachedCordEnds,
  owner_patch_files:visited.size, metadata_notes:metadataNotes,
  saved_script_filenames:savedScriptFilenames,
  previous_lane_path_rejected:rejectsPreviousReference,
  path_context:'Parent instrument folder retained while traversing bpatchers; model based on the reported Max 1.2 load failure.',
  limitations:['Static hierarchy/path and port audit; the path-context model is an inference from the user log, not execution of the native Max loader.','Private lane files are checked inside the instrument, not opened independently.'],
  documentation:'https://docs.cycling74.com/userguide/search_path/#path-prefixes'
};
fs.writeFileSync(path.join(__dirname,'path-results.json'), JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify(report,null,2));
