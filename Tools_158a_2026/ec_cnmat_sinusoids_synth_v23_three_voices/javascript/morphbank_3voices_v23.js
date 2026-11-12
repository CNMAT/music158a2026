/* MORPHBANK 3 VOICES: 24 immutable triples of full v23 sound snapshots.
   Public Maxobj.message + bounded Dict bridge; one eased clock for all voices.
   Letter banks are neither read nor overwritten by this coordinator. */
autowatch=1;inlets=1;outlets=2;
var slots=[],staging={},seconds=10,current=0,run=null,job=null,sequence=0;
var pollTask=new Task(poll,this),tickTask=new Task(tick,this),initTask=new Task(refresh,this);
var cue=null,cueTask=new Task(cueNext,this);
for(var init=0;init<24;init++)slots.push(null);
function args(a){return arrayfromargs(a);}
function now(){return new Date().getTime();}
function copy(x){return ec_dataCopy(x);}
function status(){outlet(0,args(arguments));}
function fail(e){status("error",String(e.message||e));}
function ui(id,a){var o=this.patcher.getnamed("G3_"+id);if(o&&o.valid)o.message.apply(o,a);}
function slotNumber(n){n=Number(n);if(!isFinite(n)||n!==Math.floor(n)||n<1||n>24)throw new Error("Three-voice slot must be 1..24");return n;}
function duration(n){n=n===undefined?seconds:Number(n);if(!isFinite(n)||n<0||n>3600)throw new Error("Duration must be 0..3600 seconds");return n;}
function controller(v){var o=this.patcher.getnamed("V"+v+"_ec_controller_v23");if(!o||!o.valid)throw new Error("Missing voice "+v+" controller");return o;}
function callVoice(v,selector,a){var o=controller.call(this,v);o.message.apply(o,[selector].concat(a));}
function makeTransfer(v,request){
 var name="V"+v+"_ec-cnmat-sinusoids-v23_threevoices-"+now()+"-"+(++sequence),d=new Dict(name);
 try{ec_wireWrite(d,"request",request);d.set("phase","waiting");return {voice:v,name:name,dict:d};}
 catch(e){d.clear();d.freepeer();throw e;}
}
function phase(t){return ec_wireAtom(t.dict,"phase");}
function transferError(t){return phase(t)==="error"&&Number(ec_wireAtom(t.dict,"error_ready"))===1?ec_wireRead(t.dict,"error").message:"Voice "+t.voice+" transition was interrupted";}
function dispose(ts,cancel){
 for(var i=0;i<ts.length;i++){
  try{if(cancel)callVoice.call(this,ts[i].voice,"_threevoicecancel",[ts[i].name]);}
  catch(e){status("error","cleanup",String(e.message||e));}
  finally{ts[i].dict.clear();ts[i].dict.freepeer();}
 }
}
function validatePreset(v,preset){
 var t=makeTransfer(v,{action:"validate",preset:preset});
 try{callVoice.call(this,v,"_threevoice",[t.name]);if(phase(t)!=="validated")throw new Error(transferError(t));}
 finally{dispose.call(this,[t],false);}
}
function dumpObject(n,v){
 var bank=this.patcher.getnamed("G3_bank"),slot=bank.subpatcher().getnamed("G3_slot_"+n);
 return slot.subpatcher().getnamed(v?"G3_dump_V"+v:"G3_time");
}
function publish(n){
 var s=slots[n-1];
 for(var v=1;v<=3;v++){var o=dumpObject.call(this,n,v);o.message.apply(o,s?["set"].concat(s.voices[v-1]):["set"]);}
 dumpObject.call(this,n,0).message("set",s?s.seconds:seconds);
}
function refresh(){
 var filled=[];
 for(var n=1;n<=24;n++){
  if(slots[n-1])filled.push(n);
  var target=job&&job.kind==="prepare"?job.slot:(run?run.slot:0);
  var color=target===n?[.45,.70,.82,1]:slots[n-1]?[.79,.89,.93,1]:[.84,.84,.85,1];
  ui.call(this,"to_"+n,["bgfillcolor_color"].concat(color));ui.call(this,"to_"+n,["bgcolor"].concat(color));
 }
 ui.call(this,"occupancy",["set",filled.length,"of",24,"slots:"].concat(filled.length?filled:["empty"]));
 ui.call(this,"current",current?["set","current","3voices","=",current]:["set","current","3voices","="]);
 var target=job&&job.kind==="prepare"?job.slot:(run?run.slot:(cue?cue.slots[cue.index]:0));
 ui.call(this,"target",target?["set","target","=",target]:["set"]);
 ui.call(this,"seconds",["set",seconds]);
}
function loadbang(){initTask.schedule(0);}
function allvoicesoff(){messnamed("V1_Audio_On_v23",0);status("allvoicesoff","DSP",0);}
function morphseconds3voices(s){try{seconds=duration(s);refresh.call(this);}catch(e){fail(e);}}
function resumeAfterCapture(j){
 if(run&&j.freeze!==null){run.start+=now()-j.freeze;if(!run.paused)tickTask.schedule(20);}
 else if(cue&&!cue.paused&&!job)cueTask.schedule(0);
}
function cancelJob(){
 if(!job)return;var j=job;job=null;pollTask.cancel();dispose.call(this,j.transfers,true);
 if(j.kind==="capture")resumeAfterCapture(j);
}
function cancelCue(){cue=null;cueTask.cancel();}
function stopRun(){tickTask.cancel();if(run){var r=run;run=null;dispose.call(this,r.transfers,true);}}
function morphstop3voices(){cancelCue();cancelJob.call(this);stopRun.call(this);refresh.call(this);status("threevoices-held");}
function morphcapture3voices(n,s){
 if(job){fail("Finish the current three-voice operation first");return;}
 try{
  n=slotNumber(n);s=duration(s);if(job)throw new Error("Finish the current three-voice operation first");
  if(run&&!run.paused)tick.call(this);
  tickTask.cancel();
  job={kind:"capture",slot:n,seconds:s,transfers:[],deadline:now()+5000,freeze:run?now():null};
  for(var v=1;v<=3;v++)job.transfers.push(makeTransfer(v,{action:"capture"}));
  for(var i=0;i<3;i++)callVoice.call(this,i+1,"_threevoice",[job.transfers[i].name]);
  poll.call(this);
 }catch(e){cancelJob.call(this);fail(e);}
}
function start(n,s,keepCue){
 n=slotNumber(n);var bank=slots[n-1];if(!bank)throw new Error("Capture or load three-voice slot "+n+" first");
 s=duration(s===undefined?bank.seconds:s);if(job)throw new Error("Finish the current three-voice operation first");
 for(var v=1;v<=3;v++)validatePreset.call(this,v,bank.voices[v-1]);
 if(!keepCue)cancelCue();stopRun.call(this);
 job={kind:"prepare",slot:n,seconds:s,transfers:[],deadline:now()+10000};
 for(v=1;v<=3;v++)job.transfers.push(makeTransfer(v,{action:"prepare",preset:bank.voices[v-1],slot:n,seconds:s}));
 for(v=1;v<=3;v++)callVoice.call(this,v,"_threevoice",[job.transfers[v-1].name]);
 seconds=s;refresh.call(this);poll.call(this);
}
function morphto3voices(n,s){
 if(job){fail("Finish the current three-voice operation first");return;}
 try{start.call(this,n,s,false);}catch(e){if(job&&job.kind==="prepare")cancelJob.call(this);fail(e);}
}
function morphjump3voices(n){morphto3voices.call(this,n,0);}
function poll(){
 if(!job)return;
 try{
  var j=job,expected=j.kind==="capture"?"captured":"ready",ready=0;
  for(var i=0;i<j.transfers.length;i++){
   var p=phase(j.transfers[i]);if(p==="error"||p==="interrupted")throw new Error(transferError(j.transfers[i]));
   if(p===expected)ready++;
  }
  if(ready!==3){if(now()>j.deadline)throw new Error("Three-voice operation timed out; no incomplete slot stored");pollTask.schedule(20);return;}
  pollTask.cancel();
  if(j.kind==="capture"){
   var voices=[];for(i=0;i<3;i++)voices.push(ec_wireRead(j.transfers[i].dict,"response"));
   // Commit only after all three complete. No reference to any letter bank.
   slots[j.slot-1]={voices:copy(voices),seconds:j.seconds};job=null;
   dispose.call(this,j.transfers,false);publish.call(this,j.slot);resumeAfterCapture(j);
   status("threevoices-captured",j.slot);
  }else{
   job=null;run={slot:j.slot,seconds:j.seconds,ms:j.seconds*1000,start:now(),elapsed:0,paused:false,transfers:j.transfers};
   status("threevoices-running",j.slot,j.seconds,"seconds");tick.call(this);
  }
  refresh.call(this);
 }catch(e){cancelJob.call(this);cancelCue();fail(e);refresh.call(this);}
}
function ease(t){
 t=Math.max(0,Math.min(1,t));if(t===0||t===1)return t;
 var k=3,den=Math.exp(k)-1,area=(den-k)/(k*den),speed=1/(.5+.5*area);
 if(t>.75)return 1-ease(1-t);if(t>=.25)return speed*(.25*area+t-.25);
 var u=4*t;return speed*.25*(Math.exp(k*u)-1-k*u)/(k*den);
}
function frame(t){
 var r=run;if(!r)return;
 // Check every participant before advancing any voice.
 for(var i=0;i<3;i++){var p=phase(r.transfers[i]);if(p!=="ready"&&p!=="running")throw new Error(transferError(r.transfers[i]));}
 for(i=0;i<3;i++){
  callVoice.call(this,i+1,"_threevoiceframe",[r.transfers[i].name,t]);
  p=phase(r.transfers[i]);if(p!==(t===1?"done":"running"))throw new Error(transferError(r.transfers[i]));
 }
 if(t===1){
  current=r.slot;run=null;tickTask.cancel();dispose.call(this,r.transfers,false);status("threevoices-arrived",current);
  if(cue){cue.index=(cue.index+1)%cue.slots.length;cueTask.schedule(r.ms===0?20:0);}refresh.call(this);
 }
}
function tick(){
 if(!run||run.paused)return;
 try{var u=run.ms===0?1:Math.max(0,Math.min(1,(now()-run.start)/run.ms));run.elapsed=u;frame.call(this,ease(u));if(run)tickTask.schedule(20);}
 catch(e){stopRun.call(this);cancelCue();fail(e);refresh.call(this);}
}
function morphpause3voices(){
 if(job){fail("Wait for capture/prepare to finish before pausing");return;}
 if(run&&!run.paused){tick.call(this);if(run){run.paused=true;tickTask.cancel();}}
 if(cue){cue.paused=true;cueTask.cancel();}status("threevoices-paused");
}
function morphresume3voices(){
 if(run&&run.paused){run.start=now()-run.elapsed*run.ms;run.paused=false;tickTask.schedule(0);}
 if(cue){cue.paused=false;if(!run&&!job)cueTask.schedule(0);}status("threevoices-resumed");
}
function morphfinish3voices(){
 if(job){fail("Wait for capture/prepare to finish");return;}
 try{if(run)frame.call(this,1);}
 catch(e){stopRun.call(this);cancelCue();fail(e);refresh.call(this);}
}
function morphcue3voices(){
 var a=args(arguments);if(a.length===1&&a[0]==="stop"){morphstop3voices.call(this);return;}
 try{
  if(!a.length||a.length>256)throw new Error("morphcue3voices needs 1..256 slot numbers");
  for(var i=0;i<a.length;i++){a[i]=slotNumber(a[i]);if(!slots[a[i]-1])throw new Error("Empty three-voice slot "+a[i]);}
  if(job)throw new Error("Finish the current capture/prepare first");
  morphstop3voices.call(this);cue={slots:a,index:0,paused:false};cueNext.call(this);
 }catch(e){fail(e);}
}
function cueNext(){if(!cue||cue.paused||run||job)return;try{start.call(this,cue.slots[cue.index],undefined,true);}catch(e){cancelJob.call(this);cancelCue();fail(e);}}
function morphslottime3voices(n,s){try{n=slotNumber(n);s=duration(s);if(!slots[n-1])throw new Error("Capture slot first");slots[n-1].seconds=s;publish.call(this,n);}catch(e){fail(e);}}
function morphclear3voices(n){
 try{
  if(job)throw new Error("Finish the current three-voice operation first");
  var first=String(n)==="all"?1:slotNumber(n),last=String(n)==="all"?24:first;
  for(var i=first;i<=last;i++){slots[i-1]=null;delete staging[i];publish.call(this,i);if(current===i)current=0;}
  refresh.call(this);status("threevoices-cleared",n);
 }catch(e){fail(e);}
}
// Embedded storage: one literal full-preset message per voice in each slot.
// Empty messages are filtered by 'route preset' in the storage subpatchers.
function stagetime3voices(n,s){try{n=slotNumber(n);var x=staging[n]||(staging[n]={voices:[null,null,null],seconds:seconds});x.seconds=duration(s);}catch(e){fail(e);}}
function stageslot3voices(n,v){
 try{
  n=slotNumber(n);v=Number(v);if(v<1||v>3||v!==Math.floor(v))throw new Error("Voice must be 1..3");
  var a=args(arguments).slice(2);if(a[0]!=="preset")a.unshift("preset");validatePreset.call(this,v,a);
  var x=staging[n]||(staging[n]={voices:[null,null,null],seconds:seconds});x.voices[v-1]=a;
  if(x.voices[0]&&x.voices[1]&&x.voices[2]){slots[n-1]=copy(x);delete staging[n];initTask.schedule(0);}
 }catch(e){delete staging[n];fail(e);}
}
function bankDocument(){
 var payload={seconds:seconds,slots:copy(slots)};
 return {format:"ec_cnmat_sinusoids_morphbank_3voices_v23",version:1,checksum:ec_wireChecksum(morphAscii(JSON.stringify(payload))),payload:payload};
}
function decodeBank(doc){
 if(!doc||doc.format!=="ec_cnmat_sinusoids_morphbank_3voices_v23"||doc.version!==1||!doc.payload||!Array.isArray(doc.payload.slots)||doc.payload.slots.length!==24)throw new Error("Not a 24-slot three-voice MorphBank file");
 if(doc.checksum!==ec_wireChecksum(morphAscii(JSON.stringify(doc.payload))))throw new Error("Three-voice bank checksum mismatch");
 var s=duration(doc.payload.seconds),staged=copy(doc.payload.slots);
 for(var i=0;i<24;i++)if(staged[i]!==null){
  var x=staged[i];if(!x||!Array.isArray(x.voices)||x.voices.length!==3)throw new Error("Slot "+(i+1)+" must contain three presets");
  x.seconds=duration(x.seconds);for(var v=1;v<=3;v++)validatePreset.call(this,v,x.voices[v-1]);
 }
 return {seconds:s,slots:staged};
}
function morphbank3voices(action){
 var a=args(arguments);action=String(a.shift()||"status").toLowerCase();
 try{
  if(action==="status"){refresh.call(this);return;}
  if(action==="clear"){morphclear3voices.call(this,a.length?a[0]:"all");return;}
  if(action==="save")action="write";if(action==="load")action="read";
  if(action!=="read"&&action!=="write")throw new Error("morphbank3voices write/read/clear/status");
  if(job)throw new Error("Finish the current three-voice operation first");
  if(!a.length){outlet(1,action);return;}
  var path=morphBankPath(a);
  if(action==="write"){morphWriteText(path,morphAscii(JSON.stringify(bankDocument(),null,2))+"\n");status("threevoices-bank-saved",path);}
  else{
   var decoded=decodeBank.call(this,JSON.parse(morphReadText(path)));
   slots=decoded.slots;seconds=decoded.seconds;staging={};current=0;
   for(var n=1;n<=24;n++)publish.call(this,n);
   refresh.call(this);status("threevoices-bank-loaded",path);
  }
 }catch(e){fail(e);}
}
function command(name){
 var a=args(arguments);name=String(a.shift());
 try{
  var match=/^(morphto|morphcapture)V([123])$/.exec(name);
  if(match){callVoice.call(this,Number(match[2]),"command",[name].concat(a));return;}
  switch(name){
   case "allvoicesoff":allvoicesoff.call(this);break;
   case "morphcapture3voices":morphcapture3voices.apply(this,a);break;
   case "morphto3voices":morphto3voices.apply(this,a);break;
   case "morphjump3voices":morphjump3voices.apply(this,a);break;
   case "morphseconds3voices":morphseconds3voices.apply(this,a);break;
   case "morphslottime3voices":morphslottime3voices.apply(this,a);break;
   case "morphpause3voices":morphpause3voices.call(this);break;
   case "morphresume3voices":morphresume3voices.call(this);break;
   case "morphstop3voices":morphstop3voices.call(this);break;
   case "morphfinish3voices":morphfinish3voices.call(this);break;
   case "morphcue3voices":morphcue3voices.apply(this,a);break;
   case "morphclear3voices":morphclear3voices.apply(this,a);break;
   case "morphbank3voices":morphbank3voices.apply(this,a);break;
   case "stageslot3voices":stageslot3voices.apply(this,a);break;
   case "stagetime3voices":stagetime3voices.apply(this,a);break;
   default:throw new Error("Unknown three-voice command "+name);
  }
 }catch(e){fail(e);}
}
function anything(){command.apply(this,[messagename].concat(args(arguments)));}
function notifydeleted(){cancelCue();cancelJob.call(this);stopRun.call(this);initTask.cancel();}
[args,now,copy,status,fail,ui,slotNumber,duration,controller,callVoice,makeTransfer,phase,transferError,dispose,validatePreset,dumpObject,publish,refresh,resumeAfterCapture,cancelJob,cancelCue,stopRun,start,poll,ease,frame,tick,cueNext,bankDocument,decodeBank].forEach(function(f){f.local=1;});

function ec_dataCopy(x,depth){
 depth=depth||0;if(depth>32)throw new Error("Preset copy nesting limit");
 if(x===null)return null;
 var t=typeof x,i,k,r;
 if(t==="string"||t==="boolean")return x;
 if(t==="number"){if(!isFinite(x))throw new Error("Non-finite preset value");return x;}
 if(Object.prototype.toString.call(x)==="[object Array]"){
  r=[];for(i=0;i<x.length;i++)r[i]=x[i]===undefined?null:ec_dataCopy(x[i],depth+1);return r;
 }
 if(t==="object"){
  r={};for(k in x)if(Object.prototype.hasOwnProperty.call(x,k)&&x[k]!==undefined){
   if(k==="__proto__"||k==="constructor"||k==="prototype")throw new Error("Unsafe preset key");
   r[k]=ec_dataCopy(x[k],depth+1);
  }return r;
 }
 throw new Error("Unsupported preset value type "+t);
}
function ec_wireEncode(s){
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c;
 for(i=0;i<s.length;i+=3){a=s.charCodeAt(i);b=s.charCodeAt(i+1);c=s.charCodeAt(i+2);r+=alphabet.charAt(a>>2)+alphabet.charAt(((a&3)<<4)|(isNaN(b)?0:b>>4))+(isNaN(b)?"=":alphabet.charAt(((b&15)<<2)|(isNaN(c)?0:c>>6)))+(isNaN(c)?"=":alphabet.charAt(c&63));}return r;
}
function ec_wireDecode(s){
 if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(s))throw new Error("Invalid Base64 chunk");
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c,d;
 for(i=0;i<s.length;i+=4){a=alphabet.indexOf(s.charAt(i));b=alphabet.indexOf(s.charAt(i+1));c=alphabet.indexOf(s.charAt(i+2));d=alphabet.indexOf(s.charAt(i+3));r+=String.fromCharCode((a<<2)|(b>>4));if(c>=0)r+=String.fromCharCode(((b&15)<<4)|(c>>2));if(d>=0)r+=String.fromCharCode(((c&3)<<6)|d);}return r;
}
function ec_wireChecksum(s){var a=1,b=0;for(var i=0;i<s.length;i++){a=(a+s.charCodeAt(i))%65521;b=(b+a)%65521;}return "h"+(((b<<16)|a)>>>0).toString(16);}
function ec_wireAtom(dict,key){
 var x=dict.get(key);
 if(Object.prototype.toString.call(x)==="[object Array]"&&x.length===1)x=x[0];
 return x;
}
function ec_wireWrite(dict,key,value){
 dict.set(key+"_ready",0);
 var raw=JSON.stringify(value);
 if(typeof raw!=="string")throw new Error(key+": JSON serialization returned no string");
 raw=raw.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});
 var coded=ec_wireEncode(raw),count=Math.ceil(coded.length/480);
 if(count<1||count>8192)throw new Error(key+": preset transfer too large");
 dict.set(key+"_format","ecb64v1");dict.set(key+"_chars",raw.length);
 dict.set(key+"_encoded",coded.length);dict.set(key+"_sum",ec_wireChecksum(raw));
 dict.set(key+"_count",count);
 for(var i=0;i<count;i++)dict.set(key+"_"+i,"p"+coded.substr(i*480,480));
 dict.set(key+"_ready",1);
}
function ec_wireRead(dict,key){
 if(Number(ec_wireAtom(dict,key+"_ready"))!==1)throw new Error(key+": transfer not complete");
 if(ec_wireAtom(dict,key+"_format")!=="ecb64v1")throw new Error(key+": unsupported transfer format");
 var count=Number(ec_wireAtom(dict,key+"_count")),length=Number(ec_wireAtom(dict,key+"_encoded"));
 var chars=Number(ec_wireAtom(dict,key+"_chars")),sum=ec_wireAtom(dict,key+"_sum");
 if(!isFinite(count)||count!==Math.floor(count)||count<1||count>8192||
    !isFinite(length)||length!==Math.floor(length)||length<4||length%4||Math.ceil(length/480)!==count||
    !isFinite(chars)||chars!==Math.floor(chars)||chars<1||chars>count*360)throw new Error(key+": invalid transfer dimensions");
 var raw="",part,i;
 for(i=0;i<count;i++){
  part=ec_wireAtom(dict,key+"_"+i);
  if(typeof part!=="string"||part.charAt(0)!=="p"||part.length!==1+Math.min(480,length-i*480))throw new Error(key+": missing or truncated chunk "+i);
  try{raw+=ec_wireDecode(part.substr(1));}catch(e){throw new Error(key+": corrupt chunk "+i+": "+String(e.message||e));}
 }
 if(raw.length!==chars||ec_wireChecksum(raw)!==sum)throw new Error(key+": transfer checksum mismatch");
 try{return JSON.parse(raw);}catch(e){throw new Error(key+": JSON decode failed after verified transfer ("+raw.length+" chars): "+String(e.message||e));}
}
ec_dataCopy.local=1;ec_wireEncode.local=1;ec_wireDecode.local=1;ec_wireChecksum.local=1;
ec_wireAtom.local=1;ec_wireWrite.local=1;ec_wireRead.local=1;


function morphBankPath(args){
 if(args.length!==1||typeof args[0]!=="string"||!args[0].length||/[\x00\r\n]/.test(args[0]))throw new Error('Provide one file path symbol; quote paths containing spaces');
 return args[0];
}
function morphAscii(s){return s.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});}
var MORPH_BANK_MAX_BYTES=268435456; // 256 MiB guard; ordinary full banks are much smaller.
function morphReadText(path){
 var f=null,parts=[],n,chunk,before;
 try{
  f=new File(path,"read");if(!f.isopen)throw new Error("Cannot open MorphBank: "+path);
  n=Number(f.eof);if(!isFinite(n)||n<1||n>MORPH_BANK_MAX_BYTES)throw new Error("Empty or oversized MorphBank file (limit 256 MiB)");
  f.position=0;
  while(f.position<n){
   before=f.position;chunk=f.readstring(Math.min(16384,n-before));
   if(typeof chunk!=="string"||!chunk.length||f.position<=before)throw new Error("Incomplete MorphBank file read");
   parts.push(chunk);
  }
  return parts.join("");
 }finally{if(f&&f.isopen)f.close();}
}
function morphWriteText(path,text){
 var f=null;
 if(!text.length||text.length>MORPH_BANK_MAX_BYTES)throw new Error("MorphBank exceeds 256 MiB file limit");
 try{
  f=new File(path,"write");if(!f.isopen)throw new Error("Cannot write MorphBank: "+path);
  f.position=0;f.eof=0;
  for(var i=0;i<text.length;i+=16384){
   var end=Math.min(text.length,i+16384);f.writestring(text.substring(i,end));
   if(Number(f.position)!==end)throw new Error("Incomplete MorphBank write; choose another path and save again");
  }
  f.eof=f.position;
 }finally{if(f&&f.isopen)f.close();}
 // Read back exact ASCII contents before reporting success. File overwrite is
 // not OS-atomic; keep a separate bank backup for important performance data.
 if(morphReadText(path)!==text)throw new Error("MorphBank file verification failed");
}

[morphBankPath,morphAscii,morphReadText,morphWriteText].forEach(function(f){f.local=1;});
