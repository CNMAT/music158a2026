/* Partial Offset: crossfade two permanent 512-ID banks over 150 ms.
 * Inlet 0: final filtered/merged ID Hz amplitude records (IDs 1..512).
 * Inlet 1: firstpartial N, sent BEFORE the generator receives firstpartial N.
 * Outlet 0: renderer records, IDs 1..512 in bank A and 513..1024 in bank B.
 * Old frequencies remain unchanged; incoming oscillators start at exactly zero.
 * Rapid offset edits queue the latest model until the current fade completes,
 * so neither audible bank is overwritten. Ordinary model updates pass through.
 * Auto Level continues to read the ordinary target model, before this stage.
 */
autowatch=1;
inlets=2;
outlets=1;
var BANK_SIZE=512, OFFSET_FADE_MS=150;
var banks=[[],[]],activeBank=0,fromBank=0,toBank=1;
var requestedOffset=1,activeOffset=1,destinationOffset=1;
var initialized=false,fading=false,startTime=0;
var queuedModel=null,queuedOffset=1;
var fadeTask=new Task(tick,this);
fadeTask.interval=5;
function nowMs(){return (new Date()).getTime();}
function clip(x,a,b){return Math.max(a,Math.min(b,x));}
function valid(values){
    if(values.length%3)return false;
    var seen={},i,id,f,a;
    for(i=0;i<values.length;i+=3){
        id=Number(values[i]);f=Number(values[i+1]);a=Number(values[i+2]);
        if(!isFinite(id)||id!==Math.floor(id)||id<1||id>BANK_SIZE||seen[id]||
           !isFinite(f)||f<=0||!isFinite(a)||a<0)return false;
        seen[id]=true;
    }
    return true;
}
function firstpartial(value){
    if(inlet!==1)return;
    value=Number(value);if(!isFinite(value))return;
    requestedOffset=clip(Math.round(value),1,23000);
}
function appendBank(output,bank,gain){
    var records=banks[bank];
    for(var i=0;i<records.length;i+=3)
        output.push(Number(records[i])+bank*BANK_SIZE,Number(records[i+1]),Number(records[i+2])*gain);
}
function emit(time){
    var output=[];
    if(fading){
        var amount=clip((time-startTime)/OFFSET_FADE_MS,0,1);
        appendBank(output,fromBank,1-amount);
        appendBank(output,toBank,amount);
    }else appendBank(output,activeBank,1);
    outlet(0,output);
}
function startFade(model,offset,time){
    fromBank=activeBank;toBank=1-activeBank;
    banks[toBank]=model.slice(0);destinationOffset=offset;
    fading=true;startTime=time;
    // Publish both banks at 1/0 before the first increment: no extra renderer fade.
    emit(time);fadeTask.repeat();
}
function finishIfDue(time){
    if(!fading||time<startTime+OFFSET_FADE_MS)return;
    emit(time); // Explicit zero for all outgoing IDs before they are discarded.
    fadeTask.cancel();fading=false;activeBank=toBank;activeOffset=destinationOffset;
    banks[fromBank]=[];
    var next=queuedModel,nextOffset=queuedOffset;
    queuedModel=null;
    if(next!==null&&nextOffset!==activeOffset)startFade(next,nextOffset,time);
    else{
        if(next!==null)banks[activeBank]=next;
        emit(time);
    }
}
function list(){
    if(inlet!==0)return;
    var model=arrayfromargs(arguments);
    if(!valid(model)){error("partial_offset_crossfade_v20_6: valid unique ID Hz amplitude records required\n");return;}
    var time=nowMs();
    // At a completion boundary, use THIS latest model rather than starting an
    // obsolete queued target just before receiving its replacement.
    if(fading&&time>=startTime+OFFSET_FADE_MS){
        if(requestedOffset===destinationOffset){banks[toBank]=model;queuedModel=null;}
        else{queuedModel=model;queuedOffset=requestedOffset;}
        finishIfDue(time);return;
    }
    if(!initialized){
        initialized=true;activeOffset=requestedOffset;banks[activeBank]=model;emit(time);return;
    }
    if(fading){
        if(requestedOffset===destinationOffset){
            banks[toBank]=model;queuedModel=null;emit(time);
        }else{queuedModel=model;queuedOffset=requestedOffset;}
    }else if(requestedOffset!==activeOffset)startFade(model,requestedOffset,time);
    else{banks[activeBank]=model;emit(time);}
}
function bang(){if(inlet===0)list();}
function tick(){
    if(!fading){fadeTask.cancel();return;}
    var time=nowMs();
    if(time>=startTime+OFFSET_FADE_MS)finishIfDue(time);
    else emit(time);
}
function notifydeleted(){fadeTask.cancel();}
function clear(){}
function set(){}
function anything(){}
