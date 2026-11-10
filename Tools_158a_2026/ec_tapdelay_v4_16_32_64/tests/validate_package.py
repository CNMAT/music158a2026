"""Structural checks only. Native Max/Gen compilation must be checked in Max 9."""
import hashlib
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

def check_graph(p, name):
    boxes = {bb['box']['id']: bb['box'] for bb in p['boxes']}
    assert len(boxes) == len(p['boxes']), (name, 'duplicate IDs')
    for line in p.get('lines', []):
        line = line['patchline']
        for end, key in [('source', 'numoutlets'), ('destination', 'numinlets')]:
            id, port = line[end]
            assert id in boxes, (name, end, id)
            assert port >= 0
            if key in boxes[id]:
                assert port < boxes[id][key], (name, end, id, port, boxes[id][key])
    for id, b in boxes.items():
        assert '_breakout~' not in b.get('text', ''), (name, 'unstable breakout dependency')
        if 'patcher' in b: check_graph(b['patcher'], name + '/' + id)
        if b.get('text', '').startswith(('js ec_tapdelay', 'mcs.gen~ ec_tapdelay')):
            dependency = b['text'].split()[1]
            if b['text'].startswith('mcs.gen~'): dependency += '.gendsp'
            assert (ROOT / dependency).exists(), (name, dependency)
    return boxes

for f in ROOT.iterdir():
    if f.suffix in ['.gendsp', '.maxpat', '.maxhelp']:
        check_graph(json.loads(f.read_text())['patcher'], f.name)

def engine(cap):
    doc = json.loads((ROOT / f'ec_tapdelay{cap}_v4_engine.gendsp').read_text())
    p = doc['patcher']
    ports = [bb['box'].get('text', '') for bb in p['boxes']]
    assert sorted(int(s[3:]) for s in ports if s.startswith('in ')) == list(range(1, cap+1))
    assert sorted(int(s[4:]) for s in ports if s.startswith('out ')) == list(range(1, cap+1))
    codebox = next(bb['box'] for bb in p['boxes'] if bb['box']['id'] == 'code')
    assert codebox['numinlets'] == codebox['numoutlets'] == cap
    code = codebox['code']
    assert len(p['lines']) == cap*2
    assert len(re.findall(r'^Param (source|time|gain)\d+\(', code, re.M)) == cap*3
    assert len(re.findall(r'^History (?:oldtime|newtime|oldgain|newgain|phase|seen)\d+\(', code, re.M)) == cap*6
    assert len(re.findall(r'^// Tap \d+:', code, re.M)) == cap
    assert max(map(int, re.findall(r'\b(?:in|out|time|source|gain|phase|seen|oldtime|newtime|oldgain|newgain)(\d+)\b', code))) == cap
    assert code.count('{') == code.count('}')
    code_edges = [line['patchline'] for line in p['lines']]
    for i in range(cap):
        assert {'source':['code',i], 'destination':['out'+str(i+1),0]} in code_edges
        assert {'source':['input' if i == 0 else 'input'+str(i+1),0], 'destination':['code',i]} in code_edges
    abs_p = json.loads((ROOT / f'ec_tapdelay{cap}_v4~.maxpat').read_text())['patcher']
    outlets = {bb['box']['id']:bb['box']['index'] for bb in abs_p['boxes'] if bb['box']['maxclass'] == 'outlet'}
    assert outlets == {'wet':1,'mono':2,'cycle_done':3,'status':4}
    help_a = ROOT / f'ec_tapdelay{cap}_v4~.maxhelp'
    help_b = ROOT / f'_ec_tapdelay{cap}_v4~.maxhelp'
    assert help_a.read_bytes() == help_b.read_bytes()
    print(f'{cap} taps: {cap} actual Gen inputs/outputs, {cap*6} tap histories, {len(code):,} GenExpr characters')
    return code

codes = {cap:engine(cap) for cap in [16,32,64]}
def tap_block(code, n):
    return re.search(rf'// Tap {n}:.*?(?=// Tap |if \(\(running > 0\) && \(bankready > 0\) && \(frames > 2\)\) \{{ writepos)', code, re.S)[0]
for cap in [16,32]:
    for i in range(1,cap+1):
        assert tap_block(codes[cap],i) == tap_block(codes[64],i), (cap, i, 'tap algorithm changed')
print('PASS: patch connections, fixed outlets, dependencies, capacity bounds and unchanged per-tap DSP.')
