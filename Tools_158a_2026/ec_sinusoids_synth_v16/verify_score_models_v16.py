from pathlib import Path
import json,copy,hashlib
ROOT=Path(__file__).resolve().parent
read=lambda n:json.loads((ROOT/n).read_text())
boxes=lambda p:{x['box']['id']:x['box'] for x in p['boxes']}
canon=lambda x:json.dumps(x,sort_keys=True,separators=(',',':')).encode()
sha=lambda x:hashlib.sha256(canon(x)).hexdigest()
main=read('_ec_sinusoids_synth_stage_v16.maxpat');g=boxes(main['patcher'])['send-message-space-v16']['patcher'];stand=read('Send_Message_Space_v16.maxpat')['patcher'];pres=read('score_preservation_v16.json')
trim=copy.deepcopy(main);trim_boxes=boxes(trim['patcher']);trim_boxes['send-message-space-v16'].pop('patcher')
if 'send-message-space-note-v16' in trim_boxes:trim_boxes['send-message-space-note-v16'].pop('text',None)
assert sha(trim)==pres['main_sha256'],'Revised main objects, geometry or wiring changed'
assert sha(boxes(g)['live-controls']['patcher'])==pres['embedded_live_sha256']
assert sha(boxes(stand)['live-controls']['patcher'])==pres['standalone_live_sha256']
assert g.get('openinpresentation',0)==0 and stand.get('openinpresentation',0)==0
manifest=read('score_models_manifest_v16.json');expected={e['name'] for e in manifest['controls']}
models={}
def graph(p,new=False):
 b=boxes(p);assert len(b)==len(p['boxes'])
 for item in p.get('lines',[]):
  l=item['patchline'];assert l['source'][0] in b and l['destination'][0] in b,l
  assert 0<=l['source'][1]<b[l['source'][0]]['numoutlets'],l
  assert 0<=l['destination'][1]<b[l['destination'][0]]['numinlets'],l
 for v in b.values():
  t=v.get('text','')
  if t.startswith('js '):assert (ROOT/t.split()[1]).is_file(),t
  if t.startswith('p Cue_'):
   name=t[6:];models[name]=v['patcher'];assert v['numinlets']==1 and v['numoutlets']==1
  if 'patcher' in v:graph(v['patcher'])
for f in ROOT.glob('*.maxpat'):graph(read(f.name)['patcher'])
rolled_back_cues={'Audio_On_v16','Output_Gain_dB_v16','Library_Breakpoints_v16','Library_Duration_ms_v16','Library_Shape_v16','Library_Store_Index_v16','Library_Store_v16','Library_Emit_v16','Library_Points_v16'}
assert expected-set(models)==rolled_back_cues
assert set(models)-expected=={'ADSR_Recall_v16'}
for name,p in models.items():
 b=boxes(p);assert b['send']['text']=='forward '+name
 assert b['name']['text']=='prepend '+name
 assert b['strip-name']['text']=='route '+name
 assert not any(x.get('text','').startswith(('loadbang','loadmess','js ')) for x in b.values()),name
 for i,a in enumerate(list(b.values())):
  x,y,w,h=a['patching_rect']
  for z in list(b.values())[i+1:]:
   X,Y,W,H=z['patching_rect']
   assert not (min(x+w,X+W)-max(x,X)>.01 and min(y+h,Y+H)-max(y,Y)>.01),(name,a['id'],z['id'])
score=read('Example_Timed_Score_v16.maxpat')['patcher'];b=boxes(score)
def wired(s,d,o=0):return any(x['patchline']['source']==[s,o] and x['patchline']['destination']==[d,0] for x in score['lines'])
assert wired('start-order','stop',1)
for i,event in enumerate(manifest['events']):
 assert b['delay'+str(i)]['text']=='delay '+str(event['offset_ms'])
 assert wired('cancel','delay'+str(i)) and wired('cancel','cue'+str(i))
 assert wired('delay'+str(i),'message'+str(i)) and wired('message'+str(i),'cue'+str(i))
assert not any(x['box'].get('text','').startswith(('loadbang','loadmess')) for x in score['boxes'])
# All synthesis dependencies are preserved exactly from the supplied ZIP.
for name,digest in read('score_baseline_hashes_v16.json').items():
 if Path(name).suffix in ['.js'] or name in ['Envelope-Shaper_01_v16.maxpat','ec_sinusoid_synth_stops_v16.maxpat','ec_sinusoid_synth_stops_research_v16.maxpat','controls_v16.json']:
  assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==digest,name
print(f'PASS: {len(models)} portable cue graphs, valid ports and dependencies, no cue-object overlaps, no cue startup sends, timer/ramp cancellation wiring, and exact preservation of revised main synthesis graph, live views and synthesis dependencies.')
