// Seeded random-walk regression: exact source semantics, no DSP or native scheduler claims.
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');let time=0,checks=0;
class Clock extends Date{constructor(){super(time);}}
function load(name,callback){const c={Math,Date:Clock,inlet:0,isFinite,error:()=>{},arrayfromargs:a=>Array.from(a),Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:callback||(()=>{})};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,name),'utf8'),c);return c;}
function make(){let raw=[],tagged=[],live=0;const c=load('cnmat_sinusoid_model_generator_v20.js',(o,v,n)=>{if(o===4)raw=Array.from(v);if(o===6)tagged=Array.from(v);if(o===5)live=n;});c.raw=()=>raw;c.tagged=()=>tagged;c.live=()=>live;return c;}
function setup(c){c.inlet=3;c.msg_int(256);c.inlet=4;c.msg_float(27.5);for(let ch=0;ch<3;ch++){c.inlet=ch;c.list(...Array(256).fill(ch===0?.7:ch===1?.4:.2));}c.inlet=8;c.seed(34567);}
const c=make(),d=make();setup(c);setup(d);const dirs=JSON.stringify(c.driftDirections),nominal=c.raw();assert.equal(dirs,JSON.stringify(d.driftDirections));c.bang();assert.deepEqual(c.raw(),nominal);
c.inlet=3;c.msg_int(32);c.msg_int(256);assert.equal(JSON.stringify(c.driftDirections),dirs);c.inlet=8;c.seed(45678);assert.notEqual(JSON.stringify(c.driftDirections),dirs);c.seed(34567);
for(const z of [c,d]){z.inlet=8;z.microdepth(.1);z.microtime(2000);z.micro(1);z.inlet=5;z.msg_float(1);}
const sliders=JSON.stringify([c.driftValues,c.amplitudeValues,c.harmonicAmplitudeValues]);let changed=false,maxOffset=0;
for(time=40;time<=12000;time+=40){c.microTick();d.microTick();assert.deepEqual(c.raw(),d.raw());const r=c.raw();assert.equal(r[0],27.5);assert.equal(r[2],27.5);for(let i=1;i<256;i++){const offset=Math.abs(r[i*4]-nominal[i*4]);maxOffset=Math.max(maxOffset,offset);if(offset>1e-6)changed=true;assert.equal(r[i*4+2],27.5*(i+1));assert.equal(r[i*4+1],.4);assert.equal(r[i*4+3],.2);checks+=3;}assert.equal(JSON.stringify(c.driftDirections),dirs);}
assert(changed);assert(maxOffset>.1,'A walk can accumulate beyond one 0.1 Hz step');assert.equal(JSON.stringify([c.driftValues,c.amplitudeValues,c.harmonicAmplitudeValues]),sliders);
const v=c.microValue(7);c.inlet=8;c.microtime(3500);assert(Math.abs(c.microValue(7)-v)<1e-12);c.micro(0);assert.deepEqual(c.raw(),nominal);assert.equal(c.live(),0);
// Exact harmonic primaries still walk when the micro amount is positive; anchor partners do not.
c.micro(1);c.inlet=0;c.list(...Array(256).fill(0));const exact=c.raw();time+=500;c.microTick();assert.notEqual(c.raw()[4],exact[4]);assert.equal(c.raw()[6],55);
let transformed=[];const t=load('sinusoid_model_transform_v20.js',(o,v)=>{if(o===5)transformed=Array.from(v);});t.tagged(...c.tagged());const before=transformed.slice();time+=500;c.microTick();t.tagged(...c.tagged());assert.notDeepEqual(transformed,before);assert.equal(transformed.filter((_,i)=>i%3===0).length,512);
c.inlet=5;c.msg_float(0);const zero=c.raw();time+=500;c.microTick();assert.deepEqual(c.raw(),zero);assert.equal(c.live(),0);
c.inlet=8;c.microdepth(50);assert.equal(c.microDepthHz,5);c.microtime(0);assert.equal(c.microTimeMs,100);c.inlet=5;c.msg_float(1);
c.inlet=7;c.beginupdate();const held=c.raw();time+=40;c.microTick();assert.deepEqual(c.raw(),held);c.endupdate();assert.notDeepEqual(c.raw(),held);
// The current authoritative audio input is tagged, not the obsolete raw-model receive.
const p=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_v20.maxpat'))).patcher;
function edge(s,o,z,i){assert(p.lines.some(({patchline:l})=>l.source[0]===s&&l.source[1]===o&&l.destination[0]===z&&l.destination[1]===i),s+' -> '+z);}
edge('obj-32',0,'syn-js',8);edge('syn-js',6,'v20-tagged-prepend',0);edge('v20-tagged-prepend',0,'rt14-transform',0);edge('obj-29',0,'sinusoids-audio-rendering-v20',0);edge('syn-js',5,'obj-32',0);
assert.equal(p.boxes.find(x=>x.box.id==='obj-29').box.text,'r tagged-model-s_v20');
console.log('PASS: 300 paired 256-slot seeded walk frames; '+checks+' anchor/amplitude assertions; repeated seeds, resize stability, timing continuity, accumulated walk, positive/zero amount behavior, tagged transform movement, paired identities, parameter clamps, held transactions and tagged render wiring.');
