#!/usr/bin/env python3
"""Current v23 audit and actual-JS regressions. Requires Python 3 and Node.js.
Use --from TEST_PREFIX to resume a constrained environment. Results checkpoint after each suite.
"""
from pathlib import Path
import argparse,subprocess,json,time,sys
D=Path(__file__).resolve().parent;R=D.parent
ap=argparse.ArgumentParser();ap.add_argument('--from',dest='start',default='');ap.add_argument('--only',nargs='+',default=[]);args=ap.parse_args()
subprocess.run([sys.executable,'-B',str(D/'audit_v23.py')],check=True,cwd=R)
# The two earlier preservation audits describe the pre-update v23 source.
subprocess.run([sys.executable,'-B',str(D/'audit_morphbank_rev2_v23.py')],check=True,cwd=R)
log=D/'v23_regression_logs';log.mkdir(exist_ok=True)
record=D/'V23_TEST_RESULTS.json';results=json.loads(record.read_text()) if (args.start or args.only) and record.exists() else []
for p in sorted(D.glob('*.cjs')):
 if not p.name.startswith(('test_','tests_')) or p.name<args.start or (args.only and p.name not in args.only):continue
 t=time.monotonic()
 try:
  r=subprocess.run(['node',str(p)],cwd=R,capture_output=True,text=True,timeout=180);code=r.returncode;text=r.stdout+r.stderr
 except subprocess.TimeoutExpired as e:code=-1;text='TIMEOUT\n'+str(e)
 (log/(p.stem+'.log')).write_text(text)
 results=[x for x in results if x['suite']!=p.name]+[{'suite':p.name,'status':'PASS' if code==0 else 'FAIL','returncode':code,'elapsed_seconds':round(time.monotonic()-t,3)}]
 record.write_text(json.dumps(results,indent=2));print(p.name,results[-1]['status'],flush=True)
print(f'{sum(x["status"]=="PASS" for x in results)}/{len(results)} recorded suites passed.')
sys.exit(0 if all(x['status']=='PASS' for x in results) else 1)
