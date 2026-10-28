'use strict';
const assert = require('assert').strict;
const fs = require('fs').promises;
const os = require('os');
const path = require('path');
const {Sorter, scan, normalize, verifiedCopy} = require('../sample_sorter_core');
let total = 0;
async function check(name, fn) { await fn(); total++; console.log('PASS ' + name); }
async function files(root, rel = '') {
  const result = [];
  for (const e of await fs.readdir(path.join(root, rel), {withFileTypes: true})) {
    const p = path.join(rel, e.name);
    if (e.isDirectory()) result.push(...await files(root, p)); else result.push(p);
  }
  return result.sort();
}
(async () => {
 const tmp = await fs.mkdtemp(path.join(os.tmpdir(), 'sample-sorter-test-'));
 try {
  const root = path.join(tmp, 'sounds with spaces'), dest = path.join(tmp, 'exports');
  await fs.mkdir(path.join(root, 'deep', 'nested'), {recursive:true}); await fs.mkdir(dest);
  const input = {'hit.wav': Buffer.from([0,1,255,2]), 'deep/hit.wav': Buffer.from([8,3,0,7]),
    'deep/nested/音, "quote" $test.WAV': Buffer.from([5,6,7]), 'stereo.aiff': Buffer.from([1,0,4]),
    'notes.txt': Buffer.from('not audio'), '.hidden.wav': Buffer.from('hidden'), '._hit.wav': Buffer.from('resource fork')};
  for (const [name, data] of Object.entries(input)) await fs.writeFile(path.join(root,name), data);
  await fs.symlink(root, path.join(root, 'loop'));
  let events = []; const s = new Sorter((t, v) => events.push([t, v]));
  await check('recursive scan, mixed case extensions, hidden audio, resource-fork filtering and symlink cycle', async () => {
    const r = await scan(root); assert.equal(r.records.length, 5); assert.equal(r.warnings.length,1);
    assert(r.records.includes(path.join('deep', 'nested', '音, "quote" $test.WAV')));
  });
  await s.load(root);
  await check('startup selects and silently cues the first file; first Next plays it', async () => {
    assert.equal(s.selected.available, 0);
    assert.deepEqual(s.current, {which:'available', rel:s.available()[0]});
    assert.equal(events.filter(e=>e[0]==='cue').at(-1)[1], path.join(root,s.available()[0]));
    assert.equal(events.filter(e=>e[0]==='play').length,0);assert.equal(s.cued,true);
    const selectedState=events.filter(e=>e[0]==='state').map(e=>JSON.parse(e[1])).at(-1);
    assert.equal(selectedState.selected.available,0);assert.equal(selectedState.busy,false);
    s.step('available',1);assert.equal(s.current.rel,s.available()[0]);assert.equal(s.cued,false);
    assert.equal(events.filter(e=>e[0]==='play').at(-1)[1],path.join(root,s.available()[0]));
    s.step('available',1);assert.equal(s.current.rel,s.available()[1]);
  });
  await check('every rescan remains silent, including after an explicit audition', async () => {
    const e=[];const start=new Sorter((t,v)=>e.push([t,v]));
    await start.load(root);await start.load(root);
    assert.equal(e.filter(v=>v[0]==='play').length,0);assert.equal(start.cued,true);
    start.step('available',1);assert.equal(start.current.rel,start.available()[0]);
    const count=e.filter(v=>v[0]==='play').length;
    await start.load(root);assert.equal(start.cued,true);assert.equal(e.filter(v=>v[0]==='play').length,count);
    start.step('available',1);assert.equal(start.current.rel,start.available()[0]);
    assert.equal(e.filter(v=>v[0]==='play').length,count+1);
  });
  await check('switching to a new folder stops the old sound and silently cues the new first item', async () => {
    const second=path.join(tmp,'second sound folder');await fs.mkdir(second);
    await fs.writeFile(path.join(second,'01 first.wav'),'first');await fs.writeFile(path.join(second,'02 second.wav'),'second');
    const e=[];const sorter=new Sorter((t,v)=>e.push([t,v]));
    await sorter.load(root);sorter.select('available',2);e.length=0;
    await sorter.load(second);
    assert.equal(sorter.selected.available,0);assert.equal(sorter.current.rel,'01 first.wav');assert.equal(sorter.cued,true);
    assert.equal(e.filter(v=>v[0]==='play').length,0);
    const transport=e.filter(v=>v[0]==='stop'||v[0]==='cue');
    assert.deepEqual(transport,[['stop',undefined],['cue',path.join(second,'01 first.wav')]]);
    sorter.step('available',1);assert.equal(sorter.current.rel,'01 first.wav');
    assert.equal(e.filter(v=>v[0]==='play').at(-1)[1],path.join(second,'01 first.wav'));
    sorter.step('available',1);assert.equal(sorter.current.rel,'02 second.wav');
  });
  await check('Replay, manual selection and Previous exit the startup cue correctly', async () => {
    const start=new Sorter();await start.load(root);start.replay();
    assert.equal(start.cued,false);assert.equal(start.current.rel,start.available()[0]);
    start.step('available',1);assert.equal(start.current.rel,start.available()[1]);
    const manual=new Sorter();await manual.load(root);manual.select('available',2);manual.step('available',1);
    assert.equal(manual.current.rel,manual.available()[3]);
    const backward=new Sorter();await backward.load(root);backward.step('available',-1);
    assert.equal(backward.current.rel,backward.available().at(-1));assert.equal(backward.cued,false);
  });
  await check('Stop before startup audition keeps the first forward gesture on the cued file', async () => {
    const start=new Sorter();await start.load(root);start.emit('stop');
    start.step('available',1);assert.equal(start.current.rel,start.available()[0]);
  });
  await check('menu selection emits the exact original path; duplicate basenames stay distinct', async () => {
    s.select('available', s.available().indexOf('hit.wav')); assert.equal(events.at(-1)[1], path.join(root, 'hit.wav'));
    s.select('available', s.available().indexOf(path.join('deep','hit.wav'))); assert.equal(events.at(-1)[1], path.join(root,'deep','hit.wav'));
  });
  await check('Keep moves one item without playing or advancing; Return restores it', async () => {
    const before=events.filter(e=>['play','cue','stop'].includes(e[0])).length;const rel=s.current.rel;
    s.keep(); assert.equal(s.preferred.length,1); assert.equal(s.available().length,4); assert.equal(s.current.which,'preferred');
    assert.equal(s.current.rel,rel);assert.equal(events.filter(e=>['play','cue','stop'].includes(e[0])).length,before);
    s.select('preferred',0); s.remove(); assert.equal(s.preferred.length,0); assert.equal(s.available().length,5);
  });
  await check('repeated and stale Keep requests cannot create duplicate preferred entries', async () => {
    const seen=[];const unique=new Sorter((t,v)=>seen.push([t,v]));await unique.load(root);
    unique.select('available',1);const rel=unique.current.rel;
    const count=seen.filter(e=>e[0]==='play').length;
    unique.keep();for(let i=0;i<100;i++)unique.keep();
    unique.current={which:'available',rel};unique.keep();
    assert.deepEqual(unique.preferred,[rel]);assert.equal(seen.filter(e=>e[0]==='play').length,count);
    unique.preferred.push(rel);assert.deepEqual(unique.snapshot().files,[rel]);
    await unique.load(root);assert.deepEqual(unique.preferred,[rel]);
    unique.select('preferred',0);unique.remove();unique.keep();assert.deepEqual(unique.preferred,[rel]);
  });
  await check('manual Next/Previous continue from the kept source position without automatic advance', async () => {
    const forward=new Sorter();await forward.load(root);const original=forward.available();
    forward.select('available',2);forward.keep();assert.equal(forward.current.rel,original[2]);
    forward.step('available',1);assert.equal(forward.current.rel,original[3]);
    const backward=new Sorter();await backward.load(root);backward.select('available',2);backward.keep();
    backward.step('available',-1);assert.equal(backward.current.rel,original[1]);
    const wrap=new Sorter();await wrap.load(root);wrap.select('available',original.length-1);wrap.keep();
    wrap.step('available',1);assert.equal(wrap.current.rel,original[0]);
  });
  await check('empty exports and invalid selection do not write files', async () => {
    await assert.rejects(s.exportNew(dest), /empty/); assert.deepEqual(await fs.readdir(dest),[]);
    s.select('available',99999); assert.equal(s.preferred.length,0);
  });
  for (const rel of ['hit.wav',path.join('deep','hit.wav'),path.join('deep','nested','音, "quote" $test.WAV')]) {
    s.select('available',s.available().indexOf(rel));s.keep();
  }
  await check('export uses the exact named folder with flat preferred audio and verified bytes', async () => {
    const result = await s.exportNew(dest);
    assert.equal(result.target,dest);
    assert.deepEqual(await files(result.target),result.entries.map(e=>e.name).sort());
    assert((await fs.readdir(result.target,{withFileTypes:true})).every(e=>e.isFile()));
    for (const e of result.entries) assert.deepEqual(await fs.readFile(path.join(result.target,e.name)),await fs.readFile(path.join(root,e.source)));
    assert.deepEqual(result.entries.map(e=>e.name),['hit.wav','hit (2).wav','音, \"quote\" $test.WAV']);
    assert.equal(await fs.readFile(path.join(root,'notes.txt'),'utf8'),'not audio');
  });
  await check('rescan retains preferences and new source resets them', async () => {
    await s.load(root); assert.equal(s.preferred.length,3);
    const other = path.join(tmp,'other');await fs.mkdir(other);await fs.writeFile(path.join(other,'new.wav'),'NEW');
    await s.load(other);assert.equal(s.preferred.length,0);await s.load(root);
    s.select('available',s.available().indexOf('hit.wav'));s.keep();
  });
  await check('direct save cannot overwrite contents; replacement blocks source ancestors and populated descendants', async () => {
    await assert.rejects(s.exportNew(root), /not empty/);
    await assert.rejects(s.planReplace(tmp), /outside/);
    await assert.rejects(s.planReplace(path.join(root,'deep')), /outside/);
  });
  const replacement = path.join(tmp,'replace me');await fs.mkdir(replacement);await fs.writeFile(path.join(replacement,'old.txt'),'KEEP BACKUP');
  await check('replacement review is read-only; cancel blocks confirmation', async () => {
    await s.planReplace(replacement);assert(s.pending);assert.equal(await fs.readFile(path.join(replacement,'old.txt'),'utf8'),'KEEP BACKUP');
    s.cancelReplace();await assert.rejects(s.confirmReplace(), /review/);
  });
  await check('editing preferred list invalidates an earlier replacement review', async () => {
    await s.planReplace(replacement);s.select('available',0);s.keep();assert.equal(s.pending,null);
    await assert.rejects(s.confirmReplace(), /review/);
  });
  await check('replacement retains the entire old folder as a backup', async () => {
    await s.planReplace(replacement);const r = await s.confirmReplace();
    assert.equal(await fs.readFile(path.join(r.backup,'old.txt'),'utf8'),'KEEP BACKUP');
    assert.deepEqual(await files(replacement), r.entries.map(e=>e.name).sort());
  });
  await check('missing source aborts before target changes and removes staging files', async () => {
    await s.planReplace(replacement);
    await fs.rename(path.join(root,'hit.wav'),path.join(root,'temporarily-unavailable'));
    const before=await files(replacement);await assert.rejects(s.confirmReplace(), /ENOENT/);
    assert.deepEqual(await files(replacement),before);
    assert(!(await fs.readdir(tmp)).some(f=>f.startsWith('.sample-sorter-stage-')));
    await fs.rename(path.join(root,'temporarily-unavailable'),path.join(root,'hit.wav'));
  });
  await check('a changed target requires a fresh review', async () => {
    await s.planReplace(replacement);
    const t = new Date(Date.now()+10000);await fs.utimes(replacement,t,t);
    await assert.rejects(s.confirmReplace(), /changed/);
  });
  await check('disk-copy failure preserves old contents and removes partial stage', async () => {
    const bad = new Sorter(()=>{}, {copy: async (...args) => { await verifiedCopy(...args);throw new Error('simulated disk error'); }});
    await bad.load(root);bad.select('available',0);bad.keep();await bad.planReplace(replacement);
    const before=await files(replacement);await assert.rejects(bad.confirmReplace(),/simulated disk error/);assert.deepEqual(await files(replacement),before);
    assert(!(await fs.readdir(tmp)).some(f=>f.startsWith('.sample-sorter-stage-')));
  });
  await check('failed final rename rolls the original folder back', async () => {
    await s.planReplace(replacement);const originalRename=fs.rename; const before=await files(replacement);
    fs.rename=async(a,b)=>{if(path.basename(a).startsWith('.sample-sorter-stage-')&&b===replacement)throw new Error('simulated rename failure');return originalRename(a,b);};
    try {await assert.rejects(s.confirmReplace(),/simulated rename failure/);} finally {fs.rename=originalRename;}
    assert.deepEqual(await files(replacement),before);
  });
  await check('replacing the loaded source leaves only preferred files and rebases the menus', async () => {
    await s.planReplace(root);const r=await s.confirmReplace();
    assert.deepEqual(await files(root),r.entries.map(e=>e.name).sort());assert.equal(s.available().length,0);
    assert.deepEqual(s.preferred,r.entries.map(e=>e.name));
    assert.equal(await fs.readFile(path.join(r.backup,'notes.txt'),'utf8'),'not audio');
    s.select('preferred',0);assert(events.at(-1)[1].startsWith(root));
  });
  await check('dangerous roots, package folder, and symbolic-link targets are rejected', async () => {
    await assert.rejects(s.planReplace(path.parse(tmp).root));
    await assert.rejects(s.planReplace(path.resolve('.')),/Sample Sorter/);
    const link=path.join(tmp,'target link');await fs.symlink(replacement,link);await assert.rejects(s.planReplace(link), /symbolic link/);
  });
  await check('path normalization preserves spaces, Unicode, external Mac disks and Windows drives', async () => {
    assert.equal(normalize('/Users/me/音 files','darwin'),'/Users/me/音 files');
    assert.equal(normalize('Samples SSD:/kit/a.wav','darwin'),'/Volumes/Samples SSD/kit/a.wav');
    assert.equal(normalize('D:/sounds/test.wav','win32'),'D:\\sounds\\test.wav');
    assert.throws(()=>normalize('relative/path'));
  });
  await check('operations are serialized while scanning or exporting', async () => {
    const first=s.load(root);await assert.rejects(s.load(root), /wait/);assert.throws(()=>s.keep(), /wait/);await first;
  });
  await check('rescan with every file preferred selects the first preferred item', async () => {
    const e=[];const all=new Sorter((t,v)=>e.push([t,v]));await all.load(root);
    while(all.available().length){all.select('available',0);all.keep();}
    await all.load(root);assert.equal(all.selected.available,-1);assert.equal(all.selected.preferred,0);
    assert.deepEqual(all.current,{which:'preferred',rel:all.preferred[0]});
    assert.equal(e.filter(v=>v[0]==='cue').at(-1)[1],path.join(root,all.preferred[0]));assert.equal(all.cued,true);
  });
  await check('empty folder clears the selection without sending a play command', async () => {
    const empty=path.join(tmp,'empty');await fs.mkdir(empty);
    const before=events.filter(e=>e[0]==='play').length;await s.load(empty);
    assert.equal(s.current,null);assert.equal(s.selected.available,-1);
    assert.equal(events.filter(e=>e[0]==='play').length,before);
  });
  console.log('\n'+total+' integration checks passed.');
 } finally { await fs.rm(tmp,{recursive:true,force:true}); }
})().catch(e=>{console.error(e);process.exitCode=1;});
