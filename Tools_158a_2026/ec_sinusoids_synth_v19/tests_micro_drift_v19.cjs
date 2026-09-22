const fs=require('fs'),vm=require('vm'),assert=require('assert'),path=require('path');
let time=0,raw=[],active=false;class Clock extends Date{constructor(){super(time);}}
const c={Math,Date:Clock,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),outlet:(o,v)=>{if(o===4)raw=Array.from(v);},Task:function(){this.cancel=()=>active=false;this.repeat=()=>active=true;}};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'cnmat_sinusoid_model_generator_v19.js'),'utf8'),c);
const near=(a,b)=>assert(Math.abs(a-b)<1e-8,`${a} != ${b}`);
c.inlet=3;c.msg_int(12);c.inlet=4;c.msg_float(110);c.inlet=1;c.list(...Array(12).fill(.5));c.inlet=0;c.list(...Array(12).fill(-.5));
const baseline=raw.slice();assert(!active);near(c.microDepthHz,1);
c.inlet=8;c.micro(1);assert(!active);assert.deepEqual(raw,baseline);
c.inlet=5;c.msg_float(1);assert(active);assert.deepEqual(raw,baseline);
assert(c.microTarget.slice(1,12).every(x=>Math.abs(x)===1));
time=c.microTimes[1]+c.microDurations[1]/2;c.buildModel();near(raw[2]-baseline[2],c.microTarget[1]*(Math.floor(time)-c.microTimes[1])/c.microDurations[1]);near(raw[0],110);
// Equal choices use the lower/upper half of a uniform seeded random draw.
const rng=c.seededRandom;c.seededRandom=()=>.49;c.nextMicro(1,2,time);near(c.microTarget[1],1);
c.seededRandom=()=>.5;c.nextMicro(1,2,time);near(c.microTarget[1],3);
c.seededRandom=rng;
let plus=0,minus=0,value=0;
for(let i=0;i<10000;i++){c.nextMicro(1,value,time);const delta=c.microTarget[1]-value;assert(Math.abs(delta)===1);delta>0?plus++:minus++;value=c.microTarget[1];}
assert(plus>4700&&plus<5300);assert(minus>4700&&minus<5300);
c.inlet=8;c.microdepth(2.5);c.nextMicro(1,0,time);near(Math.abs(c.microTarget[1]),2.5);
time=Math.ceil(c.microTimes[1]+c.microDurations[1]);c.inlet=5;c.msg_float(.5);near(Math.abs(raw[2]-baseline[2]),1.25);
c.msg_float(0);assert(!active);assert.deepEqual(raw,baseline);assert(c.microStart.every(x=>x===0)&&c.microTarget.every(x=>x===0));
c.msg_float(1);assert(active);c.inlet=8;c.micro(0);assert(!active);assert.deepEqual(raw,baseline);
c.micro(1);time=c.microTimes[2]+c.microDurations[2]/2;c.buildModel();const offset=raw[4]-baseline[4];
c.inlet=0;c.list(...Array(12).fill(.75));near(raw[4],330*Math.pow(2,.75/12)+offset);
c.inlet=8;c.micro(0);near(raw[4],330*Math.pow(2,.75/12));near(c.driftValues[2],.75);
c.inlet=2;c.list(...Array(12).fill(.25));c.inlet=8;c.micro(1);time+=3000;c.microTick();for(let i=0;i<12;i++)near(raw[4*i+2],110*(i+1));
c.seed(123);const targets=Array.from(c.microTarget);c.seed(123);assert.deepEqual(Array.from(c.microTarget),targets);
let patchers=0,objects=0,cords=0;
function check(p,where=''){
 patchers++;objects+=p.boxes.length;cords+=p.lines.length;const ids=new Map(p.boxes.map(e=>[e.box.id,e.box]));assert.equal(ids.size,p.boxes.length);
 for(const {patchline:l} of p.lines){assert(ids.has(l.source[0])&&ids.has(l.destination[0]));assert(l.source[1]<ids.get(l.source[0]).numoutlets);assert(l.destination[1]<ids.get(l.destination[0]).numinlets);}
 if(where.endsWith('/p Micro-Drift')){assert(!ids.has('obj-1'));assert.equal(ids.get('micro-on14load').text,'loadmess 0');assert.equal(ids.get('micro-depth14load').text,'loadmess 1.');}
 for(const b of ids.values())if(b.patcher)check(b.patcher,where+'/'+b.text);
}
check(JSON.parse(fs.readFileSync(path.join(__dirname,'_ec_sinusoids_synth_stage_v19.maxpat'))).patcher);
const report={status:'passed',randomStepSelections:10000,upSteps:plus,downSteps:minus,checks:['default 1 Hz step','zero amount stops task and resets offset','enabled toggle with zero amount stays stopped','linear midpoint','exact up/down step choices','adjustable step','amount scales offset','toggle off restores detuned baseline','detune edits move walk baseline without overwriting sliders','F0 lock','exact harmonic anchors','repeatable seed','patch graph and unambiguous startup'],master:{patchers,objects,patchCords:cords},runtime:'Node VM with Max task/message stubs; Max audio not tested'};
fs.writeFileSync(path.join(__dirname,'VALIDATION_MICRO_DRIFT_v19.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
