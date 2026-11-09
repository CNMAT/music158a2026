/* Real generator -> real interpolation engine with deterministic random input. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..');let clock=1000,checks=0;
const eq=(a,b,m)=>{assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),JSON.parse(JSON.stringify(b)),m);checks++;};
const ok=(v,m)=>{assert.ok(v,m);checks++;};
function load(file,outlet){function Task(){this.cancel=()=>{};this.repeat=()=>{};this.schedule=()=>{};}function DateMock(){this.getTime=()=>clock;}
 const math=Object.create(Math);math.random=()=>.75;const c={Task,Date:DateMock,Math:math,inlet:0,arrayfromargs:a=>Array.from(a),outlet,messnamed:()=>{}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'javascript',file),'utf8'),c);return c;}
const mem=load('multislider_interpolation_engine_v23_6.js',()=>{});let events=[];
const rand=load('random_multislider_values_v23.js',(channel,values)=>{events.push([channel,...values]);mem.inlet=channel;if(typeof values[0]==='string')mem[values[0]](...values.slice(1));else mem.list(...values);});
function init(){mem.componentCount=32;mem.displayCount=32;mem.anchorMirror=false;mem.anchorScale=.4;for(let ch=0;ch<3;ch++){mem.memory[ch]=Array.from({length:256},(_,i)=>(i%10+1)/20);mem.current[ch]=mem.memory[ch].slice(0,32);mem.durations[ch]=0;mem.running[ch]=false;mem.initialized[ch]=true;}rand.inlet=0;rand.msg_int(32);rand.view(8,12,0,32);events=[];}
for(const inlet of [1,3]){init();const before=JSON.parse(JSON.stringify(mem.memory));rand.inlet=inlet;rand.bang();const ch=inlet===1?0:2;
 for(let c=0;c<3;c++)for(let i=0;i<256;i++)eq(mem.memory[c][i],c===ch&&i>=7&&i<12?(ch===0?.5:.75):before[c][i],'only requested slots changed '+inlet+':'+c+':'+i);
 eq(events[0].slice(0,4),[ch,'randomrange',8,12],'range-bearing event');if(ch===2)eq(mem.lastDrawn[2][7],.3,'anchor random uses nominal values and applies scale once');
}
init();let before=JSON.parse(JSON.stringify(mem.memory));rand.inlet=2;rand.bang();for(let i=0;i<32;i++)eq(mem.memory[1][i],.75,'main amplitude random remains full-range '+i);eq(mem.memory[0],before[0],'primary random leaves detune alone');eq(mem.memory[2],before[2],'primary random leaves anchor alone');
for(const inlet of [1,3]){init();before=JSON.parse(JSON.stringify(mem.memory));rand.inlet=0;rand.view(1,32,1,32);rand.inlet=inlet;rand.bang();const ch=inlet===1?0:2;for(let i=0;i<32;i++)eq(mem.memory[ch][i],ch===0?.5:.75,'display all randomizes active '+inlet+':'+i);eq(mem.memory[ch].slice(32),before[ch].slice(32),'hidden tail preserved '+inlet);}
init();before=JSON.parse(JSON.stringify(mem.memory));mem.durations[2]=1000;rand.inlet=3;rand.bang();ok(mem.running[2],'random honors anchor morph duration');clock+=500;mem.tick(2);ok(Math.abs(mem.memory[2][7]-(before[2][7]+.75)/2)<1e-6,'ranged value interpolates');for(let i=0;i<256;i++)if(i<7||i>=12)eq(mem.memory[2][i],before[2][i],'outside range stable throughout transition '+i);clock+=500;mem.tick(2);eq(mem.memory[2][7],.75,'ranged destination reached');
init();mem.anchorMirror=true;before=JSON.parse(JSON.stringify(mem.memory));rand.inlet=3;rand.bang();eq(mem.memory,before,'anchor mirror authority preserved');
// A count decrease may retain departing display slots; clamp writes to actual count.
init();mem.componentCount=8;rand.inlet=0;rand.view(7,16,0,32);before=JSON.parse(JSON.stringify(mem.memory));rand.inlet=1;rand.bang();eq(mem.memory[0].slice(8),before[0].slice(8),'departing slots not overwritten');eq(mem.memory[0][6],.5,'remaining visible slot randomized');
const doc=JSON.parse(fs.readFileSync(path.join(root,'patchers/_ec_sinusoids_synth_v23_main.maxpat'),'utf8')).patcher;
ok(doc.lines.some(x=>JSON.stringify(x.patchline.source)==='["amp-viewport-js",6]'&&JSON.stringify(x.patchline.destination)==='["syn-random-js",0]'),'native range wired to random generator');
const report={status:'PASS',checks,coverage:['Detune and Anchor random scoped to viewed slots','all other active and 256-slot hidden values preserved','anchor scale applied once and mirror authority respected','existing morph duration preserved','display-all and primary amplitude random unchanged','count decrease/departing slots clamped','main graph range connection'],limits:['JavaScript execution with modeled Max outlets and clock; no native Max audition.']};fs.writeFileSync(path.join(__dirname,'RANDOM_VIEW_RANGE_RESULTS_v23.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report,null,2));
