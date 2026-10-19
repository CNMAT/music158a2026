/* Executes saved lane startup/translation cords and actual factory/envelope JS.
 * Native object behavior is modeled explicitly; no Max scheduler/audio runs.
 * Optional argument: original broken package directory, for negative control.
 */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert'),crypto=require('crypto');
const root=path.resolve(__dirname,'..');let checks=0,lookups=0,clock=1000;
const ok=(x,m)=>{assert.ok(x,m);checks++;};
const plain=x=>JSON.parse(JSON.stringify(x));
const eq=(a,b,m)=>{assert.deepStrictEqual(plain(a),plain(b),m);checks++;};
const readPatch=f=>JSON.parse(fs.readFileSync(f)).patcher;
const factoryName='ec_cnmat_sinusoids_opt_adsr_shapes.js';
function script(filename,emit){
 const tasks=[],errors=[];
 function Task(fn,owner,...args){this.active=false;this.cancel=()=>this.active=false;this.repeat=()=>this.active=true;this.schedule=()=>this.active=true;this.fire=()=>fn.apply(owner,args);tasks.push(this);}
 function Clock(){this.getTime=()=>clock;}
 const c={jsarguments:['js','101'],inlet:0,Task,Date:Clock,JSON,arrayfromargs:a=>Array.from(a),outlet:emit,messnamed:()=>{},error:x=>errors.push(String(x))};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'dependencies',filename),'utf8'),c,{filename});
 c.tasks=tasks;c.errors=errors;return c;
}
const factoryOut=[];
const factory=script(factoryName,(...a)=>factoryOut.push(a));
function lookup(key){factoryOut.length=0;factory.msg_int(key);lookups++;return Array.from(factoryOut.find(a=>a[0]===0)?.[1]||[]);}
const allRecords=[];
for(let shape=0;shape<25;shape++)for(let count=3;count<=48;count++){
 const key=shape*100+count,v=lookup(key);allRecords.push([key,v]);
 eq(v.length,count,'factory record count '+key);
 ok(v.every(x=>Number.isFinite(x)&&x>=0&&x<=1),'normalized factory data '+key);
 if(shape===0)eq(v,Array(count).fill(0),'flat zero '+key);
 if(shape===1)eq(v,Array(count).fill(1),'full on '+key);
}
const origin=JSON.parse(fs.readFileSync(path.join(__dirname,'factory-origin.json')));
eq(crypto.createHash('sha256').update(fs.readFileSync(path.join(root,'dependencies',factoryName))).digest('hex'),origin.factory_dependency_sha256,'factory source unchanged from recovered data');
// Canonical numeric formatting is identical across Python/JS serializers.
const canonical=allRecords.map(([key,v])=>key+':'+v.map(x=>x.toFixed(6)).join(',')).join('\n');
eq(crypto.createHash('sha256').update(canonical).digest('hex'),origin.factory_values_sha256,'every recovered factory value preserved');
const altered=lookup(648);altered[1]=99;ok(lookup(648)[1]!==99,'output cannot mutate the factory');
for(const bad of [-1,0,49,2503,648.5,NaN]){factoryOut.length=0;factory.msg_float(bad);eq(factoryOut.length,0,'invalid key emits no curve');}
eq(factory.errors.length,6,'invalid keys diagnosed');

function laneModel(p){
 const state={cache:[],functionPoints:[],duration:1000,plays:0,buses:[],engines:[],factories:[],trace:[]};
 function graph(p,onOutlet){
  const nodes=new Map(p.boxes.map(x=>[x.box.id,{b:x.box,value:0,list:[],domain:x.box.domain||1000}]));
  const edges=(p.lines||[]).map(x=>x.patchline);
  function emit(id,port,a){for(const l of edges.filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order??0)-(b.order??0)))receive(l.destination[0],l.destination[1],a);}
  for(const [id,n] of nodes){
   const t=n.b.text||'';
   if(n.b.patcher)n.child=graph(n.b.patcher,(port,a)=>emit(id,port,a));
   if(t.startsWith('js ')){
    n.js=script(path.basename(t.split(' ')[1]),(port,...args)=>emit(id,port,Array.isArray(args[0])?Array.from(args[0]):args));
    if(t.includes('_adsr_shapes.js'))state.factories.push(n.js);else state.engines.push(n.js);
   }
   if(/^pack /.test(t))n.list=t.split(' ').slice(1).map(Number);
   if(/^[if](?: |$)/.test(t))n.value=Number(t.split(' ')[1]||0);
   if(n.b.maxclass==='multislider')n.list=Array(n.b.size||48).fill(0);
  }
  function receive(id,inlet,a){
   const n=nodes.get(id);if(!n)throw Error('missing node '+id);
   const b=n.b,t=b.text||'',first=a[0];
   if(b.patcher){const inputs=b.patcher.boxes.map(x=>x.box).filter(b=>b.maxclass==='inlet').sort((a,b)=>a.patching_rect[0]-b.patching_rect[0]);n.child.emit(inputs[inlet].id,0,a);return;}
   if(n.js){const e=n.js;e.inlet=inlet;const sel=typeof first==='string'?first:(a.length===1?(Number.isInteger(first)?'msg_int':'msg_float'):'list');const args=typeof first==='string'?a.slice(1):a;
    if(typeof e[sel]==='function')e[sel](...args);else throw Error('missing js handler '+sel);return;}
   if(b.maxclass==='outlet'){const ports=p.boxes.map(x=>x.box).filter(b=>b.maxclass==='outlet').sort((a,b)=>a.patching_rect[0]-b.patching_rect[0]);onOutlet(ports.findIndex(x=>x.id===id),a);return;}
   if(b.maxclass==='message'){
    if(first==='set'){n.list=a.slice(1);if(id==='current-envelope')state.cache=n.list;return;}
    const value=n.list.length?n.list:t.split(/\s+/).map(s=>s==='$1'?first:(Number.isFinite(Number(s))?Number(s):s));
    emit(id,0,value);return;
   }
   if(['number','flonum','umenu','toggle'].includes(b.maxclass)){
    if(first==='set'){n.value=Number(a[1]);return;}
    if(first!=='bang')n.value=Number(first);
    if(b.minimum!==undefined)n.value=Math.max(b.minimum,n.value);
    if(b.maximum!==undefined)n.value=Math.min(b.maximum,n.value);
    if(b.maxclass!=='flonum')n.value=Math.trunc(n.value);
    if(id==='duration')state.duration=n.value;
    state.trace.push([id,n.value]);emit(id,0,[n.value]);return;
   }
   if(b.maxclass==='multislider'){
    if(first==='size'){n.list=Array(Number(a[1])).fill(0).map((_,i)=>n.list[i]||0);return;}
    if(first==='set'){n.list=a.slice(1);return;}
    if(first!=='bang'){if(!a.length)return;n.list=Array.from(a);}
    emit(id,0,n.list);return;
   }
   if(b.maxclass==='function'){
    if(first==='clear'){n.list=[];return;}
    if(first==='setdomain'){const next=Number(a[1]);n.list=n.list.map(([x,y])=>[x*next/n.domain,y]);n.domain=next;return;}
    if(first==='bang'){
     n.list.sort((a,b)=>a[0]-b[0]);state.functionPoints=plain(n.list);
     let previous=0;const program=[];for(const [x,y] of n.list){program.push(y,x-previous);previous=x;}
     emit(id,1,program);return;
    }
    n.list.push([Number(first),Number(a[1])]);return;
   }
   if(t.startsWith('send ')){state.buses.push([t.slice(5),...a]);if(state.onBus)state.onBus(t.slice(5),a);return;}
   if(t.startsWith('receive ')||b.maxclass==='inlet'){emit(id,0,a);return;}
   if(t.startsWith('t ')){const types=t.split(' ').slice(1);for(let i=types.length-1;i>=0;i--)emit(id,i,types[i]==='b'?['bang']:types[i]==='i'?[Math.trunc(Number(first))]:types[i]==='f'?[Number(first)]:a);return;}
   if(t.startsWith('prepend ')){emit(id,0,[t.slice(8),...a]);return;}
   if(t.startsWith('clip ')){const [lo,hi]=t.split(' ').slice(1).map(Number);emit(id,0,[Math.max(lo,Math.min(hi,Number(first)))]);return;}
   if(/^[if](?: |$)/.test(t)){if(first!=='bang')n.value=Number(first);if(inlet===0)emit(id,0,[n.value]);return;}
   if(t==='zl.reg'){if(first!=='bang')n.list=Array.from(a);if(inlet===0&&n.list.length)emit(id,0,n.list);return;}
   if(t==='zl.len'){emit(id,0,[a.length]);return;}
   if(t==='- 1'){emit(id,0,[Number(first)-1]);return;}
   if(t==='listfunnel 0'){for(let i=0;i<a.length;i++)emit(id,0,[i,a[i]]);return;}
   if(t.startsWith('pack ')){n.list[inlet]=Number(first);if(inlet===0)emit(id,0,Array.from(n.list));return;}
   if(t==='expr ($i1 * 100) + $i2'){emit(id,0,[Number(a[0])*100+Number(a[1])]);return;}
   if(t==='gate'){if(inlet===0)n.value=Number(first);else if(n.value)emit(id,0,a);return;}
   if(t==='line~ 0.'){state.plays++;return;}
   if(t.startsWith('coll '))return; // Negative-control empty factory / user stores.
   if(t==='loadbang'){emit(id,0,['bang']);return;}
   if(t.startsWith('loadmess ')){emit(id,0,t.slice(9).split(' ').map(Number));return;}
   throw Error('Unmodeled startup path '+id+' '+t+' '+a);
  }
  return {nodes,emit,receive};
 }
 const g=graph(p,()=>{});
 function startup(reverse=false){const init=[...g.nodes].filter(([,n])=>/^(loadbang|loadmess )/.test(n.b.text||''));if(reverse)init.reverse();for(const [id] of init)g.receive(id,0,['bang']);}
 return {state,startup,receive:g.receive,nodes:g.nodes};
}
const lanes=[];
for(let lane=1;lane<=12;lane++){
 const filename=path.join(root,'dependencies','ec_cnmat_sinusoids_opt_adsr_'+String(lane).padStart(2,'0')+'.maxpat');
 const p=readPatch(filename);
 for(const reverse of [false,true]){
  // Fresh contexts + JSON rewrite simulate destruction/recreation without
  // embedded factory data. This does not simulate the native Max serializer.
  const m=laneModel(JSON.parse(JSON.stringify(p)));m.startup(reverse);
  const expected=lookup(648),curve=m.state.functionPoints.map(x=>x[1]);
  eq(curve,expected,'lane '+lane+' initialized immediately in startup order '+reverse);
  eq(m.nodes.get('count').value,48,'48 visible points');
  eq(m.nodes.get('shape-menu').value,6,'triangle menu');
  eq(m.nodes.get('shape-smoothing-ms').value,200,'normal smoothing restored');
  eq(m.nodes.get('delay-ms').value,0,'DEL zero');
  eq(m.nodes.get('loop-toggle').value,0,'loop starts off');
  eq(m.state.duration,1000,'duration default');
  ok(Math.abs(m.state.cache.filter((_,i)=>i%2===1).reduce((a,b)=>a+b,0)-1000)<1e-8,'cached envelope totals 1000ms');
  eq(m.state.cache.filter((_,i)=>i%2===0),expected,'playback cache matches function');
  eq(m.state.plays,0,'startup does not trigger audio');
  ok(m.state.engines.every(e=>e.tasks.every(t=>!t.active)),'no pending startup morph');
  ok(m.state.factories.every(e=>e.errors.length===0),'no lookup errors');
  // Exercise a different shape/point count through the actual saved wiring.
  m.receive('shape-smoothing-ms',0,[0]);m.receive('count',0,[3]);m.receive('shape-menu',0,[1]);
  eq(m.state.functionPoints.map(x=>x[1]),[1,1,1],'full-on shape usable after startup');
  m.receive('shape-menu',0,[24]);m.receive('count',0,[48]);
  eq(m.state.functionPoints.map(x=>x[1]),lookup(2448),'fixed random profile at 48 points');
  lanes.push(m);
 }
}
// The shared-table failure must remain reproducible in the supplied input.
let negativeControl='not requested';
if(process.argv[2]){
 const broken=readPatch(path.join(path.resolve(process.argv[2]),'dependencies/ec_cnmat_sinusoids_opt_adsr_01.maxpat'));
 const m=laneModel(broken);m.startup();
 ok(m.state.functionPoints.every(x=>x[1]===0),'negative control: uploaded lane with missing shared factory stays zero');
 ok(!m.state.functionPoints.some(x=>x[1]>0),'negative control cannot initialize triangle');
 negativeControl='PASS: uploaded empty factory reproduces blank lane';
}
// Follow the Master's real ordered startup cords, then check its factory path.
const main=readPatch(path.join(root,'ec_cnmat_sinusoids_lowcpu_abs~.maxpat'));
const master=main.boxes.find(x=>x.box.id==='obj-21').box.patcher;
const mb=Object.fromEntries(master.boxes.map(x=>[x.box.id,x.box])),ml=master.lines.map(x=>x.patchline);
const commands=[];
function masterVisit(id){
 const b=mb[id];
 if(['adsr-morph-ms','obj-count-slider','obj-duration','obj-shape-menu-norm'].includes(id)){throw Error('Expected value message before '+id);}
 const outgoing=ml.filter(l=>l.source[0]===id).sort((a,b)=>b.source[1]-a.source[1]||(a.order??0)-(b.order??0));
 for(const l of outgoing){const dest=l.destination[0];if(['adsr-morph-ms','obj-count-slider','obj-duration','obj-shape-menu-norm'].includes(dest))commands.push([dest,Number(b.text)]);else masterVisit(dest);}
}
masterVisit('obj-loadbang');
eq(commands,[['adsr-morph-ms',0],['obj-count-slider',45],['obj-duration',1000],['obj-shape-menu-norm',6],['adsr-morph-ms',200]],'Master initializes with uploaded 45-point default, no morph, then restores smoothing');
const morph=script('ec_cnmat_sinusoids_opt_envelope_memory.js',()=>{});
morph.inlet=6;morph.msg_float(0);morph.inlet=9;morph.msg_int(45);morph.inlet=0;morph.list(...lookup(645));morph.inlet=6;morph.msg_float(200);
eq(morph.current[0],lookup(645),'Master factory profile immediately ready');ok(morph.tasks.every(t=>!t.active),'no pending Master startup morph');
for(const [src,dst] of [['obj-shape-key-expr','obj-shape-coll-norm'],['obj-shape-coll-norm','adsr-preset-gate'],['adsr-preset-gate','adsr-morph-engine']])ok(ml.some(l=>l.source[0]===src&&l.destination[0]===dst),'Master factory route '+src);
eq(mb['adsr-preset-gate'].text,'gate 1 1','Master shape gate open at construction');
ok(mb['obj-shape-coll-norm'].text.includes(factoryName),'Master uses immutable factory reader');
let oldFactory=0;
function scan(p){for(const {box:b} of p.boxes){if(/^coll .*_ADSR_Shapes\b/.test(b.text||''))oldFactory++;if(b.patcher)scan(b.patcher);}}
scan(main);eq(oldFactory,0,'no shared factory coll remains in master');
// Reader and mutable-envelope state do not cross instances.
const a=laneModel(readPatch(path.join(root,'dependencies/ec_cnmat_sinusoids_opt_adsr_01.maxpat'))),b=laneModel(readPatch(path.join(root,'dependencies/ec_cnmat_sinusoids_opt_adsr_01.maxpat')));
a.startup();b.startup();a.receive('shape-smoothing-ms',0,[0]);a.receive('shape-menu',0,[1]);
eq(a.state.functionPoints.map(x=>x[1]),Array(48).fill(1),'instance A edited');eq(b.state.functionPoints.map(x=>x[1]),lookup(648),'instance B unchanged');
// Full On must wait until all 12 real smoothing engines publish all-one data.
const g=main.boxes.find(x=>x.box.id==='obj-112').box.patcher,gl=g.lines.map(x=>x.patchline);
const fp=g.boxes.find(x=>x.box.id==='full-on-start-engine-v20-6').box.patcher,fl=fp.lines.map(x=>x.patchline);
const bank=Array.from({length:12},(_,i)=>laneModel(readPatch(path.join(root,'dependencies','ec_cnmat_sinusoids_opt_adsr_'+String(i+1).padStart(2,'0')+'.maxpat'))));
bank.forEach(m=>m.startup());const fullEvents=[];let full;
full=script('ec_cnmat_sinusoids_opt_full_on.js',(port,value)=>{
 fullEvents.push([port,value]);
 if(port===0)bank.forEach(m=>m.receive('shape-menu',0,[value]));
 if(port===1)bank.forEach(m=>m.receive('loop-toggle',0,[value]));
});
bank.forEach((m,i)=>{
 const nn=String(i+1).padStart(2,'0');
 for(const [src,dst] of [['all-lane-shape-menu','all-lane-shape-send-'+nn],['all-lane-loops-toggle','all-lane-loop-send-'+nn]])ok(gl.some(l=>l.source[0]===src&&l.destination[0]===dst),'global fanout '+nn);
 ok(fl.some(l=>l.source[0]==='points-tag-'+nn&&l.destination[0]==='js'&&l.destination[1]===1),'full-on points feedback '+nn);
 m.state.onBus=(name,data)=>{if(name.endsWith('_Points_state')){const prior=full.inlet;full.inlet=1;full.points(i+1,...data);full.inlet=prior;}};
});
full.inlet=0;full.bang();
eq(bank.map(m=>m.nodes.get('loop-toggle').value),Array(12).fill(1),'full-on enables every lane loop');
eq(fullEvents.filter(x=>x[0]>=2),[],'no full-on trigger before smoothing');
clock+=199;bank.forEach(m=>m.state.engines.forEach(e=>e.tasks.filter(t=>t.active).forEach(t=>t.fire())));
eq(fullEvents.filter(x=>x[0]>=2),[],'full-on waits for final smoothing point');
clock+=1;bank.forEach(m=>m.state.engines.forEach(e=>e.tasks.filter(t=>t.active).forEach(t=>t.fire())));
eq(fullEvents.filter(x=>x[0]===2).length,1,'one deferred completion after all12 ready');
eq(fullEvents.filter(x=>x[0]===3).length,0,'translation completes before deferred fire');
full.inlet=0;full.fire();eq(fullEvents.filter(x=>x[0]===3).length,1,'one common trigger after readiness');
for(const m of bank)eq(m.state.cache.filter((_,i)=>i%2===0),Array(48).fill(1),'full-on cache ready at trigger');
full.fire();eq(fullEvents.filter(x=>x[0]===3).length,1,'deferred callback does not double-trigger');
full.bang();full.stop();full.fire();eq(fullEvents.filter(x=>x[0]===3).length,1,'Stop cancels pending full-on');
const report={result:'PASS',assertions:checks,factory_records:allRecords.length,factory_values:allRecords.reduce((n,x)=>n+x[1].length,0),fresh_lane_contexts:24,negative_control:negativeControl,scenarios:['all 1150 exact factory records','invalid keys','defensive output copies','12 cold starts and 12 fresh JSON reloads','alternate loadbang order','immediate visible curve and playback cache','no startup audio or pending morph','Master 45-point startup','shape/count changes after startup','independent factory and envelope contexts','Full On waits for all12 smoothing engines; loops enabled; one deferred trigger; Stop cancellation'],limitations:['Native Max objects and scheduler are modeled; JSON reload is not the native Max save/load process.','No CNMAT DSP or audio listening test. Preset/loop/delay roundtrips are covered by validate.cjs and lane-delay.cjs.']};
fs.writeFileSync(path.join(__dirname,'adsr-startup-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
