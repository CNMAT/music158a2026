/* Execute the saved keyboard/trigger graph and actual controller, then route
   each scoped lane bang through the existing lane-delay graph model. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const H=require('./validate.cjs'),{laneModel}=require('./lane-delay.cjs');
const {main,ctx:c,root,objects}=H;let checks=0;
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const ok=(v,m)=>{assert.ok(v,m);checks++;};
const bs=Object.fromEntries(main.boxes.map(x=>[x.box.id,x.box]));
const adsr=bs['obj-112'].patcher;
const fanout=adsr.boxes.find(x=>x.box.id==='all-lane-global-trigger-fanout').box.patcher;
const fb=Object.fromEntries(fanout.boxes.map(x=>[x.box.id,x.box]));
const lanes=Array.from({length:12},(_,i)=>laneModel(JSON.parse(fs.readFileSync(path.join(root,'dependencies','ec_cnmat_sinusoids_opt_adsr_'+String(i+1).padStart(2,'0')+'.maxpat'))).patcher));
const events=[];let velocity=100,gate=0,clearGate=1;
const handled=new Set(['obj-81','midi-base-v20-mtof','opt-keyboard-note-order','opt-keyboard-note-on','opt-keyboard-trigger-gate','opt-keyboard-trigger-message','key-clear-v20-keyboard-order','key-clear-v20-suspend-clear','key-clear-v20-resume-clear','key-clear-v20-gate','midi-base-v20-send','ec-controller','ec-note-unpack']);
function emit(id,port,a){
 for(const l of main.lines.map(x=>x.patchline).filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order??0)-(b.order??0)))
  if(handled.has(l.destination[0]))receive(l.destination[0],l.destination[1],a);
}
function receive(id,inlet,a){
 const b=bs[id],t=b.text||'';
 if(id==='obj-81'){
  if(a[0]==='set'||a[0]==='clear')return;
  if(inlet===1){velocity=Number(a[0]);return;}
  emit(id,1,[velocity]);emit(id,0,[Number(a[0])]);return;
 }
 if(id==='ec-controller'){if(a[0]==='trigger')c.trigger();else {c.messagename=a[0];c.anything(...a.slice(1));}return;}
 if(t==='unpack i i'){emit(id,1,[a[1]]);emit(id,0,[a[0]]);return;}
 if(t==='mtof'){emit(id,0,[440*Math.pow(2,(Number(a[0])-69)/12)]);return;}
 if(t==='> 0'){emit(id,0,[Number(a[0])>0?1:0]);return;}
 if(id==='opt-keyboard-trigger-gate'){if(inlet===0)gate=Number(a[0]);else if(gate)emit(id,0,a);return;}
 if(id==='key-clear-v20-gate'){clearGate=Number(a[0]);events.push(['clearGate',clearGate]);return;}
 if(t.startsWith('t ')){const types=t.split(' ').slice(1);for(let n=types.length-1;n>=0;n--)emit(id,n,types[n]==='b'?['bang']:a);return;}
 if(b.maxclass==='message'){emit(id,0,t==='trigger'?['trigger']:[Number(t)]);return;}
 if(t.startsWith('send ')){const name=t.slice(5).replace('#0','101');c.messnamed(name,...a);return;}
 throw Error('Unmodeled keyboard node '+id+' '+t);
}
function fan(id,a){
 const b=fb[id],t=b.text||'';
 if(t.startsWith('send ')){
  const match=t.match(/_ADSR_Lane_(\d+)_Trigger$/);ok(!!match,'fanout sends only lane triggers');
  events.push(['lane',Number(match[1])]);lanes[Number(match[1])-1].trigger();return;
 }
 for(const l of fanout.lines.map(x=>x.patchline).filter(l=>l.source[0]===id).sort((a,b)=>(a.order??0)-(b.order??0)))fan(l.destination[0],['bang']);
}
const oldBus=c.messnamed,oldOut=c.outlet;
c.outlet=(n,...a)=>{oldOut(n,...a);if(n===2)emit('ec-controller',2,a[0]);};
c.messnamed=(name,...a)=>{
 oldBus(name,...a);
 if(name.endsWith('_Source_Base_Hz')){events.push(['pitch',a[0]]);eq(clearGate,0,'keyboard selection protected while setting pitch');}
 if(name.endsWith('_ADSR_12_Lanes_Global_Trigger')){
  eq(clearGate,1,'selection clear gate reopened before articulation');events.push(['trigger']);
  const recv=adsr.boxes.find(x=>x.box.text==='receive #0-ec-cnmat-sinusoids-opt_ADSR_12_Lanes_Global_Trigger').box.id;
  const a1=adsr.lines.find(x=>x.patchline.source[0]===recv).patchline.destination[0];
  const a2=adsr.lines.find(x=>x.patchline.source[0]===a1).patchline.destination[0];
  eq(a2,'all-lane-global-trigger-fanout','saved global bus reaches fanout');
  fan(fanout.boxes.find(x=>x.box.maxclass==='inlet').box.id,['bang']);
 }
};
// Mouse/direct-keyboard note: one pitch update precedes one common start.
receive('obj-81',1,[100]);receive('obj-81',0,[69]);
eq(events.filter(x=>x[0]==='pitch'),[['pitch',440]],'A4 sets f0 before trigger');
eq(events.filter(x=>x[0]==='trigger').length,1,'one global trigger');
ok(events.findIndex(x=>x[0]==='pitch')<events.findIndex(x=>x[0]==='trigger'),'pitch first');
eq(lanes.map(x=>x.starts),Array.from({length:12},()=>[0]),'all 12 zero-delay lanes launch together');
events.length=0;c.note(60,90);
eq(events.filter(x=>x[0]==='trigger').length,1,'note-in follows keyboard and triggers once');
eq(lanes.map(x=>x.starts.length),Array(12).fill(2),'one launch per lane from addressed note');
c.note(60,90);eq(lanes.map(x=>x.starts.length),Array(12).fill(3),'same pitch retriggers');
events.length=0;c.note(60,0);eq(events,[],'velocity-zero note-in produces no pitch or trigger');
receive('obj-81',1,[0]);receive('obj-81',0,[60]);eq(events.filter(x=>x[0]==='trigger'),[],'direct keyboard note-off does not articulate');
events.length=0;receive('obj-81',0,['set',-1]);receive('obj-81',0,['clear']);eq(events,[],'silent key display edits do not articulate');
// Actual preset UI writer must use set (silent) for keyboard restore.
const key=objects.ec_obj_81,oldKeyMessage=key.message;key.message=(...a)=>receive('obj-81',0,a);
c.writeUI({path:['ec_obj_81'],type:'kslider'},{attrs:{},value:[60]},false);eq(events,[],'preset keyboard restore is silent');key.message=oldKeyMessage;
c.restoreBusy=true;c.note(62,100);eq(events.filter(x=>x[0]==='trigger'),[],'recall busy guard suppresses keyboard launch');c.restoreBusy=false;
// Lane DELs still start from the common note event and retriggers replace waits.
lanes[0].set(500);lanes[1].set(1000);const before=lanes.map(x=>x.starts.length);c.note(64,100);
eq(lanes.map((x,i)=>x.starts.length-before[i]),[0,0,...Array(10).fill(1)],'only zero-delay lanes start immediately');
for(const l of lanes)l.advance(100);c.note(65,100);
for(const l of lanes)l.advance(400);eq(lanes[0].starts.length,before[0],'first deadline replaced');
for(const l of lanes)l.advance(100);eq(lanes[0].starts.at(-1),600,'lane01 starts 500ms after replacement note');
for(const l of lanes)l.advance(500);eq(lanes[1].starts.at(-1),1100,'lane02 starts 1000ms after replacement note');
const help=JSON.parse(fs.readFileSync(path.join(root,'_ec_cnmat_sinusoids_lowcpu_abs~.maxhelp'))).patcher;
ok(!help.boxes.some(x=>x.box.text==='t trigger l'),'external duplicate trigger removed');
ok(help.lines.some(x=>x.patchline.source[0]==='obj-4'&&x.patchline.destination[0]==='synth'),'help note-in wired directly to synth');
function docs(p){for(const {box:b} of p.boxes){if(b.maxclass==='message')ok(!/^note-in\s+\d+\s+\d+,\s*trigger$/.test(b.text||''),'examples do not double-trigger notes');if(b.patcher)docs(b.patcher);}}
docs(help);
const report={result:'PASS',assertions:checks,scenarios:['keyboard pitch before common ADSR launch','all12 lanes synchronous at DEL0','addressed and repeated note-on','velocity-zero suppression','silent set/clear and preset keyboard restore','recall busy guard','independent DEL and latest-note replacement','help path has no second trigger'],limitations:['Uses saved patchcords and actual controller with modeled Max keyboard/message/timer behavior. Native Max loading, timing and audio listening remain required.']};
fs.writeFileSync(path.join(__dirname,'keyboard-trigger-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
