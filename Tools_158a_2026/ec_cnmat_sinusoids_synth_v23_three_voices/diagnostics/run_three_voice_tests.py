#!/usr/bin/env python3
"""Run actual-JavaScript regressions for all voices. Requires Node.js and Python 3."""
from pathlib import Path
import json,os,subprocess,sys,time
D=Path(__file__).resolve().parent
results=[];logs=D/'test_logs';logs.mkdir(exist_ok=True)
suites=['test_full_state_morph_v23.cjs','test_morphbank_rev2_v23.cjs','test_morph_status_v23.cjs']
for v in [1,2,3]:
 for suite in suites:
  name=f'V{v}_{suite}';t=time.monotonic()
  p=subprocess.run(['node',str(D/suite)],env={**os.environ,'SYNTH_TEST_VOICE':str(v)},cwd=D,capture_output=True,text=True,timeout=180)
  (logs/(name+'.log')).write_text(p.stdout+p.stderr)
  results.append({'suite':name,'status':'PASS' if p.returncode==0 else 'FAIL','seconds':round(time.monotonic()-t,2)})
  print(name,results[-1]['status'],flush=True)
t=time.monotonic();p=subprocess.run(['node',str(D/'test_three_voice_isolation.cjs')],cwd=D,capture_output=True,text=True,timeout=180)
(logs/'three_voice_isolation.log').write_text(p.stdout+p.stderr)
results.append({'suite':'test_three_voice_isolation.cjs','status':'PASS' if p.returncode==0 else 'FAIL','seconds':round(time.monotonic()-t,2)})
print(results[-1]['suite'],results[-1]['status'],flush=True)
(D/'three_voice_test_results.json').write_text(json.dumps(results,indent=2)+'\n')
print(f'{sum(r["status"]=="PASS" for r in results)}/{len(results)} suites passed.',flush=True)
sys.exit(any(r['status']!='PASS' for r in results))
