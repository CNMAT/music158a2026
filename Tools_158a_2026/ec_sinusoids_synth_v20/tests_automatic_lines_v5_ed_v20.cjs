'use strict';
const assert=require('assert'),fs=require('fs'),path=require('path'),crypto=require('crypto');
const {engine}=require('./automixer_test_harness_v20.cjs');
let checks=0;function ok(test,msg){checks++;assert(test,msg);}
function equal(a,b,msg){checks++;assert.deepStrictEqual(a,b,msg);}
const sha=x=>crypto.createHash('sha256').update(x).digest('hex');
const prov=JSON.parse(fs.readFileSync(path.join(__dirname,'diagnostics/automixer_provenance_v20.json')));
equal(sha(fs.readFileSync(path.join(__dirname,'automatic_lines_v5_ed.js'))),prov.reference_files['automatic_lines_v5_ed.js'],'Original script must remain byte-identical');
for(const voices of [1,4,12,20]){
  const e=engine([voices,1000,1000,500,1]);const c=e.ctx;
  equal(c.outlets,voices+1);equal(c.inlets,1);c.loadbang();
  equal(e.events.length,voices+1);equal(e.events.at(-1).index,voices);equal(e.events.at(-1).atoms,Array(voices).fill(0));
  for(const [t,value] of [[0,0],[500,.5],[1000,1],[1500,.5],[2000,0],[2480,0],[2500,0],[3000,.5]]){
    e.clock.advance(t);
    for(const v of Array.from(c.currentValues))ok(Math.abs(v-value)<1e-12,`${voices} voices, t=${t}`);
    equal(e.events.at(-1).atoms,Array.from(c.currentValues));
  }
  const starts=Array.from(c.legStartTimes);c.start();equal(Array.from(c.legStartTimes),starts,'start is idempotent');
  c.stop();ok(!c.running);equal(c.updateTask.due,null);equal(Array.from(c.currentValues),Array(voices).fill(0));
  const eventCount=e.events.length;e.clock.advance(4000);equal(e.events.length,eventCount,'stop cancels updates');
  c.restart();ok(c.running);equal(Array.from(c.currentValues),Array(voices).fill(0));
  c.notifydeleted();equal(c.updateTask.due,null);ok(!c.running);
}
for(const [args,count] of [[[0],1],[[21],20],[[],4],[[NaN],1],[[-3],1]])equal(engine(args).ctx.voiceCount,count);
const e=engine([12,10000,2000,5000]);const c=e.ctx;
equal(c.minimumMs,2000);equal(c.maximumMs,10000);equal(c.useFixedPeak,false);c.start();
ok(new Set(Array.from(c.legDurations)).size>1,'independent random ramp durations');
ok(new Set(Array.from(c.voiceTargets)).size>1,'independent random peaks');
for(const d of Array.from(c.legDurations))ok(d>=2000&&d<=10000);
let outputs=0,lists=0;const stress=engine([12,17,231,57],{collect:false,onOutput:e=>{
  outputs++;
  if(e.index===12){lists++;equal(e.atoms.length,12);}
  else {ok(e.index>=0&&e.index<12);equal(e.atoms.length,1);}
  for(const x of e.atoms)ok(Number.isFinite(x)&&x>=0&&x<=1,'finite unit-range output');
}});
stress.ctx.start();stress.clock.advance(120000);ok(lists>=6000);ok(outputs>78000);
const previous=Array.from(c.legDurations);c.range(400,100);equal(c.minimumMs,100);equal(c.maximumMs,400);equal(Array.from(c.legDurations),previous,'range preserves active legs');
c.waittime(-1);equal(c.globalWaitTimeMs,5000);c.waittime(0);equal(c.globalWaitTimeMs,0);
c.fixedpeak(1);ok(c.useFixedPeak);c.restart();equal(Array.from(c.voiceTargets),Array(12).fill(1));
c.fixedpeak(0);c.restart();ok(Array.from(c.voiceTargets).every(x=>x>=0&&x<1));
c.grain(0);equal(c.updateIntervalMs,1);c.grain(1001);equal(c.updateIntervalMs,1000);c.grain(17.9);equal(c.updateIntervalMs,17);
const short=engine([12,1,1,0,1]);short.ctx.start();short.clock.now=100000;short.ctx.updateAllVoices();
for(let n=0;n<12;n++){equal(short.ctx.legStartTimes[n],100000);ok(short.ctx.currentValues[n]>=0&&short.ctx.currentValues[n]<=1);}
short.ctx.stop();
console.log(JSON.stringify({status:'PASS',assertions:checks,stress_output_events:outputs,stress_summary_lists:lists,coverage:'Exact v5 source hash, argument bounds, 1/4/12/20 voices, full up/down/hold cycles, independent randomness, normalized output, start/stop/restart/deletion, runtime parameters, scheduler-lag protection. Max Task/clock emulation only.'}));
