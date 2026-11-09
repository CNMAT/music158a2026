/* Test-only layout map. Not loaded by Max.
 * The original master name maps to patchers/_ec_sinusoids_synth_v23_main.maxpat.
 * Reads are RAW: no dependency-path reversal or other source normalization.
 * The native-only starter is checked separately by audit_layout_v23.py.
 */
'use strict';
const fs=require('fs'),path=require('path');
const root=path.resolve(__dirname,'..');
const manifest=JSON.parse(fs.readFileSync(path.join(__dirname,'reorganization_manifest_v23.json'),'utf8'));
const moved=new Map(manifest.files.map(f=>[f.original,f.packaged]));
function resolve(file){
  if(typeof file!=='string')return file;
  const absolute=path.isAbsolute(file)?path.normalize(file):path.resolve(root,file);
  const rel=path.relative(root,absolute).split(path.sep).join('/');
  if(moved.has(rel))return path.join(root,moved.get(rel));
  // New runtime helpers also live in the organized runtime folders.
  if(!rel.includes('/')){
    for(const folder of ['javascript','patchers']){
      const candidate=path.join(root,folder,rel);if(fs.existsSync(candidate))return candidate;
    }
  }
  return absolute;
}
function originalPaths(doc,physicalFile){return doc;}
function readFileSync(file,options){return fs.readFileSync(resolve(file),options);}
function existsSync(file){return fs.existsSync(resolve(file));}
function listPatches(){return manifest.files.filter(f=>f.original.endsWith('.maxpat')).map(f=>f.original).sort();}
module.exports={root,resolve,readFileSync,existsSync,listPatches,originalPaths};
