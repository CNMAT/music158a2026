/* Run: node tests/test_mapper.js. Uses mocked Max messaging, not the Max host. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..'),output=[];
const ctx={inlet:0,messagename:'',setinletassist(){},setoutletassist(){},outlet:(...a)=>output.push(a),arrayfromargs:a=>Array.from(a),embedmessage(){}};
vm.createContext(ctx);vm.runInContext(fs.readFileSync(path.join(root,'ec_scale_tuning_mapper.js'),'utf8'),ctx);
const M=ctx.Mapper;
function send(name,...args){output.length=0;M.command(name,args);return output;}
function pitches(){return output.filter(x=>x[0]===0).map(x=>x[1]);}
function result(name,...args){send(name,...args);return pitches()[0];}
function near(a,b,tol=1e-7){assert(Math.abs(a-b)<tol,`${a} != ${b}`);}
function same(a,b){assert.deepStrictEqual(JSON.parse(JSON.stringify(a)),b);}
function rejects(name,...a){const before=JSON.stringify(M.snapshot());assert.throws(()=>send(name,...a));assert.strictEqual(JSON.stringify(M.snapshot()),before);}
let count=0;
// Every nonempty 12-tone membership set, including missing tonic and negative input.
send('mapping','ceiling');
for(let mask=1;mask<4096;mask++){
 const pc=[];for(let i=0;i<12;i++)if(mask&(1<<i))pc.push(i);
 send('seed',...pc);
 for(let note=-12;note<=139;note++){
  let want=note;while(!pc.includes(((want%12)+12)%12))want++;
  near(result('midi',note),want*100);count++;
 }
}
send('reset');send('scale','whole_tone');send('mapping','ceiling');
near(result('midicents',6000.2),6200);near(result('midicents',6260),6400);
near(result('midi',62.6),6400);near(result('note',6260),6400);
send('mapping','floor');near(result('midi',62.6),6200);
send('mapping','nearest');near(result('midicents',6100),6000);
send('midicents',6000,6700,6900);same(pitches()[0],[6000,6600,6800]);same(result('repeat'),[6000,6600,6800]);
for(const input of [NaN,Infinity,'61xyz','bad'])rejects('midicents',input);
rejects('cents',0,300,200);rejects('weights',1,2);rejects('register',2,1);
rejects('nodeweights',0,0);rejects('nodeweights',-1,2);
send('reset');send('tuning','just_major_5limit');near(result('degree',3),6000+1200*Math.log2(5/4));
send('midi',69);near(output.find(x=>x[0]===1)[1],440*2**((pitches()[0]-6900)/1200));
send('scale','dorian');rejects('tuning','just_major_5limit');
send('scale','major');send('mapping','degree');near(result('midi',60),6000);near(result('midi',67),7200);near(result('midi',59),5900);rejects('midi',60.1);
send('edo',13,1200*Math.log2(3));near(result('degree',14),6000+1200*Math.log2(3));
// Profile distribution and repeatable draws. No motion bias or register duplication.
send('reset');send('melodic',0);send('randomseed',123456);let counts=Array(7).fill(0),N=70000;
for(let i=0;i<N;i++){send('bang');const t=output.find(x=>x[0]===2&&x[1][0]==='tone')[1];counts[t[1]-1]++;}
send('dump');const expected=output.find(x=>x[0]===3&&x[1][0]==='probabilities')[1].slice(1);
for(let i=0;i<7;i++)assert(Math.abs(counts[i]/N-expected[i])<0.006);
send('randomseed',42);const seq=[];for(let i=0;i<20;i++)seq.push(result('bang'));
send('randomseed',42);for(let i=0;i<20;i++)assert.strictEqual(result('bang'),seq[i]);
send('weights',1,0,0,0,0,0,0);send('register',0,1);let lower=0;
for(let i=0;i<5000;i++){let mc=result('bang');assert(mc===6000||mc===7200);if(mc===6000)lower++;}
assert(lower>2350&&lower<2650);
send('repeats',0);let prev=null;for(let i=0;i<100;i++){let mc=result('bang');assert.notStrictEqual(mc,prev);prev=mc;}
// Nodes degree weighting; zero overlap keeps the last valid vector.
send('reset');send('nodesmode','degrees');send('nodeweights',0,0,1,0,0,0,0);
for(let i=0;i<20;i++)near(result('bang'),6400);
rejects('nodeweights',0,0,0,0,0,0,0);
send('weights',1,0,0,0,0,0,0);rejects('nodeweights',0,1,0,0,0,0,0);
send('weights',1e-100,1e100,0,0,0,0,0);send('nodeweights',1,0,0,0,0,0,0);send('strength',16);near(result('bang'),6000);
// Mixture endpoints, dominance/hysteresis and exactly one output for each bang.
send('reset');send('nodesmode','mixture');send('nodeweights',0,1);
near(result('degree',3),6000+1200*Math.log2(5/4));
send('nodeweights',0.51,0.49);near(result('degree',3),6000+1200*Math.log2(5/4));
send('nodeweights',0.54,0.46);near(result('degree',3),6400);
send('nodeassign',2,'minor_12tet');send('nodeweights',0.3,0.7);let nodeCount={};
for(let i=0;i<10000;i++){send('bang');assert.strictEqual(pitches().length,1);let t=output.find(x=>x[0]===2&&x[1][0]==='tone')[1];nodeCount[t[3]]=(nodeCount[t[3]]||0)+1;}
assert(Math.abs(nodeCount.minor_12tet/10000-0.7)<0.025);
rejects('nodesmode','tuning');
send('nodeassign',2,'major_just');send('nodesmode','tuning');send('nodeweights',1,1);
near(result('degree',3),6000+(400+1200*Math.log2(5/4))/2);
rejects('nodeassign',2,'minor_12tet');send('scale','natural_minor');rejects('nodecount',3);
// Persist and restore all musical settings, including assignments and node weights.
const saved=JSON.stringify(M.snapshot());send('reset');M.restore(saved);assert.strictEqual(JSON.stringify(M.snapshot()),saved);
// Held note-off remains paired with original pitch after configuration changes.
send('reset');send('midinote',61,99,3);near(pitches()[0],6000);
send('scale','chromatic');send('midinote',61,0,3);assert.strictEqual(pitches().length,0);
same(output.find(x=>x[0]===2)[1],['midievent',6000,0,3,61]);
send('midinote',63,100,1);send('midinote',63,110,1);send('panic');assert.strictEqual(output.filter(x=>x[0]===2&&x[1][0]==='midievent').length,2);
// Scala parser: blank description, ratio integer, comments, labels, non-octave.
send('reset');M.importScl('! comment\n\n 3\n 100.0 C#\n 3/2 fifth\n 3\n','test.scl');
near(M.snapshot().state.base.period,1200*Math.log2(3));same(M.snapshot().state.base.cents,[0,100,1200*Math.log(1.5)/Math.LN2]);
const good=JSON.stringify(M.snapshot());assert.throws(()=>M.importScl('bad\n3\n200.0\n100.0\n2/1','bad.scl'));assert.strictEqual(JSON.stringify(M.snapshot()),good);
// Host handlers preserve fractional input and distinguish both inlets.
send('reset');ctx.inlet=0;ctx.msg_float(6410.25);near(pitches().at(-1),6400);
ctx.inlet=1;output.length=0;ctx.list(0.2,0.8);assert.strictEqual(pitches().length,0);
ctx.inlet=0;output.length=0;ctx.msg_float(NaN);assert(output.some(x=>x[0]===3&&x[1][0]==='error'));assert.strictEqual(pitches().length,0);
// Every catalog entry is a valid configuration and produces a valid tone.
for(const name of Object.keys(M.catalog())){send('reset');send('scale',name);for(let i=0;i<3;i++)assert(Number.isFinite(result('bang')));}
// Every bundled Scala file imports with its period and implicit tonic intact.
for(const name of fs.readdirSync(path.join(root,'scales'))){M.importScl(fs.readFileSync(path.join(root,'scales',name),'utf8'),name);const b=M.snapshot().state.base;assert.strictEqual(b.cents[0],0);assert(b.cents.at(-1)<b.period);}
// CNMAT adapter event order, root-length conversion and alternate reference.
const ao=[],adapter={setinletassist(){},setoutletassist(){},outlet:(...x)=>ao.push(x),post(){}};
vm.createContext(adapter);vm.runInContext(fs.readFileSync(path.join(root,'ec_midicents_to_string.js'),'utf8'),adapter);
adapter.msg_float(6900);same(ao.map(x=>x[0]),[3,2,1,0]);near(ao[0][1],69);near(ao[1][1],440);near(ao[2][1],262/440);
ao.length=0;adapter.reference(442);adapter.msg_float(6900);near(ao[1][1],442);near(ao[0][1],69+12*Math.log2(442/440));
fs.writeFileSync(path.join(root,'tests','test-results.json'),JSON.stringify({integerCeilingCases:count,profileDraws:N,profileCounts:counts,expectedProbabilities:expected,mixtureCounts:nodeCount,result:'PASS',host:'Node vm with mocked Max API; not Max runtime'},null,2)+'\n');
console.log(`PASS: ${count} integer ceiling cases; ${N} profile draws; tuning, nodes, MIDI pairing, state, Scala and invalid-input checks.`);
