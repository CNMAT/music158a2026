/* Before/after comparison against the retained source snapshots. Both versions
 * run in the same emulated message/clock environment, never native Max/DSP. */
'use strict';
const fs=require('fs'),vm=require('vm'),path=require('path'),assert=require('assert');
const R=path.resolve(__dirname,'..');let clock=0,checks=0,seed=342981;
function rand(){seed=(Math.imul(seed,1664525)+1013904223)>>>0;return seed/4294967296;}
function eq(a,b,m){assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;}
function load(file,maxPort){
 const out=[];function Clock(){this.getTime=()=>clock;}function Task(){this.interval=5;this.repeat=()=>{};this.cancel=()=>{};this.schedule=()=>{};}
 const c={Math,Number,String,Array,Object,JSON,isFinite,Date:Clock,Task,inlet:0,arrayfromargs:a=>Array.from(a),error:m=>{throw Error(m);},messnamed:()=>{},post:()=>{},
 outlet:(o,...a)=>{if(o>maxPort)return;const v=a.length===1&&Array.isArray(a[0])?Array.from(a[0]):a;out.push([o,v]);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(file,'utf8'),c);c.events=out;return c;
}
function call(c,i,f,...a){c.inlet=i;return c[f](...a);}
const tx='sinusoid_model_transform_v23.js',off='partial_offset_crossfade_v23_6.js';
const old=load(path.join(__dirname,'audio_zoom_reference',tx+'.txt'),5),now=load(path.join(R,'javascript',tx),5);
function both(i,f,...a){old.events.length=0;now.events.length=0;call(old,i,f,...a);call(now,i,f,...a);eq(now.events,old.events,'original transform ports 0..5: '+f);}
for(let trial=0;trial<300;trial++){
 const n=2+Math.floor(rand()*255),m=[];
 for(let k=1;k<=2*n;k++)m.push(k,10+Math.floor(rand()*1800)*12,rand());
 both(0,'tagged',...m);
 for(const [f,v] of [['cluster',trial%2?rand()*300:0],['gain',rand()*2],['semitones',rand()*48-24],['cents',rand()*200-100],['offset',rand()*400-200],['low',rand()*300],['high',3000+rand()*20000],['samplerate',[44100,48000,96000][trial%3]],['bypass',trial%3===0?1:0]])both(1,f,v);
 both(1,'tuning',.5+rand()*2,rand()*100,0);
}
const a=load(path.join(__dirname,'audio_zoom_reference',off+'.txt'),0),b=load(path.join(R,'javascript',off),0);
function bothOffset(i,f,...args){a.events.length=0;b.events.length=0;call(a,i,f,...args);call(b,i,f,...args);eq(b.events,a.events,'original offset behavior with audition off: '+f);eq(b.ec_export(),a.ec_export(),'full unmasked preset state parity');}
for(let frame=0;frame<500;frame++){
 clock+=Math.floor(rand()*43);
 if(frame%7===0)bothOffset(1,'layout',frame%4,1+Math.floor(rand()*20));
 const m=[];for(let k=1;k<=64;k++)m.push(k,30+k*(20+frame%17),rand());
 bothOffset(0,'list',...m);clock+=5;bothOffset(0,'tick');
}
console.log(JSON.stringify({status:'PASS',checks,transform_trials:300,offset_frames:500,coverage:['Original transform outlets 0..5 match retained baseline over all transform controls','Audition-off offset outputs and preset states match original bank engine during rapid layout changes'],limits:['Emulated messages/clock; no native Max/DSP.']},null,2));
