var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/* v20: weighted removal and restoration over visible components.
 * Inlets: 0 remove/add commands; 1 weights; 2 detune; 3 amplitude; 4 anchors; 5 count.
 * Outlets: 0 zeroindices/restoreindices command; 1 selected component indices;
 * 2 requested/changed/eligible-remaining/uniform-fallback-count/visible-count status.
 * Remove snapshots all three layer values before zeroing them. Add uses the same
 * probability weights to restore removed components exactly. Hidden snapshots survive.
 * Menu, weight and layer updates never perform remove or add operations.
 */
autowatch=1;
inlets=6;
outlets=3;
var componentCount=32, weights=[], layers=[[],[],[]], saved=[];
function list(){
    var values=arrayfromargs(arguments);
    if(inlet===1)weights=values.slice(0);
    else if(inlet>=2&&inlet<=4)layers[inlet-2]=values.slice(0);
}
function msg_int(n){if(inlet===5){n=Number(n);if(isFinite(n))componentCount=Math.max(2,Math.min(256,Math.round(n)));}}
function msg_float(n){msg_int(n);}
function probability(i){var w=Number(weights[i]);return isFinite(w)&&w>0?w:0;}
function sounding(i){return Number(layers[1][i])>0||Number(layers[2][i])>0;}
function requestedCount(args,verb){
    var n;
    if(args.length===1)n=args[0];
    else if(args.length===2&&(args[1]==="partials"||args[1]==="components"))n=args[0];
    else if(args.length===2&&(args[0]==="partials"||args[0]==="components"))n=args[1];
    else if(args.length===3&&(args[0]==="X"||args[0]==="x")&&(args[1]==="partials"||args[1]==="components"))n=args[2];
    else {error("v20: use "+verb+" <integer> or "+verb+" X partials <integer>\n");return -1;}
    n=Number(n);
    if(!isFinite(n)||n<0||Math.floor(n)!==n){error("v20: "+verb+" count must be a nonnegative integer\n");return -1;}
    return n;
}
function choose(candidates,n){
    var chosen=[],fallbacks=0,k;
    var available=candidates.length,wanted=Math.min(n,available);
    for(k=0;k<wanted;k++){
        var total=0,j,position=-1;
        for(j=0;j<candidates.length;j++)total+=candidates[j].weight;
        if(total>0){
            var draw=Math.random()*total;
            for(j=0;j<candidates.length;j++){
                if(candidates[j].weight>0){position=j;draw-=candidates[j].weight;if(draw<0)break;}
            }
        } else {position=Math.floor(Math.random()*candidates.length);fallbacks++;}
        chosen.push(candidates[position].index);candidates.splice(position,1);
    }
    chosen.sort(function(a,b){return a-b;});
    return {indices:chosen,fallbacks:fallbacks,available:available};
}
function ready(){
    if(layers[0].length!==componentCount||layers[1].length!==componentCount||layers[2].length!==componentCount){
        error("v20: visible layer lists are not ready\n");return false;
    }
    return true;
}
function remove(){
    if(inlet!==0)return;
    var n=requestedCount(arrayfromargs(arguments),"remove");if(n<0||!ready())return;
    var candidates=[],i;
    for(i=0;i<componentCount;i++)if(sounding(i))candidates.push({index:i+1,weight:probability(i)});
    var selection=choose(candidates,n),chosen=selection.indices;
    // Snapshot exactly what is currently visible before the atomic zero command.
    for(i=0;i<chosen.length;i++){
        var slot=chosen[i]-1;
        saved[slot]=[Number(layers[0][slot])||0,Number(layers[1][slot])||0,Number(layers[2][slot])||0];
    }
    if(chosen.length)outlet(0,["zeroindices"].concat(chosen));
    if(chosen.length)outlet(1,chosen);else outlet(1,"none");
    outlet(2,[n,chosen.length,selection.available-chosen.length,selection.fallbacks,componentCount]);
}
function add(){
    if(inlet!==0)return;
    var n=requestedCount(arrayfromargs(arguments),"add");if(n<0||!ready())return;
    var candidates=[],i;
    for(i=0;i<componentCount;i++)if(saved[i]&&!sounding(i))candidates.push({index:i+1,weight:probability(i)});
    var selection=choose(candidates,n),chosen=selection.indices,command=["restoreindices"];
    for(i=0;i<chosen.length;i++){
        var slot=chosen[i]-1,values=saved[slot];
        command.push(chosen[i],values[0],values[1],values[2]);
        saved[slot]=null;
    }
    if(chosen.length)outlet(0,command);
    if(chosen.length)outlet(1,chosen);else outlet(1,"none");
    outlet(2,[n,chosen.length,selection.available-chosen.length,selection.fallbacks,componentCount]);
}
function bang(){}
function clear(){}
function append(){}
function set(){}
function anything(){}

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
var ec_fields = ["componentCount", "weights", "layers", "saved"];
var ec_clocks = [];
function ec_export(){var d=ec_copy({"componentCount":componentCount,"weights":weights,"layers":layers,"saved":saved});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"componentCount":componentCount,"weights":weights,"layers":layers,"saved":saved};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.componentCount<2||d.componentCount>256)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid add_remove preset state");d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);componentCount=d.componentCount;weights=d.weights;layers=d.layers;saved=d.saved;}
function ec_emit(){}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "add_remove";

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
