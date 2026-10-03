/* Read-only source tests. Executes the uploaded JavaScript in a Node VM with
   messaging, Task, and clock stubs. Does not execute Max objects or audio DSP. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=__dirname;let assertions=0,clock=0;
function check(v,msg){assert.ok(v,msg);assertions++;}
function equal(a,b,msg){assert.deepStrictEqual(a,b,msg);assertions++;}
function near(a,b,msg){check(Math.abs(a-b)<1e-6,msg||`${a} versus ${b}`);}
function load(name,callback){
 const events=[]; function Clock(){this.getTime=()=>clock;}
 function Task(fn,owner,arg){this.interval=20;this.active=false;this.repeat=()=>{this.active=true;};this.cancel=()=>{this.active=false;};}
 const c={Number,String,Array,Object,Math,Date:Clock,isFinite,Task,inlet:0,arrayfromargs:a=>Array.from(a),
  outlet:(o,...args)=>{events.push({outlet:o,args});if(callback)callback(o,args);},messnamed:()=>{},error:m=>{throw Error(m);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,name),'utf8'),c,{filename:name});c.events=events;return c;
}
function call(c,i,f,...args){c.inlet=i;return c[f](...args);}
function last(c,o){return c.events.filter(e=>e.outlet===o).at(-1).args[0];}
const checks=[];
const shape=load('detune_shape_library_v20.js');
for(const count of [2,48,256]){
 call(shape,0,'msg_int',count);
 for(let index=0;index<94;index++){
  call(shape,1,'msg_int',index);let list=Array.from(last(shape,0));equal(list.length,count);
  check(list.every(x=>Number.isFinite(x)&&x>=-1&&x<=1));
  if(index===0)check(list.every(x=>x===0));
  if(index===1)check(list.every(x=>x===1));
 }
}
checks.push('All 94 detune presets: correct lengths and signed range at counts 2, 48 and 256; Flat Zero and All on full.');
const weights=load('dynamic_shape_library_weights_v20.js');
for(const count of [2,48,256]){
 call(weights,0,'msg_int',count);
 for(let index=0;index<25;index++){
  call(weights,1,'msg_int',index);const list=Array.from(last(weights,0));equal(list.length,count);check(list.every(x=>Number.isFinite(x)&&x>=0&&x<=1));
  if(index===0)check(list.every(x=>x===0));if(index===1)check(list.every(x=>x===1));
 }
}
checks.push('All 25 removal-weight presets: correct lengths and 0–1 range at counts 2, 48 and 256.');
let remover;
const memory=load('multislider_interpolation_engine_v20_add_restore.js',(o,args)=>{
 if(remover&&o<3&&Array.isArray(args[0]))call(remover,o+2,'list',...args[0]);
});
remover=load('weighted_partial_add_remove_v20.js',(o,args)=>{
 if(o===0){const command=Array.from(args[0]);call(memory,10,command.shift(),...command);}
});
call(remover,5,'msg_int',4);call(memory,9,'msg_int',4);
for(let layer=0;layer<3;layer++)call(memory,6+layer,'msg_int',0);
call(memory,0,'list',-.5,.25,-1,1);call(memory,1,'list',.1,.2,.3,.4);call(memory,2,'list',.4,.3,.2,.1);
call(remover,1,'list',1,1,1,1);const before=JSON.parse(JSON.stringify(memory.memory.map(x=>x.slice(0,4))));
call(remover,0,'remove',4);check(memory.memory.every(x=>x.slice(0,4).every(v=>v===0)));
call(remover,0,'add',4);equal(JSON.parse(JSON.stringify(memory.memory.map(x=>x.slice(0,4)))),before);
call(memory,10,'partialvalue',0,256,-.75);call(memory,9,'msg_int',2);call(memory,9,'msg_int',256);near(memory.memory[0][255],-.75);
call(memory,10,'alloff');check(memory.memory.every(x=>x.every(v=>v===0)));
checks.push('Active remove/add engine restores all three layers exactly; direct memory resizing retains a hidden signed slot; All Off clears all 256 slots.');
const generator=load('cnmat_sinusoid_model_generator_v20.js');
call(generator,7,'beginupdate');call(generator,3,'msg_int',3);call(generator,4,'msg_float',55);
call(generator,0,'list',1,1,-1);call(generator,1,'list',.2,.3,.4);call(generator,2,'list',.1,.1,.1);call(generator,7,'endupdate');
const tagged=Array.from(last(generator,6));equal(tagged.length,18);equal(tagged.filter((_,i)=>i%3===0),[1,2,3,4,5,6]);
near(tagged[1],55);near(tagged[7],110*Math.pow(2,1/12));near(tagged[13],165*Math.pow(2,-1/12));near(tagged[4],55);near(tagged[10],110);near(tagged[16],165);
checks.push('Generator preserves paired IDs, locks the source fundamental, detunes higher primaries by ±100 cents, and leaves anchors exact.');
const retune=load('global_retuning_controller_v20.js');
call(retune,3,'msg_float',0);call(retune,0,'msg_float',55);call(retune,1,'msg_float',110);near(retune.actualBase,110);
call(retune,2,'msg_int',1);equal(retune.events.filter(e=>e.outlet===1).at(-1).args.slice(0,3),['tuning',2,0]);
call(retune,2,'msg_int',2);equal(retune.events.filter(e=>e.outlet===1).at(-1).args.slice(0,3),['tuning',1,55]);
checks.push('Retuning controller zero-duration ratio and fixed-Hz modes emit expected ratio/shift commands.');
const transform=load('sinusoid_model_transform_v20.js');call(transform,0,'tagged',1,110,.2,2,110,.3,3,220,.4,4,220,0);
const merged=Array.from(last(transform,5));equal(merged.length,12);near(merged[2],.5);near(merged[5],0);
call(transform,1,'high',200);equal(Array.from(last(transform,5)).filter((_,i)=>i%3===0),[1,2]);
checks.push('Post-transform exact-frequency merging preserves silent absorbed IDs; frequency-window rejection removes rejected records.');
const report={status:'PASS',assertions,checks,limitations:['JavaScript source tests only; Max patch-cord execution, scheduler, graphics, sinusoids~ DSP, actual audio channels and listening not exercised.','Memory resize test does not simulate patch-level selected-shape regeneration.']};
fs.writeFileSync(path.join(__dirname,'diagnostics','current_core_checks_results_v20.json'),JSON.stringify(report,null,2));console.log(JSON.stringify(report,null,2));
