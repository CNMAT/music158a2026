'use strict';
// Real filesystem integration checks; all inputs/outputs are disposable.
const assert = require('assert').strict;
const fs = require('fs').promises;
const os = require('os');
const path = require('path');
const {Sorter, verifiedCopy} = require('../sample_sorter_core');
let total = 0;
async function check(name, fn) { await fn(); total++; console.log('PASS ' + name); }
async function absent(p) { await assert.rejects(fs.stat(p), {code:'ENOENT'}); }
async function flat(p) {
  const entries = await fs.readdir(p, {withFileTypes:true});
  assert(entries.every(e=>e.isFile()), 'export has only files, no directories');
  return entries.map(e=>e.name).sort();
}
async function keepAll(sorter) {
  while(sorter.available().length) { sorter.select('available',0); sorter.keep(); }
}
(async () => {
  const tmp = await fs.mkdtemp(path.join(os.tmpdir(),'sample-sorter-flat-'));
  try {
    const root = path.join(tmp,'Source'), output = path.join(tmp,'Elsewhere');
    await fs.mkdir(root); await fs.mkdir(output);
    const inputs = {
      'A/Hit.wav':'sound A', 'B/Hit.wav':'sound B', 'C/hit.WAV':'sound C',
      'D/Hit (2).wav':'literal suffix', 'E/identical copy.wav':'sound A',
      'F/écho.wav':'accent A', 'G/e\u0301cho.wav':'accent B',
      'H/音, "quoted" $name.wav':'unicode name', 'A/ignore.txt':'not audio'
    };
    for (const [rel,bytes] of Object.entries(inputs)) {
      await fs.mkdir(path.dirname(path.join(root,rel)),{recursive:true});
      await fs.writeFile(path.join(root,rel),bytes);
    }
    const events = [], s = new Sorter((t,v)=>events.push([t,v]));
    await s.load(root);await keepAll(s);
    await check('new Save dialog path becomes the exact folder name; flat, content-unique, collision-safe', async () => {
      const target=path.join(output,'My named collection 音');
      s.preferred.push(s.preferred[0]); // Defensive export guard for stale state.
      const r=await s.exportNew(target);
      assert.equal(r.target,target);assert.equal(r.count,7);assert.equal(r.duplicates,1);assert.equal(r.backup,null);
      assert.equal((await flat(target)).length,7);
      const names=r.entries.map(e=>e.name), keys=names.map(n=>n.normalize('NFC').toLowerCase());
      assert.equal(new Set(keys).size,names.length);
      assert(names.includes('Hit.wav')&&names.includes('Hit (2).wav')&&names.includes('Hit (3).wav'));
      const contents=[];
      for (const e of r.entries) {
        const bytes=await fs.readFile(path.join(target,e.name),'utf8');
        assert.equal(bytes,inputs[e.source.split(path.sep).join('/')]);contents.push(bytes);
      }
      assert.equal(new Set(contents).size,contents.length);
      assert.equal(contents.filter(b=>b==='sound A').length,1);
      assert(!contents.includes('not audio'));
      assert(events.some(([t,v])=>t==='result'&&v.includes('Skipped 1 byte-identical duplicate')));
    });
    await check('review accepts a nonexistent destination; confirmation creates it without playback', async () => {
      const target=path.join(output,'Reviewed new folder');
      await s.planReplace(target);assert(s.pending);assert.equal(s.pending.replace,false);
      await absent(target);
      assert(events.some(([t,v])=>t==='review'&&v.startsWith('SAVE: '+target)));
      const before=events.filter(([t])=>['play','cue','stop'].includes(t)).length;
      const r=await s.confirmReplace();assert.equal(r.target,target);assert.equal(r.count,7);
      assert.equal(events.filter(([t])=>['play','cue','stop'].includes(t)).length,before);
      assert.equal((await flat(target)).length,7);
    });
    await check('folder newly created inside native dialog is accepted with no extra folder or empty backup', async () => {
      const target=path.join(output,'Created by dialog');await fs.mkdir(target);
      await s.planReplace(target);assert.equal(s.pending.replace,false);
      const r=await s.confirmReplace();assert.equal(r.backup,null);assert.equal((await flat(target)).length,7);
      assert(!(await fs.readdir(output)).some(n=>n.startsWith('Created by dialog.backup-')));
    });
    await check('new destination may be inside the source tree', async () => {
      const target=path.join(root,'My exported collection');const r=await s.exportNew(target);
      assert.equal(r.target,target);assert.equal((await flat(target)).length,7);
    });
    await check('cancel clears a reviewed new path and never creates it', async () => {
      const target=path.join(output,'Canceled');await s.planReplace(target);s.cancelReplace();
      await assert.rejects(s.confirmReplace(),/review/);await absent(target);
    });
    await check('a new target appearing after review is preserved and requires a fresh review', async () => {
      const target=path.join(output,'Appeared after review');await s.planReplace(target);
      await fs.mkdir(target);await fs.writeFile(path.join(target,'unrelated.txt'),'KEEP');
      await assert.rejects(s.confirmReplace(),/changed/);
      assert.equal(await fs.readFile(path.join(target,'unrelated.txt'),'utf8'),'KEEP');
    });
    await check('an empty dialog folder populated after review is never silently replaced', async () => {
      const target=path.join(output,'Changed empty folder');await fs.mkdir(target);await s.planReplace(target);
      await fs.writeFile(path.join(target,'unrelated.txt'),'KEEP');
      await assert.rejects(s.confirmReplace(),/changed/);
      assert.equal(await fs.readFile(path.join(target,'unrelated.txt'),'utf8'),'KEEP');
    });
    await check('new export copy failure leaves no destination or partial stage', async () => {
      const target=path.join(output,'Copy failed');
      const bad=new Sorter(()=>{}, {copy:async(...args)=>{await verifiedCopy(...args);throw new Error('simulated disk failure');}});
      await bad.load(root);bad.select('available',0);bad.keep();
      await assert.rejects(bad.exportNew(target),/simulated disk failure/);await absent(target);
      assert(!(await fs.readdir(output)).some(n=>n.startsWith('.sample-sorter-stage-')));
    });
    await check('target appearing during copying is preserved and no stage remains', async () => {
      const target=path.join(output,'Appeared while copying');
      const late=new Sorter(()=>{}, {copy:async(...args)=>{
        const hash=await verifiedCopy(...args);await fs.mkdir(target);await fs.writeFile(path.join(target,'other.txt'),'KEEP');return hash;
      }});
      await late.load(root);late.select('available',0);late.keep();
      await assert.rejects(late.exportNew(target),/changed/);
      assert.equal(await fs.readFile(path.join(target,'other.txt'),'utf8'),'KEEP');
      assert(!(await fs.readdir(output)).some(n=>n.startsWith('.sample-sorter-stage-')));
    });
    await check('flattened replacement keeps all former contents in sibling backup', async () => {
      const target=path.join(output,'Replace collection');await fs.mkdir(path.join(target,'old subfolder'),{recursive:true});
      await fs.writeFile(path.join(target,'old subfolder','old.wav'),'OLD');
      await assert.rejects(s.exportNew(target),/not empty/);
      await s.planReplace(target);assert.equal(s.pending.replace,true);
      const r=await s.confirmReplace();assert.equal((await flat(target)).length,7);
      assert.equal(await fs.readFile(path.join(r.backup,'old subfolder','old.wav'),'utf8'),'OLD');
      assert.equal(path.dirname(r.backup),path.dirname(target));
    });
    await check('flattening the source rebases all preferred names and removes duplicate copies from menus', async () => {
      // Avoid rescanning the export made inside root: only the original selection is kept.
      await s.planReplace(root);const r=await s.confirmReplace();
      assert.equal(r.count,7);assert.equal(s.available().length,0);
      assert.deepEqual(s.preferred,r.entries.map(e=>e.name));assert.equal(s.preferred.length,7);
      assert.equal((await flat(root)).length,7);
      assert.equal(await fs.readFile(path.join(r.backup,'A','Hit.wav'),'utf8'),'sound A');
      for(let i=0;i<s.preferred.length;i++) {
        s.select('preferred',i);const filename=events.at(-1)[1];
        assert.equal(path.dirname(filename),root);assert((await fs.stat(filename)).isFile());
      }
      s.remove();assert.equal(s.available().length,1);s.keep();assert.equal(s.preferred.length,7);
    });
    await check('collision suffixes respect long filename limits', async () => {
      const source=path.join(tmp,'Long names'), name='音'.repeat(80)+'.wav';
      await fs.mkdir(path.join(source,'one'),{recursive:true});await fs.mkdir(path.join(source,'two'));
      await fs.writeFile(path.join(source,'one',name),'first');await fs.writeFile(path.join(source,'two',name),'second');
      const long=new Sorter();await long.load(source);await keepAll(long);
      const r=await long.exportNew(path.join(output,'Long filenames'));assert.equal(r.count,2);
      for(const n of await flat(r.target))assert(Buffer.byteLength(n,'utf8')<=255);
    });
    console.log('\n'+total+' flat-export integration checks passed.');
  } finally {await fs.rm(tmp,{recursive:true,force:true});}
})().catch(e=>{console.error(e);process.exitCode=1;});
