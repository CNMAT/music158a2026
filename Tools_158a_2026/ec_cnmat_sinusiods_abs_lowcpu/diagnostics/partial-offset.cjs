/* Actual JS engines and saved patch cords; native Max DSP is not executed. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const {engine,advance,root}=require('./lowcpu.cjs');
let checks=0;
const ok=(v,m)=>{assert.ok(v,m);checks++;};
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const near=(a,b,m)=>ok(Math.abs(a-b)<1e-7,m);
const last=(e,n)=>e.events.filter(x=>x[0]===n).at(-1)[1];
function setup(callback,bus){
 const m=engine('model',callback,bus);m.componentCount=4;m.baseFrequency=100;
 m.amplitudeValues=[.7,.5,.3,.1];m.harmonicAmplitudeValues=[.2,.1,.1,.1];m.driftValues=[0,0,0,0];
 m.inlet=8;return m;
}
const mode5=[[5,6,7,8],[8,10,12,14],[9,11,13,15],[7,11,13,17]];
const mode1=[[1,2,3,4],[1,2,4,6],[1,3,5,7],[1,2,3,5]];
for(let mode=0;mode<4;mode++){
 const m=setup();m.distribution(mode);const before=m.ec_export();m.firstpartial(5);
 let a=last(m,6);eq(a.filter((_,i)=>i%6===1),mode5[mode].map(n=>n*100),'offset 5 primary frequencies, mode '+mode);
 eq(a.filter((_,i)=>i%6===4),mode5[mode].map(n=>n*100),'offset 5 anchor frequencies, mode '+mode);
 eq(last(m,7),['multipliers',...mode5[mode]],'ruler multipliers include shifted slider 1');
 near(m.baseFrequency,100,'offset keeps base frequency');
 for(const field of ['componentCount','driftValues','amplitudeValues','harmonicAmplitudeValues'])eq(m.ec_export()[field],before[field],'offset preserves '+field);
 eq(a.filter((_,i)=>i%3===0),[1,2,3,4,5,6,7,8],'paired identities remain slot-based');
 m.driftValues[0]=1;m.buildModel();a=last(m,6);
 near(a[1],mode5[mode][0]*100*Math.pow(2,1/12),'first shifted primary can detune');
 near(a[4],mode5[mode][0]*100,'first anchor remains exact');
 m.firstpartial(1);a=last(m,6);near(a[1],100,'actual fundamental ignores saved detune');
 eq(a.filter((_,i)=>i%6===4),mode1[mode].map(n=>n*100),'offset 1 restores unshifted sequence');
 const roundtrip=m.ec_export();m.firstpartial(5);const shifted=m.ec_export();m.ec_import(roundtrip);m.ec_emit();near(last(m,6)[1],100,'recall offset 1');
 m.ec_import(shifted);m.ec_emit();near(last(m,6)[4],mode5[mode][0]*100,'recall shifted anchor');near(m.baseFrequency,100,'recall retains reference');
}

// Micro-drift must include slot zero after moving it above the fundamental.
const micro=setup();micro.firstpartial(5);micro.microdepth(1);micro.microtime(100);micro.setMicroAmount(1);micro.micro(1);
advance(50,micro);micro.buildModel();ok(Math.abs(last(micro,6)[1]-500)>.01,'shifted slider 1 walks');near(last(micro,6)[4],500,'anchor does not walk');
micro.microofftime(100);const start=last(micro,6)[1];micro.micro(0);advance(50,micro);micro.buildModel();
near(last(micro,6)[1],500+(start-500)/2,'slot zero returns smoothly when drift is disabled');
advance(100,micro);micro.buildModel();near(last(micro,6)[1],500,'return completes at shifted exact harmonic');
micro.micro(1);advance(50,micro);micro.firstpartial(1);near(last(micro,6)[1],100,'returning to offset 1 locks f0 despite active walk');
micro.firstpartial(5);ok(Math.abs(last(micro,6)[1]-500)>.01,'shifted slot resumes its live walk');

// ERB detune recipes use the actual shifted first frequency.
const detune=engine('detune_shapes');detune.componentCount=4;detune.sourceHz=1000;detune.selection=12;
detune.firstpartial(5);detune.multipliers(5,6,7,8);detune.emit();
const expected=12*Math.log((5000+24.7*(1+.00437*5000)/2)/5000)/Math.LN2;
near(last(detune,0)[0],expected,'ERB first slider uses 5000 Hz, not reference 1000 Hz');

// Execute the saved offset UI wiring and the real generator/transform/bank chain.
const main=JSON.parse(fs.readFileSync(path.join(root,'ec_cnmat_sinusoids_lowcpu_abs~.maxpat'))).patcher;
const boxes=Object.fromEntries(main.boxes.map(x=>[x.box.id,x.box]));
const lines=main.lines.map(x=>x.patchline);let display=100,base=100,number=1,on=0,lastEffective=0;
const off=engine('offset');
const trans=engine('transform',(n,a)=>{if(n===5){off.inlet=0;off.list(...a);}});
const model=setup((n,a)=>{if(n===6){trans.inlet=0;trans.tagged(...a);}},(bus,selector,...a)=>{off.inlet=1;off[selector](...a);});
const retune=engine('retuning',(n,a)=>{if(n===0){base=a[0];model.inlet=4;model.msg_float(a[0]);model.inlet=8;}if(n===2)display=a[0];});
retune.inlet=3;retune.msg_float(0);retune.inlet=0;retune.msg_float(100);
const targets=new Set(Object.keys(boxes).filter(id=>id.startsWith('partial-offset-v20-')).concat(['syn-js','offset-crossfade-send-v20-6','detune-shapes-v20']));
function emit(id,port,a){for(const l of lines.filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order??0)-(b.order??0)))if(targets.has(l.destination[0]))receive(l.destination[0],l.destination[1],a);}
function receive(id,inlet,a){
 const b=boxes[id],text=b.text||'';
 if(a[0]==='hidden')return;
 if(id==='syn-js'){model.inlet=inlet;model[a[0]](...a.slice(1));return;}
 if(id==='detune-shapes-v20'){detune[a[0]](...a.slice(1));return;}
 if(id==='offset-crossfade-send-v20-6'){off.inlet=1;off[a[0]](...a.slice(1));return;}
 if(b.maxclass==='number'||b.maxclass==='toggle'){emit(id,0,[Number(a[0])]);return;}
 if(text==='t i i i'){for(let i=2;i>=0;i--)emit(id,i,a);return;}
 if(text==='sel 1'){if(a[0]===1)emit(id,0,['bang']);else emit(id,1,a);return;}
 if(text==='1'){emit(id,0,[1]);return;}
 if(text==='== 0'){emit(id,0,[a[0]===0?1:0]);return;}
 if(text.startsWith('prepend ')){emit(id,0,[text.slice(8),...a]);return;}
 if(text==='pak 0 1'){if(inlet===0)on=a[0];else number=a[0];emit(id,0,[on,number]);return;}
 if(text==='expr 1+($i1!=0)*($i2-1)'){emit(id,0,[1+(a[0]!==0?1:0)*(a[1]-1)]);return;}
 if(text==='change 0'){if(a[0]!==lastEffective){lastEffective=a[0];emit(id,0,a);}return;}
 throw Error('Unmodeled offset node '+id+' '+text);
}
emit('partial-offset-v20-receive-on',0,[1]);emit('partial-offset-v20-receive-number',0,[5]);
ok(off.fading,'saved UI starts the existing crossfade');advance(75,off);
const halfway=last(off,0);ok(halfway.some((n,i)=>i%3===1&&n===100)&&halfway.some((n,i)=>i%3===1&&n===500),'old and new first partials overlap during transition');
advance(200,off);eq(off.activeOffset,5,'offset 5 completes');eq(last(off,0).filter((_,i)=>i%3===1),[500,500,600,600,700,700,800,800],'steady transformed paired model has shifted spectrum only');
near(display,100,'BASE FREQ display remains 100');near(base,100,'generator reference remains 100');near(retune.referenceBase,100,'retuning reference remains 100');
emit('partial-offset-v20-receive-number',0,[7]);advance(25,off);emit('partial-offset-v20-receive-number',0,[9]);advance(25,off);emit('partial-offset-v20-receive-number',0,[5]);advance(500,off);
eq(off.activeOffset,5,'rapid changes retain latest offset');
emit('partial-offset-v20-receive-on',0,[0]);advance(200,off);eq(off.activeOffset,1,'OFF returns to position 1');near(last(model,6)[1],100,'OFF restores f0');near(display,100,'OFF leaves BASE FREQ unchanged');
emit('partial-offset-v20-receive-on',0,[1]);eq(number,1,'ON resets number to 1');
ok(lines.some(l=>l.source[0]==='rt14-retuning'&&l.source[1]===2&&l.destination[0]==='rt14-current-set'),'base readback comes from retuning');
ok(lines.some(l=>l.source[0]==='rt14-current-set'&&l.destination[0]==='syn-base'),'base display receives silent set');
const incoming=lines.filter(l=>l.destination[0]==='syn-base').map(l=>l.source[0]);
ok(incoming.every(id=>['rt14-current-set','syn-filter-base-display','v20-recv-Source_Base_Hz_v20-clip'].includes(id)),'no spectral partial or offset feeds BASE FREQ');
const report={result:'PASS',assertions:checks,scenarios:['four sequences at offsets 1 and 5','primary and anchor frequencies','stable base frequency, IDs and memory','first-slot detune and micro-drift return','ERB frequency','engine preset roundtrip','saved offset UI path','150 ms crossfade and latest edit','OFF and ON reset','BASE FREQ readback wiring'],limitations:['Actual JS with modeled Tasks and Max UI messages; no native Max audio or GUI test.']};
fs.writeFileSync(path.join(__dirname,'partial-offset-results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
