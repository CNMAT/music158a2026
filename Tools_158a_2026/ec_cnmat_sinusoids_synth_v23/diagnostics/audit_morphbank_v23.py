#!/usr/bin/env python3
"""Exact tested-v23 preservation plus MorphBank UI/message-routing checks.
No native Max/DSP or window/dialog execution."""
from pathlib import Path
import json,hashlib,copy,collections
R=Path(__file__).resolve().parent.parent;D=R/'diagnostics';M=json.loads((D/'MORPHBANK_PRESERVATION_BASELINE_v23.json').read_text())
def canon(x):return json.dumps(x,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
def sha(x):return hashlib.sha256(x).hexdigest()
checks=0
def ck(v,m):
 global checks
 checks+=1
 if not v:raise AssertionError(m)
unchanged=[]
for rel,h in M['original_runtime_sha256'].items():
 ck((R/rel).is_file(),'Original runtime missing '+rel)
 if rel not in M['changed_originals']:ck(sha((R/rel).read_bytes())==h,'Unexpected runtime edit '+rel);unchanged.append(rel)
for rel,m in M['reverse'].items():
 doc=json.loads((R/rel).read_text())
 def reverse(p,path):
  ix={w['box']['id']:w['box'] for w in p.get('boxes',[])};original=m['patchers'][path]
  oldlines=collections.Counter(json.dumps(x,sort_keys=True) for x in original['lines']);newlines=collections.Counter(json.dumps(x,sort_keys=True) for x in p.get('lines',[]))
  missing_ids={key.rsplit('/',1)[1] for key in m['missing_boxes'] if key.rsplit('/',1)[0]==path}
  for x in original['lines']:
   l=x['patchline']
   if l['source'][0] not in missing_ids and l['destination'][0] not in missing_ids:ck(newlines[json.dumps(x,sort_keys=True)]>=oldlines[json.dumps(x,sort_keys=True)],'Original non-dump cord changed '+rel+path)
  p['boxes']=[]
  for id in original['box_ids']:
   key=path+'/'+id
   if key in m['missing_boxes']:b=copy.deepcopy(m['missing_boxes'][key])
   else:
    ck(id in ix,'Original object removed '+rel+key);b=ix[id]
    for field,old in m['fields'].get(key,{}).items():
     if old['exists']:b[field]=copy.deepcopy(old['value'])
     else:b.pop(field,None)
    if 'patcher' in b and key in m['patchers']:reverse(b['patcher'],key)
   p['boxes'].append({'box':b})
  p['lines']=copy.deepcopy(original['lines'])
 reverse(doc['patcher'],'');ck(sha(canon(doc))==m['expected_canonical'],'Nondeclared full-document change '+rel)
colcount=records=0
for rel,entries in M['collections'].items():
 found={}
 def walkcols(p,path=''):
  for w in p.get('boxes',[]):
   b=w['box'];key=path+'/'+b['id']
   if 'coll_data' in b:found[key]=b['coll_data']
   if 'patcher' in b:walkcols(b['patcher'],key)
 walkcols(json.loads((R/rel).read_text())['patcher'])
 for key,meta in entries.items():ck(sha(canon(found[key]))==meta['sha256'],'Collection altered '+rel+key);colcount+=1;records+=meta['records']
s=(R/'javascript/synth_controller_v23.js').read_text();core=s[s.index('function _morphfault'):s.index('/* ==================== MorphBank')].rstrip();ck(sha(core.encode())==M['transition_core_sha256'],'Tested transition core changed')
p=json.loads((R/'patchers/_ec_sinusoids_synth_v23_main.maxpat').read_text())['patcher'];ix={w['box']['id']:w['box'] for w in p['boxes']};L='ABCDEFGHIJKLMNOPQRSTUVWX'
rows={}
for c in L:
 b=ix['v23-go-'+c.lower()];ck(b['text']=='morphto '+c,'Front target '+c);r=b['presentation_rect'];rows.setdefault(r[1],[]).append(r[0]);ck(any(w['patchline']['source']==[b['id'],0] and w['patchline']['destination']==['ec-controller',0]for w in p['lines']),'Target wired '+c)
ck(len(rows)==4 and all(len(xs)==6 and len(set(xs))==6 for xs in rows.values()),'Exactly four rows by six targets')
ck(ix['mb-clear']['text']=='clear all','Clear-all message visible');ck(ix['mb-command-r']['text']=='receive Synth_Command_v23','Command entry bus')
ck(any(w['patchline']['source']==['mb-command-r',0] and w['patchline']['destination']==['mb-command-prepend',0] for w in p['lines']),'Command bus linked');ck(ix['mb-command-prepend']['text']=='prepend command','Safe command wrapper')
# Native file dialogs and ordered filename setup; Cancel goes only to status.
fio=ix['mb-file-io']['patcher'];fi={w['box']['id']:w['box'] for w in fio['boxes']};fl=[w['patchline']for w in fio['lines']]
for s,so,d in [('receive',0,'route'),('route',0,'write-defer'),('route',1,'read-defer'),('write-defer',0,'write-order'),('write-order',1,'name'),('name',0,'savedialog'),('write-order',0,'savedialog'),('savedialog',0,'write'),('opendialog',0,'read'),('write',0,'send'),('read',0,'send'),('savedialog',2,'cancel'),('opendialog',1,'cancel')]:ck(any(x['source']==[s,so]and x['destination']==[d,0]for x in fl),'File dialog order '+s+'>'+d)
ck(fi['write-order']['text']=='t b b','Supported trigger types');ck(fi['name']['text'].endswith('.json'),'Default bank extension');ck(fi['cancel']['text']=='morphbank status','Cancel is passive')
# Stage-saved order after initialization, no raw empty messages sent to controller.
bank=ix['mb-dumps']['patcher'];bi={w['box']['id']:w['box']for w in bank['boxes']};bl=[w['patchline']for w in bank['lines']]
for a,b in [('load','defer'),('defer','order')]:ck(any(x['source']==[a,0]and x['destination']==[b,0]for x in bl),'Deferred startup staging '+a)
ck(bi['order']['text']=='t b b','Saved-stage trigger types');ck(bi['stage']['text']=='send Synth_MorphBank_StageSaved_v23','Saved-stage bus');ck(bi['status']['text']=='morphbank status','Status after restaging')
for c in L:
 q=bi['slot-'+c]['patcher'];qi={w['box']['id']:w['box']for w in q['boxes']}
 ck(qi['route']['text']=='route preset','Empty message safely ignored '+c);ck(qi['prefix']['text']=='prepend morphslot '+c+' preset','Full dump selector exactly once '+c)
 ck(qi['title']['text']==c+' dump','Comment identifies slot '+c)
# Help mirrors and the added CUE use exactly the same implementation.
h=json.loads((R/'patchers/Full_State_Morph_v23.maxpat').read_text())['patcher'];ck(ix['v23-morph-help']['patcher']==h,'Main help mirror')
sp=ix['send-message-space-v23']['patcher'];si={w['box']['id']:w['box']for w in sp['boxes']};ck(si['v23-full-morph-help']['patcher']==h,'Embedded command help mirror')
stand=json.loads((R/'patchers/Send_Message_Space_v23.maxpat').read_text())['patcher'];sti={w['box']['id']:w['box']for w in stand['boxes']};ck(sti['v23-full-morph-help']['patcher']==h,'Standalone command help mirror')
cue=json.loads((R/'patchers/Cue_Morph_v23.maxpat').read_text())['patcher'];ck(si['mb-cue']['patcher']==cue and sti['mb-cue']['patcher']==cue,'CUE mirrors')
# Visible morph-strip boxes have enough space and do not overlap.
visible=[b for b in ix.values() if b.get('presentation') and b.get('presentation_rect',[0,0,0,0])[1]>=1240 and b['maxclass']!='panel']
for i,a in enumerate(visible):
 ax,ay,aw,ah=a['presentation_rect']
 for b in visible[i+1:]:
  bx,by,bw,bh=b['presentation_rect'];ck(min(ax+aw,bx+bw)<=max(ax,bx) or min(ay+ah,by+bh)<=max(ay,by),'Morph strip overlap '+a['id']+'/'+b['id'])
report={'status':'PASS','checks':checks,'source_archive':M['source_archive'],'original_runtime_files':len(M['original_runtime_sha256']),'unchanged_runtime_files':len(unchanged),'changed_runtime_files':M['changed_originals'],'new_runtime_files':M['new_runtime'],'embedded_collections_preserved':colcount,'collection_records_preserved':records,'transition_core_byte_identical':True,'front_grid':'4 rows x 6 columns, A-X','hidden_dump_subpatchers':24,'limit':'Saved graph/source preservation and UI geometry only; no native Max execution.'}
(D/'MORPHBANK_AUDIT_RESULTS_v23.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
