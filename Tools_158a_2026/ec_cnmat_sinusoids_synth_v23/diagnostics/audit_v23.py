#!/usr/bin/env python3
"""Saved-graph/dependency checks. Does not execute Max's native loader or DSP."""
from pathlib import Path
import json,re,subprocess,hashlib
R=Path(__file__).resolve().parent.parent
checks=0;objects=0;cords=0;native_banks=0;refs=set();curves=0;docs=[]
def require(v,m):
 global checks
 checks+=1
 if not v:raise AssertionError(m)
def audit(p,file,path=''):
 global objects,cords,native_banks,curves
 boxes=[x['box'] for x in p.get('boxes',[])];ix={b['id']:b for b in boxes};require(len(ix)==len(boxes),f'{file}/{path}: duplicate object ID')
 for b in boxes:
  objects+=1;txt=b.get('text','');cls=b['maxclass']
  if txt=='sinusoids~' or txt.startswith('sinusoids~ '):native_banks+=1
  if txt.startswith('prepend _curvepoint '):curves+=1
  if cls in ('newobj','jsui'):
   name=b.get('filename') if cls=='jsui' else None
   if txt.startswith(('js ','jsui ')):name=txt.split()[1]
   if name:
    require((R/'javascript'/name).is_file(),f'Missing script: {file}/{name}');refs.add('javascript/'+name)
    cached=b.get('saved_object_attributes',{}).get('filename')
    if cached:require(cached==name,f'Script text/cache mismatch {file}/{b["id"]}')
  if cls=='bpatcher':
   name=b.get('name','');require((R/'patchers'/name).is_file(),f'Missing bpatcher {file}/{name}');refs.add('patchers/'+name)
  if cls=='newobj' and not b.get('patcher') and txt:
   token=txt.split()[0]
   if (R/'patchers'/(token+'.maxpat')).is_file():refs.add('patchers/'+token+'.maxpat')
  if 'patcher'in b:audit(b['patcher'],file,path+'/'+b['id'])
 for item in p.get('lines',[]):
  cords+=1;l=item['patchline'];s,so=l['source'];d,di=l['destination'];require(s in ix and d in ix,f'Cord endpoint missing {file}/{path}: {l}')
  require(0<=so<ix[s].get('numoutlets',0),f'Out-of-range source {file}/{path}: {l}')
  require(0<=di<ix[d].get('numinlets',0),f'Out-of-range destination {file}/{path}: {l}')
for f in sorted(R.rglob('*')):
 if 'diagnostics'in f.relative_to(R).parts:continue
 if f.suffix in ('.maxpat','.maxhelp'):
  d=json.loads(f.read_text());audit(d['patcher'],str(f.relative_to(R)));docs.append(str(f.relative_to(R)))
for f in sorted((R/'javascript').glob('*')):
 require(f.suffix=='.js','Runtime JavaScript folder contains non-JS file: '+f.name)
 r=subprocess.run(['node','--check',str(f)],capture_output=True,text=True);require(r.returncode==0,f.name+': '+r.stderr)
main=json.loads((R/'patchers/_ec_sinusoids_synth_v23_main.maxpat').read_text())['patcher'];ix={x['box']['id']:x['box']for x in main['boxes']}
require(ix['ec-controller']['numinlets']==3 and ix['ec-controller']['numoutlets']==6,'Morph controller saved ports')
require(curves==14,'Exactly 14 live native function dump proxies required')
# A/B legacy ports remain, but all 24 dump editors now live in the bank subpatch.
letters="ABCDEFGHIJKLMNOPQRSTUVWX"
require('v23-slot-a' not in ix and 'v23-slot-b' not in ix,'Full dumps hidden from front page')
bank=ix['mb-dumps']['patcher'];slots={x['box']['id']:x['box']for x in bank['boxes']}
for letter in letters:
 child=slots['slot-'+letter]['patcher'];ci={x['box']['id']:x['box']for x in child['boxes']}
 ll=[x['patchline']for x in child['lines']]
 require(ci['title']['text']==letter+' dump','Clear dump title '+letter)
 require(ci['receive']['text']=='receive Synth_MorphSlot_'+letter+'_v23','Correct passive slot bus '+letter)
 require(any(l['source']==['receive',0] and l['destination']==['dump',0]for l in ll),'Silent SET to dump '+letter)
 require(ci['prefix']['text']=='prepend morphslot '+letter+' preset','Stage exact slot '+letter)
 require(any(l['source']==['dump',0]and l['destination']==['route',0]for l in ll),'Dump validation route '+letter)
 require(any(l['source']==['route',0]and l['destination']==['prefix',0]for l in ll),'Strip/rebuild preset selector '+letter)
 require(any(l['source']==['prefix',0]and l['destination']==['send',0]for l in ll),'Staged dump to controller '+letter)
# Additional help is intentionally passive, without loadbang-driven state changes.
h=json.loads((R/'patchers/Full_State_Morph_v23.maxpat').read_text())['patcher'];require(not any(x['box'].get('text','').startswith(('loadbang','loadmess')) for x in h['boxes']),'Morph help must open passively')
report={'status':'PASS','structural_checks':checks,'max_documents':len(docs),'objects':objects,'patchcords':cords,'script_syntax_checks':len(list((R/'javascript').glob('*.js'))),'referenced_bundled_dependencies':len(refs),'native_function_proxies':curves,'native_sinusoids_objects_across_documents':native_banks,'references':sorted(refs),'limits':['Saved structures and local file existence only; not native Max loader/DSP validation.']}
(R/'diagnostics/V23_STRUCTURE_RESULTS.json').write_text(json.dumps(report,indent=2));print(json.dumps(report,indent=2))
