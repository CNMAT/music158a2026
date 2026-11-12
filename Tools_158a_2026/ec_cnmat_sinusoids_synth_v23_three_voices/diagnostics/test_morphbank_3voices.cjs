/* Actual global coordinator + 3 controllers + 75 engines.
 * Native Max objects, Dict, File and scheduler are modeled; DSP is not run. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const hs=[];for(let v=1;v<=3;v++){
 process.env.SYNTH_TEST_VOICE=String(v);
 for(const n of ['./test_preset_v23.cjs','./package_layout_three.cjs'])delete require.cache[require.resolve(n)];
 hs.push(require('./test_preset_v23.cjs'));
}
let checks=0,clock=1000000;
const clean=x=>JSON.parse(JSON.stringify(x));
function ok(x,m){assert.ok(x,m);checks++;}
function eq(a,b,m){assert.deepStrictEqual(clean(a),clean(b),m);checks++;}
function setTime(t){clock=t;for(const h of hs)h.setClock(t);}
const events=[],tasks=[];
function Task(fn,owner){this.active=false;this.schedule=()=>this.active=true;this.cancel=()=>this.active=false;this.fire=()=>{this.active=false;fn.call(owner);};tasks.push(this);}
function Clock(){this.getTime=()=>clock;}
function Dict(n){const m=/^V([123])_/.exec(n);assert(m);return new hs[+m[1]-1].ctx.Dict(n);}
const host={getnamed(n){
 const m=/^V([123])_/.exec(n);
 if(m){const h=hs[+m[1]-1];if(n===h.PREFIX+'ec_controller_v23')return{valid:true,message(sel,...a){const fn=h.ctx[sel];assert(typeof fn==='function'&&!fn.local,'public controller bridge');return fn.apply(h.ctx,a);}};return h.host.getnamed(n);}
 return hs[0].host.getnamed(n);
}};
for(const h of hs){h.ctx.patcher=host;h.ctx.handles={};h.ctx.morphstop();h.ctx.clear('all');}
const files=new Map();
function File(name,mode){this.name=name;this.isopen=true;this.position=0;
 Object.defineProperty(this,'eof',{get:()=>files.get(name)?.length||0,set:n=>files.set(name,(files.get(name)||'').slice(0,n))});
 if(mode==='read'&&!files.has(name))this.isopen=false;
 this.readstring=n=>{const s=files.get(name).slice(this.position,this.position+n);this.position+=s.length;return s;};
 this.writestring=s=>{const old=files.get(name)||'';files.set(name,old.slice(0,this.position)+s+old.slice(this.position+s.length));this.position+=s.length;};this.close=()=>this.isopen=false;
}
const c={JSON,Dict,File,Task,Date:Clock,patcher:host,arrayfromargs:a=>Array.from(a),outlet:(...a)=>events.push(clean(a))};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(hs[0].root,'javascript/morphbank_3voices_v23.js'),'utf8'),c);
function capture(h){let d;h.ctx.capture(x=>d=clean(x));ok(d,'capture completed');return d;}
function setGains(values){for(let i=0;i<3;i++)hs[i].ctx.gain(values[i]);}
function gains(){return hs.map(h=>h.ctx.gainValue);}
function bankSig(){return hs.map(h=>clean({slots:h.ctx.morphSlots,times:h.ctx.morphSlotSeconds}));}
function noErrors(from,m){const errs=events.slice(from).filter(e=>e[0]===0&&e[1]?.[0]==='error');eq(errs,[],m);}
// Each explicitly named capture/morph selects only its intended voice.
for(let v=1;v<=3;v++){
 c.command('morphcaptureV'+v,'A',v+1);
 c.command('morphtoV'+v,'A',0);
 ok(hs[v-1].ctx.morphSlots.A,'qualified voice capture '+v);
 for(let j=0;j<3;j++)if(j>=v)eq(hs[j].ctx.morphSlots.A,null,'other voice letter slot unchanged');
}
setGains([.12,.24,.36]);
for(let i=0;i<3;i++){
 const m=hs[i].M.engines.find(x=>x.kind==='partial_memory');
 hs[i].liveEngines[m.key].memory[1][255]=(i+1)*.125;
 hs[i].collStores[hs[i].M.colls[0].key]=[{key:'distinct',values:[i+1,.25]}];
}
for(let i=0;i<3;i++)hs[i].ctx.morphcapture('B',5+i);
const individual=bankSig();
const before=events.length;c.morphcapture3voices(1,4);noErrors(before,'triple capture succeeds');
ok(c.slots[0]&&c.slots[0].voices.length===3,'slot contains three full messages');
eq(c.slots[0].voices.map((p,i)=>hs[i].ctx.readPreset(p.slice(1)).gain),[.12,.24,.36],'captures three distinct sounds');
const slot1=clean(c.slots[0]);
eq(slot1.voices.map((p,i)=>hs[i].ctx.readPreset(p.slice(1)).engines.ec_syn_interpolation_js.memory[1][255]),[.125,.25,.375],'distinct hidden partial memories captured');
setGains([.72,.84,.96]);c.morphcapture3voices(24,8);ok(c.slots[23],'upper slot 24 captures');
eq(bankSig(),individual,'global capture leaves letter banks unchanged');
setGains([.32,.44,.56]);c.morphto3voices(1);
ok(c.run&&c.run.seconds===4,'uses slot duration');ok(hs.every(h=>h.ctx.morphRun&&!h.ctx.morphRun.running),'voice timers disabled');
setTime(c.run.start+2000);c.tick();
gains().forEach((g,i)=>ok(Math.abs(g-[.22,.34,.46][i])<1e-8,'shared midpoint '+i));
eq(hs.map(h=>h.ctx.morphRun.fraction),[.5,.5,.5],'exact same eased fraction');
eq(bankSig(),individual,'global morph leaves all A-X slots unchanged');
c.morphpause3voices();const paused=gains();setTime(clock+9000);c.tick();eq(gains(),paused,'pause holds all voices');
c.morphresume3voices();setTime(c.run.start+4000);c.tick();
eq(gains(),[.12,.24,.36],'all reach targets');eq(c.current,1,'global arrival state');ok(!c.run&&hs.every(h=>!h.ctx.morphRun),'no active transition left');
eq(hs.map(h=>h.liveEngines[h.M.engines.find(x=>x.kind==='partial_memory').key].memory[1][255]),[.125,.25,.375],'full hidden memories survive global morph');
eq(hs.map(h=>h.collStores[h.M.colls[0].key]),[{key:'distinct',values:[1,.25]},{key:'distinct',values:[2,.25]},{key:'distinct',values:[3,.25]}].map(x=>[x]),'distinct user stores survive global morph');
eq(hs.map(h=>h.ctx.morphCurrentSlot),['3voices 1','3voices 1','3voices 1'],'unambiguous pervoice global target readback');
eq(clean(c.slots[0]),slot1,'recall does not mutate slot data');
// Retarget and zero-duration completion.
c.morphto3voices(24,6);setTime(c.run.start+3000);c.tick();c.morphto3voices(1,3);ok(c.run&&c.run.slot===1,'retarget starts from current sound');
c.morphfinish3voices();eq(gains(),[.12,.24,.36],'finish all voices');
c.morphjump3voices(24);eq(gains(),[.72,.84,.96],'jump all voices');ok(!c.run,'zero-duration morph completes');
// A running capture preserves the shared clock and records the same fraction.
c.morphto3voices(1,4);setTime(c.run.start+2000);c.tick();c.morphcapture3voices(2,7);
ok(c.run&&c.slots[1],'capture during transition');
eq(c.slots[1].voices.map((p,i)=>hs[i].ctx.readPreset(p.slice(1)).gain),[.42,.54,.6599999999999999],'captures shared midpoint');
c.morphstop3voices();ok(!c.run&&hs.every(h=>!h.ctx.morphRun),'stop releases all voices');
// Busy/missing/bad input never creates a partial triple or changes valid slots.
const savedBank=clean(c.slots);c.morphcapture3voices(0);c.morphto3voices(25);eq(c.slots,savedBank,'range errors preserve bank');
hs[1].ctx.restoreBusy=true;c.morphcapture3voices(3);hs[1].ctx.restoreBusy=false;eq(c.slots[2],null,'one busy voice prevents partial capture');
ok(!c.job,'failed capture released');
// A missing native coll completion is asynchronous; new commands must not discard that capture.
const heldColl=hs[2].objects[hs[2].M.colls[0].path.join('/')],oldCollMessage=heldColl.message;
heldColl.message=function(sel,...a){if(sel!=='dump')return oldCollMessage.call(this,sel,...a);};
c.morphcapture3voices(3);ok(c.job&&hs[2].ctx.collecting,'capture waits for third voice');const pendingJob=c.job;
c.morphcapture3voices(4);c.morphto3voices(1);c.morphfinish3voices();ok(c.job===pendingJob,'busy requests preserve pending operation');
setTime(clock+5001);c.poll();ok(!c.job&&!hs[2].ctx.collecting,'timeout cancels pending voice capture');eq(c.slots[2],null,'timeout stores no incomplete triple');
heldColl.message=oldCollMessage;
// Partial count/offset settling must finish in all voices before the shared clock starts.
const origExport=hs[1].ctx.engineCall;
let wait=true;hs[1].ctx.engineCall=function(m,a,d){const out=origExport.call(this,m,a,d);if(wait&&a==='export'&&m.kind==='offset')out.fading=true;return out;};
c.morphto3voices(1,4);ok(c.job&&!c.run,'waits for slow voice before starting');ok(hs[0].ctx.morphRun&&!hs[0].ctx.morphRun.running,'ready voice remains held');
wait=false;hs[1].ctx.morphSettleTask.fire();c.poll();ok(c.run&&!c.job,'all ready starts shared clock');hs[1].ctx.engineCall=origExport;
// A manual individual morph interrupts the group without clobbering its own action.
hs[1].ctx.morphto('B',2);c.tick();ok(!c.run,'manual individual action ends shared transition');
ok(hs[1].ctx.morphRun&&!hs[0].ctx.morphRun&&!hs[2].ctx.morphRun,'individual voice keeps its requested morph');hs[1].ctx.morphstop();
const prepare3=hs[2].ctx.engineCall;
hs[2].ctx.engineCall=function(m,a,d){if(a==='morph_prepare')throw new Error('injected prepare fault');return prepare3.call(this,m,a,d);};
c.morphto3voices(1,4);ok(!c.job&&!c.run&&hs.every(h=>!h.ctx.morphRun),'one preparation fault releases every staged voice');hs[2].ctx.engineCall=prepare3;
// File persistence is a separate 24-triple bank; validate the entire read before replace.
let mark=events.length;c.morphbank3voices('write','triple.json');noErrors(mark,'bank write succeeds');
const filebank=clean(c.slots);c.morphclear3voices('all');ok(c.slots.every(x=>x===null),'clear all');
c.morphbank3voices('read','triple.json');eq(c.slots,filebank,'file roundtrip all triples');eq(bankSig(),individual,'file load preserves letter banks');
const doc=JSON.parse(files.get('triple.json'));doc.payload.slots[0].voices[1][2]='h000';doc.checksum=c.ec_wireChecksum(c.morphAscii(JSON.stringify(doc.payload)));files.set('bad.json',JSON.stringify(doc));
c.morphbank3voices('read','bad.json');eq(c.slots,filebank,'malformed voice2 preset rejects whole file');
// Exact storage messages are updated; replay them models save/reopen startup.
const dumped=[];for(let n=1;n<=24;n++)if(c.slots[n-1])dumped.push({n,s:c.dumpObject(n,0).getvalueof(),voices:[1,2,3].map(v=>c.dumpObject(n,v).getvalueof())});
c.morphclear3voices('all');for(const x of dumped){c.stagetime3voices(x.n,x.s);for(let v=1;v<=3;v++)c.stageslot3voices(x.n,v,...x.voices[v-1]);}
eq(c.slots,filebank,'embedded three-message storage roundtrip');
// Cue completion advances only once, after all voices arrive; per-slot times stay distinct.
c.morphcue3voices(1,24);ok(c.run&&c.run.seconds===4,'cue uses slot1 duration');c.morphfinish3voices();eq(c.cue.index,1,'next cue only after group arrival');c.cueTask.fire();ok(c.run&&c.run.slot===24&&c.run.seconds===8,'cue slot24 duration');c.morphstop3voices();
c.morphslottime3voices(1,12);eq(c.slots[0].seconds,12,'slot seconds editable');eq(c.slots[0].voices,filebank[0].voices,'time edit keeps snapshots');
eq(bankSig(),individual,'all global operations preserve independent letter banks');
// Externally supplied slots are cloned; one failed validation never begins a group.
c.slots[0].voices[2][2]='h000';const g=gains();c.morphto3voices(1);eq(gains(),g,'invalid target rejected before any sound changes');ok(!c.job&&!c.run,'bad target starts nothing');
c.notifydeleted();
const report={status:'PASS',checks,controllers:3,engine_instances:75,slots:24,stored_messages:72,coverage:['explicit pervoice aliases','atomic triple capture','independent A-X banks','shared eased clock','all-voice ready barrier','pause/resume/stop/finish/retarget/jump','capture during morph','individual override','bank save/load validation','embedded message persistence','numeric cue loop'],limitations:['Actual JavaScript with modeled Max native objects and message routing; no native Max GUI, DSP, or audio-hardware execution.']};
fs.writeFileSync(path.join(__dirname,'morphbank_3voices_results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
