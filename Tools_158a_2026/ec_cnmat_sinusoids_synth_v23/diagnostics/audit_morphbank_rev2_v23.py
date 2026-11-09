#!/usr/bin/env python3
"""Compare the update with the exact uploaded v23: allow only documented UI edits.
The baseline contains source hashes/projections, not another copy of large sounds.
Earlier audit_preservation/audit_morphbank scripts are historical, pre-revision checks.
"""
from pathlib import Path
import json,hashlib,copy
R=Path(__file__).resolve().parent.parent
CHANGED_JS={'javascript/synth_controller_v23.js','javascript/random_multislider_values_v23.js','javascript/partial_amplitude_display_v23.js','javascript/multislider_interpolation_engine_v23_6.js'}
PATCHES={'patchers/_ec_sinusoids_synth_v23_main.maxpat','patchers/Full_State_Morph_v23.maxpat','patchers/Cue_Morph_v23.maxpat','patchers/Send_Message_Space_v23.maxpat'}
def sha(b):return hashlib.sha256(b).hexdigest()
def digest(v):return sha(json.dumps(v,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode())
def projection(doc):
 d=copy.deepcopy(doc)
 def walk(p,path=''):
  ids={x['box']['id']:x['box'] for x in p.get('boxes',[])}
  is_slot='stage-saved' in ids and 'dump' in ids and 'prefix' in ids
  is_help='h-title' in ids and 'hm15' in ids
  is_cue=ids.get('title',{}).get('text')=='MORPH CUE  |  SLOT [SECONDS]'
  if is_slot or is_help or is_cue:p.pop('rect',None)
  clean=[]
  for x in p.get('boxes',[]):
   b=x['box'];id=b['id']
   if id.startswith('mb2-'):continue
   # Changes are limited to declared controls and the requested empty bank messages.
   fields=[]
   if path=='' and id in ['syn-random-freq-button','obj-16','syn-random-harmonic-button','obj-15','v23-morph-seconds','v23-capture-a','mb-save']:fields+=['hint','annotation']
   if path=='' and id.startswith('v23-go-'):fields+=['varname','bgcolor','bgfillcolor_type','bgfillcolor_color','hint','annotation']
   if path=='' and id=='v23-morph-description':fields+=['text']
   if path=='' and id=='v23-morph-note':fields+=['text','linecount','presentation_linecount','patching_rect','presentation_rect']
   if path=='' and id=='v23-morph-help':fields+=['patching_rect','presentation_rect']
   if is_slot and id=='dump':fields+=['text'] # User requested clear all saved slots.
   if path=='' and id in ['v23-capture-a','mb-bank-state','v23-status-message']:fields+=['text']
   if path=='' and id in ['v23-progress','v23-progress-label']:fields+=['patching_rect','presentation_rect']
   if is_slot and id=='note':fields+=['text','patching_rect','presentation_rect']
   if is_slot and id=='action1':fields+=['hint','annotation']
   if is_help and id in ['h-text','hc4','hc7']:fields+=['text']
   if is_help and id in ['h-path','h-buses','h-cue','h-warning']:fields+=['patching_rect','presentation_rect']
   if is_cue and id=='note':fields+=['text']
   if is_cue and id=='monitor-note':fields+=['patching_rect','presentation_rect']
   for k in fields:b.pop(k,None)
   if 'patcher' in b:walk(b['patcher'],path+'/'+id)
   clean.append(x)
  p['boxes']=clean;lines=[]
  for x in p.get('lines',[]):
   l=x['patchline'];s=l['source'];t=l['destination']
   if s[0].startswith('mb2-') or t[0].startswith('mb2-'):continue
   if is_slot and s==['stage-saved',0]:continue
   if is_cue and s==['in',0]:continue
   if path=='' and s==['amp-viewport-js',6] and t==['syn-random-js',0]:continue
   lines.append(x)
  p['lines']=lines
 walk(d['patcher']);return d

def sound_data(doc):
 dumps={};colls={}
 def walk(p,path=''):
  for x in p.get('boxes',[]):
   b=x['box'];key=path+'/'+b['id']
   if 'coll_data' in b:colls[key]=digest(b['coll_data'])
   if '/mb-dumps/slot-' in key and b['id']=='dump':dumps[key]=sha(b.get('text','').encode())
   if 'patcher' in b:walk(b['patcher'],key)
 walk(doc['patcher']);return {'dumps':dumps,'colls':colls}

def run():
 baseline=json.loads((R/'diagnostics/MORPHBANK_REV2_BASELINE_v23.json').read_text());unchanged=[];patches=[]
 for rel,expected in baseline['runtime'].items():
  p=R/rel;assert p.is_file(),'Source file removed: '+rel
  if rel in PATCHES:
   doc=json.loads(p.read_text());assert digest(projection(doc))==baseline['projections'][rel],'Unapproved existing patch change: '+rel
   data=sound_data(doc)
   assert data['colls']==baseline['sounds'][rel]['colls'],'Embedded collection changed: '+rel
   assert set(data['dumps'])==set(baseline['sounds'][rel]['dumps']),'Bank editor removed: '+rel
   assert all(v==sha(b'') for v in data['dumps'].values()),'Saved bank must be empty: '+rel
   patches.append(rel)
  elif rel not in CHANGED_JS:
   assert sha(p.read_bytes())==expected,'Unrelated source changed: '+rel
   unchanged.append(rel)
 ctrl=(R/'javascript/synth_controller_v23.js').read_text().splitlines()[5]
 assert sha(ctrl.encode())==baseline['manifest'],'Preset manifest changed'
 main=json.loads((R/'patchers/_ec_sinusoids_synth_v23_main.maxpat').read_text())
 sounds=sound_data(main)
 result={'status':'PASS','source':baseline['source'],'unchanged_runtime_and_tutorial_files':len(unchanged),'restricted_patch_projections':len(patches),'empty_slot_dump_messages':len(sounds['dumps']),'preserved_embedded_collections':len(sounds['colls']),'source_captured_slots':baseline['captured_slots'],'saved_captured_slots':[],'user_requested_clear_all':True,'manifest_unchanged':True,'intentional_runtime_changes':sorted(CHANGED_JS),'new_runtime_helper':'javascript/morphbank_display_v23.js'}
 (R/'diagnostics/MORPHBANK_REV2_PRESERVATION_RESULTS_v23.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':run()
