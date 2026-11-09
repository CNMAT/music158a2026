/* Actual transform + offset + Auto Level scripts. Scheduler is a deterministic
 * message model, NOT native Max or DSP. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const R=path.resolve(__dirname,'..'); let clock=0,checks=0;
const copy=x=>JSON.parse(JSON.stringify(x));
function eq(a,b,m){assert.deepStrictEqual(copy(a),copy(b),m);checks++;}
function ok(a,m){assert.ok(a,m);checks++;}
function near(a,b,m){assert.ok(Math.abs(a-b)<1e-9,(m||'')+` ${a} != ${b}`);checks++;}
function call(c,i,method,...args){const old=c.inlet;c.inlet=i;try{return c[method](...args);}finally{c.inlet=old;}}
function load(name,callback){
 const events=[],named=[],tasks=[];
 function Clock(){this.getTime=()=>clock;}
 function Task(fn,owner){this.fn=fn;this.owner=owner;this.running=false;this.repeat=()=>{this.running=true;};this.cancel=()=>{this.running=false;};this.schedule=()=>{this.running=true;};tasks.push(this);}
 const c={Math,Date:Clock,Task,Number,String,Array,Object,JSON,isFinite,inlet:0,arrayfromargs:a=>Array.from(a),post:()=>{},error:m=>{throw Error(m);},
 messnamed:(...a)=>named.push(a),outlet:(o,...a)=>{const v=a.length===1&&Array.isArray(a[0])?Array.from(a[0]):a;events.push([o,v]);if(callback)callback(o,v);}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(R,'javascript',name),'utf8'),c,{filename:name});c.events=events;c.named=named;c.tasks=tasks;return c;
}
let rendered=[],full=[];
const offset=load('partial_offset_crossfade_v23_6.js',(o,a)=>{if(o===0)rendered=a.slice();});
const alc=load('auto_level_compensation_v23.js');
const transform=load('sinusoid_model_transform_v23.js',(o,a)=>{
 if(o===6)call(offset,2,a[0],...a.slice(1));
 if(o===5){full=a.slice();call(alc,0,'list',...a);call(offset,0,'list',...a);}
});
function source(a){call(transform,0,'tagged',...a);}
function zoom(on,f,l){call(offset,2,'audition',on,f,l);}
function at(t){clock=t;offset.auditionTick();if(offset.fading)offset.tick();}
function amp(id){for(let i=0;i<rendered.length;i+=3)if(rendered[i]===id)return rendered[i+2];return 0;}
function val(a,id){for(let i=0;i<a.length;i+=3)if(a[i]===id)return a[i+2];return 0;}
function snapshot(){return JSON.stringify([transform.sourceTagged,transform.sourceModel,offset.banks,alc.power,alc.referencePower,alc.targetDb]);}
const model=[];for(let slot=1;slot<=32;slot++)model.push(2*slot-1,slot*101,.2+slot/200,2*slot,slot*101+.1,.05+slot/1000);
source(model);eq(rendered,full,'normal audio equals original full transformed model');call(alc,1,'startup');alc.autoCapture();
const fullSnapshot=snapshot(),reference=copy(alc.ec_export()),originalPower=alc.power;
zoom(1,4,16);near(amp(1),val(full,1),'fade starts from current full gain');at(50);near(amp(1),val(full,1)*.5,'midpoint attenuation');near(amp(7),val(full,7),'selected stays full');
at(100);for(let slot=1;slot<=32;slot++)for(let k=0;k<2;k++){const id=slot*2-1+k;near(amp(id),slot>=4&&slot<=16?val(full,id):0,'primary/anchor mask');}
eq(snapshot(),fullSnapshot,'solo has not mutated model, banks or detector');eq(alc.ec_export(),reference,'auto-level state unaffected');near(alc.power,originalPower);
// Switching range is continuous, and both partners change together.
clock=110;zoom(1,8,24);near(amp(7),val(full,7));at(160);near(amp(7),val(full,7)*.5);near(amp(40),val(full,40)*.5);at(210);near(amp(7),0);near(amp(40),val(full,40));
// Returning to the complete model is exact after the fade.
clock=220;zoom(0,8,24);at(320);eq(rendered,full,'OFF restores original unmasked output exactly');eq(snapshot(),fullSnapshot);
// Rapid reversal continues from its current amplitude instead of restarting.
clock=400;zoom(1,2,2);at(440);const partial=amp(1);near(partial,val(full,1)*.6);zoom(0,2,2);near(amp(1),partial);at(490);near(amp(1),val(full,1)*.8);at(540);eq(rendered,full);
// Editing the full model while soloed changes only the intended values.
clock=600;zoom(1,4,16);at(700);const edited=model.slice();edited[(4-1)*6+1]+=2;edited[(4-1)*6+2]=.83;edited[(4-1)*6+5]=.24;source(edited);near(amp(7),.83);near(amp(8),.24);near(amp(1),0);
clock=710;zoom(0,4,16);at(810);eq(rendered,full);eq(transform.sourceTagged,edited,'edits stay in full source');
// Duplicate-frequency merging: selected slot 2 is represented by canonical ID 1
// from excluded slot 1. Audition must keep slot 2, not leak slot 1 or lose both.
clock=900;const collision=[1,440,.8,2,110,0,3,440,.6,4,220,.2,5,660,.3,6,660,.4];source(collision);near(amp(1),1);
zoom(1,2,2);at(1000);near(amp(1),.6,'selected contribution survives canonical-ID collision');near(amp(3),0);near(amp(4),.2);near(amp(5),0);
clock=1010;zoom(1,1,1);at(1110);near(amp(1),.8,'excluded slot 2 cannot leak through merged ID 1');near(amp(4),0);
// Cluster power merge also masks contributions BEFORE combining energies, while
// keeping the full-model merged frequency and renderer identity stable.
clock=1200;zoom(0,1,1);at(1300);call(transform,1,'cluster',15);const cluster=[1,440,.3,2,440,0,3,450,.4,4,450,0,5,700,.2,6,700,.1];source(cluster);
near(val(full,1),.5);const clusterFrequency=full[1];zoom(1,2,2);at(1400);near(amp(1),.4);near(rendered[1],clusterFrequency,'audition does not retune merged pitch');near(amp(5),0);
// Simultaneous 150 ms offset fade and 100 ms audition uses original metadata
// for BOTH banks, including a queued rapid layout change.
clock=1500;zoom(0,1,32);at(1600);call(transform,1,'cluster',0);source(collision);
call(offset,1,'layout',0,3);const next=collision.map((v,i)=>i%3===1?v*2:v);source(next);
zoom(1,2,2);at(1650); // half of audition, one third of offset fade
near(amp(1),Math.min(1,.8*.5+.6)*(2/3));near(amp(513),Math.min(1,.8*.5+.6)/3);
at(1700);near(amp(1),.6/3);near(amp(513),.6*(2/3));
call(offset,1,'layout',0,7);const queued=collision.map((v,i)=>i%3===1?v*3:v);source(queued);ok(offset.queuedContributions!==null,'queued target retains provenance');
at(1750);near(amp(513),.6);near(amp(1),0);at(1800);near(amp(513),.4);near(amp(1),.2);at(1900);near(amp(1),.6);near(amp(4),.2);near(amp(5),0);
// Full-model preset capture is unmasked; importing restores full views/sound.
const saved=copy(offset.ec_export());ok(saved.banks[saved.activeBank].some((v,i)=>i%3===2&&v>0),'preset contains complete amplitudes');
call(offset,0,'ec_import',saved);ok(!offset.auditionEnabled);ok(offset.named.some(a=>a[0]==='Partial_View_Reset_v23'&&a[1]==='bang'));offset.ec_emit();
for(let i=0;i<saved.banks[saved.activeBank].length;i+=3){const id=saved.banks[saved.activeBank][i]+512*saved.activeBank;near(amp(id),saved.banks[saved.activeBank][i+2]);}
// Full coverage of source counts and sequence-independent slot mapping.
clock=2000;let cases=0;
for(let count=2;count<=256;count++){
 // Fresh instance isolates offset state; no per-count changes to test semantics.
 let audible=[];const o=load('partial_offset_crossfade_v23_6.js',(port,a)=>{audible=a;});
 const t=load('sinusoid_model_transform_v23.js',(port,a)=>{if(port===6)call(o,2,a[0],...a.slice(1));else if(port===5)call(o,0,'list',...a);});
 const m=[];for(let slot=1;slot<=count;slot++)m.push(slot*2-1,40+slot*20,.3,slot*2,40+slot*20+1,.15);call(t,0,'tagged',...m);
 for(const [f,l] of [[1,1],[count,count],[1,count],[Math.min(4,count),Math.min(16,count)]]){
  call(o,2,'audition',1,f,l);clock+=110;o.auditionTick();
  for(let i=0;i<audible.length;i+=3){const slot=Math.floor((audible[i]-1)/2)+1;near(audible[i+2],slot>=f&&slot<=l?(audible[i]%2?.3:.15):0);}
  eq(o.banks[o.activeBank],m,'unmasked bank is preserved for count '+count);cases++;
 }
}
// Ended/deleted tasks cannot remain running.
offset.notifydeleted();ok(offset.tasks.every(t=>!t.running));
const report={status:'PASS',checks,range_cases:cases,coverage:['Full-model equivalence when audition is off','100 ms fades, rapid reversals and range changes','Primary and anchor pairing for all counts 2..256','Pre-merge contribution isolation, clipped duplicates, clustered energy','Two offset banks and rapid queued offset changes while soloed','Auto Level sees full model; canonical/preset data remains unmasked','Edits during audition retained after return; preset recall exits temporary audition'],limitations:['Real JS in an emulated message/scheduler harness; no native Max audio or GUI execution.']};
fs.writeFileSync(path.join(__dirname,'AUDIO_ZOOM_BEHAVIOR_v23.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
