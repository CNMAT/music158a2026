const layout=require('./package_layout_three.cjs');
/* Actual controller + all 25 engines. Native UI/curve dump, clock and routing mocked.
 * No claim of native DSP execution. The separate signal-path test connects core JS. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const h=require('./test_preset_v23.cjs');const c=h.ctx;let checks=0;
const copy=x=>JSON.parse(JSON.stringify(x));const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(copy(a),copy(b),m);checks++;};
const near=(a,b,m,e=1e-6)=>{assert.ok(Math.abs(a-b)<=e,m+': '+a+' != '+b);checks++;};
const spec=k=>h.M.engines.find(x=>x.kind===k),eng=k=>h.liveEngines[spec(k).key];
function get(k){return copy(c.engineCall(spec(k),'export'));}
function set(k,d){c.engineCall(spec(k),'import',d);}
function value(d,key,x){d.ui[key].value=Array.isArray(d.ui[key].value)?[x]:x;}
function capture(){let d;c.capture(x=>d=copy(x));ok(!!d,'capture completed');return d;}
function errors(n){return h.outputs.slice(n).filter(x=>x[0]===1&&x[1][0]==='error').map(x=>x[1]);}
function restore(d){c.applyState(copy(d));}
let A=capture();
A.gain=.2;value(A,'ec_syn_base',110);value(A,'ec_rt14_target',110);
let pm=A.engines[spec('partial_memory').key];pm.componentCount=pm.displayCount=8;pm.anchorMirror=false;pm.anchorScale=.5;
for(let ch=0;ch<3;ch++){pm.memory[ch]=Array.from({length:256},(_,i)=>ch===0?-.5:ch===1?.2:.3);pm.current[ch]=pm.memory[ch].slice(0,8);pm.starts[ch]=pm.current[ch].slice();pm.targets[ch]=pm.current[ch].slice();pm.running[ch]=false;pm.initialized[ch]=true;}
let md=A.engines[spec('model').key];md.componentCount=8;md.baseFrequency=110;md.firstPartial=1;md.distributionIndex=0;md.microEnabled=false;md.microAmount=0;
value(A,'ec_syn_count_slider',6);value(A,'ec_syn_count_display',8);value(A,'ec_anchor_mirror_v23_6',0);value(A,'ec_anchor_scale_v23_6',.5);value(A,'ec_opt_distribution',0);
let rt=A.engines[spec('retuning').key];rt.referenceBase=rt.actualBase=rt.targetBase=110;rt.active=false;rt.mode=0;
let tf=A.engines[spec('transform').key];tf.bypassTransforms=false;tf.tuneRatio=1;tf.tuneShift=0;tf.transposeSemitones=0;tf.transposeCents=0;tf.offsetHz=0;tf.amplitudeGain=.5;
for(const m of h.M.ui.filter(x=>x.type==='function')){A.ui[m.key].value=[0,0,500,1,1000,0];A.ui[m.key].attrs.domain=1000;A.curves[m.key]={domain:1000,mode:0,points:[[0,0,0],[500,1,0],[1000,0,0]]};}
restore(A);A=capture();
let B=copy(A);B.gain=.8;value(B,'ec_syn_base',440);value(B,'ec_rt14_target',440);value(B,'ec_opt_distribution',2);value(B,'ec_anchor_scale_v23_6',1);
pm=B.engines[spec('partial_memory').key];pm.componentCount=pm.displayCount=16;pm.anchorScale=1;pm.anchorMirror=false;
for(let ch=0;ch<3;ch++){pm.memory[ch]=Array.from({length:256},(_,i)=>ch===0?.5:ch===1?.8:.7);pm.current[ch]=pm.memory[ch].slice(0,16);pm.starts[ch]=pm.current[ch].slice();pm.targets[ch]=pm.current[ch].slice();}
md=B.engines[spec('model').key];md.componentCount=16;md.baseFrequency=440;md.firstPartial=3;md.distributionIndex=2;
rt=B.engines[spec('retuning').key];rt.referenceBase=rt.actualBase=rt.targetBase=440;tf=B.engines[spec('transform').key];tf.amplitudeGain=1.5;tf.transposeSemitones=12;
value(B,'ec_syn_count_slider',14);value(B,'ec_syn_count_display',16);value(B,'ec_partial_offset_v23_number',3);value(B,'ec_partial_offset_v23_toggle',1);
for(const m of h.M.ui.filter(x=>x.type==='function')){B.ui[m.key].value=[0,0,500,.2,1500,.8,2000,0];B.ui[m.key].attrs.domain=2000;B.curves[m.key]={domain:2000,mode:0,points:[[0,0,0],[500,.2,0],[1500,.8,0],[2000,0,0]]};}
for(const m of h.M.ui.filter(x=>x.key.endsWith('/ec_duration')))value(B,m.key,2000);
for(const m of h.M.ui.filter(x=>x.key.endsWith('/ec_delay_ms')))value(B,m.key,1000);
for(const k of Object.keys(B.colls))B.colls[k]=[{key:2,values:[0,.9,0]}];
value(B,'ec_am_ui_mode',2);value(B,'ec_am_ui_min',4000);value(B,'ec_am_ui_max',12000);value(B,'ec_am_ui_peak',0);value(B,'ec_am_ui_wait',600);
// Different distribution and matrix are states from the actual group implementation.
const g=eng('groups'),ga=get('groups');g.inlet=1;g.msg_int(2);g.inlet=2;g.msg_int(4);B.engines[spec('groups').key]=get('groups');set('groups',ga);
c.validate(B);let n=h.outputs.length,busStart=h.busEvents.length;c.morphSlots.A=copy(A);c.morphSlots.B=copy(B);c.morphto('B',10);
ok(c.morphRun,'started ten-second morph');eq(errors(n),[],'no setup errors');near(c.gainValue,.2,'starts from actual gain');eq(eng('partial_memory').componentCount,16,'union count retained');near(eng('partial_memory').visibleValues(1,16)[12],0,'new slot silent at source');
h.setClock(h.getClock()+5000);c.morphTick();ok(c.morphRun,'still running at midpoint');eq(errors(n),[],'no midpoint errors');
near(c.gainValue,.5,'gain midpoint');near(eng('model').baseFrequency,220,'geometric pitch midpoint');near(eng('model').partialMultiple(0),Math.sqrt(5),'geometric layout midpoint');
near(eng('partial_memory').memory[0][200],0,'hidden detune midpoint');near(eng('partial_memory').memory[1][200],.5,'hidden amplitude midpoint');near(eng('partial_memory').memory[2][200],.5,'hidden anchor midpoint');
near(eng('partial_memory').visibleValues(1,16)[12],.25,'new-slot activity mask midpoint');
near(eng('transform').amplitudeGain,1,'transform gain midpoint');near(eng('transform').tuneRatio*Math.pow(2,eng('transform').transposeSemitones/12),Math.sqrt(2),'effective transpose interpolates');
for(let id=1;id<=1024;id++){let total=0;for(let l=0;l<12;l++)total+=g.morphLaneWeights[l][id];near(total,1,'lane conservation ID '+id);}
for(let l=0;l<12;l++)near(g.morphMatrix[l].reduce((a,b)=>a+b,0),1,'matrix row '+l);
const fk=h.M.ui.find(m=>m.type==='function').key;let curve=h.objects[fk].value;eq(curve.length,10,'union of normalized breakpoint positions');near(h.objects[fk].attrs.domain,1500,'curve duration midpoint');near(curve[5],.75,'interpolated curve at normalized midpoint');
let mid=capture();c.validate(mid);near(mid.engines[spec('partial_memory').key].memory[1][12],.25,'midpoint dump bakes audible active mask');near(mid.engines[spec('partial_memory').key].memory[1][200],.5,'midpoint hidden memory preserved');
eq(mid.colls,A.colls,'dormant stores unchanged during transition');
c.morphpause();let t=c.morphRun.fraction;h.setClock(h.getClock()+7000);c.morphTick();near(c.morphRun.fraction,t,'pause keeps exact progress');near(c.gainValue,.5,'pause does not mute');c.morphresume();h.setClock(h.getClock()+5000);c.morphTick();ok(!c.morphRun,'completion after remaining duration');eq(errors(n),[],'no completion errors');near(c.gainValue,.8,'target gain');eq(get('partial_memory').memory,B.engines[spec('partial_memory').key].memory,'all 768 target hidden memory entries reached');eq(g.planIndex,2,'target plan');eq(g.spatialGroups,4,'target spatial groups');eq(g.morphMatrix,null,'normal matrix released');eq(g.morphLaneWeights,null,'normal lane mapping released');eq(h.collStores,B.colls,'dormant stores commit at target');eq(h.objects[fk].value,B.ui[fk].value,'exact native function endpoint restored');
ok(!h.busEvents.slice(busStart).some(x=>x[0]==='ADSR_12_Lanes_Global_Trigger_v23'||x[0]==='ADSR_12_Lanes_Stop_v23'),'morph never triggers/stops envelopes');
// Target staged through passive inlet, and original full-v21 message migration.
c.inlet=1;c.emitPresetTo(B,0);let encoded=h.outputs.filter(x=>x[0]===0).at(-1)[1].slice(2);n=h.busEvents.length;c.preset(...encoded);ok(h.busEvents.slice(n).every(x=>/^Synth_MorphSlot(?:Time)?_[A-X]_v23$/.test(x[0])||x[0]==='Synth_Morph_color_state_v23'||['Synth_MorphBank_slot_state_v23','Synth_MorphBank_state_v23','Synth_MorphBank_occupancy_v23'].includes(x[0])),'inlet 2 stages with passive bank readbacks only; never recalls');eq(c.morphSlots.B.gain,.8,'B staged');c.inlet=0;
let old=copy(A);old.format='ec_cnmat_sinusoids_full_v21';old.version=1;delete old.curves;for(const table of ['ui','engines','colls']){old[table]=Object.fromEntries(Object.entries(old[table]).map(([k,v])=>[k.replaceAll('v23','v21'),v]));}md=old.engines.ec_syn_js;for(const k of ['distributionIndex','partialMultipliersOverride','fundamentalWeightsOverride','frozenMicroOffsets'])delete md[k];let oldGK=spec('groups').key.replaceAll('v23','v21');delete old.engines[oldGK].morphLaneWeights;delete old.engines[oldGK].morphMatrix;
c.emitPresetTo(old,0);encoded=h.outputs.filter(x=>x[0]===0).at(-1)[1].slice(2);c.morphslot('A','preset',...encoded);eq(c.morphSlots.A.format,'ec_cnmat_sinusoids_full_v23','legacy format migrated');eq(c.morphSlots.A.engines.ec_syn_js.distributionIndex,scalar(A.ui.ec_opt_distribution.value),'legacy sequence recovered');
function scalar(v){return Array.isArray(v)?v[0]:v;}
// Hold, interruption, invalid target and zero duration.
c.morphto('A',8);ok(c.morphRun,'legacy curves reconstructed through native dump callback');h.setClock(h.getClock()+2000);c.morphTick();c.morphstop();ok(!c.morphRun,'hold releases task');let held=capture();c.validate(held);ok(held.engines.ec_syn_js.partialMultipliersOverride!==null,'intermediate geometry captured');let level=c.gainValue;h.setClock(h.getClock()+20000);c.morphTick();near(c.gainValue,level,'stale tick cannot undo hold');
c.morphto('B',10);h.setClock(h.getClock()+2500);c.morphTick();level=c.gainValue;let current=c.morphRun;c.morph('bad','preset',...encoded);ok(c.morphRun===current,'invalid duration does not cancel active transition');near(c.gainValue,level,'invalid target has no audio effect');c.morphto('A',3);ok(c.morphRun,'retarget starts from current state');near(c.gainValue,level,'retarget no gain jump');c.morphstop();
c.morphto('B',0);ok(!c.morphRun,'zero duration finishes immediately');near(c.gainValue,.8,'zero duration target reached');
c.morphto('A',5);c.gain(0);ok(!c.morphRun,'external mute cancels morph so next tick cannot unmute');h.setClock(h.getClock()+8000);c.morphTick();near(c.gainValue,0,'mute remains');
// Engine validation must accept ordinary null-overrides after a mid-morph dump.
for(const k of ['model','groups']){set(k,held.engines[spec(k).key]);ok(c.engineCall(spec(k),'validate',B.engines[spec(k).key]),'nullable override validation '+k);}
// Auxiliary numeric settings are part of a held/dumped intermediate state too.
restore(A);let auxB=copy(B);auxB.engines[spec('stops').key].beatHz=2.2;auxB.engines[spec('stops').key].harmonicTail=48;
c.morphSlots.B=auxB;c.morphto('B',4);h.setClock(h.getClock()+2000);c.morphTick();near(eng('stops').beatHz,(A.engines[spec('stops').key].beatHz+2.2)/2,'organ beat setting interpolates silently');c.morphstop();let aux=get('stops');near(aux.beatHz,(A.engines[spec('stops').key].beatHz+2.2)/2,'held auxiliary state matches displayed knob');
// Stage/transport errors never kill a valid morph; runtime adapter faults do.
restore(A);c.morphSlots.B=copy(B);c.morphto('B',4);const active=c.morphRun;let corrupt=encoded.slice();corrupt[1]='h00';c.morphslot('B','preset',...corrupt);ok(c.morphRun===active,'corrupt stage leaves running morph intact');
const originalFrame=eng('model').ec_morph_frame;eng('model').ec_morph_frame=()=>{throw Error('injected frame failure');};h.setClock(h.getClock()+1000);c.morphTick();ok(!c.morphRun,'adapter failure stops transaction');ok(!eng('model').holdModel&&!eng('transform').ecMorphHold,'fault releases both model locks');ok(h.outputs.some(x=>x[0]===1&&x[1][0]==='error'&&String(x[1][1]).includes('injected frame failure')),'fault is reported');eng('model').ec_morph_frame=originalFrame;
restore(A);const curved=copy(B);curved.curves[fk].mode=1;c.morphSlots.B=curved;n=h.outputs.length;c.morphto('B',2);ok(!c.morphRun,'unsupported curved-mode target does not start');near(c.gainValue,A.gain,'rejected curved-mode target leaves gain unchanged');ok(errors(n).some(x=>String(x[1]).includes('linear-mode')),'curve-mode limitation is explicit');
const report={status:'PASS',checks,coverage:['full hidden memories','union count activity masks','geometric pitch and layout','envelope union-grid interpolation and exact endpoints','routing conservation','seconds clock, pause/resume/hold/retarget','midpoint snapshot and nullable overrides','legacy full-v21 dumps','passive endpoint inlets','dormant stores','external mute wins'],limits:['Actual JS; native object dispatch/UI/clock mocked. No native Max or DSP.']};fs.writeFileSync(path.join(__dirname,'full_state_morph_results_v23.json'),JSON.stringify(report,null,2));console.log(JSON.stringify(report,null,2));
