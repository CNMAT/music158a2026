/* Behavioral tests in Node, with a mocked Max API. */
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..'),output=[];
const ctx={inlet:0,setinletassist(){},setoutletassist(){},outlet:(...a)=>output.push(a),arrayfromargs:a=>Array.from(a),embedmessage(){}};
vm.createContext(ctx);vm.runInContext(fs.readFileSync(path.join(root,'ec_scale_tuning_mapper.js'),'utf8'),ctx);
const M=ctx.Mapper;
function send(name,...a){output.length=0;M.command(name,a);return output;}
function note(){send('bang');const n=output.filter(x=>x[0]===0);assert.equal(n.length,1);return n[0][1];}
function near(x,y){assert(Math.abs(x-y)<1e-6,`${x} != ${y}`);}
function status(key){send('dump');return output.find(x=>x[0]===3&&x[1][0]===key)[1].slice(1);}
function reject(name,...a){const before=JSON.stringify(M.snapshot());assert.throws(()=>send(name,...a));assert.equal(JSON.stringify(M.snapshot()),before);}
assert.equal(M.snapshot().state.octaveshift,0);assert.equal(M.snapshot().state.octave,'tonic');
send('weights',1,0,0,0,0,0,0);
for(const oct of [-1,0,3,4,5,9]){send('octave',oct);for(let i=0;i<30;i++)near(note(),1200*(oct+1));}
// Octave selection resets register spread, retains tonic PC, and leaves mapping unchanged.
send('tonic',6900);send('register',-1,1);send('octave',3);
assert.equal(M.snapshot().state.registerMin,0);assert.equal(M.snapshot().state.registerMax,0);near(note(),5700);
send('octaveshift',1);send('midi',69);near(output.find(x=>x[0]===0)[1],6900);
send('degree',1);near(output.find(x=>x[0]===0)[1],6900);
send('octave','tonic');send('octaveshift',0);near(note(),6900);
// Sampling probability is independent of melodic preferences, with no octave drift.
const metrics=[];
for(const melodic of [0,1])for(const weight of [0,.25,.5,1]){
 send('reset');send('octave',4);send('octaveshift',weight);send('melodic',melodic);send('randomseed',12345);
 const counts=[0,0,0],N=12000;
 for(let i=0;i<N;i++){
  const mc=note(),oct=Math.floor((mc+1e-7)/1200)-1;
  assert(oct>=3&&oct<=5);counts[oct-3]++;
  const pc=((mc%1200)+1200)%1200;assert([0,200,400,500,700,900,1100].some(x=>Math.abs(x-pc)<1e-6));
 }
 counts.forEach((n,i)=>assert(Math.abs(n/N-[weight/2,1-weight,weight/2][i])<.018));
 if(weight===0)assert.equal(counts[1],N);if(weight===1)assert.equal(counts[1],0);
 metrics.push({melodic,weight,notes:N,below:counts[0],primary:counts[1],above:counts[2]});
}
// Physical octave remains 1200 cents for non-octave scales; repeat exclusion remains effective.
send('reset');send('edo',1,1901.955000865);send('octave',4);send('octaveshift',1);
for(let i=0;i<100;i++)assert([4800,7200].includes(note()));
send('reset');send('octaveshift',1);send('repeats',0);let last=null;
for(let i=0;i<1000;i++){const mc=note();assert.notEqual(mc,last);last=mc;}
// Six endpoints and the interpolated midpoint use corresponding ordinal degrees.
send('reset');send('modalnodes');
const names=['mixolydian','ionian','lydian','dorian','aeolian','phrygian'];
assert.deepEqual(Array.from(M.snapshot().assigned,x=>x.name),names);
const catalog=M.catalog(),canonical=['mixolydian','major','lydian','dorian','natural_minor','phrygian'];
for(let i=0;i<6;i++){
 send('nodeweights',...names.map((_,j)=>i===j?1:0));
 assert.deepEqual(Array.from(status('cents')),Array.from(catalog[canonical[i]].nominal));
 for(let d=1;d<=7;d++){send('degree',d);near(output.find(x=>x[0]===0)[1],6000+catalog[canonical[i]].nominal[d-1]);}
}
send('nodeweights',0,.5,0,0,.5,0);
assert.deepEqual(Array.from(status('cents')),[0,200,350,500,700,850,1050]);
send('degree',3);near(output.find(x=>x[0]===0)[1],6350);
send('midi',63.6);near(output.find(x=>x[0]===0)[1],6350);
send('octave',3);send('octaveshift',1);
for(let i=0;i<1000;i++){const mc=note();assert(mc>=3600&&mc<7200);assert(mc<4800||mc>=6000);}
assert.equal(send('nodeweights',1,2,3,4,5,6).filter(x=>x[0]===0).length,0);
reject('nodeweights',0,0,0,0,0,0);reject('nodeassign',3,'pentatonic_12tet');reject('nodesmode','tuning');
for(const [name,x] of [['octaveshift',-0.1],['octaveshift',1.1],['octaveshift',NaN],['octave',4.5],['octave',10],['octave','wrong']])reject(name,x);
// Save/restore, migration, and invalid-state rollback.
const saved=JSON.stringify(M.snapshot());send('reset');M.restore(saved);
const restored=JSON.parse(JSON.stringify(M.snapshot())),expected=JSON.parse(saved);
restored.nodeweights.forEach((w,i)=>near(w,expected.nodeweights[i]));
restored.nodeweights=expected.nodeweights;assert.deepEqual(restored,expected);
const older=JSON.parse(saved);delete older.state.octave;delete older.state.octaveshift;
M.restore(older);assert.equal(M.snapshot().state.octaveshift,0);assert.equal(M.snapshot().state.octave,'tonic');
const good=JSON.stringify(M.snapshot()),bad=JSON.parse(good);bad.state.octaveshift=2;
assert.throws(()=>M.restore(bad));assert.equal(JSON.stringify(M.snapshot()),good);
let states=0;
function walk(p,scope='root'){
 for(const {box:b} of p.boxes){
  if(b.text==='js ec_scale_tuning_mapper.js'){
   send('reset');for(const e of b.embedstate||[])if(e[0]==='restore')M.restore(e[1]);states++;
   if(scope==='root'||scope.endsWith('p nodes_tuning')){
    send('modalnodes');if(scope==='root')send('nodesmode','off');
    send('nodeweights',1,1,1,1,1,1);assert.equal(M.snapshot().assigned.length,6);
   }
   note();
  }
  if(b.patcher)walk(b.patcher,scope+'/'+b.text);
 }
}
walk(JSON.parse(fs.readFileSync(path.join(root,'_ec_scale_tuning_mapper.maxhelp'))).patcher);
const result={result:'PASS',host:'Node vm with mocked Max API; not Max runtime',embeddedStates:states,metrics};
fs.writeFileSync(path.join(root,'tests','octave-modal-results.json'),JSON.stringify(result,null,2)+'\n');
console.log(JSON.stringify(result,null,2));
