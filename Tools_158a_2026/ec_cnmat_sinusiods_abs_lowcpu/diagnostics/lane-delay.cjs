/* Executes the actual lane patch cords with a small message/timer model.
   Native Max scheduling and audio are not executed. Run: node diagnostics/lane-delay.cjs */
const fs=require('fs'),path=require('path'),assert=require('assert');
const root=path.resolve(__dirname,'..');let checks=0;
function ok(v,m){assert.ok(v,m);checks++;}
function eq(a,b,m){assert.deepStrictEqual(a,b,m);checks++;}
function laneModel(p){
 const nodes=new Map(p.boxes.map(x=>[x.box.id,{b:x.box,value:0,token:0}]));
 const lines=p.lines.map(x=>x.patchline);let now=0,sequence=0;const events=[],starts=[];
 function schedule(ms,fn){events.push({at:now+ms,order:sequence++,fn});}
 function emit(id,port,a){
  const edges=lines.filter(l=>l.source[0]===id&&l.source[1]===port).sort((a,b)=>(a.order??0)-(b.order??0));
  for(const l of edges)receive(l.destination[0],l.destination[1],a);
 }
 function receive(id,inlet,a){
  const n=nodes.get(id),b=n.b,t=b.text||'',sel=a[0];
  if(id==='current-envelope'){
   if(sel==='set')return;
   starts.push(now);emit(id,0,['play']);return;
  }
  if(b.maxclass==='button'){emit(id,0,['bang']);return;}
  if(b.maxclass==='number'||b.maxclass==='toggle'){
   if(sel==='set'){n.value=Number(a[1]);return;}
   if(sel==='bang'&&b.maxclass==='toggle')n.value=n.value?0:1;
   else if(sel!=='bang')n.value=Math.trunc(Number(sel==='int'||sel==='float'?a[1]:sel));
   if(b.minimum!==undefined)n.value=Math.max(b.minimum,n.value);
   if(b.maximum!==undefined)n.value=Math.min(b.maximum,n.value);
   emit(id,0,[n.value]);return;
  }
  if(b.maxclass==='message'){
   const v=t.split(/\s+/).map(x=>Number.isFinite(Number(x))?Number(x):x);emit(id,0,v);return;
  }
  if(/^receive /.test(t)){emit(id,0,a);return;}
  if(/^send /.test(t))return;
  if(t==='i 0'){
   if(sel!=='bang')n.value=Number(sel);
   if(inlet===0)emit(id,0,[n.value]);return;
  }
  if(t==='sel 0'){if(sel===0)emit(id,0,['bang']);else emit(id,1,a);return;}
  if(/^t b(?: b)+$/.test(t)){for(let i=t.split(' ').length-2;i>=0;i--)emit(id,i,['bang']);return;}
  if(t==='delay 0'){
   if(sel==='stop'){n.token++;n.pending=false;return;}
   if(sel!=='bang')n.value=Number(sel);
   if(inlet===1)return;
   const token=++n.token;n.pending=true;
   schedule(n.value,()=>{if(token===n.token){n.pending=false;emit(id,0,['bang']);}});return;
  }
  if(t==='gate'){
   if(inlet===0)n.value=Number(sel);else if(n.value)emit(id,0,a);return;
  }
  if(t==='deferlow'){schedule(0,()=>emit(id,0,a));return;}
  if(t==='line~ 0.'){
   if(sel==='stop'){n.token++;return;}
   // Envelope completion is modeled at 1000 ms; stop's 0. 5. ramp at 5 ms.
   const token=++n.token;
   schedule(sel==='play'?1000:Number(a[1]),()=>{if(token===n.token)emit(id,1,['bang']);});return;
  }
  throw Error('Unmodeled node on trigger path: '+id+' '+t+' '+a);
 }
 function advance(ms){
  const end=now+ms;
  while(true){events.sort((a,b)=>a.at-b.at||a.order-b.order);if(!events.length||events[0].at>end)break;const e=events.shift();now=e.at;e.fn();}
  now=end;
 }
 // Follow the actual startup connection for DEL only.
 emit('delay-init',0,[0]);
 return {set:x=>receive('delay-ms',0,[x]),trigger:()=>receive('local-trigger',0,['bang']),
  click:()=>receive('trigger-button',0,['bang']),stop:()=>receive('v20-stop-receive',0,['bang']),
  loop:x=>receive('loop-toggle',0,[x]),advance,starts,
  value:()=>nodes.get('delay-ms').value,pending:()=>!!nodes.get('start-delay').pending};
}
const laneFiles=Array.from({length:12},(_,i)=>'ec_cnmat_sinusoids_opt_adsr_'+String(i+1).padStart(2,'0')+'.maxpat');
for(const file of laneFiles){
 const p=JSON.parse(fs.readFileSync(path.join(root,'dependencies',file))).patcher;
 const bs=new Map(p.boxes.map(x=>[x.box.id,x.box]));
 const row=['count-label','count','duration-label','duration','duration-ms-label','delay-label','delay-ms','delay-ms-label'].map(id=>bs.get(id).presentation_rect);
 for(let i=0;i<row.length;i++){
  ok(row[i][0]>=0&&row[i][0]+row[i][2]<=240,'top row fits bpatcher '+file);
  if(i)ok(row[i-1][0]+row[i-1][2]<=row[i][0],'top-row fields do not overlap '+file);
 }
 eq(bs.get('delay-init').text,'loadmess 0','explicit zero default');
 eq(bs.get('delay-ms').maxclass,'number','integer DEL UI');
 let m=laneModel(p);eq(m.value(),0,'startup zero');m.trigger();eq(m.starts,[0],'zero delay is synchronous');
 m=laneModel(p);m.set(250);m.click();m.advance(249);eq(m.starts,[],'no early start');m.advance(1);eq(m.starts,[250],'local click starts at DEL');
 m=laneModel(p);m.set(400);m.trigger();m.advance(50);m.set(20);m.advance(349);eq(m.starts,[],'editing DEL does not move a pending start');m.advance(1);eq(m.starts,[400],'pending start keeps old deadline');
 m=laneModel(p);m.set(500);m.trigger();m.advance(100);m.trigger();m.advance(499);eq(m.starts,[],'retrigger replaces old deadline');m.advance(1);eq(m.starts,[600],'only latest trigger starts');
 m=laneModel(p);m.set(500);m.trigger();m.advance(100);m.set(0);m.trigger();eq(m.starts,[100],'zero trigger starts immediately');m.advance(1000);eq(m.starts,[100],'zero trigger cancels prior delayed bang');
 m=laneModel(p);m.set(500);m.trigger();m.advance(100);m.stop();ok(!m.pending(),'Stop cancels pending bang');m.advance(2000);eq(m.starts,[],'no delayed restart after Stop');
 m=laneModel(p);m.set(200);m.loop(1);m.trigger();m.advance(1399);eq(m.starts,[200],'loop restart waits for duration plus delay');m.advance(1);eq(m.starts,[200,1400],'loop restart includes DEL');
 m.advance(1000);ok(m.pending(),'next loop is waiting');m.stop();m.advance(2000);eq(m.starts,[200,1400],'Stop cancels waiting loop');
 m=laneModel(p);m.set(-10);eq(m.value(),0,'negative UI input clipped');m.set(12.9);eq(m.value(),12,'integer delay');m.set(9999999);eq(m.value(),3600000,'upper limit clipped');
 const a=laneModel(p),b=laneModel(p);a.set(50);b.set(400);a.trigger();b.trigger();a.advance(100);b.advance(100);eq(a.starts,[50],'instance A deadline');eq(b.starts,[],'instance B remains waiting');a.stop();b.advance(300);eq(b.starts,[400],'stopping A does not cancel B');
}
const controller=fs.readFileSync(path.join(root,'dependencies/ec_cnmat_sinusoids_opt_controller.js'),'utf8');
ok(/restoreBusy=true;bus\("ec-gain-value",\[0\]\);stop\(\);muteTask.schedule\(60\)/.test(controller),'preset recall uses the same Stop path before restoring');
const report={result:'PASS',assertions:checks,lanes:12,scenarios:['zero bypass','positive delay','manual and addressed trigger','pending-time edits','latest-trigger replacement','zero-trigger cancellation','Stop cancels waiting start','loop restart delay','Stop cancels waiting loop','independent instances','row fits existing 240px bpatchers'],limitations:['Executes saved patchcords with a modeled message scheduler; no native Max GUI, scheduler or audio execution.']};
fs.writeFileSync(path.join(__dirname,'lane-delay-results.json'),JSON.stringify(report,null,2)+'\n');
console.log(JSON.stringify(report,null,2));
module.exports={laneModel};
