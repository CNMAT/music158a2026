"""Run python3 tests/test_patches.py; structural checks, not a Max runtime."""
import json
from pathlib import Path
root=Path(__file__).resolve().parent.parent
menu=json.loads((root/'SCALE_MENU.json').read_text())
counts={'patchers':0,'boxes':0,'connections':0,'menus':0,'preference_panels':0}
def check(p):
 counts['patchers']+=1
 boxes={v['box']['id']:v['box'] for v in p['boxes']}
 assert len(boxes)==len(p['boxes'])
 for b in boxes.values():
  counts['boxes']+=1
  assert len(b['patching_rect'])==4
  if b['maxclass']=='umenu':
   counts['menus']+=1
   items=[x for x in b['items'] if x!=',']
   assert items[:-1]==menu
   assert items[-1]=='custom / imported (use messages)'
   edges=[l['patchline'] for l in p['lines'] if l['patchline']['source']==[b['id'],1]]
   assert edges and boxes[edges[0]['destination'][0]]['text']=='nodesmode off, scale $1'
  if b.get('text')=='p melodic_preferences':
   counts['preference_panels']+=1
   assert b['numinlets']==1 and b['numoutlets']==1
  if 'patcher' in b:check(b['patcher'])
 for v in p['lines']:
  l=v['patchline'];counts['connections']+=1
  source,outlet=l['source'];dest,inlet=l['destination']
  assert source in boxes and dest in boxes
  assert 0<=outlet<boxes[source]['numoutlets'],(source,outlet)
  assert 0<=inlet<boxes[dest]['numinlets'],(dest,inlet)
 return boxes
helpfile=root/'_ec_scale_tuning_mapper.maxhelp'
assert helpfile.read_bytes()==(root/'ec_scale_tuning_mapper.maxhelp').read_bytes()
p=json.loads(helpfile.read_text())['patcher'];bs=check(p)
assert any(v['patchline']['source']==['obj-60',0] and v['patchline']['destination']==['obj-52',0] for v in p['lines'])
sc=bs['obj-60']['patcher']
assert any(v['patchline']['source']==['obj-3',1] and v['patchline']['destination']==['obj-71',0] for v in sc['lines'])
assert next(v['box'] for v in sc['boxes'] if v['box']['id']=='obj-71')['maxclass']=='outlet'
assert counts['menus']==2 and counts['preference_panels']==3
# Feature wiring and all three visible control panels.
node_names=['mixolydian','ionian','lydian','dorian','aeolian','phrygian']
def feature_checks(p):
 bs={v['box']['id']:v['box'] for v in p['boxes']}
 edges={(tuple(v['patchline']['source']),tuple(v['patchline']['destination'])) for v in p['lines']}
 if 'midi-in' in bs:
  engine='obj-4' if 'all-scale-menu' in bs else 'obj-3'
  for edge in [(('midi-in',0),('midi-keys',0)),(('midi-in',1),('midi-keys',1)),(('midi-keys',0),('midi-strip',0)),(('midi-keys',1),('midi-strip',1)),(('midi-strip',0),('midi-convert',0)),(('midi-convert',0),(engine,0))]:assert edge in edges
  assert bs['midi-convert']['text']=='* 100'
  assert bs['midi-keys']['inputmode']==1
  assert bs['gen-octave']['maxclass']=='number'
  assert bs['gen-shift']['minimum']==0 and bs['gen-shift']['maximum']==1
 for b in bs.values():
  if b['maxclass']=='nodes' and b['nodenumber']==6:
   assert b['nodesnames']==node_names
   assert b['xplace'][:3]==sorted(b['xplace'][:3])==b['xplace'][3:]
   assert b['yplace'][:3]==[.25]*3 and b['yplace'][3:]==[.75]*3
  if b.get('text')=='p melodic_preferences':
   controls={v['box']['id']:v['box'] for v in b['patcher']['boxes']}
   assert controls['ui-octaveshift']['minimum']==0 and controls['ui-octaveshift']['maximum']==1
   assert controls['ui-octave']['maxclass']=='number'
  if 'patcher' in b:feature_checks(b['patcher'])
feature_checks(p)
check(json.loads((root/'ec_scale_tuning_mapper.maxpat').read_text())['patcher'])
(root/'tests'/'patch-results.json').write_text(json.dumps({'result':'PASS','verification':'JSON structure / connections / exact menus / preserved audition wiring; not Max GUI','counts':counts},indent=2)+'\n')
print('PASS:',counts)
