'use strict';
/* Executed control graph: memory -> generator -> transform -> offset -> lanes.
   sinusoids~, line~, matrix~ and the sound device are NOT simulated. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const R=path.resolve(__dirname,'..');let clock=100000,checks=0;const outputs=[];
const ok=(v,m)=>{assert.ok(v,m);checks++;};const near=(a,b,m,e=1e-6)=>{assert.ok(Math.abs(a-b)<e,m+': '+a+' vs '+b);checks++;};
const clone=x=>JSON.parse(JSON.stringify(x));
function load(file){function Clock(){this.getTime=()=>clock;}function Task(){this.cancel=()=>{};this.repeat=()=>{};this.schedule=()=>{};}const c={JSON,Math,Date:Clock,Task,inlet:0,jsarguments:['test'],arrayfromargs:a=>Array.from(a),messnamed:()=>{},error:e=>{throw Error(e);},outlet:()=>{}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(R,'javascript',file),'utf8'),c);return c;}
const mem=load('multislider_interpolation_engine_v23_6.js'),mod=load('cnmat_sinusoid_model_generator_v23.js'),tx=load('sinusoid_model_transform_v23.js'),off=load('partial_offset_crossfade_v23_6.js'),gm=load('Partial_Group_Manager_v23_6.js');
function call(c,i,f,...a){c.inlet=i;c[f](...a);}
function unpack(a){return a.length===1&&Array.isArray(a[0])?Array.from(a[0]):a;}
let route=[],models={};gm.outlet=(p,...a)=>{a=unpack(a);if(a[0]==='model')models[a[1]]=a.slice(2);if(a[0]==='matrix')route.push(a.slice(1));};
off.outlet=(p,...a)=>{call(gm,0,'list',...unpack(a));};
tx.outlet=(p,...a)=>{a=unpack(a);if(p===6){if(a[0]==='contributions')a.shift();call(off,2,'contributions',...a);}if(p===5)call(off,0,'list',...a);};
mod.outlet=(p,...a)=>{a=unpack(a);if(p===6)call(tx,0,'tagged',...a);};
mem.outlet=(p,...a)=>{a=unpack(a);if(p===3)call(mod,7,a[0]);if(p===5)call(mod,3,'msg_int',a[0]);if(p===0&&a[0]!=='size'&&a[0]!=='set')call(mod,0,'list',...a);if(p===6)call(mod,2,'list',...a);if(p===7)call(mod,1,'list',...a);};
function configure(n,base,first,seq){mem.componentCount=mem.displayCount=n;mem.anchorMirror=false;mem.anchorScale=1;for(let i=0;i<256;i++){mem.lifeMode[i]=i<n?1:0;mem.lifeEnd[i]=0;mem.memory[0][i]=.02;mem.memory[1][i]=.1;mem.memory[2][i]=.025;}for(let ch=0;ch<3;ch++){mem.current[ch]=mem.memory[ch].slice(0,n);mem.initialized[ch]=true;mem.running[ch]=false;}mod.baseFrequency=base;mod.firstPartial=first;mod.distributionIndex=seq;mod.microAmount=0;tx.clusterHz=0;off.ecmorphmode(1,seq,first);mem.frame(true,clock);off.ecmorphmode(0,seq,first);}
configure(8,100,1,0);clock+=200;gm.fadeTick();
const A={mem:clone(mem.ec_export()),mod:clone(mod.ec_export()),tx:clone(tx.ec_export()),off:clone(off.ec_export()),gm:clone(gm.ec_export())};
configure(16,200,2,2);call(gm,1,'msg_int',2);call(gm,2,'msg_int',4);clock+=200;gm.fadeTick();
const B={mem:clone(mem.ec_export()),mod:clone(mod.ec_export()),tx:clone(tx.ec_export()),off:clone(off.ec_export()),gm:clone(gm.ec_export())};
mem.ec_import(A.mem);mod.ec_import(A.mod);tx.ec_import(A.tx);off.ec_import(A.off);gm.ec_import(A.gm);mem.frame(true,clock);clock+=200;gm.fadeTick();
function amplitudeById(){let out={};for(let l=0;l<12;l++){let list=models[l]||[];for(let s=0;s<gm.idsByLane[l].length;s++){let id=gm.idsByLane[l][s];if(id)out[id]=(out[id]||0)+Number(list[2*s+1]||0);}}return out;}
const before=amplitudeById();const pairs=[[mem,'mem'],[mod,'mod'],[tx,'tx'],[gm,'gm']];
for(const [e,k] of pairs)e.ec_morph_prepare({from:A[k],to:B[k],extra:{targetBank:B.off.activeBank}});
mod.ecmorphhold(1);tx.ecmorphhold(1);off.ecmorphmode(1,A.mod.distributionIndex,A.mod.firstPartial);
for(const [e]of pairs)e.ecmorphbegin();
function frame(t){mod.ecmorphhold(1);tx.ecmorphhold(1);mod.ecmorphframe(t);mem.ecmorphframe(t);tx.ecmorphframe(t);gm.ecmorphframe(t);mod.ecmorphhold(0);tx.ecmorphhold(0);}
frame(0);const source=amplitudeById();for(const id of Object.keys(before))near(source[id]||0,before[id]||0,'source preserved ID '+id);
for(let step=1;step<=50;step++){clock+=20;frame(step/50);ok(!off.fading,'no second bank fade launched');for(const [lane,list]of Object.entries(models)){ok(list.length<=2048,'lane capacity bounded');ok(list.every(Number.isFinite),'finite audio model');for(let j=1;j<list.length;j+=2)ok(list[j]>=0&&list[j]<=1,'bounded oscillator amplitude');}for(let id=1;id<=1024;id++){let sum=0;for(let l=0;l<12;l++)sum+=gm.morphLaneWeights[l][id];near(sum,1,'lane gains sum to unity');}}
near(mod.baseFrequency,B.mod.baseFrequency,'final generator base');near(mod.partialMultiple(0),3,'final odd/offset layout');
const endpoint=amplitudeById();for(const [e]of pairs)e.ecmorphrelease(1);off.ecmorphmode(0,B.mod.distributionIndex,B.mod.firstPartial);const after=amplitudeById();for(const id of Object.keys(endpoint))near(after[id]||0,endpoint[id]||0,'release has no amplitude step ID '+id);
// All three raw editable layers reached B, including slots that never sounded.
for(let ch=0;ch<3;ch++)for(let i=0;i<256;i++)near(mem.memory[ch][i],B.mem.memory[ch][i],'full memory endpoint');
const report={status:'PASS',checks,frames:51,coverage:['actual memory/generator/transform/offset/group message chain','source model continuity','stable bank during layout morph','finite, bounded per-lane model messages','all 1024 routing-weight sums','release continuity','hidden-layer endpoint values'],limits:['No sinusoids~ DSP, native matrix~/line~ ramping, GUI, scheduler or audio device.']};fs.writeFileSync(path.join(__dirname,'morph_signal_path_results_v23.json'),JSON.stringify(report,null,2));console.log(JSON.stringify(report,null,2));
