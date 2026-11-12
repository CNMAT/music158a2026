/* Read actual delivered files. Only root object IDs are projected to source IDs
 * for inherited structural assertions; runtime JS and scripting names stay raw.
 * The simulated host contains all three voices at once. */
const fs=require('fs'),path=require('path');
const root=path.resolve(__dirname,'..'),voice=Number(process.env.SYNTH_TEST_VOICE||1);
if(![1,2,3].includes(voice))throw Error('SYNTH_TEST_VOICE must be 1, 2 or 3');
const prefix='V'+voice+'_';
let cached;
function combined(){if(!cached)cached=JSON.parse(fs.readFileSync(path.join(root,'patchers/_ec_sinusoids_synth_v23_three_voices_main.maxpat'),'utf8')).patcher;return cached;}
function view(){
 const p=combined(),q={...p,boxes:p.boxes.filter(w=>w.box.id.startsWith(prefix)).map(w=>({box:{...w.box,id:w.box.id.slice(prefix.length)}})),lines:p.lines.filter(w=>w.patchline.source[0].startsWith(prefix)).map(w=>({patchline:{...w.patchline,source:[w.patchline.source[0].slice(prefix.length),w.patchline.source[1]],destination:[w.patchline.destination[0].slice(prefix.length),w.patchline.destination[1]]}}))};
 return JSON.stringify({patcher:q});
}
function resolve(file){
 if(typeof file!=='string')return file;
 if(fs.existsSync(file))return file;
 const base=path.basename(file);
 for(const folder of ['javascript','patchers','diagnostics'])for(const name of [prefix+base,base]){
  const p=path.join(root,folder,name);if(fs.existsSync(p))return p;
 }
 return file;
}
function readFileSync(file,enc){
 if(['_ec_sinusoids_synth_v23_main.maxpat','_ec_sinusoids_synth_v23.maxpat'].includes(path.basename(file)))return view();
 return fs.readFileSync(resolve(file),enc);
}
module.exports={root,prefix,voice,combined,resolve,readFileSync,existsSync:file=>fs.existsSync(resolve(file))};
