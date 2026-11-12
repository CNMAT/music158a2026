// A deleted controller must not prevent releasing the other transfer dictionaries.
const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const calls=[],events=[],freed=[],cleared=[];
const c={Task:function(){this.schedule=()=>{};this.cancel=()=>{};},arrayfromargs:a=>Array.from(a),outlet:(...a)=>events.push(a),patcher:{getnamed(n){
 if(n==='V2_ec_controller_v23')return null;
 return {valid:true,message(...a){calls.push([n,...a]);}};
}}};
vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'../javascript/morphbank_3voices_v23.js'),'utf8'),c);
const ts=[1,2,3].map(v=>({voice:v,name:'transfer'+v,dict:{clear(){cleared.push(v);},freepeer(){freed.push(v);}}}));
c.dispose(ts,true);
assert.deepStrictEqual(cleared,[1,2,3]);assert.deepStrictEqual(freed,[1,2,3]);
assert.strictEqual(calls.length,2);assert.ok(calls[1][0].startsWith('V3_'));
assert.ok(events.some(x=>x[1]?.[0]==='error'&&x[1]?.[1]==='cleanup'));
const report={status:'PASS',checks:5,coverage:'All three transfer dictionaries released even when voice 2 controller is missing.'};
fs.writeFileSync(path.join(__dirname,'three_voice_cleanup_results.json'),JSON.stringify(report,null,2)+'\n');console.log(JSON.stringify(report));
