/* Actual JS + saved patch graph; Max number/trigger behavior is modeled.
 * This does NOT execute native Max UI, loader, scheduler or audio. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const R=path.resolve(__dirname,'..');
const patch=JSON.parse(fs.readFileSync(path.join(R,'patchers/_ec_sinusoids_synth_v23_main.maxpat'))).patcher;
const boxes=Object.fromEntries(patch.boxes.map(e=>[e.box.id,e.box]));
const lines=patch.lines.map(e=>e.patchline);
let assertions=0;
function eq(a,b,msg){assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),msg);assertions++;}
function ok(a,msg){assert.ok(a,msg);assertions++;}
const source=fs.readFileSync(path.join(R,'javascript/partial_amplitude_display_v23.js'),'utf8');
const numbers={};
for(const id of ['amp-display-first','amp-display-last']){
 const b=boxes[id];numbers[id]={value:1,min:b.minimum,max:b.maximum};
 ok(b.maxclass==='number'&&b.minimum===1&&b.numinlets===1&&b.numoutlets===2,id+' native number ports and startup floor');
}
let edits=[],calls=0,events=[],engineCounts=[],observedOrder=[],clock=0;
const C={Math,Number,String,Array,Object,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),post:()=>{},
 outlet(port,...args){let v=args.length===1&&Array.isArray(args[0])?Array.from(args[0]):args;events.push([port,v]);emit('amp-viewport-js',port,v);}};
vm.createContext(C);vm.runInContext(source,C);
function invoke(inlet,fn,...args){const old=C.inlet;C.inlet=inlet;try{return C[fn](...args);}finally{C.inlet=old;}}
function emit(id,port,args){
 for(const l of lines.filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order||0)-(b.order||0)))send(l.destination[0],l.destination[1],args);
}
function send(id,inlet,args){
 if(++calls>10000)throw Error('Feedback loop in range controls');
 const b=boxes[id];
 if(id==='amp-viewport-js'){
  const [selector,...rest]=args;
  if(typeof selector==='number')invoke(inlet,'list',...args);
  else if(typeof C[selector]==='function')invoke(inlet,selector,...rest);
  else throw Error('Unknown helper message '+selector);
 }else if(numbers[id]){
  const n=numbers[id],s=args[0];
  if(s==='min'||s==='max'){
   n[s]=args[1];const prior=n.value;n.value=Math.max(n.min,Math.min(n.max,n.value));
   // Deliberately adversarial: model clipping echoes even if Max keeps them silent.
   if(n.value!==prior)emit(id,0,[n.value]);
  }else if(s==='set'){n.value=Math.max(n.min,Math.min(n.max,args[1]));}
  else {n.value=Math.max(n.min,Math.min(n.max,Math.trunc(Number(s))));emit(id,0,[n.value]);}
 }else if((b.text||'').startsWith('prepend ')){
  const v=b.text.split(/\s+/).slice(1).concat(args);
  if(id==='amp-display-count-command')observedOrder.push('display-count');
  emit(id,0,v);
 }else if(id==='syn-count-update'){
  eq(b.text,'t i i i','count routing uses actual three-output integer trigger');
  for(let port=2;port>=0;port--)emit(id,port,args);
 }else if(id==='syn-interpolation-js'){
  if(inlet===9){engineCounts.push(args[0]);observedOrder.push('engine-count');}
 }else if(id==='amp-viewport-slider'){
  if(args[0]==='size')invoke(1,'list',...Array(args[1]).fill(0)); // reject resizing echo
 }else if(id==='syn-amp-slider'){edits.push(args);}
 else if(b.maxclass==='message'){emit(id,0,b.text.split(/\s+/));}
 // All other synth paths are outside this view-only test, never simulated as audio.
}
function clear(){events=[];edits=[];calls=0;engineCounts=[];observedOrder=[];}
function values(n){return Array.from({length:n},(_,i)=>(i%20)/20);}
function data(n){calls=0;invoke(0,'list',...values(n));}
function count(n){calls=0;send('syn-count-update',0,[n]);}
function user(id,value){calls=0;send('amp-display-'+id,0,[value]);}
function click(id){calls=0;send('amp-display-'+id,0,['bang']);}
function state(first,last,total){
 eq([C.viewFirst,C.viewLast,C.availableCount()],[first,last,total],'actual range/count');
 eq([numbers['amp-display-first'].value,numbers['amp-display-first'].min,numbers['amp-display-first'].max],[first,1,last],'first box limits and set value');
 eq([numbers['amp-display-last'].value,numbers['amp-display-last'].min,numbers['amp-display-last'].max],[last,first,total],'last box limits and set value');
 ok(first>=1&&first<=last&&last<=total,'ordered endpoints');
}
eq(boxes['amp-display-range'].text,'display selected partials range','preserves the current user label without embedded numbers');
eq(C.inlets,3);eq(C.outlets,9);eq(boxes['amp-viewport-js'].numoutlets,C.outlets,'saved/runtime port agreement');
count(16);data(16);state(1,16,16);clear();
user('first',4);state(4,16,16);user('last',32);state(4,16,16);
user('first',100);state(16,16,16);user('first',0);state(1,16,16);
user('first',4);user('last',2);state(4,4,16);user('last',12);state(4,12,16);
const before=Array.from(C.fullValues);click('all');state(1,16,16);eq(C.fullValues,before,'display all preserves every amplitude');
ok(events.some(e=>e[0]===4&&e[1][0]==='set'&&e[1][1]===1),'first readback uses set');
ok(events.some(e=>e[0]===5&&e[1][0]==='set'&&e[1][1]===16),'last readback uses set');
eq(edits,[],'all endpoints/limits/echoes are view-only');
click('range');ok(!C.showAll,'current descriptive range label enables constrained view');click('all');ok(C.showAll,'display all returns full view');
count(32);data(32);state(1,32,32);clear();
user('first',4);user('last',12);state(4,12,32);
count(8);state(4,8,8);eq(C.fullValues.length,32,'outgoing fade data is preserved');
eq(observedOrder.slice(0,2),['display-count','engine-count'],'limit is updated before engine fade');
user('last',32);state(4,8,8);data(8);state(4,8,8);
count(3);state(3,3,3);data(3);state(3,3,3);click('all');state(1,3,3);
count(64);data(64);state(1,64,64);
user('first',8);user('last',24);click('range');state(8,24,64);
eq(edits,[],'count changes and explicit display button do not create edits');
// Full 2..256 count range with invalid endpoint edits and feedback-resistant readbacks.
for(let n=2;n<=256;n++){
 count(n);data(n);click('all');state(1,n,n);
 user('first',-100);state(1,n,n);
 user('last',n+99);state(1,n,n);
 const f=Math.min(n,4);user('first',f);state(f,n,n);
 user('last',1);state(f,f,n);
 user('first',n+100);state(f,f,n);
 user('last',n);state(f,n,n);
 clear();click('all');state(1,n,n);eq(edits,[],'no edit for all at count '+n);
}
// Native-style manual viewport editing still updates the correct full-list positions.
count(16);data(16);click('all');user('first',4);user('last',8);clear();
const want=Array.from(C.fullValues);want.splice(3,5,.81,.82,.83,.84,.85);
invoke(1,'list',.81,.82,.83,.84,.85);eq(C.fullValues,want);eq(edits,[want],'exactly one full edit for real manual changes');
state(4,8,16);
clear();for(const pair of [[0,999],[9,4],[99,100]]){invoke(0,'display','partials',...pair);state(C.viewFirst,C.viewLast,16);}
invoke(0,'display','all');state(1,16,16);
const oldValues=Array.from(C.fullValues);
for(const f of ['first','last','activecount'])for(const bad of [NaN,Infinity,'bad','']){invoke(0,f,bad);state(1,16,16);}
eq(C.fullValues,oldValues);eq(edits,[]);
// Repeated morph frames must not repeatedly set active number-box text while typing.
clear();data(16);data(16);ok(!events.some(e=>e[0]>=4),'unchanged endpoint state does not spam readbacks');
// Rendering count can temporarily exceed selected count during the established 150 ms fade.
// Run the unmodified actual interpolation engine with the new count connection.
let engine,canonical=[],manualEdits=0;
function Clock(){this.getTime=()=>clock;}
function Task(){this.cancel=()=>{};this.repeat=()=>{};this.schedule=()=>{};}
const E={Math,Number,String,Array,Object,isFinite,Task,Date:Clock,inlet:0,arrayfromargs:a=>Array.from(a),messnamed:()=>{},post:()=>{},
 outlet(port,...args){const a=args.length===1&&Array.isArray(args[0])?Array.from(args[0]):args;if(port===1){
  if(a[0]==='size'){canonical=Array.from({length:a[1]},(_,i)=>canonical[i]||0);invoke(0,'size',a[1]);}
  else{canonical=a.slice();calls=0;invoke(0,'list',...a);}
 }}};
vm.createContext(E);vm.runInContext(fs.readFileSync(path.join(R,'javascript/multislider_interpolation_engine_v23_6.js'),'utf8'),E);
function setEngineCount(n){count(n);E.inlet=9;E.msg_int(n);}
function tick(t){clock=t;E.lifeTick();}
setEngineCount(32);tick(200);click('all');state(1,32,32);
E.inlet=7;E.msg_int(0);E.inlet=1;E.list(...values(32));
const memory=JSON.parse(JSON.stringify(E.memory));
user('first',4);user('last',24);setEngineCount(16);state(4,16,16);
eq(E.displayCount,32,'engine still fades 32 slots');eq(C.fullValues.length,32,'adapter retains full render list during fade');
user('last',32);state(4,16,16);tick(400);state(4,16,16);eq(E.displayCount,16);eq(C.fullValues.length,16);
eq(E.memory,memory,'range synchronization does not overwrite full hidden memory');
click('all');setEngineCount(32);state(1,32,32);tick(600);state(1,32,32);eq(E.memory,memory);
const report={status:'PASS',assertions,coverage:[
 'Saved message, number boxes, new JS outlets and count-trigger connection',
 'All active counts 2..256, dynamic cross-limits, min/max clamps, silent set readbacks',
 'Display-all resets to 1..N and follows count changes; cropped ranges stay valid',
 'Count limits update before the existing 150 ms engine fade; departing slots cannot be selected',
 'Adversarial limit/size echo rejection and no render-frame readback spam',
 'Existing external display commands, single/full-range views, invalid input handling',
 'Manual cropped edits target the correct original slots; actual engine hidden memory is preserved'
 ],limitations:['Max UI and scheduler are modeled; native Max execution and audio were not performed.']};
fs.writeFileSync(path.join(__dirname,'PARTIAL_RANGE_NUMBERS_RESULTS_v23.json'),JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify(report,null,2));
