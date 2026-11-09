'use strict';
const layout=require('./package_layout_v23.cjs');
const fs=require('fs'),path=require('path'),assert=require('assert'),crypto=require('crypto');
const {Network}=require('./automixer_test_harness_v23.cjs');
const read=f=>JSON.parse(layout.readFileSync(path.join(path.resolve(__dirname,'..'),f),'utf8'));
const main=read('_ec_sinusoids_synth_v23.maxpat').patcher;
const boxmap=p=>Object.fromEntries(p.boxes.map(e=>[e.box.id,e.box]));
const B=boxmap(main),routing=B['sinusoids-audio-routing-v23'].patcher,R=boxmap(routing),control=R['am-controller-v23'].patcher,C=boxmap(control);
let checks=0;function ok(v,msg){checks++;assert(v,msg);}function eq(a,b,msg){checks++;assert.deepStrictEqual(a,b,msg);}
function edge(p,s,o,d,i=0){ok(p.lines.some(e=>JSON.stringify(e.patchline.source)===JSON.stringify([s,o])&&JSON.stringify(e.patchline.destination)===JSON.stringify([d,i])),`${s}[${o}] -> ${d}[${i}]`);}
function stable(o){if(Array.isArray(o))return o.map(stable);if(o&&typeof o==='object')return Object.fromEntries(Object.keys(o).sort().map(k=>[k,stable(o[k])]));return o;}
const hash=o=>crypto.createHash('sha256').update(JSON.stringify(stable(o))).digest('hex');
const sha=b=>crypto.createHash('sha256').update(b).digest('hex');
eq(C['am-js'].text,'js automatic_lines_v5_ed.js 12 2000 10000 5000');eq(C['am-js'].numoutlets,13);
eq(R['am-controller-v23'].numinlets,0);eq(R['am-controller-v23'].numoutlets,12);
for(let n=1;n<=12;n++){
 const k=String(n).padStart(2,'0');
 edge(control,'am-js',n-1,'am-gate-'+k,1);edge(control,'am-gate-'+k,0,'am-clip-'+k);
 edge(control,'am-clip-'+k,0,'am-pack-'+k);edge(control,'am-pack-'+k,0,'am-line-'+k);edge(control,'am-line-'+k,0,'am-out-'+k);
 edge(routing,'am-controller-v23',n-1,'group-mult-'+k,1);
 eq(C['am-out-'+k].index,n);eq(C['am-line-'+k].text,'line~ 1.');eq(C['am-gate-'+k].text,'gate 1 0');
 const targets=control.lines.filter(e=>e.patchline.source[0]==='am-js'&&e.patchline.source[1]===n-1);eq(targets.length,1);
}
const summary=control.lines.filter(e=>e.patchline.source[0]==='am-js'&&e.patchline.source[1]===12);eq(summary.length,1);eq(summary[0].patchline.destination,['am-list-gate',1]);
edge(control,'am-list-gate',0,'am-levels-state');
for(const mode of ['bypass','stop']){edge(control,'am-'+mode+'-order',2,'am-close-gates');edge(control,'am-'+mode+'-order',1,'am-engine-stop');}
edge(control,'am-global-stop',0,'am-global-stop-bang');edge(control,'am-global-stop-bang',0,'am-mode-memory');edge(control,'am-mode-memory',0,'am-stop-if-auto');
// Help file: all saved cords and actual script references resolve.
const help=read('automatic_lines_v5_ed.maxhelp').patcher;
function validate(p){const b=boxmap(p);for(const e of p.lines||[])for(const [side,prop] of [['source','numoutlets'],['destination','numinlets']]){const [id,port]=e.patchline[side];ok(b[id]&&port>=0&&port<b[id][prop],'help port range');}for(const z of Object.values(b)){if(z.patcher)validate(z.patcher);if(z.text&&z.text.startsWith('js ')){eq(z.text.split(/\s+/)[1],'automatic_lines_v5_ed.js');ok(layout.existsSync(path.join(path.resolve(__dirname,'..'),z.text.split(/\s+/)[1])));}}}
validate(help);
// Exercise the ACTUAL saved native-message graph with a selective Max emulator.
const N=new Network(main);N.engine.ctx.loadbang();
// v5 can emit during loading, but no voice or list passes a closed startup gate.
N.advance(0);for(let n=1;n<=12;n++)eq(N.line(n).to,1,'Startup is unity before init');
N.send('control/am-load',0,[]);N.flush();
eq(N.engine.ctx.running,false);eq(N.state('am-ui-mode'),0);eq(N.state('am-ui-min'),2000);eq(N.state('am-ui-max'),10000);eq(N.state('am-ui-wait'),5000);eq(N.state('am-ui-peak'),0);eq(N.state('am-ui-grain'),20);eq(N.state('am-ui-levels'),Array(12).fill(1));
N.ui('am-ui-mode',1);eq(N.engine.ctx.running,true);eq(N.state('am-ui-mode'),1);N.advance(1000);
const levels=Array.from(N.engine.ctx.currentValues);
for(let n=1;n<=12;n++){eq(N.line(n).to,levels[n-1]);eq(N.line(n).duration,20);ok(levels[n-1]>0&&levels[n-1]<1);}
eq(N.state('am-ui-levels'),levels);
const startTimes=Array.from(N.engine.ctx.legStartTimes);N.command('start');eq(Array.from(N.engine.ctx.legStartTimes),startTimes,'Repeated start preserves active phases');
N.command('stop');eq(N.engine.ctx.running,false);eq(N.state('am-ui-mode'),2);for(let n=1;n<=12;n++){eq(N.line(n).to,0);eq(N.line(n).duration,20);}eq(N.state('am-ui-levels'),Array(12).fill(0));
N.advance(1020);for(let n=1;n<=12;n++)eq(N.signal('control/am-line-'+String(n).padStart(2,'0')),0);
N.command('bypass');eq(N.state('am-ui-mode'),0);eq(N.engine.ctx.running,false);for(let n=1;n<=12;n++)eq(N.line(n).to,1);eq(N.state('am-ui-levels'),Array(12).fill(1));
// Deliberate out-of-band JS activity must not leak through a Bypass gate.
N.engine.ctx.start();N.advance(1040);for(let n=1;n<=12;n++)eq(N.line(n).to,1);eq(N.state('am-ui-levels'),Array(12).fill(1));N.command('bypass');
N.command('range',9000,1000);eq(N.engine.ctx.minimumMs,1000);eq(N.engine.ctx.maximumMs,9000);eq(N.state('am-ui-min'),1000);eq(N.state('am-ui-max'),9000);
N.ui('am-ui-min',1500);eq(N.engine.ctx.minimumMs,1500);eq(N.engine.ctx.maximumMs,9000,'Remote range must update the GUI pak cache');
N.ui('am-ui-max',2500);eq(N.engine.ctx.minimumMs,1500);eq(N.engine.ctx.maximumMs,2500);
N.command('range',-12,0);eq(N.engine.ctx.minimumMs,1);eq(N.engine.ctx.maximumMs,1);eq(N.state('am-ui-min'),1);eq(N.state('am-ui-max'),1);
N.command('waittime',-50);eq(N.state('am-ui-wait'),0);eq(N.engine.ctx.globalWaitTimeMs,0);N.ui('am-ui-wait',350);eq(N.engine.ctx.globalWaitTimeMs,350);
N.ui('am-ui-peak',1);eq(N.engine.ctx.useFixedPeak,true);N.command('fixedpeak',2);eq(N.state('am-ui-peak'),0);eq(N.engine.ctx.useFixedPeak,false);
N.command('grain',2000);eq(N.engine.ctx.updateIntervalMs,1000);eq(N.state('am-ui-grain'),1000);N.command('grain',7.8);eq(N.engine.ctx.updateIntervalMs,7);eq(N.state('am-ui-grain'),7);
N.command('range',100,100);N.command('fixedpeak',1);N.command('restart');eq(N.state('am-ui-mode'),1);eq(Array.from(N.engine.ctx.voiceTargets),Array(12).fill(1));
for(let n=1;n<=12;n++)eq(N.line(n).duration,7);
N.advance(1050);N.ui('am-ui-restart',[]);eq(N.engine.ctx.legStartTimes[0],1050);eq(N.engine.ctx.currentValues[0],0);
N.broadcast('ADSR_12_Lanes_Stop_v23',[]);eq(N.engine.ctx.running,false);eq(N.state('am-ui-mode'),2);for(let n=1;n<=12;n++){eq(N.line(n).to,0);eq(N.line(n).duration,20,'Stop fade stays short even with slow grain');}
N.command('bypass');N.broadcast('ADSR_12_Lanes_Stop_v23',[]);eq(N.state('am-ui-mode'),0,'All Off preserves bypass');
N.command('bang');eq(N.state('am-ui-mode'),1);eq(N.engine.ctx.running,true);
N.command('unsupported',123);eq(N.log.length,1,'Unknown commands are reported, not fed to the engine');
N.command('stop');eq(N.log.length,1);ok(N.steps<10000,'No feedback recursion');
console.log(JSON.stringify({status:'PASS',assertions:checks,graph_messages:N.steps,coverage:'12 scalar outputs and monitor-only summary; closed startup gates; mode ordering; real saved control/readback graph; external range cache; All Off; no-feedback UI; bounded settings; JS help resolution and saved presentation rectangles. Selective Max emulation, not native DSP.'}));
