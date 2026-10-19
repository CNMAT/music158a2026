/* Actual controller/partial-memory/preset bridge with modeled native count
   wiring. Run node diagnostics/count-ceiling.cjs (also runs validate.cjs).
   Max DSP, scheduling and native UI still require a host check. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const H=require('./validate.cjs');
const {main,objects,liveEngines:E,ctx:c,outputs,M}=H;
let checks=0,shapeRequests=0;
const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const memory=E.ec_syn_interpolation_js,detune=E.ec_detune_shapes_v20;
const boxes=Object.fromEntries(main.boxes.map(x=>[x.box.id,x.box]));
const cords=main.lines.map(x=>x.patchline);
const byID=id=>objects[boxes[id].varname];
const allowed=new Set(['syn-count-slider','syn-count-display','syn-count-entry-clip','syn-count-entry-offset','syn-plus2','opt-count-command','ec-controller','syn-count-split','syn-count-update','syn-filter-count-display','syn-count-display-set','syn-interpolation-js','syn-three-shape-resizers','detune-shapes-v20','v20-recv-Partial_Count_v20','v20-recv-Partial_Count_v20-clip','v20-recv-Partial_Count_v20-offset','opt-limit','opt-limit-select','opt-limit-order','opt-limit-count-command','opt-limit-send',...['64','128','256'].map(x=>'opt-limit-value-'+x)]);
allowed.add('v20-recv-Partial_Count_v20-int');
const resize=boxes['syn-three-shape-resizers'].patcher;
const shapeCounts=[32,32,32];
for(const id of ['resize-drift-pak','resize-amp-pak','resize-anchor-pak'])
 ok(resize.boxes.find(x=>x.box.id===id).box.text.startsWith('pack '),'saved shape count uses a cold inlet');
ok(cords.some(l=>l.source[0]==='syn-plus2'&&l.destination[0]==='opt-count-command'),'all count requests enter checked controller');
ok(!cords.some(l=>l.source[0]==='syn-plus2'&&l.destination[0]==='syn-count-split'),'no unchecked bypass');
ok(!cords.some(l=>l.source[0]==='syn-count-slider'&&l.destination[0].includes('state')),'no raw count state broadcast');
function emit(id,out,...a){
 const links=cords.filter(l=>l.source[0]===id&&l.source[1]===out).sort((a,b)=>(a.order??0)-(b.order??0));
 for(const l of links)if(allowed.has(l.destination[0]))send(l.destination[0],l.destination[1],a);
}
function send(id,inlet,a){
 const b=boxes[id],o=byID(id),t=b.text||'',v=Number(a[0]);
 if(id==='ec-controller'){c[a[0]](...a.slice(1));return;}
 if(id==='syn-interpolation-js'){memory.inlet=inlet;memory.msg_int(v);return;}
 if(id==='detune-shapes-v20'){detune.inlet=inlet;detune.msg_int(v);return;}
 if(id==='syn-three-shape-resizers'){
  if(inlet===0){shapeCounts.fill(v);return;}
  shapeRequests++;return;
 }
 if(id==='opt-limit-send'){
  for(const kind of ['groups','auto_level'])E[M.engines.find(x=>x.kind===kind).key].renderlimit(v);
  return;
 }
 if(b.maxclass==='slider'||b.maxclass==='number'||b.maxclass==='umenu'){
  if(a[0]==='set'){o.value=Number(a[1]);return;}
  if(a[0]!=='bang')o.value=Number(a[0]==='int'?a[1]:a[0]);
  emit(id,0,o.value);return;
 }
 if(b.maxclass==='message'){emit(id,0,Number(t));return;}
 if(t.startsWith('receive ')){emit(id,0,...a);return;}
 if(t==='i'){emit(id,0,Math.trunc(v));return;}
 if(t.startsWith('clip ')){const [,lo,hi]=t.split(' ').map(Number);emit(id,0,Math.max(lo,Math.min(hi,v)));return;}
 if(t.startsWith('+ ')||t.startsWith('- ')){emit(id,0,v+(t[0]==='+'?1:-1)*Number(t.slice(2)));return;}
 if(t.startsWith('prepend ')){emit(id,0,...t.slice(8).split(' '),...a);return;}
 if(t.startsWith('t ')){const parts=t.split(' ').slice(1);for(let i=parts.length-1;i>=0;i--)emit(id,i,...a);return;}
 if(t.startsWith('routepass ')){emit(id,0,...a);return;}
 if(t.startsWith('sel ')){const k=t.split(' ').slice(1).map(Number).indexOf(v);if(k>=0)emit(id,k,'bang');return;}
 throw Error('Unmodeled count object '+id+' '+t);
}
for(const id of allowed){
 const o=byID(id);if(!o||id==='syn-interpolation-js'||id==='detune-shapes-v20')continue;
 o.message=function(selector,...a){return send(id,0,selector==='int'||selector==='float'?a:[selector,...a]);};
}
const oldBus=c.messnamed;
c.messnamed=(name,...a)=>{
 oldBus(name,...a);
 if(name.endsWith('_Partial_Count'))send('v20-recv-Partial_Count_v20',0,a);
 if(name.endsWith('_Render_Limit'))send('opt-limit',0,[[64,128,256].indexOf(Number(a[0]))]);
};
// Drawing to a Max multislider may echo a resized list. Exercise those echoes
// while the engine's output guard is active, preserving hidden target values.
const ids=['syn-freq-slider','syn-amp-slider','syn-harmonic-amp-slider'];
const oldOutlet=memory.outlet;
memory.outlet=(n,...a)=>{
 oldOutlet(n,...a);
 if(n>2)return;
 const o=byID(ids[n]);
 if(a[0]==='size'){
  o.attrs.size=a[1];o.value=Array.from({length:a[1]},(_,i)=>Array.isArray(o.value)?o.value[i]||0:0);
 }else o.value=Array.from(a[0]);
 memory.inlet=n+3;memory.list(...o.value);
};
const oldDetune=detune.outlet;
detune.outlet=(n,...a)=>{oldDetune(n,...a);shapeRequests++;memory.inlet=0;memory.list(...a[0]);};
function settle(){H.advanceTime(200);memory.lifeTick();}
function limit(n){c.control('Render_Limit',n);}
function count(n){c.control('Partial_Count',n);}
function expectCount(n,label){
 eq(c.activeCount,n,label+' authority');eq(objects.ec_syn_count_display.value,n,label+' number');
 eq(objects.ec_syn_count_slider.value,n-2,label+' slider');eq(memory.componentCount,n,label+' engine');
 settle();for(const id of ids){eq(byID(id).attrs.size,n,label+' multislider size');eq(byID(id).value.length,n,label+' multislider data');}
 eq(shapeCounts,[n,n,n],label+' shape length cache');eq(detune.componentCount,n,label+' detune length cache');
}
c.countReady=false;limit(256);count(256);settle();
memory.durations=[0,0,0];memory.inlet=10;memory.anchormirror(0);memory.anchorscale(1);
for(let channel=0;channel<3;channel++){
 const data=Array.from({length:256},(_,i)=>channel===0?((i%9)-4)/10:(i+1)/(256*(channel+1)));
 memory.target(channel,data);
}
settle();const saved=JSON.parse(JSON.stringify(memory.memory));
const beforeShapes=shapeRequests;
limit(128);expectCount(128,'256 to 128');eq(memory.memory,saved,'clamp preserves all three full banks');
eq(objects.ec_syn_count_display.attrs.maximum,128,'number maximum follows limit');eq(objects.ec_syn_count_slider.attrs.size,127,'drag range follows limit');
count(256);expectCount(128,'message above ceiling');
send('syn-count-display',0,[256]);expectCount(128,'number input above ceiling');
send('syn-count-slider',0,[254]);expectCount(128,'slider input above ceiling');
limit(256);expectCount(128,'raising limit does not grow count');
count(256);expectCount(256,'explicit restore');eq(memory.memory,saved,'all hidden values restored');
count(48);expectCount(48,'manual decrease');limit(64);expectCount(48,'lower ceiling above count');limit(128);expectCount(48,'raise ceiling with small count');
count(256);expectCount(128,'clipped external count');
limit(256);count(256);limit(64);H.advanceTime(40);memory.lifeTick();limit(256);count(256);expectCount(256,'rapid reversal');
eq(memory.memory,saved,'rapid reversal keeps nominal memory');
eq(shapeRequests,beforeShapes,'count and limit edits never reapply selected shapes');
// Real dump -> reset memory -> recall while capped -> re-expand.
limit(64);expectCount(64,'saved compact count');c.dump();
let dump=outputs.filter(x=>x[0]===0).at(-1)[1];
eq(c.captured.engines.ec_syn_interpolation_js.memory,saved,'dump contains all hidden values');
memory.inlet=10;memory.alloff();limit(256);count(256);
c.preset(...Array.from(dump).slice(2));ok(c.restoreBusy,'roundtrip enters muted recall');c.muteTask.fire();c.unmuteTask.fire();
expectCount(64,'recall saved 64 ceiling');eq(memory.memory,saved,'cold recall recovers hidden memory');
limit(256);expectCount(64,'raising after recall stays at 64');count(256);expectCount(256,'restore after recall');eq(memory.memory,saved,'cold recall expands exact stored spectrum');
// A valid build-2.0 snapshot could have 256 sliders with limit64. Reconcile it
// after all engine imports, preserving that snapshot's high-slot values.
c.dump();const legacy=JSON.parse(JSON.stringify(c.captured));legacy.ui.ec_opt_limit.value=0;
c.emitPreset(legacy);dump=outputs.filter(x=>x[0]===0).at(-1)[1];
c.preset(...Array.from(dump).slice(2));c.muteTask.fire();c.unmuteTask.fire();expectCount(64,'old version3 mismatch reconciled');eq(memory.memory,saved,'old full bank retained');
// Format2 has no rendering menu; migration defaults to128 and clamps256.
legacy.version=2;delete legacy.ui.ec_opt_limit;delete legacy.ui.ec_opt_distribution;
c.emitPreset(legacy);dump=outputs.filter(x=>x[0]===0).at(-1)[1];c.preset(...Array.from(dump).slice(2));c.muteTask.fire();c.unmuteTask.fire();
expectCount(128,'version2 migration clamp');eq(memory.memory,saved,'version2 memory retained');
ok(!outputs.slice(-20).some(x=>x[1]?.[0]==='rollback'),'count recalls do not roll back');
memory.durations[1]=400;memory.target(1,Array(memory.componentCount).fill(.1));
ok(memory.running[1],'shape morph started');c.applyCount(memory.componentCount,true);ok(memory.running[1],'recall count resync preserves an in-flight morph');
const report={result:'PASS',assertions:checks,scenarios:['UI and external count ceiling','no count growth when limit rises','stored detune/primary/anchor values survive clamp and expansion','150 ms retirement and rapid reversal','no shape regeneration on count edits','real preset dump/cold recall retains hidden values','build2.0 format3 count-limit mismatch','legacy format2 migration'],limitations:['Native objects and scheduler are modeled; actual controller, memory, shape JS and public Dict preset bridge are executed. Native Max GUI/audio checks remain required.']};
fs.writeFileSync(path.join(__dirname,'count-ceiling-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
