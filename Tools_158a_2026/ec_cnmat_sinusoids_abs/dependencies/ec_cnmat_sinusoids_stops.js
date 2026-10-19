var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/* Organ-inspired additive ranks; original spectral recipes, not measured pipe models.
 * Inlet 0: stop INDEX 0|1, registration NAME, apply, clear, beathz Hz, tail N.
 * Inlet 1: generator base Hz; inlet 2: Max Drift ERB.
 * Outlet 0: stoplayers + 3 x 256 values to shared memory-engine inlet 10.
 * Outlet 1: index/state display feedback; outlet 2: readable registration status.
 */
autowatch=1;inlets=3;outlets=3;
var sourceHz=110, maxERB=.5, beatHz=.2, harmonicTail=24;
var selected=[], names=['Principal 8\u2032','Octava 4\u2032','Doublette 2\u2032','Open Flute 8\u2032','Bourdon 8\u2032','Gamba 8\u2032','Trumpet 8\u2032','Nazard 2 2/3\u2032','Tierce 1 3/5\u2032','Larigot 1 1/3\u2032','Quint Mixture III','Celeste-inspired II','Flute 4\u2032','Flute 2\u2032'];
var ranks=[[[1,'principal',1]],[[2,'principal',.8]],[[4,'principal',.65]],[[1,'flute',1]],[[1,'stopped',1]],[[1,'string',1]],[[1,'reed',1]],[[3,'flute',.75]],[[5,'flute',.6]],[[6,'flute',.5]],[[4,'principal',.55],[6,'principal',.4],[8,'principal',.35]],[[1,'string',1]],[[2,'flute',.8]],[[4,'flute',.65]]];
var registrations={PrincipalChorus:[0,1,2,10],CornetV:[3,12,13,7,8],SesquialteraII:[7,8],FluteQuint:[4,7],CelesteII:[11],ReedChorus:[6,0,1,2],OpenFlute:[3],StoppedFlute:[4],String8:[5],SharpMixture:[10]};
for(var i=0;i<names.length;i++)selected[i]=false;
function erb(f){return 24.7*(1+.00437*f);}
function spectrum(type,h){
    if(type==='principal')return Math.pow(h,-1.35)*Math.exp(-(h-1)/18);
    if(type==='flute')return Math.pow(h,-2.6)*Math.exp(-(h-1)/9);
    if(type==='stopped')return h%2?Math.pow(h,-2.0)*Math.exp(-(h-1)/12):0;
    if(type==='string')return (h===1?.45:1)*Math.pow(h,-.9)*Math.exp(-(h-1)/22);
    if(type==='reed')return Math.pow(h,-.8)*Math.exp(-(h-1)/20)*(1+.65*Math.exp(-Math.pow((h-4)/2.0,2)));
    return 0;
}
function status(text){outlet(2,'set',text);}
function stop(index,value){index=Number(index);if(index!==Math.floor(index)||index<0||index>=names.length)return;selected[index]=Number(value)!==0;}
function registration(name){
    name=String(name);if(!registrations.hasOwnProperty(name)){status('Unknown registration: '+name);return;}
    for(var i=0;i<names.length;i++){selected[i]=registrations[name].indexOf(i)>=0;outlet(1,i,selected[i]?1:0);}
    apply();
}
function clear(){for(var i=0;i<names.length;i++){selected[i]=false;outlet(1,i,0);}apply();}
function beathz(x){x=Number(x);if(isFinite(x))beatHz=Math.max(0,Math.min(5,x));}
function tail(x){x=Number(x);if(isFinite(x))harmonicTail=Math.round(Math.max(1,Math.min(256,x)));}
function scalar(x){x=Number(x);if(!isFinite(x))return;if(inlet===1)sourceHz=Math.max(1,Math.min(23000,x));if(inlet===2)maxERB=Math.max(0,Math.min(1,x));}
function msg_float(x){scalar(x);}function msg_int(x){scalar(x);}
function apply(){
    var amplitude=[],anchor=[],drift=[],wantBeat=[],i,j,h,n,p,r,clamped=0,hiddenMax=0,active=[];
    for(i=0;i<256;i++){amplitude[i]=0;anchor[i]=0;drift[i]=0;wantBeat[i]=false;}
    for(i=0;i<names.length;i++)if(selected[i]){
        active.push(names[i]);
        for(j=0;j<ranks[i].length;j++){
            r=ranks[i][j];
            for(h=1;h<=harmonicTail;h++){
                n=r[0]*h;if(n>256)break;p=r[2]*spectrum(r[1],h);if(p<=0)continue;
                amplitude[n-1]+=p;hiddenMax=Math.max(hiddenMax,n);
                if(i===11){anchor[n-1]+=p;wantBeat[n-1]=true;}
            }
        }
    }
    // Fixed linear-amplitude sum across both banks supports predictable recipe comparisons.
    var sum=0;for(i=0;i<256;i++)sum+=amplitude[i]+anchor[i];
    var scale=sum>0?.8/sum:0;
    for(i=0;i<256;i++){
        amplitude[i]*=scale;anchor[i]*=scale;
        if(wantBeat[i]&&i>0&&beatHz>0){
            var range=sourceHz*(i+1)*(Math.pow(2,1/12)-1);
            if(range>0){drift[i]=Math.min(1,12*Math.log(1+beatHz/(sourceHz*(i+1)))/Math.LN2);if(beatHz>range)clamped++;}
            else clamped++;
        }
    }
    outlet(0,['stoplayers'].concat(drift,amplitude,anchor));
    status((active.length?active.join(' + '):'No stops: flat zero')+' | highest populated index '+hiddenMax+' | total amplitude sum 0.8 when nonempty | beat-limited slots '+clamped);
}
function loadbang(){status('Select stops then APPLY, or click a named registration. No sound is changed on opening.');}

// Private preset state helpers. Called locally by the public ecpreset message.
function ec_array(x){return Object.prototype.toString.call(x)==="[object Array]";}
function ec_copy(x){return ec_dataCopy(x);}
function ec_shift(x,n){if(ec_array(x)){for(var i=0;i<x.length;i++)x[i]=ec_shift(x[i],n);return x;}return typeof x==="number"?x+n:x;}
function ec_validTree(x,depth){
 if(depth>12)return false;
 if(x===null||typeof x==="boolean"||typeof x==="string")return true;
 if(typeof x==="number")return isFinite(x)&&Math.abs(x)<=1e16;
 if(ec_array(x)){if(x.length>4096)return false;for(var i=0;i<x.length;i++)if(!ec_validTree(x[i],depth+1))return false;return true;}
 return false;
}
var ec_fields = ["sourceHz", "maxERB", "beatHz", "harmonicTail", "selected"];
var ec_clocks = [];
function ec_export(){var d=ec_copy({"sourceHz":sourceHz,"maxERB":maxERB,"beatHz":beatHz,"harmonicTail":harmonicTail,"selected":selected});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"sourceHz":sourceHz,"maxERB":maxERB,"beatHz":beatHz,"harmonicTail":harmonicTail,"selected":selected};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid stops preset state");d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);sourceHz=d.sourceHz;maxERB=d.maxERB;beatHz=d.beatHz;harmonicTail=d.harmonicTail;selected=d.selected;}
function ec_emit(){for(var i=0;i<selected.length;i++)outlet(1,i,selected[i]?1:0);}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "stops";

// Public Max message endpoint for this engine's private preset helpers.
function ecpreset(dictionaryName){
 var name=String(dictionaryName),prefix=EC_NS+"preset-transfer-";
 // A foreign instance receives a negative acknowledgement, never preset data.
 if(!/^.+-ec-cnmat-sinusoids_preset-transfer-[0-9]+$/.test(name))return;
 var transfer=new Dict(name),request=null;
 try{
  request=ec_wireRead(transfer,"request");
  if(request.protocol!==1||request.kind!==EC_PRESET_KIND||typeof request.sequence!=="number")throw new Error("Invalid preset request");
  if(name.indexOf(prefix)!==0)throw new Error("Preset namespace mismatch: engine="+EC_NS+" request="+name);
  var result;
  if(request.action==="ping")result=true;
  else if(request.action==="export")result=ec_export();
  else if(request.action==="validate")result=ec_validate(request.data);
  else if(request.action==="import"){ec_import(request.data);result=true;}
  else if(request.action==="emit"){ec_emit();result=true;}
  else throw new Error("Unknown preset action");
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request.sequence,kind:EC_PRESET_KIND,ok:true,data:result});
 }catch(e){
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request?request.sequence:0,kind:EC_PRESET_KIND,ok:false,error:(request?request.action:"request")+" "+EC_PRESET_KIND+": "+String(e.message||e)});
 }finally{transfer.freepeer();}
}

// Private preset transport. Short ASCII-only atoms avoid quote/token conversion
// and unbounded strings at the Max Dict boundary. No runtime include is needed.
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
