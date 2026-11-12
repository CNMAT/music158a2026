#!/usr/bin/env python3
"""Exercise the delivered DAC wiring with modeled native Max messages.
This is not native Max execution or an audio audition.
"""
from pathlib import Path
from collections import defaultdict,deque
import json

P=Path(__file__).resolve().parent.parent
p=json.loads((P/'patchers/_ec_sinusoids_synth_v23_three_voices_main.maxpat').read_text())['patcher']
B={w['box']['id']:w['box'] for w in p['boxes']}
L=[w['patchline'] for w in p['lines']]
checks=0
def check(x,message):
    global checks
    checks+=1
    assert x,message
def has(lines,s,so,d,di):return any(l['source']==[s,so] and l['destination']==[d,di] for l in lines)

for v in [1,2,3]:
    pre=f'V{v}_'
    check(B[pre+'voice-audio-adstatus']['text']=='adstatus switch','actual adstatus per voice')
    check(has(L,pre+'voice-audio-adstatus',1,pre+'voice-audio-menu',0),'numeric state to silent set')
    check(has(L,pre+'voice-audio-menu',0,pre+'obj-38',0),'silent set to toggle')
    check(B[pre+'voice-audio-menu']['text']=='prepend set','no recursive DSP control on readback')
    check(has(L,pre+'voice-audio-adstatus',0,pre+'obj-49',0),'umenu setup messages stay on umenu path')
    check(has(L,pre+'voice-audio-adstatus',1,pre+'v23-recv-Audio_On_v23-state',0),'actual-state broadcast')
    check(not any(l['destination'][0]==pre+'obj-38' and l['source']==[pre+'voice-audio-adstatus',0] for l in L),'menu output never enters toggle')
    check(has(L,pre+'voice-audio-command',1,pre+'obj-2',0),'ON and OFF reach DAC')
    check(pre+'voice-audio-default' not in B,'no loadmess 0 resets the engine')
    route=pre+'sinusoids-audio-routing-v23';q=B[route]['patcher'];qb={w['box']['id']:w['box'] for w in q['boxes']};ql=[w['patchline'] for w in q['lines']]
    check(not any(id.startswith('voice-output-') for id in qb),'no extra mute stage')
    for i in range(12):
        n=f'{i+1:02}'
        check(has(ql,'route-in-'+n,0,'group-mult-'+n,0),'input to automixer '+n)
        check(has(ql,'group-mult-'+n,0,'alc-mult-'+n,0),'automixer to level/output gain '+n)
        check(has(ql,'v23-combined-gain',0,'alc-mult-'+n,1),'direct gain control '+n)
        check(has(ql,'alc-mult-'+n,0,'group-out-'+n,0),'audio to outlet '+n)
        check(has(ql,'alc-mult-'+n,0,'group-send-'+n,0),'audio to named send '+n)
        outs=[l for l in L if l['source']==[route,i]]
        check(len(outs)==1,'one channel fader feed')
        fader=outs[0]['destination'][0]
        check(B[fader]['maxclass']=='live.gain~','independent channel fader')
        check(has(L,fader,0,pre+'obj-2',i),'fader to its matching DAC channel')

class Host:
    def __init__(self,state):
        self.state=state;self.values={};self.menus={};self.reported={};self.commands=[];self.tasks=deque();self.steps=0
        self.edges=defaultdict(list)
        for l in L:self.edges[tuple(l['source'])].append(l)
        for links in self.edges.values():links.sort(key=lambda l:l.get('order',0))
        self.active=set()
        for v in [1,2,3]:
            pre=f'V{v}_'
            for id in B:
                if id.startswith(pre+'voice-audio-') or id in [pre+'obj-38',pre+'obj-49',pre+'obj-2'] or id.startswith(pre+'v23-recv-Audio_On_v23'):self.active.add(id)
    def emit(self,id,port,value):
        for l in self.edges.get((id,port),[]):
            if l['destination'][0] in self.active:self.deliver(*l['destination'],value)
    def global_change(self,state):
        state=int(bool(state))
        if self.state==state:return
        self.state=state
        for v in [1,2,3]:self.emit(f'V{v}_voice-audio-dspstate',0,state)
    def deliver(self,id,inlet,value):
        self.steps+=1
        if self.steps>10000:raise AssertionError('message feedback loop')
        b=B[id];t=b.get('text','');cls=b['maxclass']
        if cls=='toggle':
            if isinstance(value,list) and value[0]=='set':self.values[id]=int(bool(value[1]));return
            check(isinstance(value,(int,float)),'toggle only receives numbers or set')
            self.values[id]=int(bool(value));self.emit(id,0,self.values[id])
        elif cls=='umenu':
            check(isinstance(value,list),'menu gets setup messages')
            if value[0]=='set':self.menus[id]=value[1]
        elif t.startswith('dac~'):
            check(isinstance(value,(int,float)),'DAC receives numeric on/off')
            self.commands.append((id,int(bool(value))));self.global_change(value)
        elif t=='t b i':self.emit(id,1,int(value));self.emit(id,0,'bang')
        elif t=='t b':self.emit(id,0,'bang')
        elif t=='loadbang':self.emit(id,0,'bang')
        elif t=='deferlow':self.tasks.append((id,value))
        elif t=='adstatus switch':
            check(value=='bang','readback only; does not rewrite audio settings')
            # Exercise the menu messages that must never be delivered to toggle.
            self.emit(id,1,self.state)
            for m in [['clear'],['append','Off'],['append','On'],['set',self.state]]:self.emit(id,0,m)
        elif t=='prepend set':self.emit(id,0,['set',value])
        elif t.startswith('send '):self.reported[t.split()[1]]=value
        elif t.startswith('receive '):self.emit(id,0,value)
        elif t=='clip 0 1':self.emit(id,0,max(0,min(1,value)))
        elif t=='i':self.emit(id,0,int(value))
        else:raise AssertionError('Unmodeled switch object: '+id+' '+t)
    def drain(self):
        while self.tasks:
            id,value=self.tasks.popleft();self.emit(id,0,value)
    def assert_all(self,value):
        check(self.state==value,'global DSP state')
        for v in [1,2,3]:
            pre=f'V{v}_'
            check(self.values[pre+'obj-38']==value,'toggle synchronized '+pre)
            check(self.menus[pre+'obj-49']==value,'menu synchronized '+pre)
            check(self.reported[pre+'Audio_On_state_v23']==value,'bus reports actual state '+pre)
    def startup(self):
        for v in [1,2,3]:self.deliver(f'V{v}_voice-audio-load',0,'bang')
        self.drain()

for initial in [0,1]:
    h=Host(initial);h.startup();h.assert_all(initial)
    check(not h.commands,'startup query never changes DSP state')
    for voice in [1,2,3]:
        for state in [1,0,1,0]:
            n=len(h.commands);h.deliver(f'V{voice}_obj-38',0,state);h.drain();h.assert_all(state)
            check(len(h.commands)==n+1,'one DAC command per click; no readback feedback')
    for external in [1,0,1,0]:
        n=len(h.commands);h.global_change(external);h.drain();h.assert_all(external)
        check(len(h.commands)==n,'external status change does not echo a DAC command')
    for voice in [1,2,3]:
        for state in [1,0]:
            n=len(h.commands);h.deliver(f'V{voice}_v23-recv-Audio_On_v23',0,state);h.drain();h.assert_all(state)
            check(len(h.commands)==n+1,'addressed Audio_On command updates global DSP once')

report={'status':'PASS','checks':checks,'adstatus_switches':3,'audio_feeds_checked':36,'removed_local_mute_gates':3,'coverage':['startup with DSP on and off','ON/OFF from every toggle','external audio-status changes','all three readout/state buses','no recursive DAC commands','all 36 direct output/fader/DAC paths','all 36 group sends','voice-addressed Audio_On commands'],'limits':['Actual saved Max graph with modeled native messages. No native Max DSP or hardware audition.']}
(P/'diagnostics/shared_dac_sync_results.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
