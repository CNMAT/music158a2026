/* Run from any directory: node /path/to/diagnostics/run-all.cjs
 * Optional argument: original uploaded package root for startup negative control.
 * Uses installed Node.js only; executes no native Max or audio process.
 */
'use strict';
const fs=require('fs'),path=require('path'),cp=require('child_process'),os=require('os');
const root=path.resolve(__dirname,'..'),original=process.argv[2]?path.resolve(process.argv[2]):null;
const logdir=path.join(__dirname,'logs');fs.mkdirSync(logdir,{recursive:true});
const suites=['paths','core','validate','lane-delay','lowcpu','count-ceiling','keyboard-trigger','partial-offset','offset-preset','adsr-startup'];
const resultFiles={'paths':'path-results.json','core':'core-results.json','validate':'validation-results.json'};
const results=[];
function run(name,file,args=[],resultFile){
 const start=Date.now(),r=cp.spawnSync(process.execPath,[path.join(__dirname,file),...args],{cwd:root,encoding:'utf8',maxBuffer:32*1024*1024,timeout:120000});
 fs.writeFileSync(path.join(logdir,name+'.txt'),(r.stdout||'')+(r.stderr||'')+(r.error?'\n'+r.error:'')+'\n');
 const item={name,result:r.status===0?'PASS':'FAIL',seconds:Math.round((Date.now()-start)/10)/100,exit_code:r.status};
 if(r.status===0&&resultFile){const data=JSON.parse(fs.readFileSync(path.join(__dirname,resultFile)));item.assertions=data.assertions;}
 results.push(item);console.log(name+': '+item.result+(item.assertions?' ('+item.assertions+' assertions)':''));
}
for(const suite of suites)run(suite,suite+'.cjs',suite==='adsr-startup'&&original?[original]:[],resultFiles[suite]||suite+'-results.json');
// Every unique complete preset message currently saved in the help and master.
const presets=new Map();
function scan(p,file,route=[]){for(const {box:b} of p.boxes){if(b.maxclass==='message'&&/^(?:set\s+)?preset\s+[123]\s+h[\da-f]+\s+p/i.test(b.text||'')){
 const text=b.text.replace(/^set\s+/,'');if(!presets.has(text))presets.set(text,[]);presets.get(text).push(file+':'+[...route,b.id].join('/'));
 }if(b.patcher)scan(b.patcher,file,[...route,b.id]);}}
for(const name of ['_ec_cnmat_sinusoids_lowcpu_abs~.maxhelp','ec_cnmat_sinusoids_lowcpu_abs~.maxpat'])scan(JSON.parse(fs.readFileSync(path.join(root,name))).patcher,name);
const temp=fs.mkdtempSync(path.join(os.tmpdir(),'ec-sinusoids-presets-'));
let index=0;
try{for(const [text,locations] of presets){index++;const name='saved-preset-'+String(index).padStart(2,'0'),file=path.join(temp,name+'.txt');fs.writeFileSync(file,text);
 run(name,'validate.cjs',[file],'validation-results.json');const item=results.at(-1);item.locations=locations;
 if(item.result==='PASS')fs.copyFileSync(path.join(__dirname,'validation-results.json'),path.join(__dirname,name+'-results.json'));
}}finally{fs.rmSync(temp,{recursive:true,force:true});}
const report={build:'2.4',result:results.every(x=>x.result==='PASS')&&presets.size>0?'PASS':'FAIL',date:new Date().toISOString(),node:process.version,suites:results,saved_presets:presets.size,limitations:['Offline source, graph and simulated Max message/Task/Dict checks.','Native Max loading, save/reopen, DSP, CPU usage and audio listening were not executed.']};
fs.writeFileSync(path.join(__dirname,'all-results.json'),JSON.stringify(report,null,2)+'\n');
console.log('OVERALL: '+report.result+' — '+results.length+' suites, '+presets.size+' distinct saved presets');
process.exitCode=report.result==='PASS'?0:1;
