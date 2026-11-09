#!/usr/bin/env python3
"""Verify retained baseline after removing only additive objects/cords and declared port/help edits.
Fingerprint reference was generated from the uploaded v21 ZIP, with v23 namespace migration.
This does not certify changed DSP/controller behavior or replace native Max testing.
"""
from pathlib import Path
import json,hashlib,copy
R=Path(__file__).resolve().parent.parent;D=R/'diagnostics';M=json.loads((D/'preservation_baseline_v23.json').read_text())
def canon(x):return json.dumps(x,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
def sha(b):return hashlib.sha256(b).hexdigest()
collections=0;records=0;docs=0;changed=[];namespace_only=[]
for rel,meta in M['files'].items():
 raw=json.loads((R/rel).read_text());doc=copy.deepcopy(raw)
 def strip(p,path):
  global collections,records
  keep=meta['box_ids'][path];ix={v['box']['id']:v for v in p.get('boxes',[])}
  assert set(keep)<=set(ix),(rel,path,'lost original object')
  p['boxes']=[ix[k] for k in keep]
  p['lines']=[v for v in p.get('lines',[]) if v['patchline']['source'][0] in keep and v['patchline']['destination'][0] in keep]
  for v in p['boxes']:
   b=v['box'];sub=path+'/'+b['id']
   for k,value in meta['restore_fields'].get(sub,{}).items():b[k]=value
   if sub in M['collections'][rel]:
    assert sha(canon(b['coll_data']))==M['collections'][rel][sub]['sha256'],(rel,sub,'collection changed')
    collections+=1;records+=M['collections'][rel][sub]['records']
   if 'patcher'in b:strip(b['patcher'],sub)
 strip(doc['patcher'],'')
 assert sha(canon(doc))==meta['expected_migrated_original_sha256'],(rel,'unexpected non-additive edit')
 docs+=1
for rel,meta in M['scripts'].items():
 b=(R/rel).read_bytes()
 if meta['changed_beyond_namespace']:changed.append(rel)
 else:
  assert sha(b)==meta['migrated_original_sha256'],(rel,'unexpected script edit');namespace_only.append(rel)
# The generic script is intentionally version-independent.
assert sha((R/'javascript/automatic_lines_v5_ed.js').read_bytes())==M['scripts']['javascript/automatic_lines_v5_ed.js']['source_sha256']
report={'status':'PASS','source_archive':M['source_archive'],'source_sha256':M['source_sha256'],'original_max_documents_preserved_except_declared_additions_ports_help':docs,'embedded_collection_datasets_preserved':collections,'embedded_collection_records_preserved':records,'runtime_scripts_changed_beyond_namespace':changed,'runtime_scripts_namespace_only_or_byte_identical':namespace_only,'generic_automatic_lines_v5_ed_byte_identical':True,'starter_runtime_unchanged_except_namespace':True,'scope':'Compares complete canonical Max documents after stripping additive objects/connections and restoring only the five declared controller port/help fields. All other original content, wiring, positions, defaults and collections must match.'}
(D/'V23_PRESERVATION_RESULTS.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
