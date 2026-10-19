/* Run: node tests/test_melody.js. Behavioral tests, mocked Max API. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..'),output=[];
const ctx={setinletassist(){},setoutletassist(){},outlet:(...a)=>output.push(a),arrayfromargs:a=>Array.from(a),embedmessage(){}};
vm.createContext(ctx);vm.runInContext(fs.readFileSync(path.join(root,'ec_scale_tuning_mapper.js'),'utf8'),ctx);
const M=ctx.Mapper;
function send(name,...a){output.length=0;M.command(name,a);return output;}
function note(){send('bang');const notes=output.filter(x=>x[0]===0);assert.equal(notes.length,1);const mc=notes[0][1];assert(Number.isFinite(mc));return mc;}
function history(){send('melodystate');return JSON.parse(output[0][1][1]);}
function force(i){send('weights',...Array.from({length:7},(_,j)=>i===j?1:0));return note();}
function allWeights(){send('profile','auto');}
function seed(n=45078){send('randomseed',n);send('melodyreset');}
const defaults=JSON.parse(JSON.stringify(M.snapshot()));
assert.equal(defaults.state.melodic,1);assert.equal(defaults.state.stepchance,.9);
send('dump');
for(const key of ['melodic','stepchance','recovery','leapavoid','maxrun','turnbias','recoverycents','repeats'])
 assert.equal(output.find(x=>x[0]===3&&x[1][0]===key)[1][1],defaults.state[key]);
// Wide register: evaluate real degree indices, not wrapped pitch classes.
send('register',-1,1);seed();
const pc=[0,200,400,500,700,900,1100];
function z(mc){let k=Math.floor((mc-6000)/1200),r=mc-6000-k*1200;return k*7+pc.indexOf(r);}
let prev=null,prevDz=0,prevDir=0,run=0,steps=0,moving=0,repeats=0,large=0,recovered=0,leaps=0,consecutiveLeaps=0,thirdPairs=0,nonThirdSame=0,continued=0,turnOpportunities=0;
const N=50000;
for(let i=0;i<N;i++){
 let mc=note();assert(mc>=4800&&mc<=8300);
 if(prev!==null){
  let dz=z(mc)-z(prev),dir=Math.sign(dz);
  if(Math.abs(prevDz)>=3){large++;if(Math.abs(dz)===1&&dir===-Math.sign(prevDz))recovered++;}
  if(Math.abs(dz)===1)steps++;
  if(dir)moving++;else repeats++;
  if(Math.abs(dz)>1){leaps++;if(Math.abs(prevDz)>1){consecutiveLeaps++;if(Math.abs(prevDz)===2&&Math.abs(dz)===2&&dir===Math.sign(prevDz))thirdPairs++;else if(dir===Math.sign(prevDz))nonThirdSame++;}}
  if(run>=3&&dir){turnOpportunities++;if(dir===prevDir)continued++;}
  if(dir){run=dir===prevDir?run+1:1;prevDir=dir;}
  prevDz=dz;
 }
 prev=mc;
}
assert(steps/(N-1)>.90);assert(steps/moving>.94);assert(large>50);assert(recovered/large>.98);
assert(nonThirdSame<5);assert(continued/turnOpportunities<.18);
const metrics={notes:N,stepFraction:steps/(N-1),stepFractionOfMovement:steps/moving,repeatedNotes:repeats,leaps,largeLeaps:large,immediateOppositeStepRecoveries:recovered,recoveryRate:recovered/large,consecutiveLeaps,allowedSameDirectionThirdPairs:thirdPairs,otherSameDirectionLeapPairs:nonThirdSame,continuingAfterThreeRate:continued/turnOpportunities};
// Explicit thirds exception versus reversing third, with no available steps.
send('reset');send('stepchance',0);send('turnbias',0);send('randomseed',12345);let thirds=0;
for(let i=0;i<3000;i++){
 send('melodyreset',6000);assert.equal(force(2),6400);
 send('weights',1,0,0,0,1,0,0);if(note()===6700)thirds++;
}
assert(thirds>2800);metrics.sameDirectionThirdChoiceRate=thirds/3000;
// Fourth and larger: strict recovery when available, tunings included.
for(const tuning of ['equal','just_major_5limit']){
 send('reset');send('tuning',tuning);send('recovery',1);send('melodyreset',6000);force(3);
 assert(history().large);allWeights();const target=M.snapshot().state.base.cents[2]+6000;
 assert(Math.abs(note()-target)<1e-7);
}
// When recovery is excluded by the profile, one valid tone is still emitted.
send('reset');send('recovery',1);send('melodyreset',6000);force(4);send('weights',1,0,0,0,0,0,0);assert.equal(note(),6000);
// Repeats and unavailable motion: stay valid, never re-enable a zero-weight tone.
send('repeats',0);for(let i=0;i<20;i++)assert.equal(note(),6000);
send('register',0,1);let previous=6000;for(let i=0;i<30;i++){const mc=note();assert.notEqual(mc,previous);previous=mc;}
// User input anchors a new phrase rather than manufacturing interval history.
send('reset');send('degree',3);assert.equal(history().mc,6400);assert.equal(history().run,0);
send('stepchance',1);assert([6200,6500].includes(note()));send('midi',67);assert.equal(history().mc,6700);assert.equal(history().run,0);
// Reproducibility requires both RNG and phrase reset, independent of prior input.
send('reset');send('register',-1,1);seed(127);const seq=Array.from({length:200},note);seed(127);assert.deepEqual(Array.from({length:200},note),seq);
// No pitch class wrap masquerading as a step: B4 -> C4 is a large downward leap.
send('reset');send('melodyreset',7100);force(0);assert(history().large);assert.equal(history().direction,-1);
// Real adjacent boundary step B3 -> C4 does count as a step.
send('melodyreset',5900);force(0);assert.equal(history().leap,false);assert.equal(history().large,false);
// Non-octave scales and all named scales respect exact cents and register bounds.
for(const id of Object.keys(M.catalog())){
 send('reset');send('scale',id);send('register',-1,1);seed(717);
 const c=M.snapshot().state.base;
 for(let i=0;i<120;i++){
  const mc=note();let rel=mc-c.tonic,k=Math.floor((rel+1e-8)/c.period),r=rel-k*c.period;
  assert(k>=-1&&k<=1);assert(c.cents.some(x=>Math.abs(x-r)<1e-6));
 }
}
send('edo',13,1200*Math.log2(3));send('stepchance',1);send('recovery',0);seed(891);
let last=null;for(let i=0;i<400;i++){const mc=note();if(last!==null)assert(Math.abs(Math.abs(mc-last)-1200*Math.log2(3)/13)<1e-6);last=mc;}
// Sparse degree nodes and mixture contexts preserve exclusion and one-note output.
send('reset');send('nodesmode','degrees');send('nodeweights',0,0,0,0,1,0,0);
for(let i=0;i<50;i++)assert.equal(note(),6700);
send('nodesmode','mixture');send('nodeassign',2,'pentatonic_12tet');send('nodeweights',.5,.5);for(let i=0;i<1000;i++)note();
send('nodeassign',2,'major_just');send('nodesmode','tuning');for(let i=0;i<100;i++){send('nodeweights',i+1,101-i);note();}
// v1 state migration, round trips, invalid controls reject without mutation.
const old=JSON.parse(JSON.stringify(defaults));
for(const key of ['melodic','stepchance','recovery','leapavoid','maxrun','turnbias','recoverycents'])delete old.state[key];
M.restore(old);assert.equal(M.snapshot().state.stepchance,.9);
send('stepchance',.82);send('maxrun',4);const saved=JSON.stringify(M.snapshot());send('reset');M.restore(saved);assert.equal(JSON.stringify(M.snapshot()),saved);assert.equal(history(),null);
for(const [name,value] of [['stepchance',1.1],['recovery',-.1],['leapavoid',NaN],['turnbias',Infinity],['maxrun',0],['maxrun',2.5],['recoverycents',0],['melodic',2],['melodyreset',Infinity]]){
 const before=JSON.stringify(M.snapshot());assert.throws(()=>send(name,value));assert.equal(JSON.stringify(M.snapshot()),before);
}
let malformed=JSON.parse(saved);malformed.state.stepchance=2;assert.throws(()=>M.restore(malformed));assert.equal(JSON.stringify(M.snapshot()),saved);
// Menu includes each canonical scale once in requested order; status is non-musical.
send('listmenu');const menu=Array.from(output[0][1].slice(1));assert.deepEqual(menu,JSON.parse(fs.readFileSync(path.join(root,'SCALE_MENU.json'))));
assert.deepEqual(menu.slice(0,6),['phrygian','aeolian','dorian','ionian','mixolydian','lydian']);assert.equal(menu.length,41);
for(let i=0;i<menu.length;i++){send('scale',menu[i]);assert.equal(output.find(x=>x[0]===3&&x[1][0]==='scaleindex')[1][1],i);assert.equal(output.filter(x=>x[0]===0).length,0);}
send('edo',19);assert.equal(output.find(x=>x[0]===3&&x[1][0]==='scaleindex')[1][1],41);
fs.writeFileSync(path.join(root,'tests','melody-results.json'),JSON.stringify({result:'PASS',host:'Node vm with mocked Max API; not Max runtime',metrics},null,2)+'\n');
console.log(JSON.stringify(metrics,null,2));console.log('PASS: melodic preferences, boundary behavior, thirds exemption, sparse profiles, nodes, tuning, state migration and all menu entries.');
