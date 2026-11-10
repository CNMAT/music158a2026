// Offline controller checks: node tests/controller_test.js
// These checks mock Max messages/Task; they do not run Max or Gen audio.
const fs=require('fs'), path=require('path'), vm=require('vm'), assert=require('assert');
const CAP=Number(process.argv[2]||16);
assert.ok([16,32,64].includes(CAP));
const EXTRA=Math.min(24,CAP);
const code=fs.readFileSync(path.join(__dirname,'../ec_tapdelay'+CAP+'_v4_control.js'),'utf8');
let checks=0;
function ok(value,label){checks++;assert.ok(value,label);}
function equal(actual,expected,label){checks++;assert.deepStrictEqual(JSON.parse(JSON.stringify(actual)),expected,label);}
function near(a,b,label){ok(Math.abs(a-b)<1e-7,label);}
function instance(pos=[],attrs={},channels=0,init=true){
  const outputs=[], tasks=[];
  function Task(fn,ctx){this.fn=()=>fn.call(ctx);this.pending=false;this.schedule=ms=>{this.pending=true;this.ms=ms;};this.cancel=()=>{this.pending=false;};tasks.push(this);}
  const ctx={jsarguments:['ec_tapdelay'+CAP+'_v4_control.js','private_test_buffer'],Task,
    arrayfromargs:a=>Array.from(a),outlet:(...a)=>outputs.push(a),Date,Math};
  vm.createContext(ctx);vm.runInContext(code,ctx);
  ctx.outputs=outputs;ctx.tasks=tasks;
  if(channels)ctx.audiochannels(channels);
  ctx.creationargs(...pos);
  for(const [k,v] of Object.entries(attrs))ctx.creationattr(k,v);
  if(init)ctx.initialize();
  return ctx;
}
function snapshot(c){return JSON.stringify([c.inputCount,c.tapSetting,c.baseSpacing,c.curveName,c.times,c.actualTimes,c.patternMode,c.running]);}

let c=instance([12,250,'linear']);
equal(c.times,Array.from({length:12},(_,i)=>250*i),'12 sources imply 12 taps');
equal(c.tapSetting,'auto');
let named=instance([],{'sources':12,'spacing':250,'curve':'linear'});
equal(named.times,Array.from(c.times),'named / positional equivalence');
c.sources(8);equal(c.times.length,8);
c.taps(EXTRA);c.sources(12);equal(c.times.length,EXTRA);
equal(Array.from({length:EXTRA},(_,i)=>c.sourceForTap(i)),Array.from({length:EXTRA},(_,i)=>i%12));
c.taps('auto');equal(c.times.length,12);c.sources(3);equal(c.times.length,3);
c=instance([3,500,'expand'],{sources:12,spacing:250,curve:'linear',taps:EXTRA});
equal([c.inputCount,c.baseSpacing,c.curveName,c.times.length],[12,250,'linear',EXTRA],'named overrides positional');
let attrA=instance([],{taps:CAP,spacing:50,sources:1,curve:'stretch'});
let attrB=instance([],{curve:'stretch',sources:1,spacing:50,taps:CAP});
equal(attrA.times,Array.from(attrB.times),'attribute order does not cause partial-validation failure');

// Opening drift is a single nonnegative integer magnitude, with the existing 250-ms rate.
c=instance([12,250],{delaydrift:20});
equal([c.driftAmount,c.driftInterval,c.opening.delaydrift],[20,250,20]);
ok(!c.driftTask.pending,'opening drift waits for audio readiness');
c.audiochannels(12);c.audiorate(48000);c.dspactive(1);
ok(c.driftTask.pending,'opening attribute enables drift when DSP starts');
c.cycle();equal(c.cycleWaitMs,2750,'opening drift does not extend virtual timer');
const driftCycle=c.cycleTask;
c.delaydrift(5,500);c.curve('exponential');
equal([c.driftAmount,c.driftInterval],[5,500],'pattern edits preserve live drift settings');
c.stop();c.defaults();
equal([c.driftAmount,c.driftInterval,c.running],[20,250,1],'defaults restores opening drift');
ok(c.driftTask.pending);equal(driftCycle.pending,false);
c.dump();equal(c.outputs.filter(x=>x[0]===2&&x[1]==='delaydrift').at(-1),[2,'delaydrift',20,250]);
for(const amount of [0,1,10000]){
  c=instance([2,100],{'@delaydrift':amount});
  equal(c.driftAmount,amount,'creation bounds and @ prefix');
}
equal(instance([2,100]).driftAmount,0,'omitted attribute remains off');
for(const attrs of [
  {delaydrift:37,sources:3,spacing:100,curve:'stretch',taps:8},
  {taps:8,curve:'stretch',spacing:100,sources:3,delaydrift:37}
]){
  c=instance([],attrs);
  equal([c.driftAmount,c.driftInterval,c.times.length,c.times.at(-1)],[37,250,8,875],'drift attribute order');
}
for(const amount of [-1,1.5,10001,NaN,Infinity,'20']){
  c=instance([12,250],{delaydrift:amount});
  equal([c.driftAmount,c.inputCount,c.tapSetting],[0,0,'auto'],'invalid opening drift uses factory fallback');
  ok(c.outputs.some(x=>x[0]===2&&x[1]==='warning'));
}
for(const values of [[],[20,500]]){
  c=instance([12,250],{},0,false);c.creationattr('delaydrift',...values);c.initialize();
  equal([c.driftAmount,c.inputCount],[0,0],'attribute requires exactly one value');
}
c=instance([12,250],{delaydrift:30},0,false);c.delaydrift(7,500);c.initialize();
equal([c.driftAmount,c.driftInterval,c.opening.delaydrift],[7,500,30],'queued runtime message overrides opening drift');
c.defaults();equal([c.driftAmount,c.driftInterval],[30,250]);

const curves=Array.from(c.curveNames);
for(const name of curves)for(let n=1;n<=CAP;n++){
  const a=instance([n,50,name]);
  equal(a.times.length,n,name+' count');near(a.times[0],0,name+' tap 1');
  const factor=name==='stretch'?1.25:name==='compress'?0.75:1;
  near(a.times[n-1],Math.round((n-1)*50*factor),name+' endpoint');
  for(let i=1;i<n;i++){
    const gap=a.times[i]-a.times[i-1];
    ok(gap>=25-1e-8&&gap<=75+1e-8,name+' bounded gap');
    ok(a.times[i]>a.times[i-1],name+' monotonic');
  }
}
c=instance([8,250,'exponential']);
equal(Array.from(c.times,x=>Math.round(x)),[0,182,383,605,850,1121,1420,1750]);
for(const name of ['expand','exponential']){
  c.curve(name);let prev=0;
  for(let i=1;i<8;i++){const gap=c.times[i]-c.times[i-1];ok(gap>prev,'widening '+name);prev=gap;}
}
for(const name of ['contract','logarithmic']){
  c.curve(name);let prev=Infinity;
  for(let i=1;i<8;i++){const gap=c.times[i]-c.times[i-1];ok(gap<prev,'narrowing '+name);prev=gap;}
}

c=instance([2,10000,'linear']);near(c.times[1],10000);
let before=snapshot(c);c.curve('stretch');equal(snapshot(c),before,'over-limit curve rejection is atomic');
equal(c.outputs.filter(x=>x[0]===2&&x[1]==='curve').at(-1),[2,'curve','linear'],'rejected selection resyncs curve menu');
c=instance([12,250]);
for(const fn of [()=>c.sources(CAP+1),()=>c.sources(-1),()=>c.sources(1.5),()=>c.sources(),
  ()=>c.taps(0),()=>c.taps(CAP+1),()=>c.taps('Auto'),()=>c.taps(2.5),()=>c.taps(),
  ()=>c.spacing(0),()=>c.spacing(-1),()=>c.spacing(NaN),()=>c.spacing(Infinity),()=>c.spacing(),
  ()=>c.curve('harmonic'),()=>c.curve(),()=>c.tap(10000,3),()=>c.tap(250,8,'invalid')]){
  before=snapshot(c);fn();equal(snapshot(c),before,'invalid request preserves state');
}
c.spacing(0.125);near(c.times[11],1,'fractional spacing rounds absolute tap times');
c.list(50,CAP);equal([c.times.length,c.tapSetting,c.baseSpacing],[CAP,CAP,50]);
c.tap(125,8,'expand');equal([c.times.length,c.curveName],[8,'expand']);
c.delays(10,275.5,500);equal(c.times,[0,276,500]);equal(c.patternMode,'custom');
c.sources(1);equal(c.times,[0,276,500],'source remap preserves custom times');
c.curve('linear');equal(c.patternMode,'generated');equal(c.times,[0,125,250]);
c.taps('auto');equal(c.times,[0]);

// Preserve no-argument one-to-one routing; omitted taps follows connected inputs.
c=instance();equal([c.inputCount,c.tapSetting,c.times.length],[0,'auto',1]);
c.audiochannels(8);equal(c.times.length,8);equal(c.sourceForTap(7),7);
c.audiochannels(12);equal(c.times.length,12);
c.taps(4);c.audiochannels(16);equal(c.times.length,4);
c=instance([],{},CAP);equal([c.times.length,c.autoPending],CAP===64?[1,1]:[CAP,0],'automatic bus respects capacity and maximum delay');
c.spacing(50);equal([c.times.length,c.autoPending],[CAP,0]);
c=instance([12,250]);c.audiochannels(3);equal(c.times.length,12,'declared sources independent of connected bus');

// Memory is not resized or cleared by timing / curve / tap edits.
c=instance([3,250,'linear'],{taps:8},3);c.audiorate(48000);c.dspactive(1);
equal([c.allocatedChannels,c.allocatedFrames],[3,480002]);
const epoch=c.bankEpoch;c.outputs.length=0;
c.curve('s_curve');c.spacing(200);c.taps(12);
equal(c.bankEpoch,epoch);ok(!c.outputs.some(a=>a[0]===3),'no buffer messages for timing edits');
c.sources(2);equal(c.allocatedChannels,2);ok(c.bankEpoch>epoch,'routing rebuild clears history');

// Urn drift: one visit per delayed tap, baseline-relative bounded offsets, tap 1 fixed.
c=instance([1,100,'linear'],{taps:8,delaydrift:20},1);c.audiorate(48000);c.dspactive(1);
equal([c.driftAmount,c.driftInterval],[20,250]);
const visited=[];
for(let i=0;i<14;i++){
  c.busyUntil=0;c.driftTick();
  const item=c.outputs.filter(a=>a[0]===2&&a[1]==='drift').at(-1);visited.push(item[2]);
  ok(Math.abs(item[3])<=20);near(c.actualTimes[0],0);
}
equal([...new Set(visited.slice(0,7))].sort(),[2,3,4,5,6,7,8]);
equal([...new Set(visited.slice(7))].sort(),[2,3,4,5,6,7,8]);
c.delaydrift(0);equal(c.actualTimes,Array.from(c.times));ok(!c.tasks[0].pending);
c.delaydrift(25);c.stop();equal(c.running,0);ok(!c.tasks[0].pending);equal(c.actualTimes,Array.from(c.times));
c.master(0.5);equal(c.running,0,'gain control does not resume');
c.start();equal(c.running,1);ok(c.tasks[0].pending);
c.dspactive(0);ok(!c.tasks[0].pending);c.dspactive(1);ok(c.tasks[0].pending);
c.notifydeleted();ok(!c.tasks[0].pending);

// Defaults returns to the opening configuration, with all processing controls reset.
c=instance([12,100,'expand'],{taps:EXTRA});
c.sources(1);c.spacing(50);c.curve('compress');c.gains(.2,.5);c.smooth(120);c.master(.2);c.normalize(0);c.delaydrift(5,500);c.stop();c.defaults();
equal([c.inputCount,c.tapSetting,c.baseSpacing,c.curveName,c.times.length],[12,EXTRA,100,'expand',EXTRA]);
equal([c.fade,c.masterGain,c.norm,c.driftAmount,c.driftInterval,c.running],[50,1,1,0,250,1]);
ok(c.levels.every(x=>x===1));

// Parent initialization messages arrive early and must win after creation commits.
c=instance([3,250,'linear'],{},0,false);
c.list(125,8);c.curve('exponential');c.stop();equal(c.initialized,0);equal(c.queued.length,3);
c.initialize();equal([c.times.length,c.baseSpacing,c.curveName,c.running],[8,125,'exponential',0]);
before=snapshot(c);c.initialize();equal(snapshot(c),before,'duplicate initialize ignored');
c.creationattr('sources',12);equal(snapshot(c),before,'late creation output ignored');

// Integer millisecond rounding affects actual base targets, not just the display.
c=instance([12,250,'compress']);
equal(c.times,[0,188,375,563,750,938,1125,1313,1500,1688,1875,2063]);
equal(c.actualTimes,Array.from(c.times));
c.delays(0,0.49,0.5,0.51,275.5,9999.9);
equal(c.times,[0,0,1,1,276,10000]);
for(const name of curves){
  const a=instance([CAP,0.125,name]);
  ok(a.times.every(Number.isInteger),'integer base times '+name);
  for(let i=1;i<a.times.length;i++)ok(a.times[i]>=a.times[i-1],'rounded times remain nondecreasing');
}

// Virtual timer: exact final base time, independent of audio lifecycle.
function fire(a,task=a.cycleTask){task.fn();}
c=instance([12,250,'linear']);c.bang();
equal(c.cycleWaitMs,2750,'no duration or guard added');equal(c.cyclePending,1);
const done=c.cycleTask;fire(c);equal(c.cyclePending,0);
equal(c.outputs.filter(x=>x[0]===4),[[4,'bang']]);done.fn();
equal(c.outputs.filter(x=>x[0]===4).length,1,'one completion only');
const waits={linear:2750,expand:2750,contract:2750,exponential:2750,logarithmic:2750,s_curve:2750,reverse_s:2750,stretch:3438,compress:2063};
for(const [curve,wait] of Object.entries(waits)){
  c=instance([12,250,curve]);c.cycle();equal(c.cycleWaitMs,wait,curve+' final delay');
  equal(c.cycleWaitMs,c.times.at(-1));
  c=instance([1,250,curve]);c.bang();equal(c.cycleWaitMs,0,'single tap zero wait');
  fire(c);equal(c.outputs.filter(x=>x[0]===4).length,1);
}
c=instance([4,100]);c.bang();const prior=c.cycleTask;c.cycle();
equal(prior.pending,false);prior.fn();equal(c.cyclePending,1,'retrigger protects new task');
equal(c.cycleWaitMs,300);fire(c);

// The last list entry, not an earlier larger value, defines a custom virtual cycle.
c=instance([4,100]);c.delays(0,900,100,300);c.cycle();equal(c.cycleWaitMs,300);
c.delays(0,2000);c.delays(0,200);c.cycle();equal(c.cycleWaitMs,200,'no old-head/crossfade allowance');

// Audio-related controls neither change the wait nor cancel the virtual timer.
c=instance([12,250]);c.cycle();const task=c.cycleTask;
for(const change of [a=>a.delaydrift(100,250),a=>a.smooth(1000),a=>a.master(.2),
  a=>a.gains(1,.5),a=>a.normalize(0),a=>a.dspactive(0),a=>a.dspactive(1),
  a=>a.audiochannels(12),a=>a.audiorate(44100),a=>a.audiorate(48000),a=>a.start()]){
  change(c);ok(c.cycleTask===task);equal(c.cycleWaitMs,2750);equal(c.cyclePending,1);
}
c.busyUntil=0;c.driftTick();ok(c.cycleTask===task);equal(c.cycleWaitMs,2750);
fire(c);equal(c.outputs.filter(x=>x[0]===4).length,1);

// Stop, cancellation and timing edits remove the pending marker.
for(const change of [a=>a.stop(),a=>a.sources(2),a=>a.taps(8),a=>a.spacing(150),
  a=>a.curve('expand'),a=>a.delays(0,200),a=>a.defaults(),a=>a.cyclecancel(),a=>a.notifydeleted()]){
  c=instance([4,100]);c.cycle();const task=c.cycleTask;change(c);
  equal(c.cyclePending,0);equal(task.pending,false);task.fn();
  ok(!c.outputs.some(x=>x[0]===4),'cancelled cycle must not bang');
}
c=instance([0,100],{},4);c.bang();c.audiochannels(8);equal(c.cyclePending,0,'automatic tap-count change cancels timer');
c=instance([4,100]);c.bang();const pending=c.cycleTask;
c.spacing(-1);c.curve('invalid');c.cycle(1000);c.cycle(0);c.cycle(Infinity);
ok(c.cycleTask===pending);equal(c.cycleWaitMs,300);equal(c.cyclePending,1);
c.stop();c.bang();equal(c.cyclePending,1,'fresh virtual trigger allowed while audio stopped');
equal(c.running,0,'timer does not start audio');fire(c);
c=instance([12,250],{},0,false);c.bang();c.initialize();equal(c.cycleWaitMs,2750,'early marker uses finalized creation settings');

console.log('PASS capacity '+CAP+': '+checks+' controller assertions; curves, integer times, routing, drift and virtual-cycle timing.');

// Capacity boundaries and stable startup: no out-of-range engine parameter sends.
c=instance([CAP,50],{taps:CAP},CAP);c.outputs.length=0;
c.audiorate(48000);c.audiorate(48000);c.audiochannels(CAP);c.dspactive(1);
equal(c.outputs.filter(x=>x[0]===3&&x[1]==='sizeinsamps').length,1,'one allocation for unchanged rate/channel reports');
equal(c.allocatedChannels,CAP);equal(c.allocatedFrames,480002);
c.outputs.length=0;c.send();
const params=c.outputs.filter(x=>x[0]===0&&/^(time|gain|source)\d+$/.test(x[1]));
equal(params.length,3*CAP);
ok(params.every(x=>Number(x[1].match(/\d+$/)[0])<=CAP));
before=snapshot(c);c.sources(CAP+1);c.taps(CAP+1);equal(snapshot(c),before);
c=instance([1,250],{taps:12},1);c.audiorate(48000);equal(c.allocatedChannels,1,'mono twelve taps uses one history');
c=instance([12,250],{},12);c.audiorate(48000);equal(c.allocatedChannels,12,'independent sources retain all histories');
console.log('PASS: capacity limits, parameter count, startup allocation and shared mono history.');
