/* Actual controller/engine lifecycle and saved UI graph; modeled native Max boundary. */
const h=require('./test_preset_v23.cjs'),assert=require('assert'),fs=require('fs'),path=require('path');
const c=h.ctx;let checks=0;
const copy=x=>JSON.parse(JSON.stringify(x));
function eq(a,b,m){assert.deepStrictEqual(copy(a),copy(b),m);checks++;}
function ok(a,m){assert.ok(a,m);checks++;}
function last(name){return h.busEvents.filter(e=>e[0]===name+'_v23').at(-1).slice(1);}
function display(current,target){
 eq(last('Synth_Morph_current_state'),['set','current','morph','='].concat(current?[current]:[]),'last reached destination');
 eq(last('Synth_Morph_destination_state'),target?['set','target','=',target]:['set'],'active or next target');
}
function at(f){h.setClock(c.morphRun.start+f*c.morphRun.ms);c.morphTick();}
c.inlet=0;c.morphstop();c.clear('all');display('','');
for(const [letter,gain] of [['A',.1],['B',.6],['C',.9]]){c.gain(gain);c.morphcapture(letter,2);}
c.morphDisplayState();display('',''); // Capture is not a completed transition.
c.morphjump('A');display('A','');eq(c.morphCurrentSlot,'A','jump records arrival');
c.morphto('B');display('A','B');at(.3);display('A','B');
c.morphpause();display('A','B');c.morphresume();display('A','B');
c.morphstop();display('A','');eq(c.morphCurrentSlot,'A','partial stop never claims B');
c.morphto('B');at(1);display('B','');
c.morphto('C');c.morphfinish();display('C','');
c.morphto('A');c.morphto('B');display('C','B');at(1);display('B','');
let previous=c.morphRun;c.morphto('X');display('B','');eq(c.morphRun,previous,'invalid target leaves status idle');
// Cue arrival immediately posts the next letter, even before the scheduled step.
c.morphcue('A','B','A','C');display('B','A');
for(const [arrived,next] of [['A','B'],['B','A'],['A','C'],['C','A']]){
 at(1);ok(c.morphCueTask.active&&!c.morphRun,'cue next step queued');display(arrived,next);
 c.morphCueTask.fire();display(arrived,next);
}
c.morphpause();display('C','A');c.morphresume();c.morphfinish();display('A','B');
c.morphpause();display('A','B');c.morphcue('stop');display('A','');
// Stale callbacks and manual jumps do not restore the old cue target.
c.morphCueTask.fire();display('A','');c.morphcue('B','C');c.morphjump('C');display('C','');ok(!c.morphCue,'jump cancels queue');
// Zero-time cue posts arrival plus the next letter without a persistent old target.
c.morphslottime('A',0);c.morphslottime('B',0);c.morphcue('A','B');display('A','B');c.morphCueTask.fire();display('B','A');c.morphstop();display('B','');
// Pending preparation is also a target; cancellation clears it.
const memory=h.liveEngines[h.M.engines.find(x=>x.kind==='partial_memory').key];
memory.lifeRunning=true;c.morphto('C',2);ok(c.morphPending,'pending count fade');display('B','C');c.morphstop();display('B','');
memory.lifeRunning=true;c.morphto('C',2);c.morphjump('A');display('A','');
// An unnamed direct preset can complete, but must not inherit the previous letter.
c.morphStartRequest(c.morphSlots.C,0);display('','');
c.morphjump('C');c.morphclear('C');display('','');
c.morphjump('A');c.clear('all');display('','');
// Saved package starts empty via the normal top-level starter; no forced clear on
// every load, so future user captures can still be saved in the patch.
const p=JSON.parse(fs.readFileSync(path.join(__dirname,'../patchers/_ec_sinusoids_synth_v23_main.maxpat'))).patcher;
const boxes=Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const bank=boxes['mb-dumps'].patcher;
for(const x of bank.boxes){const b=x.box;if(!b.id.startsWith('slot-'))continue;const child=Object.fromEntries(b.patcher.boxes.map(x=>[x.box.id,x.box]));eq(child.dump.text,'','empty saved '+b.id);eq(child['mb2-time'].text,'10','reset stored time '+b.id);}
eq(boxes['mb-bank-state'].text,'0 of 24 slots: empty','empty startup occupancy');
eq(boxes['mb2-current'].text,'current morph =','blank current slot at startup');eq(boxes['mb2-target'].text,'','empty target at startup');
for(const id of ['mb2-current','mb2-target']){ok(boxes[id].ignoreclick===1,'passive readout '+id);ok(!p.lines.some(x=>x.patchline.source[0]===id),'readout has no command output '+id);ok(boxes[id].presentation_rect[1]>boxes['v23-hold'].presentation_rect[1],'below Stop/Finish '+id);}
for(const [receive,readout,text] of [['mb2-current-r','mb2-current','receive Synth_Morph_current_state_v23'],['mb2-target-set','mb2-target','receive Synth_Morph_destination_state_v23']]){
 eq(boxes[receive].text,text,'correct state receive');ok(p.lines.some(x=>x.patchline.source[0]===receive&&x.patchline.destination[0]===readout),'direct silent set path');
}
const visible=p.boxes.map(x=>x.box).filter(b=>b.presentation&&b.presentation_rect);
for(const a of visible.filter(b=>['mb2-current','mb2-target','v23-progress','v23-progress-label'].includes(b.id))){
 const [ax,ay,aw,ah]=a.presentation_rect;
 for(const b of visible){if(a===b||b.maxclass==='panel')continue;const [bx,by,bw,bh]=b.presentation_rect;ok(!(Math.min(ax+aw,bx+bw)>Math.max(ax,bx)&&Math.min(ay+ah,by+bh)>Math.max(ay,by)),'no overlap '+a.id+'/'+b.id);}
}
const report={status:'PASS',checks,coverage:['empty saved A-X bank and passive startup labels','named arrival, immediate/zero jump, target lifecycle','pause/resume, stop, retarget, invalid targets, finish','repeated cue letters, wrap, queued target before scheduler, zero-time cue','pending setup, cancellation, unnamed direct preset','passive SET wiring and no presentation rectangle overlap'],limits:['Actual JS with modeled Max UI and Task timing; no native Max or audio test.']};
fs.writeFileSync(path.join(__dirname,'MORPH_STATUS_RESULTS_v23.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
