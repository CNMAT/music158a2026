/* Emulated message tests. Runs actual adapter + unchanged interpolation engine;
   not a native Max scheduler, UI or DSP test. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const R=path.resolve(__dirname,'..');let assertions=0,clock=0;
function equal(a,b,m){assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);assertions++;}
function ok(x,m){assert.ok(x,m);assertions++;}
function invoke(c,i,f,...args){const old=c.inlet;c.inlet=i;try{return c[f](...args);}finally{c.inlet=old;}}
function load(name,callback){
 const events=[];function Clock(){this.getTime=()=>clock;}
 function Task(fn,owner,arg){this.interval=20;this.repeat=()=>{};this.cancel=()=>{};this.schedule=()=>{};}
 const c={Math,Date:Clock,Task,Number,String,Array,Object,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),
  messnamed:()=>{},post:()=>{},error:m=>{throw Error(m);},
  outlet:(o,...args)=>{let a=(args.length===1&&Array.isArray(args[0]))?Array.from(args[0]):args;events.push([o,a]);if(callback)callback(o,a);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(R,'javascript',name),'utf8'),c,{filename:name});c.events=events;return c;
}
const a=load('partial_amplitude_display_v23.js');const values=Array.from({length:16},(_,i)=>(i+1)/20);
invoke(a,0,'list',...values);equal(a.shownValues,values);
a.events.length=0;invoke(a,0,'display','partials',5,8);equal(a.shownValues,values.slice(4,8));ok(!a.events.some(e=>e[0]===1),'display must emit no edits');
invoke(a,1,'list',.9,.7,.6,.4);const merged=values.slice();merged.splice(4,4,.9,.7,.6,.4);equal(a.fullValues,merged);equal(a.events.filter(e=>e[0]===1).at(-1)[1],merged);
a.events.length=0;invoke(a,0,'display','all');equal(a.shownValues,merged);ok(!a.events.some(e=>e[0]===1));
invoke(a,0,'display','partials',8,5);equal([a.viewFirst,a.viewLast],[5,8]);
const before=JSON.stringify(a.fullValues);for(const args of [['partials','NaN',8],['partials',1,Infinity],['nonsense'],['partials',3]])invoke(a,0,'display',...args);equal(JSON.stringify(a.fullValues),before);
invoke(a,0,'display','partials',500,1000);equal([a.viewFirst,a.viewLast],[16,16]);invoke(a,1,'msg_float',.3);equal(a.fullValues[15],.3);
invoke(a,0,'display','partials',1,4);invoke(a,2,'multipliers',1,2,3,5,7,11,13,17);equal(a.events.filter(e=>e[0]===2).at(-1)[1],['multipliers',1,2,3,5]);
invoke(a,0,'display','partials',5,8);equal(a.events.filter(e=>e[0]===2).at(-1)[1],['multipliers',7,11,13,17]);
for(let n=2;n<=256;n++){
 const v=Array.from({length:n},(_,i)=>i/256);invoke(a,0,'list',...v);
 for(const pair of [[1,n],[n,n],[1,1],[2,Math.min(n,8)],[256,256]]){
  a.events.length=0;invoke(a,0,'display','partials',...pair);
  equal(a.shownValues,v.slice(a.viewFirst-1,a.viewLast));equal(a.fullValues,v);
  ok(a.shownValues.length>=1&&a.shownValues.length<=n);ok(!a.events.some(e=>e[0]===1));
 }
 invoke(a,0,'display','all');equal(a.shownValues,v);
}
// Actual engine + canonical multislider + cropped editor with simulated size echo.
let adapter,engine,canonical=[],ui=[],editCount=0;
function canonicalInput(args){
 if(args[0]==='size'){
  canonical=Array.from({length:args[1]},(_,i)=>canonical[i]||0);
  invoke(engine,4,'list',...canonical);
 }else{canonical=args.slice();invoke(engine,4,'list',...canonical);}
}
adapter=load('partial_amplitude_display_v23.js',(o,args)=>{
 if(o===0){
  if(args[0]==='size'){
   ui=Array.from({length:args[1]},(_,i)=>ui[i]||0);invoke(adapter,1,'list',...ui);
  }else if(args[0]==='setlist')ui=args.slice(1);
 }else if(o===1){editCount++;canonicalInput(args);}
});
engine=load('multislider_interpolation_engine_v23_6.js',(o,args)=>{
 if(o===1){canonicalInput(args);if(args[0]==='size')invoke(adapter,0,'size',args[1]);else invoke(adapter,0,'list',...args);}
});
invoke(engine,9,'msg_int',16);clock=200;engine.lifeTick();invoke(engine,7,'msg_int',0);invoke(engine,1,'list',...values);
const snapshot=JSON.stringify(engine.memory);const count=engine.componentCount;
for(const bounds of [[3,6],[1,16],[16,16]])invoke(adapter,0,'display','partials',...bounds);
invoke(adapter,0,'display','all');equal(JSON.stringify(engine.memory),snapshot);equal(engine.componentCount,count);equal(editCount,0,'size echoes must not become edits');
invoke(adapter,0,'display','partials',5,8);invoke(adapter,1,'list',.6,.7,.8,.9);
const want=values.slice();want.splice(4,4,.6,.7,.8,.9);equal(engine.memory[1].slice(0,16),want);equal(editCount,1);equal(canonical,want);equal(ui,want.slice(4,8));
const hidden=engine.memory[1].slice(0,16);invoke(engine,9,'msg_int',4);clock=400;engine.lifeTick();equal(engine.memory[1].slice(0,16),hidden);equal(adapter.fullValues.length,4);equal([adapter.viewFirst,adapter.viewLast],[4,4]);
invoke(engine,9,'msg_int',16);clock=600;engine.lifeTick();equal(engine.memory[1].slice(0,16),hidden);equal([adapter.viewFirst,adapter.viewLast],[5,8]);equal(ui,want.slice(4,8));
invoke(engine,7,'msg_int',1000);invoke(engine,1,'list',...Array(16).fill(.1));clock=1100;engine.tick(1);
ok(ui.every((v,i)=>Math.abs(v-(want[i+4]+.1)/2)<1e-6),'visible crop follows original morph');equal(editCount,1,'morph UI output does not create edits');
const result={status:'PASS',assertions,coverage:['Range-only commands leave canonical amplitudes and sounding count unchanged','Inclusive 1-based clipping, reversed ranges, invalid input, single-slot edits','All active counts 2..256; representative range endpoints','Primary multiplier labels follow sequence/offset values','Actual unchanged interpolation engine integration, echo rejection, hidden-slot memory, count fades and morphs'],limits:['Emulated Max messages only; no native Max GUI, loader, keyboard, scheduler or audio.']};
fs.writeFileSync(path.join(__dirname,'PARTIAL_DISPLAY_RESULTS_v23.json'),JSON.stringify(result,null,2)+'\n');console.log(JSON.stringify(result,null,2));
