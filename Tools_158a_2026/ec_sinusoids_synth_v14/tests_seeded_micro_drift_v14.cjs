const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');let time=0;
class Clock extends Date{constructor(){super(time);}}
function make(){let raw=[],live=0;const c={Math,Date:Clock,inlet:0,isFinite,error:()=>{},arrayfromargs:a=>Array.from(a),Task:function(){this.cancel=()=>{};this.repeat=()=>{};},outlet:(o,v,n)=>{if(o===4)raw=Array.from(v);if(o===5)live=n;}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'cnmat_sinusoid_model_generator_14.js'),'utf8'),c);c.raw=()=>raw;c.live=()=>live;return c;}
function setup(c){c.inlet=3;c.msg_int(256);c.inlet=4;c.msg_float(27.5);for(let ch=0;ch<3;ch++){c.inlet=ch;c.list(...Array(256).fill(ch===0?.7:ch===1?.4:.2));}c.inlet=8;c.seed(34567);}
const c=make(),d=make();setup(c);setup(d);
// Verify micro movement survives the post-transform pipeline used by the audio path.
let output=[];const tc={Math,isFinite,error:()=>{},inlet:0,arrayfromargs:a=>Array.from(a),outlet:(o,v)=>{if(o===0)output=Array.from(v);}};
vm.createContext(tc);vm.runInContext(fs.readFileSync(path.join(__dirname,'sinusoid_model_transform_14.js'),'utf8'),tc);
const patch=JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_14.maxpat'))).patcher;
const microPatch=patch.boxes.find(x=>x.box.id==='obj-32').box.patcher;
for(const name of ['micro-on14command','micro-depth14command','micro-time14command'])assert(microPatch.lines.some(x=>x.patchline.source[0]===name&&x.patchline.destination[0]==='obj-31'));
for(const [a,out,b,bi] of [['obj-32',0,'syn-js',8],['syn-js',4,'rt14-transform',0],['rt14-transform',0,'obj-5',0],['obj-5',0,'obj-signal-in',0],['syn-js',5,'obj-32',0]])assert(patch.lines.some(x=>{const l=x.patchline;return l.source[0]===a&&l.source[1]===out&&l.destination[0]===b&&l.destination[1]===bi;}));

const dirs=JSON.stringify(c.driftDirections);assert.equal(dirs,JSON.stringify(d.driftDirections));assert(c.driftDirections.includes(1)&&c.driftDirections.includes(-1));
const nominal=c.raw();c.bang();assert.deepEqual(c.raw(),nominal);assert.equal(JSON.stringify(c.driftDirections),dirs);
c.inlet=3;c.msg_int(32);c.msg_int(256);assert.equal(JSON.stringify(c.driftDirections),dirs);
c.inlet=8;c.seed(45678);assert.notEqual(JSON.stringify(c.driftDirections),dirs);c.seed(34567);assert.equal(JSON.stringify(c.driftDirections),dirs);
c.microdepth(.1);c.microtime(2000);c.micro(1);d.inlet=8;d.microdepth(.1);d.microtime(2000);d.micro(1);
const sliders=JSON.stringify([c.driftValues,c.amplitudeValues,c.harmonicAmplitudeValues]);let changed=false;
for(time=40;time<=12000;time+=40){c.microTick();d.microTick();assert.deepEqual(c.raw(),d.raw());const r=c.raw();assert.equal(r[0],27.5);assert.equal(r[2],27.5);for(let i=1;i<256;i++){const f0=nominal[i*4],ideal=27.5*(i+1),f=r[i*4];assert(Math.abs(f-f0)<=.1+1e-9);assert.equal(r[i*4+2],ideal);assert.equal(r[i*4+1],.4);assert.equal(r[i*4+3],.2);if(Math.abs(f-f0)>1e-6)changed=true;}assert.equal(JSON.stringify(c.driftDirections),dirs);}
assert(changed);assert.equal(JSON.stringify([c.driftValues,c.amplitudeValues,c.harmonicAmplitudeValues]),sliders);
// A segment restart and time change preserve the instantaneous line value.
let i=7,v=c.microValue(i);c.microtime(3500);assert(Math.abs(c.microValue(i)-v)<1e-12);
c.micro(0);assert.deepEqual(c.raw(),nominal);assert.equal(c.live(),0);
c.micro(1);c.inlet=5;c.msg_float(0);c.inlet=0;c.list(...Array(256).fill(0));
// Critical regression: micro continues moving exact-harmonic primary partials.
const exact=c.raw();time+=500;c.microTick();assert.notEqual(c.raw()[4],exact[4]);assert(Math.abs(c.raw()[4]-55)<=.1);assert(c.live()>0);assert.equal(c.raw()[6],55);tc.list(...exact);const audioBefore=JSON.stringify(output);tc.list(...c.raw());assert.notEqual(JSON.stringify(output),audioBefore);
c.inlet=8;c.microdepth(50);assert.equal(c.microDepthHz,5);c.microtime(0);assert.equal(c.microTimeMs,100);
c.inlet=7;c.beginupdate();const before=c.raw();time+=40;c.microTick();assert.deepEqual(c.raw(),before);c.endupdate();
console.log('PASS: reproducible seeded directions and walks, no rerolls on rebuild/resize, independent smooth bounded excursions, fixed fundamental/anchors, untouched sliders, timing continuity, motion with zero inharmonicity/Max Drift, live readout, post-transform movement/audio-path wiring, parameter bounds and held model transaction.');
