/* Four independent parallel filters; OFF is silence, with no dry bypass.
   Named commands only: no Maxobj/Patcher API. Embedded coll owns all four bands.
   Per-stage ON/OFF gates fade; type changes reconfigure only after native wet=0. */
autowatch=1;inlets=1;outlets=2;
// Outlet 1 exports one self-contained message; outlet 0 remains local control.
var capturedState=null;
var MAGIC=20261030,VERSION=10,Q=6,MIN_RAMP=20,FMIN=60,FMAX=13000,SR=44100,GAINOUT_FADE=2000;
var QMIN=.5,QMAX=200,GAIN_MIN=-36,GAIN_MAX=36;
var TYPES=["peak","lowpass","bandpass","ultra","highpass","resonant","notch"],MODES=[5,1,3,3,2,8,4],COMMANDS=["peaknotch","gainlpass","gainbpass","gainbpass","gainhpass","gainresonant","gainbstop"];
var ready=false,dspOn=false,scanning=false,scanKey=-1,scanState=null,bankBackup=null;
var presets={},state=defaults(),context=-1,activePreset=0;
var lastWorking="",graphModes=[-1,-1,-1,-1],graphMax=-1,graphTop=-1;
var running=[false,false,false,false],cycleBegan=[0,0,0,0],curveRequested=[false,false,false,false];
var writingCurve=[false,false,false,false],liveMotion=[0,0,0,0],graphHz=[60,60,60,60],graphDb=[-36,-36,-36,-36],graphQ=[.5,.5,.5,.5];
var ampRequested=[false,false,false,false],writingAmp=[false,false,false,false];
var applied=[0,0,0,0],phase=[0,0,0,0]; // 0 steady/fading in, 1 fading out, 2 warming
var graphWet=[0,0,0,0],graphLevel=[-24,-24,-24,-24];
// Only the explicit UI path resets values. Preset/state recall uses applyState.
var SAFE_TYPE_FADE=25,SAFE_TYPE_LEVEL=-12;
var SAFE_TYPE_Q=[1,Math.SQRT1_2,1,100,Math.SQRT1_2,1,1];
var safeTypePending=[false,false,false,false];
var copyPending=[false,false,false,false],copyRunPending=[false,false,false,false];
var bootTask=new Task(boot,this);
var restarts=[new Task(function(){restart(0);},this),new Task(function(){restart(1);},this),new Task(function(){restart(2);},this),new Task(function(){restart(3);},this)];
var warms=[new Task(function(){warmdone(0);},this),new Task(function(){warmdone(1);},this),new Task(function(){warmdone(2);},this),new Task(function(){warmdone(3);},this)];
function finite(x){return typeof x==="number"&&isFinite(x);}
function clamp(x,a,b){return Math.min(b,Math.max(a,x));}
function copy(x){return JSON.parse(JSON.stringify(x));}
function now(){return new Date().getTime();}
function dbamp(x){return Math.pow(10,x/20);}
function ampdb(x){return 20*Math.log(Math.max(x,1e-20))/Math.LN10;}
function send(){outlet(0,arrayfromargs(arguments));}
function setui(n,v){send(n,"set",v);}
function status(s){setui("status",s);}
function dirty(){send("patch_control","dirty");}
function index(n){n=Number(n);return finite(n)&&n===Math.floor(n)&&n>=1&&n<=4?n-1:-1;}
function slotnumber(n){n=Number(n);return finite(n)&&n===Math.floor(n)&&n>=1&&n<=10?n:-1;}
function idx(){return context>=0?context:state.selected-1;}
function duration(x){x=Number(x);return finite(x)?clamp(x,MIN_RAMP,120000):state.interp;}
function stage(i,cmd){var a=arrayfromargs(arguments);a.splice(0,2);send.apply(null,["stage"+i,cmd].concat(a));}
function ramp(i,cmd,v,ms){stage(i,cmd,v,duration(ms));}
function triangleCurve(){return [0,0,.25,1,.75,-1,1,0];}
function flatCurve(){return [0,0,1,0];}
function usefulDepth(f){return Math.max(1,Math.min(200,f-FMIN,FMAX-f));}
function qbounds(t){return t===3?[20,200]:[.5,50];}
function qlimits(i){var r=qbounds(state.bands[i].type);send("q"+i,"maximum",r[1]);send("q"+i,"minimum",r[0]);}
function settleTime(i){var b=state.bands[i];return b.type===3?Math.ceil(clamp(4000*b.q/(Math.PI*Math.max(FMIN,b.freq-b.depth)),100,5000)):100;}
// Cold opening and per-filter clear share the same valid minimum state.
function defaultBand(i){return {enabled:0,level:-24,type:0,freq:FMIN,gain:GAIN_MIN,q:QMIN,depth:0,ampdepth:0,period:100,loop:0,curve:flatCurve(),acurve:flatCurve()};}

function defaults(){return {interp:1000,amp:1,gainout:-12,normalize:1,slot:0,selected:1,fade:700,bands:[defaultBand(0),defaultBand(1),defaultBand(2),defaultBand(3)]};}

function cleanCurve(a){
 var pairs=[],out=[0,0],last=0;
 for(var j=0;j+1<a.length;j+=2){var x=Number(a[j]),y=Number(a[j+1]);if(finite(x)&&finite(y)&&x>0&&x<1)pairs.push([x,clamp(y,-1,1)]);}
 pairs.sort(function(a,b){return a[0]-b[0];});
 for(var k=0;k<pairs.length&&out.length<126;k++){if(pairs[k][0]-last<.0001)continue;last=pairs[k][0];out.push(last,pairs[k][1]);}
 out.push(1,0);return out;
}
function sanitize(s){
 s.gainout=clamp(finite(s.gainout)?s.gainout:0,-36,12);
 s.interp=duration(s.interp);s.amp=1;s.normalize=s.normalize?1:0;s.slot=clamp(Math.round(s.slot),0,10);s.selected=clamp(Math.round(s.selected),1,4);s.fade=clamp(finite(s.fade)?s.fade:700,20,10000);
 for(var i=0;i<4;i++){var b=s.bands[i];b.enabled=b.enabled?1:0;b.level=clamp(finite(b.level)?b.level:0,-24,12);b.type=clamp(Math.round(b.type),0,6);b.freq=clamp(b.freq,FMIN,13000);b.gain=clamp(b.gain,GAIN_MIN,GAIN_MAX);var qr=qbounds(b.type);b.q=clamp(finite(b.q)?b.q:(b.type===3?100:6),qr[0],qr[1]);b.depth=clamp(b.depth,0,12940);b.ampdepth=clamp(finite(b.ampdepth)?b.ampdepth:0,0,48);b.period=clamp(b.period,100,600000);b.loop=b.loop?1:0;b.curve=cleanCurve(b.curve);b.acurve=cleanCurve(b.acurve||flatCurve());}
 return s;
}

function encode(s){
 var a=[MAGIC,VERSION,s.interp,s.amp,s.normalize,s.slot,s.selected,s.fade,s.gainout];
 for(var i=0;i<4;i++){var b=s.bands[i];a=a.concat([b.enabled,b.type,b.freq,b.gain,b.q,b.depth,b.ampdepth,b.period,b.loop,b.level,b.curve.length/2],b.curve,[b.acurve.length/2],b.acurve);}return a;
}

function decode(a){
 if(Number(a[0])!==MAGIC)return null;
 for(var z=0;z<a.length;z++)if(!finite(Number(a[z])))return null;
 var s=defaults(),v=Number(a[1]),modern=v===5||v===6||v===7||v===8||v===9||v===10,p=v>=8?9:(modern?8:7);
 if(v===3){
  var n=+a[11];if(a.length!==12+n*2||n<2||n>64||n!==Math.floor(n))return null;
  s.interp=+a[2];s.amp=+a[3];s.normalize=+a[4];s.slot=+a[5];
  for(var k=1;k<4;k++)s.bands[k].enabled=0;
  s.bands[0]={enabled:1,type:0,freq:+a[6],gain:+a[7],q:6,depth:+a[8]||usefulDepth(+a[6]),ampdepth:0,period:+a[9],loop:+a[10],curve:a.slice(12),acurve:flatCurve()};return migrate(s,v);
 }
 if((v!==4&&!modern)||a.length<55)return null;
 s.interp=+a[2];s.amp=+a[3];s.normalize=+a[4];s.slot=+a[5];s.selected=+a[6];s.fade=modern?+a[7]:700;s.gainout=v>=8?+a[8]:0;s.bands=[];
 for(var i=0;i<4;i++){
  if(p+(modern?10:8)>a.length)return null;
  var b={enabled:+a[p++],type:+a[p++],freq:+a[p++],gain:+a[p++],q:modern?+a[p++]:6,depth:+a[p++],ampdepth:modern?+a[p++]:0,period:+a[p++],loop:+a[p++]};
  b.level=v>=10?+a[p++]:0;
  var count=+a[p++];if(count!==Math.floor(count)||count<2||count>64||p+count*2>a.length)return null;
  b.curve=a.slice(p,p+count*2);p+=count*2;b.acurve=flatCurve();
  if(modern){var ac=+a[p++];if(ac!==Math.floor(ac)||ac<2||ac>64||p+ac*2>a.length)return null;b.acurve=a.slice(p,p+ac*2);p+=ac*2;}
  s.bands.push(b);
 }return p===a.length?migrate(s,v):null;
}

// Old master amplitude becomes the same trim on each parallel output.
// Legacy zero amplitude also turns every channel OFF: never reveal a dry path.
function migrate(s,v){
 if(v<10){for(var i=0;i<4;i++){s.bands[i].level=clamp(ampdb(s.amp),-24,12);if(s.amp<=0)s.bands[i].enabled=0;}}
 s.amp=1;return sanitize(s);
}
migrate.local=1;

function writeEntry(n,s){send.apply(null,["bank","list",n].concat(encode(s)));}
function working(){
 if(!ready)return;var key=JSON.stringify(encode(state));
 if(key===lastWorking)return;writeEntry(0,state);lastWorking=key;
}
function badges(){
 setui("slot",state.slot);setui("selected",state.selected);setui("presetstatus",activePreset?"Loaded: "+activePreset:"Loaded: none");
 send("graph_gate","int",0);send("eqgraph","whichfilt",state.selected-1);send("eqgraph","selectfilt",state.selected-1);send("graph_gate","int",1);
 monitor();
}
function monitor(){
 var a=["response","frame",state.selected,SR,FMAX,Math.max(36,graphTop)];
 for(var i=0;i<4;i++)a=a.concat([state.bands[i].enabled,applied[i],graphHz[i],graphDb[i],graphQ[i],graphWet[i],graphLevel[i]]);
 send.apply(null,a);
}
function syncBand(i){
 var b=state.bands[i],keys=["level","enabled","type","freq","gain","q","depth","ampdepth","period","loop"];
 qlimits(i);
 for(var k=0;k<keys.length;k++)setui(keys[k]+i,b[keys[k]]);
 setui("bandstatus"+i,b.enabled?"ON":"OFF");
}
function sync(){setui("gainout",state.gainout);setui("gainout_slider",state.gainout);setui("fade",state.fade);setui("interp",state.interp);setui("normalize",state.normalize);for(var i=0;i<4;i++)syncBand(i);badges();}
function configureGraph(i){
 // Native coefficients describe every slot; the display applies mute and output-level weights.
 var b=state.bands[i],mode=MODES[applied[i]];
 send("graph_gate","int",0);
 if(graphMax!==FMAX){
  graphMax=FMAX;send("eqgraph","domain",FMIN,FMAX);
  for(var k=0;k<4;k++){
   send("eqgraph","setconstraints",k,FMIN,FMAX,dbamp(GAIN_MIN),dbamp(GAIN_MAX),QMIN,QMAX);
   send("freq"+k,"maximum",FMAX);send("livefreq"+k,"maximum",FMAX);
  }
 }
 if(graphModes[i]!==mode){graphModes[i]=mode;send("eqgraph","setoptions",i,mode,1,0,1);}
 graphRange();send("eqgraph","bang");send("eqgraph","whichfilt",state.selected-1);send("eqgraph","selectfilt",state.selected-1);
 send("graph_gate","int",1);
 monitor();
}
function graphRange(){
 var peak=0;for(var i=0;i<4;i++){
  var qv=graphQ[i],res=(applied[i]===1||applied[i]===4)&&qv>Math.SQRT1_2?ampdb(qv/Math.sqrt(1-1/(4*qv*qv))):(applied[i]===5?Math.max(0,ampdb(qv)):0);
  peak+=graphWet[i]*dbamp(Math.max(0,graphDb[i]+res)+graphLevel[i]);
 }
 var top=Math.max(36,Math.ceil((ampdb(peak)+6)/12)*12);
 if(top!==graphTop){graphTop=top;send("eqgraph","range",dbamp(-48),dbamp(top));}
}

function drawGraph(i,f,g,qv){
 if(!finite(f)||!finite(g))return;
 graphHz[i]=clamp(f,FMIN,FMAX);graphDb[i]=clamp(g,GAIN_MIN,GAIN_MAX);graphQ[i]=clamp(finite(qv)?qv:state.bands[i].q,QMIN,QMAX);
 send("graph_gate","int",0);graphRange();
 // params recomputes AND redraws. Its outputs are blocked before deferlow;
 // native graph coefficients feed only the read-only combined display, never audio.
 send("eqgraph","params",i,graphHz[i],dbamp(graphDb[i]),graphQ[i]);
 send("eqgraph","whichfilt",state.selected-1);send("eqgraph","selectfilt",state.selected-1);send("graph_gate","int",1);
 setui("livefreq"+i,Math.round(graphHz[i]*10)/10);setui("livegain"+i,Math.round(graphDb[i]*100)/100);setui("liveq"+i,Math.round(graphQ[i]*100)/100);
 monitor();
}
function idleGraph(i){if(!dspOn){var b=state.bands[i];graphWet[i]=b.enabled;graphLevel[i]=b.level;drawGraph(i,b.freq,b.gain,b.q);}}
function live(n,f,g,m,qv,am,wet,leveldb){var i=index(n);if(i<0||!ready||!dspOn)return;m=Number(m);if(finite(m))liveMotion[i]=clamp(m,-1,1);if(finite(Number(wet)))graphWet[i]=clamp(Number(wet),0,1);if(finite(Number(leveldb)))graphLevel[i]=clamp(Number(leveldb),-24,12);drawGraph(i,Number(f),Number(g),Number(qv));}

function drawCurve(i){var b=state.bands[i];writingCurve[i]=true;send("curve"+i,"clear");send("curve"+i,"domain",b.period);for(var j=0;j<b.curve.length;j+=2)send("curve"+i,"list",b.curve[j]*b.period,b.curve[j+1]);send("curve"+i,"fix",0,1);send("curve"+i,"fix",b.curve.length/2-1,1);writingCurve[i]=false;}
function configureType(i){
 applied[i]=state.bands[i].type;stage(i,"type",COMMANDS[applied[i]]);stage(i,"clear");configureGraph(i);
}
function changeType(i,initial){
 if(initial||!dspOn){warms[i].cancel();phase[i]=0;configureType(i);ramp(i,"wet",state.bands[i].enabled,state.fade);return;}
 if(phase[i]===1)return; // latest state.type will be used when fade reaches zero
 if(phase[i]===2){warms[i].cancel();configureType(i);warms[i].schedule(settleTime(i));return;}
 // All modes use the same parallel path and safe mute/reconfigure/fade sequence.
 if(applied[i]===state.bands[i].type){configureGraph(i);ramp(i,"wet",state.bands[i].enabled,state.fade);return;}
 phase[i]=1;ramp(i,"wet",0,state.fade);
}
function wetdone(n){var i=index(n);if(i<0||phase[i]!==1)return;phase[i]=2;if(safeTypePending[i]){stage(i,"wet",0);applySafeType(i);}else configureType(i);warms[i].schedule(settleTime(i));}
function warmdone(i){if(!ready||phase[i]!==2)return;phase[i]=0;finishCopyMotion(i);ramp(i,"wet",state.bands[i].enabled,state.fade);}
function finishCopyMotion(i){
 if(!copyPending[i])return;
 var play=copyRunPending[i];copyPending[i]=false;copyRunPending[i]=false;
 if(play)startMotion(i);
}
finishCopyMotion.local=1;
function applySafeType(i){
 // The audio gate is zero before any coefficient, gain or motion reset.
 var b=state.bands[i],keys=["freq","gain","q","depth","ampdepth","level"];
 safeTypePending[i]=false;
 for(var k=0;k<keys.length;k++)stage(i,keys[k],keys[k]==="freq"?Math.min(b.freq,FMAX):b[keys[k]]);
 stage(i,"motion",0);stage(i,"amotion",0);configureType(i);
}
applySafeType.local=1;
function uitype(v){
 if(!ready)return;
 var t=typeof v==="string"?TYPES.indexOf(v.toLowerCase()):Number(v);
 if(t!==Math.floor(t)||t<0||t>=TYPES.length)return;
 var i=idx(),b=state.bands[i];if(t===b.type)return;
 copyPending[i]=false;copyRunPending[i]=false;
 // Freeze the old sound while its gate falls: resetting a negative gain or
 // moving Q before silence could itself make the OLD mode unexpectedly loud.
 restarts[i].cancel();warms[i].cancel();running[i]=false;
 var keys=["freq","gain","q","depth","ampdepth","level","motion","amotion"];
 for(var k=0;k<keys.length;k++)stage(i,keys[k],"stop");
 b.type=t;b.gain=0;b.q=SAFE_TYPE_Q[t];b.depth=0;b.ampdepth=0;b.loop=0;
 b.level=Math.min(b.level,SAFE_TYPE_LEVEL);safeTypePending[i]=true;
 syncBand(i);
 if(dspOn){phase[i]=1;ramp(i,"wet",0,SAFE_TYPE_FADE);}
 else {phase[i]=0;stage(i,"wet",0);applySafeType(i);ramp(i,"wet",b.enabled,state.fade);idleGraph(i);}
 working();dirty();
 status("Filter "+(i+1)+": manual type reset / Gain 0 dB / Q "+Math.round(b.q*1000)/1000+" / motion off / output "+b.level+" dB. Frequency and curves retained.");
}
function clear(n){
 if(!ready)return;
 var i=arguments.length?index(n):idx();if(i<0)return;
 copyPending[i]=false;copyRunPending[i]=false;
 // Hold the OLD coefficients until the output gate has reached silence.
 restarts[i].cancel();warms[i].cancel();running[i]=false;
 var keys=["freq","gain","q","depth","ampdepth","level","motion","amotion"];
 for(var k=0;k<keys.length;k++)stage(i,keys[k],"stop");
 state.bands[i]=defaultBand(i);
 curveRequested[i]=false;ampRequested[i]=false;liveMotion[i]=0;
 safeTypePending[i]=true;syncBand(i);drawCurve(i);drawAmpCurve(i);
 if(dspOn){phase[i]=1;ramp(i,"wet",0,SAFE_TYPE_FADE);}
 else {phase[i]=0;stage(i,"wet",0);applySafeType(i);idleGraph(i);}
 working();dirty();
 status("Filter "+(i+1)+": cleared / OFF / Peak / 60 Hz / Q 0.5 / gain -36 dB / output -24 dB / flat curves / 100 ms. Stored presets retained.");
}
function copyband(source,destination){
 if(!ready)return;
 var from=index(source),to=index(destination);
 if(from<0||to<0){setui("copy_feedback","Use filter numbers 1-4");return;}
 if(from===to){setui("copy_feedback","Choose different filters");return;}
 // Snapshot the source now; the destination owns separate curve arrays.
 var snapshot=copy(state.bands[from]);
 var play=copyPending[from]?copyRunPending[from]:running[from];
 restarts[to].cancel();warms[to].cancel();running[to]=false;
 var keys=["freq","gain","q","depth","ampdepth","level","motion","amotion"];
 for(var k=0;k<keys.length;k++)stage(to,keys[k],"stop");
 state.bands[to]=snapshot;curveRequested[to]=false;ampRequested[to]=false;liveMotion[to]=0;
 copyPending[to]=true;copyRunPending[to]=!!play;safeTypePending[to]=true;
 syncBand(to);drawCurve(to);drawAmpCurve(to);
 // Apply exact copied settings under a closed gate; do not use uitype defaults.
 if(dspOn){phase[to]=1;ramp(to,"wet",0,SAFE_TYPE_FADE);}
 else {phase[to]=0;stage(to,"wet",0);applySafeType(to);finishCopyMotion(to);ramp(to,"wet",snapshot.enabled,state.fade);idleGraph(to);}
 working();dirty();
 setui("copy_feedback","Copied "+(from+1)+" to "+(to+1));
 status("Copied filter "+(from+1)+" to "+(to+1)+": all settings and both curves. Active motion restarts in the destination; source and stored presets are unchanged.");
}
function stopMotion(i){if(copyPending[i])copyRunPending[i]=false;restarts[i].cancel();running[i]=false;ramp(i,"motion",0,100);ramp(i,"amotion",0,100);}

function startMotion(i){if(copyPending[i]){copyRunPending[i]=true;return;}restarts[i].cancel();running[i]=true;cycleBegan[i]=now();stage(i,"motion","stop");stage(i,"amotion","stop");send("curve"+i,"bang");send("acurve"+i,"bang");}

function applyState(s,ms,initial){
 // A recall supersedes any in-flight manual reset without changing its data.
 safeTypePending=[false,false,false,false];
 copyPending=[false,false,false,false];copyRunPending=[false,false,false,false];
 for(var i=0;i<4;i++)stopMotion(i);state=sanitize(copy(s));sync();
 for(var j=0;j<4;j++){
  var b=state.bands[j];drawCurve(j);drawAmpCurve(j);ramp(j,"freq",Math.min(b.freq,FMAX),ms);ramp(j,"gain",b.gain,ms);ramp(j,"q",b.q,ms);ramp(j,"depth",b.depth,ms);ramp(j,"ampdepth",b.ampdepth,ms);ramp(j,"level",b.level,ms);
  changeType(j,initial);configureGraph(j);if(b.loop)startMotion(j);idleGraph(j);
 }send("gainout_ramp","list",state.gainout,GAINOUT_FADE);send("ceiling_ramp","list",state.normalize?dbamp(-6):dbamp(-1),duration(ms));if(!initial)working();
}
function loadbang(){bootTask.schedule(1);}
function boot(){bootTask.cancel();ready=false;copyPending=[false,false,false,false];copyRunPending=[false,false,false,false];graphModes=[-1,-1,-1,-1];graphMax=13000;graphTop=-1;for(var i=0;i<4;i++){stopMotion(i);warms[i].cancel();phase[i]=0;curveRequested[i]=false;ampRequested[i]=false;}scan();}
function scan(){scanning=true;scanKey=-1;scanState=null;presets={};send("bank","dump");}
function bankindex(n){scanKey=Number(n);}
function bankdata(){if(!scanning)return;var s=decode(arrayfromargs(arguments));if(!s)return;if(scanKey===0)scanState=s;else if(slotnumber(scanKey)>0)presets[scanKey]=s;}
function bankdone(){
 if(!scanning)return;scanning=false;ready=true;
 if(bankBackup&&!scanState&&!Object.keys(presets).length){var backup=bankBackup;bankBackup=null;presets=backup.presets;send("bank","clear");for(var k in presets)if(presets.hasOwnProperty(k))writeEntry(Number(k),presets[k]);lastWorking="";applyState(backup.state,100,false);status("Bank rejected; previous settings and presets retained.");return;}
 var initial=!bankBackup;bankBackup=null;
 // A cold open is always silent; saved working state is restored only by explicit bank import.
 activePreset=0;var start=initial?defaults():(scanState||defaults());
 lastWorking=JSON.stringify(encode(start));applyState(start,100,initial);
 status(initial?"Silent start / no preset loaded. Choose 1–10, or enable a filter and adjust its output fader.":"Bank imported. Presets 1–10 available; working settings restored.");
}
function bankloaded(){bankBackup={state:copy(state),presets:copy(presets)};for(var i=0;i<4;i++)stopMotion(i);scan();dirty();}
function sr(v){
 v=Number(v);if(!finite(v)||v<8000)return;SR=v;FMAX=Math.min(13000,.45*SR);
 // A device/sample-rate notification is runtime state, never a preset edit.
 // The final signal clip protects Nyquist without overwriting the saved center.
 for(var i=0;i<4;i++){stage(i,"maxfreq",FMAX);configureGraph(i);if(ready){ramp(i,"freq",Math.min(state.bands[i].freq,FMAX),100);idleGraph(i);}}
}
function dsp(v){
 dspOn=!!Number(v);
 for(var i=0;i<4;i++){
  if(!dspOn){
   if(safeTypePending[i]){warms[i].cancel();phase[i]=0;stage(i,"wet",0);applySafeType(i);finishCopyMotion(i);ramp(i,"wet",state.bands[i].enabled,state.fade);}
   idleGraph(i);
  }else if(ready&&state.bands[i].loop)startMotion(i);
 }
}
function update(key,v,ms){
 v=Number(v);if(!ready||!finite(v))return;var i=idx(),b=state.bands[i],bounds={level:[-24,12],freq:[FMIN,FMAX],gain:[GAIN_MIN,GAIN_MAX],q:qbounds(b.type),depth:[0,12940],ampdepth:[0,48]};if(!bounds[key])return;
 b[key]=clamp(v,bounds[key][0],bounds[key][1]);setui(key+i,b[key]);ramp(i,key,b[key],ms);idleGraph(i);working();dirty();
}
function freq(v,ms){update("freq",v,ms);}function line(v,ms){freq(v,ms);}function gain(v,ms){update("gain",v,ms);}function depth(v,ms){update("depth",v,ms);}function hz(v,ms){depth(v,ms);}
function level(v,ms){update("level",v,ms);}
function q(v,ms){update("q",v,ms);}
function ampdepth(v,ms){update("ampdepth",v,ms);}
function type(v){
 if(!ready)return;var t=typeof v==="string"?TYPES.indexOf(v.toLowerCase()):Number(v);if(t!==Math.floor(t)||t<0||t>6)return;
 var i=idx(),b=state.bands[i],previous=b.type,qr=qbounds(t);b.type=t;
 if(!copyPending[i])safeTypePending[i]=false;
 b.q=t===3&&previous!==3?100:clamp(b.q,qr[0],qr[1]);qlimits(i);setui("q"+i,b.q);ramp(i,"q",b.q,state.interp);
 setui("type"+i,t);changeType(i,false);idleGraph(i);working();dirty();
 if(t===4)status("Highpass: cutoff frequency; Q sets resonance; gain trims the passed band.");
 if(t===5)status("Resonant bandpass: frequency sets center; Q sets resonance; gain remains active.");
 if(t===6)status("Notch: frequency sets the rejection center; Q sets width; gain trims the passed spectrum.");
 if(t===3)status("Filter "+(i+1)+": Ultra-narrow Bandpass / Q "+b.q+" (20–200). Frequency and gain curves remain active.");
}
function enable(n,v){
 if(!ready)return;var i=arguments.length>1?index(n):idx(),val=Number(arguments.length>1?v:n);if(i<0||!finite(val))return;
 state.bands[i].enabled=val?1:0;syncBand(i);configureGraph(i);if(phase[i]===0)ramp(i,"wet",state.bands[i].enabled,state.fade);idleGraph(i);working();dirty();
}
function filters(n){n=Number(n);if(!ready||n!==Math.floor(n)||n<0||n>4)return;for(var i=0;i<4;i++)enable(i+1,i<n?1:0);}
function filter(n){n=index(n);if(!ready||n<0)return;state.selected=n+1;badges();working();dirty();status("Short messages now address filter "+(n+1)+". 'band N ...' always addresses N directly.");}
function selected(n){filter(n);}
function band(n,cmd){
 var i=index(n);if(i<0)return;var a=arrayfromargs(arguments);a.splice(0,2);
 var methods={clear:clear,level:level,freq:freq,line:line,gain:gain,q:q,ampdepth:ampdepth,depth:depth,hz:hz,period:period,type:type,uitype:uitype,enable:enable,loop:loop,once:once,stop:stop,sweep:sweep,resetcurve:resetcurve,triangle:triangle,resetamp:resetamp,amptriangle:amptriangle};
 if(!methods[cmd]){status("Unknown band message: "+cmd);return;}
 var old=context;context=i;methods[cmd].apply(this,a);context=old;
}
// Compatibility only. Positive amp trims every channel; amp 0 turns all OFF.
function amp(v,ms){v=Number(v);if(!ready||!finite(v))return;v=clamp(v,0,1);if(v===0){filters(0);return;}for(var i=1;i<=4;i++)band(i,"level",clamp(ampdb(v),-24,12),ms);}

function gainout(v){v=Number(v);if(!ready||!finite(v))return;state.gainout=clamp(v,-36,12);setui("gainout",state.gainout);setui("gainout_slider",state.gainout);send("gainout_ramp","list",state.gainout,GAINOUT_FADE);working();dirty();}
function interp(v){v=Number(v);if(!ready||!finite(v))return;state.interp=duration(v);setui("interp",state.interp);working();dirty();}
function normalize(v){v=Number(v);if(!ready||!finite(v))return;state.normalize=v?1:0;setui("normalize",state.normalize);send("ceiling_ramp","list",state.normalize?dbamp(-6):dbamp(-1),state.interp);working();dirty();}

function period(v){v=Number(v);if(!ready||!finite(v))return;var i=idx();state.bands[i].period=clamp(v,100,600000);setui("period"+i,state.bands[i].period);drawCurve(i);drawAmpCurve(i);if(running[i])startMotion(i);working();dirty();}

function motionNotice(i){var b=state.bands[i];status("Filter "+(i+1)+(b.enabled?"":" (OFF)")+": frequency ±"+b.depth+" Hz and gain ±"+b.ampdepth+" dB; both curves share "+b.period+" ms. Zero depth or a flat curve gives no motion.");}

function loop(v){v=Number(v);if(!ready||!finite(v))return;var i=idx();state.bands[i].loop=v?1:0;setui("loop"+i,state.bands[i].loop);if(v){startMotion(i);motionNotice(i);}else stopMotion(i);working();dirty();}
function once(n){if(!ready)return;var i=arguments.length?index(n):idx();if(i<0)return;state.bands[i].loop=0;setui("loop"+i,0);startMotion(i);motionNotice(i);working();dirty();}
function stop(n){if(!ready)return;var i=arguments.length?index(n):idx();if(i<0)return;state.bands[i].loop=0;setui("loop"+i,0);stopMotion(i);working();dirty();}
function stopall(){for(var i=1;i<=4;i++)stop(i);}
function sweep(v,ms){if(!ready||!finite(Number(v))||!finite(Number(ms)))return;depth(v);period(ms);loop(1);}
function finished(n){var i=index(n);if(i<0||!ready||!running[i]||now()-cycleBegan[i]<state.bands[i].period-10)return;if(state.bands[i].loop)restarts[i].schedule(0);else running[i]=false;}
function restart(i){if(ready&&running[i]&&state.bands[i].loop)startMotion(i);}
function curvechanged(n){var i=index(n);if(i<0||!ready||writingCurve[i])return;curveRequested[i]=true;send("curve"+i,"listdump");}
function curvepoints(n){
 var i=index(n);if(i<0||!ready||!curveRequested[i]||writingCurve[i])return;curveRequested[i]=false;var a=arrayfromargs(arguments);a.shift();
 for(var j=0;j<a.length;j+=2)a[j]=Number(a[j])/state.bands[i].period;state.bands[i].curve=cleanCurve(a);drawCurve(i);if(running[i])startMotion(i);working();dirty();
}
function resetcurve(){if(!ready)return;var i=idx();stop(i+1);state.bands[i].curve=flatCurve();drawCurve(i);working();dirty();status("Filter "+(i+1)+": motion function flattened to zero. Triangle restores a round trip.");}
function triangle(){if(!ready)return;var i=idx();state.bands[i].curve=triangleCurve();drawCurve(i);if(running[i])startMotion(i);working();dirty();}
function slot(n){n=slotnumber(n);if(!ready||n<0)return;state.slot=n;badges();working();}
function msg_int(n){recall(n);}
function recall(n){if(!ready)return;n=slotnumber(n);if(n<0||!presets[n]){status("Recall requires a stored slot 1–10.");return;}var ms=state.interp,s=copy(presets[n]);s.slot=n;activePreset=n;applyState(s,ms,false);dirty();status("Recalled "+n+": filters glide "+ms+" ms; Gain Out "+state.gainout+" dB / fixed 2000 ms fade.");}
function store(n){if(!ready)return;n=slotnumber(arguments.length?n:state.slot);if(n<0){status("Choose Store slot 1–10 before storing; 0 is not a preset.");return;}state.slot=n;activePreset=n;presets[n]=copy(state);writeEntry(n,state);working();badges();dirty();status("Stored all four filters in slot "+n+". Save the containing patch, or Write bank.");}
function writebank(){lastWorking="";working();var a=arrayfromargs(arguments);if(a.length)send("bank","write",a.join(" "));else send("bank","write");}
function readbank(){var a=arrayfromargs(arguments);if(a.length)send("bank","read",a.join(" "));else send("bank","read");}
function notifydeleted(){bootTask.cancel();for(var i=0;i<4;i++){restarts[i].cancel();warms[i].cancel();}}

function fade(v){v=Number(v);if(!ready||!finite(v))return;state.fade=clamp(v,20,10000);setui("fade",state.fade);working();dirty();}
function reduction(v){v=Number(v);if(!finite(v)||v<=0)return;setui("reduction",Math.round(Math.max(0,-ampdb(v))*100)/100);}
function drawAmpCurve(i){var b=state.bands[i];writingAmp[i]=true;send("acurve"+i,"clear");send("acurve"+i,"domain",b.period);for(var j=0;j<b.acurve.length;j+=2)send("acurve"+i,"list",b.acurve[j]*b.period,b.acurve[j+1]);send("acurve"+i,"fix",0,1);send("acurve"+i,"fix",b.acurve.length/2-1,1);writingAmp[i]=false;}
function ampcurvechanged(n){var i=index(n);if(i<0||!ready||writingAmp[i])return;ampRequested[i]=true;send("acurve"+i,"listdump");}
function ampcurvepoints(n){
 var i=index(n);if(i<0||!ready||!ampRequested[i]||writingAmp[i])return;ampRequested[i]=false;var a=arrayfromargs(arguments);a.shift();
 for(var j=0;j<a.length;j+=2)a[j]=Number(a[j])/state.bands[i].period;state.bands[i].acurve=cleanCurve(a);drawAmpCurve(i);if(running[i])startMotion(i);working();dirty();
}
function resetamp(){if(!ready)return;var i=idx();state.bands[i].acurve=flatCurve();drawAmpCurve(i);ramp(i,"amotion",0,100);working();dirty();status("Filter "+(i+1)+": gain curve flattened; gain returns to base in 100 ms. Frequency motion continues.");}
function amptriangle(){if(!ready)return;var i=idx();state.bands[i].acurve=triangleCurve();drawAmpCurve(i);if(running[i])startMotion(i);working();dirty();}

// Packet v1: version, loaded slot, four running flags, record count,
// then [slot, length, encoded preset] records. Record 0 is the working sound.
// All values are numeric: no external dictionary, file, or shared name.
function statepacket(){
 var a=[1,activePreset],keys=[0];
 for(var i=0;i<4;i++)a.push((running[i]||(copyPending[i]&&copyRunPending[i]))?1:0);
 for(var n=1;n<=10;n++)if(presets[n])keys.push(n);
 a.push(keys.length);
 for(var k=0;k<keys.length;k++){
  var key=keys[k],data=encode(key===0?state:presets[key]);
  a=a.concat([key,data.length],data);
 }
 return a;
}
statepacket.local=1;
function dumpstate(){
 if(!ready)return;
 capturedState=statepacket();
 outlet(1,["restorestate"].concat(capturedState));
 status("State captured: current sound + stored slots. Click the message to restore; save the main patch to keep it.");
}
function parsepacket(a){
 if(a.length<7||a.length>12000)return null;
 for(var z=0;z<a.length;z++)if(typeof a[z]!=="number"||!finite(a[z]))return null;
 if(a[0]!==1||a[1]!==Math.floor(a[1])||a[1]<0||a[1]>10)return null;
 for(var i=2;i<6;i++)if(a[i]!==0&&a[i]!==1)return null;
 var count=a[6],pos=7,seen={},bank={},current=null;
 if(count!==Math.floor(count)||count<1||count>11)return null;
 for(var r=0;r<count;r++){
  if(pos+2>a.length)return null;
  var key=a[pos++],len=a[pos++];
  if(key!==Math.floor(key)||key<0||key>10||seen[key]||len!==Math.floor(len)||len<85||len>1081||pos+len>a.length)return null;
  // Accept old captures (formats 8/9) and per-channel level captures (format 10).
  if(a[pos]!==MAGIC||(a[pos+1]!==8&&a[pos+1]!==9&&a[pos+1]!==VERSION))return null;
  var s=decode(a.slice(pos,pos+len));if(!s)return null;
  seen[key]=true;pos+=len;if(key===0)current=s;else bank[key]=s;
 }
 if(pos!==a.length||!current||(a[1]&&!bank[a[1]]))return null;
 return {state:current,presets:bank,active:a[1],running:a.slice(2,6)};
}
parsepacket.local=1;
function restorestate(){
 if(!ready)return;
 var a=arrayfromargs(arguments);
 if(!a.length){if(!capturedState){status("Capture state first, or send a complete restorestate message.");return;}a=capturedState.slice();}
 var packet=parsepacket(a);
 if(!packet){status("Invalid state message: no settings or presets changed.");return;}
 // Validate every record before touching any parameter or bank entry.
 var ms=state.interp;
 presets=packet.presets;activePreset=packet.active;
 send("bank","clear");
 for(var n=1;n<=10;n++)if(presets[n])writeEntry(n,presets[n]);
 lastWorking="";applyState(packet.state,ms,false);
 for(var i=0;i<4;i++){
  if(packet.running[i]&&!running[i])startMotion(i);
  else if(!packet.running[i]&&running[i])stopMotion(i);
 }
 capturedState=a.slice();dirty();
 status("State restored: current sound + stored slots. Active motion restarts at the curve beginning.");
}
