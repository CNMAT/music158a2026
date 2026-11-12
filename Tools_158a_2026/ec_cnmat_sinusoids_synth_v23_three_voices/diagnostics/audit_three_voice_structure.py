from pathlib import Path
import json,re,collections,itertools
P=Path(__file__).resolve().parent.parent
def read(p):return json.loads(p.read_text())
main=read(P/'patchers/_ec_sinusoids_synth_v23_three_voices_main.maxpat')['patcher']
original=read(P/'diagnostics/source_root_layout.json')
manifest=read(P/'diagnostics/preset_manifest_v23.json')
allfiles={f.name:f for f in P.rglob('*') if f.is_file()}
stats=collections.Counter();seen_buses={i:set() for i in [1,2,3]}
errors=[]
def check(test,msg):
    stats['assertions']+=1
    if not test:errors.append(msg)
def walk(p,label,voice=None,global_scope=False):
    ids={w['box']['id']:w['box'] for w in p.get('boxes',[])}
    check(len(ids)==len(p.get('boxes',[])),label+': duplicate box IDs')
    names=[b['varname'] for b in ids.values() if b.get('varname')]
    check(len(names)==len(set(names)),label+': duplicate scripting names')
    stats['patchers_checked']+=1;stats['boxes_checked']+=len(ids)
    for w in p.get('lines',[]):
        l=w['patchline'];a,ai=l['source'];b,bi=l['destination'];stats['cords_checked']+=1
        check(a in ids and b in ids,label+': missing cord object '+str(l))
        if a in ids and b in ids:
            check(0<=ai<ids[a]['numoutlets'],label+': outlet out of range '+str(l))
            check(0<=bi<ids[b]['numinlets'],label+': inlet out of range '+str(l))
    for b in ids.values():
        v=voice or (int(b['id'][1]) if re.match('V[123]_',b['id']) else None)
        t=b.get('text','').split()
        if b['maxclass']=='newobj' and len(t)>1 and t[0] in ['s','r','send','receive','send~','receive~','forward','coll'] and 'v23' in t[1]:
            check((v is not None and t[1].startswith(f'V{v}_')) or ((global_scope or b['id'].startswith('G3_')) and t[1].startswith('G3_')),label+': bus not scoped '+str(t))
            if v:seen_buses[v].add(t[1])
        deps=[]
        if b['maxclass']=='bpatcher':deps.append(b.get('name'))
        if b['maxclass']=='jsui':deps.append(b.get('filename'))
        if b['maxclass']=='newobj' and t:
            if t[0]=='sprintf':
                for name in re.findall(r'%s([^\s]+\.maxpat)',b.get('text','')):deps.append(name)
            if t[0]=='js':deps.append(t[1]);check(b.get('saved_object_attributes',{}).get('filename',t[1])==t[1],label+': JS text/cache mismatch')
            if re.match('V[123]_ec_sinusoid_synth_stops',t[0]):deps.append(t[0]+'.maxpat')
        for d in deps:check(d in allfiles,label+': unresolved '+str(d))
        if 'patcher' in b:walk(b['patcher'],label+'/'+b['id'],v,global_scope or b['id'].startswith('G3_'))
for f in list((P/'patchers').glob('*.maxpat'))+list((P/'patchers').glob('*.maxhelp'))+list((P/'sinusoids_synth_TUTORIAL').glob('*.maxpat')):
    v=int(f.name[1]) if re.match('V[123]_',f.name) else None
    walk(read(f)['patcher'],f.name,v)
for a,b in itertools.combinations([1,2,3],2):check(not (seen_buses[a]&seen_buses[b]),f'Voice {a}/{b} share buses')
for l in main['lines']:
    q=l['patchline'];check(q['source'][0][:3]==q['destination'][0][:3],'Cross-voice root cord')
check(len([w for w in main['boxes'] if w['box'].get('text','').startswith('dac~')])==3,'Need three DACs')
removed={'obj-37','obj-42','obj-41','dac-status-set1-v23','obj-48'}
OB={w['box']['id']:w['box'] for w in original['boxes']}
MB={w['box']['id']:w['box'] for w in main['boxes']}
for v in [1,2,3]:
    pre=f'V{v}_'
    for id,b in OB.items():
        if id in removed:continue
        check(pre+id in MB,pre+'missing original box '+id)
        n=MB[pre+id]
        check(n['maxclass']==b['maxclass'],pre+'class changed '+id)
        if 'presentation_rect' in b:
            expected=list(b['presentation_rect']);expected[0]+=(v-1)*1090;expected[1]+=64
            if id=='obj-39':expected[2]=157.
            check(n['presentation_rect']==expected,pre+'original presentation changed '+id)
        if b.get('varname'):check(n['varname']==pre+b['varname'],pre+'wrong scripting name '+id)
    def resolve(path):
        p=main
        for i,name in enumerate(path):
            candidates=[w['box'] for w in p['boxes'] if w['box'].get('varname')==pre+name]
            if len(candidates)!=1:return None
            obj=candidates[0]
            if i<len(path)-1:
                if 'patcher' in obj:p=obj['patcher']
                elif obj['maxclass']=='bpatcher':p=read(allfiles[obj['name']])['patcher']
                else:p=read(allfiles[obj['text'].split()[0]+'.maxpat'])['patcher']
        return obj
    for kind in ['ui','engines','colls']:
        for item in manifest[kind]:check(resolve(item['path']) is not None,pre+'manifest missing '+str(item['path']))
    dac=MB[pre+'obj-2'];check(dac['text']=='dac~ 1 2 3 4 5 6 7 8 9 10 11 12',pre+'wrong DAC')
    incoming=[l['patchline'] for l in main['lines'] if l['patchline']['destination'][0]==pre+'obj-2']
    check(len(incoming)==13,pre+'DAC needs twelve signals plus shared on/off')
    check(any(l['source']==[pre+'voice-audio-command',1] for l in incoming),pre+'missing shared DAC command')
    check(MB[pre+'voice-audio-adstatus']['text']=='adstatus switch',pre+'missing adstatus switch')
    check(MB[pre+'voice-audio-dspstate']['text']=='dspstate~',pre+'missing external DSP state monitor')
    q=MB[pre+'sinusoids-audio-routing-v23']['patcher']
    feeds=[l['patchline'] for l in q['lines'] if l['patchline']['source'][0]=='v23-combined-gain']
    check(len(feeds)==12 and set(l['destination'][0] for l in feeds)=={f'alc-mult-{i:02}' for i in range(1,13)},pre+'all twelve output gains directly connected')
    check(not any(w['box']['id'].startswith('voice-output-') for w in q['boxes']),pre+'extra local output gate remains')
    check(MB[pre+'voice-midi-equal']['text']==f'== {v}',pre+'wrong initial MIDI channel')
    check(MB[pre+'voice-midi-default']['text']==f'loadmess {v}',pre+'wrong MIDI startup')
    check(pre+'voice-audio-default' not in MB,pre+'startup must not force DSP state')
    for f in (P/'javascript').glob(pre+'*.js'):
        s=f.read_text()
        for other in [i for i in [1,2,3] if i!=v]:check(f'V{other}_' not in s,str(f)+': another voice namespace')
        check(not re.search(r'(?<!'+pre+r')ec-cnmat-sinusoids-v23_',s),str(f)+': unscoped dictionary bridge')
        check(not re.search(r'messnamed\("(?!'+pre+r')',s),str(f)+': unscoped JS message')
        if f.name.endswith('synth_controller_v23.js'):
            check(f'p.getnamed("{pre}"+path[i])' in s,pre+'missing controller scripting prefix')
            check(f'["{pre}"+name+"_v23"]' in s,pre+'missing dynamic message prefix')
        if f.name.endswith('morphbank_display_v23.js'):check(f'getnamed("{pre}v23_morph_to_"' in s,pre+'MorphBank display not local')
report={'status':'PASS' if not errors else 'FAIL','checks':dict(stats),'unique_bus_names_per_voice':{v:len(s) for v,s in seen_buses.items()},'preset_controls_per_voice':len(manifest['ui']),'preset_engines_per_voice':len(manifest['engines']),'preset_stores_per_voice':len(manifest['colls']),'dac_count':3,'runtime_audio_tested':False,'errors':errors}
(P/'diagnostics/three_voice_structure_results.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
raise SystemExit(bool(errors))
