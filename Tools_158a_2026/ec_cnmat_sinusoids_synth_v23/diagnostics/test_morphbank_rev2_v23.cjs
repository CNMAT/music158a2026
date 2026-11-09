/* Actual controller and all engine adapters. Max UI/Tasks/clock are modeled. */
const h=require('./test_preset_v23.cjs'),assert=require('assert'),fs=require('fs'),path=require('path');
const c=h.ctx,copy=x=>JSON.parse(JSON.stringify(x));let checks=0;
function ok(x,m){assert.ok(x,m);checks++;}function eq(a,b,m){assert.deepStrictEqual(copy(a),copy(b),m);checks++;}function near(a,b,m,tol=1e-8){ok(Math.abs(a-b)<tol,m+': '+a+' vs '+b);}
function errors(n){return h.outputs.slice(n).filter(e=>e[0]===1&&e[1][0]==='error');}
function busLast(name){return h.busEvents.filter(x=>x[0]===name+'_v23').at(-1);}
function tickAt(u){h.setClock(c.morphRun.start+u*c.morphRun.ms);c.morphTick();}
c.inlet=0;c.morphstop();
// Independent capture times, including callback completion after the UI changes.
c.morphseconds(8);c.gain(.1);c.morphcapture('A');
c.morphseconds(3);c.gain(.8);c.morphcapture('B');
eq([c.morphSlotSeconds.A,c.morphSlotSeconds.B],[8,3],'capture has independent times');
const capture=c.capture;let cb;c.capture=function(fn){cb=fn;};c.morphseconds(7);c.morphcapture('C');c.morphseconds(99);cb.call(c,c.morphSlots.A);c.capture=capture;eq(c.morphSlotSeconds.C,7,'time frozen at capture request');
c.morphto('A');eq(c.morphRun.ms,8000,'A uses its own duration');eq(busLast('Synth_Morph_seconds_state'),['Synth_Morph_seconds_state_v23',8],'stored time posted');c.morphstop();
c.morphto('B',2.5);eq(c.morphRun.ms,2500,'explicit override');eq(c.morphSlotSeconds.B,3,'override does not replace captured time');c.morphstop();
c.command('morphslottime','A',4);eq(c.morphSlotSeconds.A,4,'time edit without recapture');near(c.morphSlots.A.gain,.1,'time edit leaves sound alone');
// The whole curve is monotonic and symmetric, with constant middle-half speed.
near(c.morphEase(0),0,'curve begins at zero');near(c.morphEase(1),1,'exact endpoint');near(c.morphEase(.5),.5,'symmetric midpoint');
let last=-1;for(let i=0;i<=1000;i++){let x=i/1000,y=c.morphEase(x);ok(y>=last&&y>=0&&y<=1,'monotonic bounded '+i);near(y,1-c.morphEase(1-x),'symmetry '+i);last=y;}
const slope=x=>(c.morphEase(x+1e-6)-c.morphEase(x-1e-6))/2e-6;
ok(slope(.001)<slope(.1)&&slope(.1)<slope(.249),'exponential acceleration');ok(slope(.751)>slope(.9)&&slope(.9)>slope(.999),'arrival deceleration');near(slope(.3),slope(.7),'middle constant speed',1e-6);
near(slope(.25-1e-5),slope(.25+1e-5),'continuous speed at quarter',.001);near(slope(.75-1e-5),slope(.75+1e-5),'continuous speed at three quarters',.001);
// Pause/resume uses elapsed time, not eased position, so remaining time is exact.
c.morphjump('A');c.morphto('B',10);tickAt(.1);const level=c.gainValue,elapsedStart=c.morphRun.start;c.morphpause();near(c.morphRun.elapsed,.1,'pause keeps linear elapsed fraction');
h.setClock(h.getClock()+12000);c.morphresume();near(c.gainValue,level,'resume no gain discontinuity');h.setClock(h.getClock()+8999);c.morphTick();ok(c.morphRun,'still running before remaining nine seconds');h.setClock(h.getClock()+1);c.morphTick();ok(!c.morphRun,'arrives at exact remaining time');near(c.gainValue,.8,'destination exact');
// Jump applies the stored endpoint with no timed morph, no envelope trigger,
// and no change to that letter's time. Also bypasses a lifecycle settling wait.
const mem=h.liveEngines[h.M.engines.find(x=>x.kind==='partial_memory').key];mem.lifeRunning=true;
let n=h.outputs.length,be=h.busEvents.length;c.control('morphjump','A');eq(errors(n),[],'jump while lifecycle waiting succeeds');ok(!c.morphRun&&!c.morphPending,'jump has no timed run or settle');near(c.gainValue,.1,'jump reaches A');eq(c.morphSlotSeconds.A,4,'jump retains time');eq(busLast('Synth_Morph_seconds_state')[1],4,'jump posts saved time');
ok(!h.busEvents.slice(be).some(x=>/ADSR_12_Lanes_(Global_Trigger|Stop)_v23/.test(x[0])),'jump does not trigger or stop envelopes');
// A jump also supersedes a previously queued timed morph's count-fade wait.
mem.lifeRunning=true;c.morphto('B',2);ok(c.morphPending&&c.morphSettleTask.active,'timed morph waits for count fade');
n=h.outputs.length;c.morphjump('A');eq(errors(n),[],'jump replaces pending morph');ok(!c.morphPending&&!c.morphSettleTask.active&&!c.morphRun,'jump cancels old settle task');near(c.gainValue,.1,'pending replacement reaches A');
// Build six destinations with different durations for an ordered looping score.
for(let i=0;i<6;i++){let s='ABCDEF'[i];c.gain((i+1)/10);c.morphcapture(s,(i+1)*.1);}
c.command('morphcue','A','B','A','D','C','F');eq(c.morphCue.letters,['A','B','A','D','C','F'],'order and repeated letters retained');
for(const s of ['A','B','A','D','C','F','A','B']){
 ok(c.morphRun,'cue has active transition '+s);eq(busLast('Synth_Morph_target_state')[1],s,'cue destination '+s);
 near(c.morphRun.ms,c.morphSlotSeconds[s]*1000,'destination time '+s);tickAt(1);near(c.gainValue,c.morphSlots[s].gain,'cue arrival '+s);
 ok(c.morphCueTask.active&&!c.morphRun,'next step deferred until completed '+s);c.morphCueTask.fire();
}
// Invalid new cue is rejected before touching the existing performance.
let old=c.morphCue,run=c.morphRun;n=h.outputs.length;c.morphcue('A','X');ok(errors(n).length===1,'empty cue letter rejected');ok(c.morphCue===old&&c.morphRun===run,'invalid cue leaves running cue intact');
c.morphpause();const t=c.morphRun.fraction;h.setClock(h.getClock()+2000);c.morphTick();near(c.morphRun.fraction,t,'cue pauses current step');c.morphresume();ok(c.morphRun.running,'cue resumes');
c.morphfinish();ok(c.morphCueTask.active,'finish advances cue');c.morphpause();ok(!c.morphCueTask.active&&c.morphCue.paused,'pause between steps cancels next task');c.morphresume();ok(c.morphCueTask.active,'resume between steps schedules next');c.morphCueTask.fire();
c.morphcue('stop');ok(!c.morphCue&&!c.morphRun&&!c.morphCueTask.active,'cue stop holds state');let held=c.gainValue;c.morphCueTask.fire();near(c.gainValue,held,'stale next callback inert');
c.morphcue('A','B');c.morphto('C');ok(!c.morphCue&&c.morphRun.b.gain===c.morphSlots.C.gain,'manual target cancels cue');c.morphstop();
c.morphcue('A','B');c.morphjump('D');ok(!c.morphCue&&!c.morphRun,'jump cancels cue');near(c.gainValue,.4,'jump destination after cue');
c.morphcue('A','B');c.morphclear('B');tickAt(1);n=h.outputs.length;c.morphCueTask.fire();ok(!c.morphCue&&errors(n).length===1,'cleared upcoming slot stops cue safely');
// Zero-time loops yield to the scheduler rather than recursive immediate calls.
c.morphslottime('A',0);c.morphcue('A');ok(!c.morphRun&&c.morphCueTask.active,'zero-time cue defers');for(let i=0;i<3;i++){c.morphCueTask.fire();ok(c.morphCueTask.active&&!c.morphRun,'bounded zero-time step '+i);}c.morphstop();
// Runtime failure cancels the entire cue and releases holds.
c.morphslottime('A',1);c.morphcue('A','C');const model=h.liveEngines[h.M.engines.find(x=>x.kind==='model').key],frame=model.ec_morph_frame;model.ec_morph_frame=()=>{throw Error('cue frame failure');};n=h.outputs.length;tickAt(.5);ok(!c.morphCue&&!c.morphRun&&!c.morphCueTask.active,'adapter fault stops cue');ok(errors(n).length>0,'adapter fault reported');model.ec_morph_frame=frame;
// New bank roundtrip, legacy migration, and malformed timing rejection.
c.morphcolor(0);const doc=c.morphBankDocument(),staged=c.morphBankDecode(doc);eq(doc.version,2,'revision 2 bank format');eq(staged.slotSeconds,c.morphSlotSeconds,'all per-slot times roundtrip');eq(staged.colorVariant,0,'color variant saved');
const legacy=copy(doc);legacy.version=1;delete legacy.payload.slotSeconds;delete legacy.payload.colorVariant;legacy.checksum=c.checksum(c.morphAscii(JSON.stringify(legacy.payload)));const oldBank=c.morphBankDecode(legacy);for(const s of 'ABCDEFGHIJKLMNOPQRSTUVWX')if(oldBank.slots[s])near(oldBank.slotSeconds[s],legacy.payload.seconds,'legacy duration migration '+s);
for(const value of [-1,3601,'5',false]){const bad=copy(doc);bad.payload.slotSeconds.X=value;bad.checksum=c.checksum(c.morphAscii(JSON.stringify(bad.payload)));assert.throws(()=>c.morphBankDecode(bad));checks++;}
// Saved patch ordering: its own seconds may arrive before its full sound.
const sound=copy(c.morphSlots.C);c.morphclear('X');c.morphslottime('X',12.5);c.morphslot('X',...c.morphPresetMessage(sound));eq(c.morphSlotSeconds.X,12.5,'startup staging preserves time before dump');eq(c.morphSlots.X,sound,'startup dump unchanged');
c.morphcue('A','C');c.notifydeleted();ok(!c.morphCue&&!c.morphCueTask.active&&!c.morphTickTask.active,'deletion cancels all cue timers');
// Run the actual UI helper: attribute-only messages, visible variants, target state.
const vm=require('vm'),buttons={},paintEvents=[];
for(const letter of 'ABCDEFGHIJKLMNOPQRSTUVWX')buttons['v23_morph_to_'+letter]={valid:true,message(...a){paintEvents.push([letter,...a]);this[a[0]]=a.slice(1);}};
const display={inlet:0,messagename:'',arrayfromargs:a=>Array.from(a),patcher:{getnamed:n=>buttons[n]}};
vm.createContext(display);vm.runInContext(fs.readFileSync(path.join(__dirname,'../javascript/morphbank_display_v23.js'),'utf8'),display);
display.loadbang();display.inlet=0;display.list(...Array(24).fill(1));const aColor=buttons.v23_morph_to_A.bgcolor.slice();
display.inlet=1;display.list('A',4,'seconds');ok(buttons.v23_morph_to_A.bgcolor[0]<aColor[0],'target shaded darker');
display.inlet=2;display.msg_int(0);const classic=buttons.v23_morph_to_B.bgcolor.slice();display.msg_int(1);ok(JSON.stringify(classic)!==JSON.stringify(buttons.v23_morph_to_B.bgcolor),'classic and pastel differ');
ok(paintEvents.every(e=>['bgcolor','bgfillcolor_color','bgfillcolor_type','textcolor'].includes(e[1])),'colors emit no activation command');
display.inlet=0;display.list(...Array(24).fill(0));eq(display.active,'','clearing bank clears target highlight');
const report={status:'PASS',checks,coverage:['independent captured seconds and asynchronous capture','eased timing, monotonicity, symmetry, smooth junctions','exact pause/resume duration','immediate jump, count-fade bypass, no ADSR trigger','repeated-letter looping, per-step times, wraparound','pause/resume/stop, manual interruption, zero-time scheduling','invalid/missing targets and adapter fault cleanup','bank v2 timings/color and v1 migration','saved patch time-before-dump staging'],limits:['Modeled Max Task/UI/Dict boundary; no native audio audition.']};
fs.writeFileSync(path.join(__dirname,'MORPHBANK_REV2_TEST_RESULTS_v23.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
