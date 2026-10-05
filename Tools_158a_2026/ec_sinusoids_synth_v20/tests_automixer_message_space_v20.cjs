'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert'),crypto=require('crypto');
const {Network,tokens}=require('./automixer_test_harness_v20.cjs');
const {manifest,stripMaster,stripStandalone}=require('./message_space_test_helpers_v20.cjs');
const read=f=>JSON.parse(fs.readFileSync(path.join(__dirname,f),'utf8'));
const doc=read('_ec_sinusoids_synth_automixer_v20.maxpat'),main=doc.patcher;
const map=p=>Object.fromEntries(p.boxes.map(e=>[e.box.id,e.box]));
const B=map(main),G=B['send-message-space-v20'].patcher,GB=map(G);
const launcher=GB['automixer-message-space-v20'],p=launcher.patcher,M=map(p);
let assertions=0;
function ok(x,msg){assertions++;assert(x,msg);}
function eq(a,b,msg){assertions++;assert.deepStrictEqual(a,b,msg);}
function stable(o){if(Array.isArray(o))return o.map(stable);if(o&&typeof o==='object')return Object.fromEntries(Object.keys(o).sort().map(k=>[k,stable(o[k])]));return o;}
const hash=o=>crypto.createHash('sha256').update(JSON.stringify(stable(o))).digest('hex');
const sha=b=>crypto.createHash('sha256').update(b).digest('hex');
// Whole-document comparison ensures NO edit to the synth, routing, UI, existing examples or other nested patchers.
eq(hash(stripMaster(doc)),manifest.original_master_canonical_sha256,'The master differs only by the three declared gallery additions.');
eq(hash(stripStandalone(read('Send_Message_Space_v20.maxpat'))),manifest.original_standalone_canonical_sha256,'The standalone differs only by the same three additions.');
eq(G,read('Send_Message_Space_v20.maxpat').patcher,'Embedded and standalone galleries remain identical.');
for(const [f,digest] of Object.entries(manifest.unchanged_runtime_sha256))eq(sha(fs.readFileSync(path.join(__dirname,f))),digest,'Byte-identical dependency '+f);
eq(launcher.text,'p "AUTOMIXER_CONTROL_v20-message space"');eq(launcher.numinlets,1);eq(launcher.numoutlets,0);eq(p.openinpresentation,1);
const routing=map(B['sinusoids-audio-routing-v20'].patcher),C=map(routing['am-controller-v20'].patcher);
const selectors=C['am-command-route'].text.split(/\s+/).slice(1);
const examples=Object.entries(manifest.command_examples);
eq(examples.length,19);
const covered=new Set();
for(const [id,info] of examples){
 eq(M[id].maxclass,'message');eq(M[id].text,info.text);ok(M[id].presentation===1,'Clickable example must be visible');
 const wires=p.lines.filter(e=>e.patchline.source[0]===id);
 eq(wires.length,1,'Each example sends exactly once');eq(wires[0].patchline.destination,[info.target,0]);eq(M[info.target].text,'send Automixer_v20');
 for(const part of info.text.split(',')){const command=tokens(part);ok(selectors.includes(command[0]),'Every example uses an accepted selector');covered.add(command[0]);}
}
eq([...covered].sort(),selectors.slice().sort(),'Every whitelisted selector is represented, including aliases.');
for(const b of Object.values(M)){
 if(b.maxclass==='newobj')ok(!/^(js|v8|node\.script|loadbang|loadmess|metro|qmetro|line~|line|sinusoids~)\b/.test(b.text),'Help panel is passive and must not duplicate the engine');
}
const receiverTexts=Object.values(M).filter(b=>b.maxclass==='newobj'&&b.text.startsWith('receive ')).map(b=>b.text.slice(8));
eq(receiverTexts.sort(),manifest.live_readback_buses.slice().sort());
for(const id of ['mode','range','wait','peak','grain','levels'])ok(!p.lines.some(e=>e.patchline.source[0]==='ams-state-'+id+'-display'),'Readback display has no outbound path');
function overlap(a,b){return Math.min(a[0]+a[2],b[0]+b[2])-Math.max(a[0],b[0])>0.1&&Math.min(a[1]+a[3],b[1]+b[3])-Math.max(a[1],b[1])>0.1;}
const visible=Object.values(M).filter(b=>b.presentation);
for(let i=0;i<visible.length;i++){
 const r=visible[i].presentation_rect;ok(r[0]>=0&&r[1]>=0&&r[0]+r[2]<=1240,'Horizontal bounds; page deliberately scrolls vertically.');
 for(let j=i+1;j<visible.length;j++)ok(!overlap(r,visible[j].presentation_rect),'New panel overlap '+visible[i].id+' / '+visible[j].id);
}
for(const id of manifest.gallery_addition_ids)for(const b of Object.values(GB))if(b.id!==id)ok(!overlap(GB[id].patching_rect,b.patching_rect),'Gallery launcher does not cover an existing object: '+id+' / '+b.id);
// Extend only message-box comma sequences and the forwarding inlet. Native DSP/GUI are not emulated.
class HelpNetwork extends Network{
 send(key,inlet,atoms=[]){
  const n=this.nodes.get(key);
  if(n&&n.box.maxclass==='inlet'){this.emit(key,0,atoms);return;}
  if(n&&n.box.maxclass==='message'&&n.box.text.includes(',')&&atoms[0]!=='set'){
   for(const part of n.box.text.split(','))this.emit(key,0,tokens(part));return;
  }
  return super.send(key,inlet,atoms);
 }
}
function create(){const n=new HelpNetwork(main);n.addPatch('help',p);n.boot();return n;}
function click(n,id){n.send('help/'+id,0,[]);n.flush();}
const N=create();
eq(N.engine.ctx.running,false);eq(N.state('am-ui-mode'),0);eq(N.nodes.get('help/ams-state-mode-display').value,[0]);
eq(N.nodes.get('help/ams-state-range-display').value,[2000,10000]);
eq(N.nodes.get('help/ams-state-levels-display').value,Array(12).fill(1));
let before=N.posts.filter(e=>e.bus==='Automixer_v20').length;
N.addPatch('second-passive-help',p);
eq(N.posts.filter(e=>e.bus==='Automixer_v20').length,before,'Adding/opening help does not issue any command');
const cases={
 'ams-mode0':0,'ams-bypass':0,'ams-mode1':1,'ams-start':1,'ams-mode2':2,'ams-stop':2,'ams-restart':1,'ams-bang':1
};
for(const [id,mode] of Object.entries(cases)){
 before=N.posts.filter(e=>e.bus==='Automixer_v20').length;click(N,id);
 eq(N.posts.filter(e=>e.bus==='Automixer_v20').length,before+1,id+' sends once');
 eq(N.state('am-ui-mode'),mode);eq(N.nodes.get('help/ams-state-mode-display').value,[mode]);eq(N.engine.ctx.running,mode===1);
 if(mode!==1)for(let k=1;k<=12;k++){eq(N.line(k).to,mode===0?1:0);eq(N.line(k).duration,20);}
}
N.advance(400);const starts=Array.from(N.engine.ctx.legStartTimes);click(N,'ams-start');eq(Array.from(N.engine.ctx.legStartTimes),starts,'Repeated start is not restart');
click(N,'ams-stop');
click(N,'ams-range');eq(N.engine.ctx.minimumMs,2000);eq(N.engine.ctx.maximumMs,10000);
click(N,'ams-range-equal');eq(N.engine.ctx.minimumMs,3000);eq(N.engine.ctx.maximumMs,3000);
click(N,'ams-wait');eq(N.engine.ctx.globalWaitTimeMs,5000);click(N,'ams-wait-zero');eq(N.engine.ctx.globalWaitTimeMs,0);
click(N,'ams-peak-one');eq(N.engine.ctx.useFixedPeak,true);click(N,'ams-peak-random');eq(N.engine.ctx.useFixedPeak,false);
click(N,'ams-grain');eq(N.engine.ctx.updateIntervalMs,20);click(N,'ams-grain-slow');eq(N.engine.ctx.updateIntervalMs,100);
eq(N.engine.ctx.running,false,'Parameter examples do not start stopped automation.');
const configurations=[
 ['ams-recipe-slow',[2000,10000,5000,false,20]],
 ['ams-recipe-continuous',[750,2500,0,true,20]],
 ['ams-recipe-synchronous',[2000,2000,1000,true,20]]
];
for(const [id,expected] of configurations){
 before=N.posts.filter(e=>e.bus==='Automixer_v20').length;click(N,id);
 const c=N.engine.ctx;
 eq([c.minimumMs,c.maximumMs,c.globalWaitTimeMs,c.useFixedPeak,c.updateIntervalMs],expected);
 eq(N.posts.filter(e=>e.bus==='Automixer_v20').length,before+5,'Recipe sends exactly 5 ordered messages');
 const sent=N.posts.filter(e=>e.bus==='Automixer_v20').slice(-5).map(e=>e.atoms[0]);
 eq(sent,['range','waittime','fixedpeak','grain','restart']);eq(N.state('am-ui-mode'),1);
 eq(Array.from(c.legStartTimes),Array(12).fill(N.clock.now));
 for(let k=0;k<12;k++){ok(c.legDurations[k]>=expected[0]&&c.legDurations[k]<=expected[1]);ok(c.voiceTargets[k]>=0&&c.voiceTargets[k]<=1);if(expected[3])eq(c.voiceTargets[k],1);}
}
// The fixed-duration example is a synchronized 2s up / 2s down / 1s hold cycle.
const t=N.clock.now;
N.advance(t+1000);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(0.5));
N.advance(t+2000);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(1));
N.advance(t+3000);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(0.5));
N.advance(t+4000);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(0));
N.advance(t+4980);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(0));
N.advance(t+5000);eq(Array.from(N.engine.ctx.legStartTimes),Array(12).fill(t+5000));
N.advance(t+6000);eq(Array.from(N.engine.ctx.currentValues),Array(12).fill(0.5));
// Test the copyable patcher's inlet and one-way readback path through the actual saved graph.
before=N.posts.filter(e=>e.bus==='Automixer_v20').length;
N.send('help/ams-score-inlet',0,['range',9000,1000]);N.flush();
eq(N.posts.filter(e=>e.bus==='Automixer_v20').length,before+1);eq(N.engine.ctx.minimumMs,1000);eq(N.engine.ctx.maximumMs,9000);
eq(N.nodes.get('help/ams-state-range-display').value,[1000,9000]);
N.command('unsupported_command',1);eq(N.log.length,1);
N.command('stop');eq(N.nodes.get('help/ams-state-levels-display').value,Array(12).fill(0));
N.command('bypass');eq(N.nodes.get('help/ams-state-levels-display').value,Array(12).fill(1));
eq(N.log.length,1);ok(N.steps<200000,'No feedback runaway');
console.log(JSON.stringify({status:'PASS',assertions,clickable_examples:examples.length,accepted_selectors:selectors.length,readback_buses:receiverTexts.length,
 graph_messages:N.steps,whole_original_master_content_preserved:true,unchanged_dependency_files:Object.keys(manifest.unchanged_runtime_sha256).length,
 coverage:'Exact additive preservation; all message selectors and aliases; examples send once; ordered recipes; fixed 5s cycles; passive readbacks; inlet forwarding; presentation/gallery bounds; source JS unchanged. Selective emulation, not native Max.'}));
