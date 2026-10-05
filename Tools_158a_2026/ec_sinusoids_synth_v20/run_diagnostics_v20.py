#!/usr/bin/env python3
"""Reproducible source/graph diagnostics. Requires Python 3.10+ and Node 18+.
Tests execute in a temporary copy, not in the playable release. This does NOT
launch Cycling '74 Max, instantiate externals, render DSP, or audition audio.
"""
from __future__ import annotations
import argparse, collections, hashlib, json, platform, re, shutil, subprocess, sys, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
MAIN='_ec_sinusoids_synth_automixer_v20.maxpat'

def canonical(value):
    return json.dumps(value,sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
def digest(value):return hashlib.sha256(canonical(value)).hexdigest()
def boxes(p):return {x['box']['id']:x['box'] for x in p.get('boxes',[])}
def walk(p,path='ROOT'):
    yield path,p
    for b in boxes(p).values():
        if 'patcher' in b:yield from walk(b['patcher'],path+'/'+b['id'])
def write(path,value):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(value,indent=2,ensure_ascii=False)+'\n')
def run(output:Path):
    errors=[];checks=collections.Counter();deps=set();buses=[];colls=[];inventory=[];unit=[];syntax=[]
    docs={f.name:json.loads(f.read_text())['patcher'] for f in sorted(ROOT.glob('*.maxpat'))}
    def check(condition,message,group='structure'):
        checks[group]+=1
        if not condition:errors.append({'group':group,'message':message})
    def edge(p,s,o,d,i=0):
        return any(x['patchline']['source']==[s,o] and x['patchline']['destination']==[d,i] for x in p.get('lines',[]))
    def wired(p,s,o,d,i=0):check(edge(p,s,o,d,i),f'{s}[{o}] -> {d}[{i}]','semantic_wiring')
    for filename,p in docs.items():
        text=(ROOT/filename).read_text()
        check(not re.search(r'v19',text,re.I),filename+' has an old namespace','namespace')
        for loc,q in walk(p):
            B=boxes(q);check(len(B)==len(q.get('boxes',[])),filename+'/'+loc+' duplicate object IDs')
            inventory.append({'file':filename,'path':loc,'objects':len(B),'cords':len(q.get('lines',[]))})
            endpoints=[]
            for wrapper in q.get('lines',[]):
                e=wrapper['patchline'];endpoints.append((tuple(e['source']),tuple(e['destination'])))
                for side,prop in [('source','numoutlets'),('destination','numinlets')]:
                    id,index=e[side]
                    check(id in B,filename+'/'+loc+': missing '+id)
                    if id in B:check(isinstance(index,int) and 0<=index<B[id].get(prop,0),filename+'/'+loc+': port '+str(e))
            check(len(endpoints)==len(set(endpoints)),filename+'/'+loc+' duplicate patch cord')
            for b in B.values():
                t=b.get('text','').split();kind=b.get('maxclass');context=filename+'/'+loc+'/'+b['id']
                if 'patcher' in b:
                    child=boxes(b['patcher'])
                    for cl,prop in [('inlet','numinlets'),('outlet','numoutlets')]:
                        ports=sorted([z for z in child.values() if z['maxclass']==cl],key=lambda z:(z['patching_rect'][0],z['patching_rect'][1]))
                        check(b.get(prop,0)==len(ports),context+' parent/child port count')
                        for n,z in enumerate(ports,1):check(z.get('index',n)==n,context+'/'+z['id']+' index disagrees with x-order','port_order')
                if kind=='bpatcher':deps.add(b.get('name',''))
                if kind=='jsui':deps.add(b.get('filename',''))
                if kind=='newobj' and t:
                    if t[0] in ['js','jsui'] and len(t)>1:
                        deps.add(t[1]);f=ROOT/t[1]
                        if f.exists():
                            source=f.read_text()
                            for attr,prop in [('inlets','numinlets'),('outlets','numoutlets')]:
                                match=re.search(r'\b'+attr+r'\s*=\s*(\d+)\s*;',source)
                                if match:check(b.get(prop)==int(match[1]),context+' JS '+attr+' mismatch')
                    elif (ROOT/(t[0]+'.maxpat')).exists():deps.add(t[0]+'.maxpat')
                    if t[0] in ['s','send','s~','send~','r','receive','r~','receive~','forward']:
                        name=t[1] if len(t)>1 else ''
                        check(bool(re.search(r'(?:_|-)v20$',name)) or name.startswith('#0'),context+' unversioned bus '+name,'namespace')
                        buses.append({'name':name,'operator':t[0],'file':filename,'path':loc,'id':b['id']})
                    if t[0]=='coll' and len(t)>1 and not t[1].startswith('@'):
                        check(t[1].endswith('_v20') or t[1].startswith('#0'),context+' unversioned coll '+t[1],'namespace')
                f=b.get('saved_object_attributes',{}).get('filename')
                if f and f.endswith(('.js','.maxpat')):deps.add(f)
                c=b.get('coll_data')
                if c is not None:
                    data=c.get('data',[]);check(c.get('count')==len(data),context+' coll count/data mismatch','preset_data')
                    check(len({str(r.get('key')) for r in data})==len(data),context+' duplicate coll keys','preset_data')
                    colls.append({'file':filename,'path':loc,'id':b['id'],'name':b.get('text',''),'records':len(data),'records_sha256':digest(data)})
    for d in deps:check(bool(d) and (ROOT/d).is_file(),'Missing dependency '+d,'dependencies')
    for f in ROOT.glob('*.js'):check('v19' not in f.read_text().lower(),f.name+' old namespace','namespace')
    # Original preset records are compared independently of corrected count metadata.
    baseline=json.loads((ROOT/'diagnostics/preset_baseline_v20.json').read_text())
    actual={(c['file'],c['path'],c['id']):c for c in colls}
    for expected in baseline['records']:
        key=(expected['file'],expected['path'],expected['id']);found=actual.get(key)
        check(found is not None,'Missing original collection '+str(key),'preservation')
        if found:check(found['records_sha256']==expected['records_sha256'],'Changed preset records '+str(key),'preservation')
    # Semantic audio mapping, using x-order as well as declared port indices.
    p=docs[MAIN];B=boxes(p);panel=B['obj-112']['patcher'];render=B['sinusoids-audio-rendering-v20']['patcher'];routing=B['sinusoids-audio-routing-v20']['patcher']
    PB,RB,GB=boxes(panel),boxes(render),boxes(routing)
    check(panel==docs['ADSR_LANE_PANEL_v20.maxpat'],'Embedded/standalone envelope panels differ','canonical_copies')
    check(B['send-message-space-v20']['patcher']==docs['Send_Message_Space_v20.maxpat'],'Embedded/standalone message galleries differ','canonical_copies')
    gains=['obj-73','obj-72','obj-71','obj-70','obj-69','obj-68','obj-67','obj-66','obj-65','obj-50','obj-25','obj-1']
    maps=[];stores=[]
    for n,gain in enumerate(gains,1):
        label=f'{n:02d}';lane=docs[f'ADSR_Lane_{label}_v20.maxpat'];LB=boxes(lane)
        wired(panel,f'lane-bpatch-{label}',0,f'lane-out-{label}')
        wired(p,'obj-112',n-1,'sinusoids-audio-rendering-v20',n)
        wired(render,f'env-in-{label}',0,f'lane-env-mult-{label}',1)
        wired(render,f'lane-{label}',0,f'lane-env-mult-{label}',0)
        wired(render,f'lane-env-mult-{label}',0,'matrix',n-1)
        wired(render,'matrix',n-1,f'matrix-out-{label}')
        wired(p,'sinusoids-audio-rendering-v20',n-1,'sinusoids-audio-routing-v20',n-1)
        wired(routing,f'route-in-{label}',0,f'group-mult-{label}')
        wired(routing,f'group-mult-{label}',0,f'group-send-{label}')
        wired(routing,f'group-mult-{label}',0,f'group-out-{label}')
        check(GB[f'group-send-{label}']['text']=='send~ sinusoids_group_'+label+'_v20','Named group mismatch '+label,'semantic_wiring')
        wired(p,'sinusoids-audio-routing-v20',n-1,gain,0);wired(p,gain,0,'obj-2',n-1);wired(p,'obj-74',1,gain,0)
        check(PB[f'lane-out-{label}']['index']==n and RB[f'env-in-{label}']['index']==n+1 and GB[f'route-in-{label}']['index']==n,'Lane order '+label,'semantic_wiring')
        forbidden=['receive env-post_v20','receive ADSR_Duration_ms_state_v20','receive Envelope_Trigger_v20']
        check(not any(z.get('text') in forbidden for z in LB.values()),'Legacy Master still controls lane '+label,'authority')
        stores.append(LB['user-coll']['text']);check(LB['user-coll']['text']==f'coll ADSR_Lane_{label}_User_Functions_v20 @embed 1','Incorrect lane store name','authority')
        wired(lane,'line',1,'loop-defer');wired(lane,'loop-defer',0,'loop-gate',1);wired(lane,'loop-gate',0,'trigger-button')
        wired(lane,'v20-stop-order',2,'v20-stop-loop-zero');wired(lane,'v20-stop-loop-zero',0,'loop-toggle')
        wired(lane,'v20-stop-order',1,'v20-stop-line');wired(lane,'v20-stop-line',0,'line')
        wired(lane,'v20-stop-order',0,'v20-stop-fade');wired(lane,'v20-stop-fade',0,'line')
        check(LB['v20-stop-line']['text']=='stop' and LB['v20-stop-fade']['text']=='0. 5.','Stop protocol '+label,'authority')
        maps.append({'envelope_lane':n,'synthesis_lane':n,'matrix_input':n,'matrix_output':n,'pre_fader_group_bus':'sinusoids_group_'+label+'_v20','dac_fader':gain,'dac_channel':n})
    check(len(set(stores))==12,'Lane stores are not unique','authority')
    wired(p,'obj-29',0,'sinusoids-audio-rendering-v20',0);check(RB['in-model']['index']==1,'Tagged model must be first renderer inlet','semantic_wiring')
    wired(p,'sinusoids-audio-routing-v20',12,'obj-39');check(B['obj-39']['text']=='send~ sinusoids_v20','Mono bus mismatch','semantic_wiring')
    wired(p,'v20-recv-Output_Gain_dB_v20',0,'v20-recv-Output_Gain_dB_v20-clip')
    wired(p,'v20-recv-Output_Gain_dB_v20-clip',0,'obj-74');wired(p,'obj-74',1,'v20-recv-Output_Gain_dB_v20-state');wired(p,'v20-dac-init',0,'obj-74')
    for id in ['obj-74']+gains:check(B[id]['saved_attribute_attributes']['valueof']['parameter_initial']==[-70.0],'DAC initial '+id,'authority')
    master=boxes(B['obj-21']['patcher']);check(master['v20-recv-Envelope_Trigger_v20']['text']=='receive Envelope_Trigger_v20','Legacy trigger should be a receive','authority')
    wired(B['obj-21']['patcher'],'v20-recv-Envelope_Trigger_v20',0,'obj-13')
    timed=(ROOT/'Example_Timed_Score_v20.maxpat').read_text()
    for obsolete in ['Envelope_Trigger_v20','Envelope_Loop_v20','ADSR_Duration_ms_state_v20','ADSR_Shape_state_v20']:
        check(obsolete not in timed,'Timed score uses Master address '+obsolete,'authority')
    # Primary panels: new global controls must not collide with existing visible controls.
    visible=[z for z in PB.values() if z.get('presentation') and z.get('presentation_rect')]
    def overlap(a,b):return min(a[0]+a[2],b[0]+b[2])-max(a[0],b[0])>.01 and min(a[1]+a[3],b[1]+b[3])-max(a[1],b[1])>.01
    for i,a in enumerate(visible):
        for b in visible[i+1:]:check(not overlap(a['presentation_rect'],b['presentation_rect']),a['id']+' overlaps '+b['id'],'panel_layout')
    # Source tests in a disposable copy. They emulate messages/clocks; no native Max execution.
    node=shutil.which('node')
    if not node:errors.append({'group':'runtime','message':'Node.js is required to run the JavaScript suites.'})
    else:
        for f in sorted(ROOT.glob('*.js')):
            proc=subprocess.run([node,'--check',str(f)],text=True,capture_output=True,timeout=30)
            syntax.append({'file':f.name,'returncode':proc.returncode,'stderr':proc.stderr});check(proc.returncode==0,f.name+' syntax failure','syntax')
        with tempfile.TemporaryDirectory(prefix='synth_v20_test_') as temp:
            work=Path(temp)/'release';shutil.copytree(ROOT,work,ignore=shutil.ignore_patterns('__pycache__','latest'))
            for f in sorted(work.glob('tests_*.cjs')):
                try:
                    proc=subprocess.run([node,str(f)],cwd=work,text=True,capture_output=True,timeout=90)
                    result={'test':f.name,'returncode':proc.returncode,'stdout':proc.stdout,'stderr':proc.stderr}
                except subprocess.TimeoutExpired as exc:result={'test':f.name,'returncode':124,'stdout':str(exc.stdout or ''),'stderr':'Timed out after 90 seconds'}
                unit.append(result);check(result['returncode']==0,f.name+' regression failure','regression')
                print(('PASS ' if result['returncode']==0 else 'FAIL ')+f.name,flush=True)
            details=list(work.glob('VALIDATION*.json'))+list((work/'diagnostics').glob('current_core_checks_results*.json'))
            for f in details:
                if f.is_file():write(output/'unit_details'/f.name,json.loads(f.read_text()))
    report={'status':'PASS_SOURCE_AND_GRAPH_CHECKS' if not errors else 'FAIL','entry_point':MAIN,
        'environment':{'system':platform.system(),'python':platform.python_version(),'node':subprocess.run([node,'--version'],capture_output=True,text=True).stdout.strip() if node else None},
        'counts':{'maxpat_files':len(docs),'javascript_files':len(syntax),'regression_suites':len(unit),'patcher_contexts':len(inventory),'objects':sum(x['objects'] for x in inventory),'patch_cords':sum(x['cords'] for x in inventory),'bundled_referenced_dependencies':len(deps),'named_bus_objects':len(buses),'distinct_bus_names':len({b['name'] for b in buses}),'embedded_collections':len(colls),'preserved_source_collections':len(baseline['records']),'structural_and_contract_assertions':sum(checks.values())},
        'checks_by_category':dict(checks),'errors':errors,'dependencies':sorted(deps),
        'limitations':['No native Cycling 74 Max application was run.','No native scheduler, GUI interaction, DSP/external loading, CPU benchmark, sound rendering, DAC hardware routing or listening test was performed.','Node tests execute JavaScript source with Max-message/Task/clock stubs; CUE tests simulate selected Max objects.','sinusoids~ is an installed third-party dependency and is not bundled or validated here.','Saved layout rectangles and port order were checked; this is not a native Max visual rendering test.'],
        'required_native_dependency':['CNMAT sinusoids~ compatible with the installed Max/platform'],
        'namespace_scope':'Project control/signal buses and inherited synth dependencies are v20. The unchanged user-supplied automatic_lines_v5_ed.js intentionally retains its standalone v5 filename. Max global DSP, third-party object names, and multiple copies of this same version are not instance-isolated.'}
    write(output/'diagnostics_report_v20.json',report);write(output/'javascript_syntax_v20.json',syntax);write(output/'regression_results_v20.json',unit)
    write(output/'patch_inventory_v20.json',inventory);write(output/'bus_catalog_v20.json',buses);write(output/'embedded_collections_v20.json',colls);write(output/'audio_lane_map_v20.json',maps)
    print(json.dumps({'status':report['status'],'counts':report['counts'],'errors':errors},indent=2))
    return 0 if not errors else 1
if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,default=ROOT/'diagnostics/latest',help='Results folder; the playable patches are not edited.')
    args=parser.parse_args();sys.exit(run(args.output.resolve()))
