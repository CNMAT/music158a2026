/* Stage 10: independent linear shape morphs with 255-slot per-partial memory.
 * 0..2 target lists; 3..5 manual/current slider feedback; 6..8 morph ms; 9 count.
 * 0..2 outputs to the three multisliders (size messages plus value lists).
 * Only active slots are changed by edits/shapes/random lists; hidden slots survive.
 */
autowatch=1;
inlets=10;
outlets=3;
var capacity=255, componentCount=32;
var durations=[1000,1000,1000], activeDuration=[1000,1000,1000];
var memory=[[],[],[]], current=[[],[],[]], starts=[[],[],[]], targets=[[],[],[]];
var initialized=[false,false,false], running=[false,false,false], outputGuard=[false,false,false];
var startTimes=[0,0,0];
var tasks=[new Task(tick,this,0),new Task(tick,this,1),new Task(tick,this,2)];
var c,i;
for(c=0;c<3;c++){
    tasks[c].interval=20;
    for(i=0;i<capacity;i++)memory[c][i]=0.0;
}
// The library applies the startup amplitude profile only to the active slots.
for(c=0;c<3;c++)current[c]=memory[c].slice(0,componentCount);
function nowMs(){return (new Date()).getTime();}
function clipped(x){x=Number(x);return isFinite(x)?Math.round(Math.max(0,Math.min(1,x))*1000000)/1000000:0;}
function clean(values){var r=[],i;for(i=0;i<values.length;i++)r[i]=clipped(values[i]);return r;}
function store(channel,values){
    // Never update hidden components from a short active list.
    var limit=Math.min(componentCount,values.length),i;
    for(i=0;i<limit;i++)memory[channel][i]=clipped(values[i]);
    current[channel]=memory[channel].slice(0,componentCount);
}
function emit(channel,values,resize){
    store(channel,values);
    outputGuard[channel]=true;
    if(resize)outlet(channel,"size",componentCount);
    outlet(channel,current[channel].slice(0));
    outputGuard[channel]=false;
}
function materialize(channel){
    if(!running[channel])return;
    var t=Math.max(0,Math.min(1,(nowMs()-startTimes[channel])/activeDuration[channel]));
    var values=[],i;
    for(i=0;i<componentCount;i++)values[i]=clipped(starts[channel][i]+(targets[channel][i]-starts[channel][i])*t);
    store(channel,values);
    if(t>=1){running[channel]=false;tasks[channel].cancel();}
}
function setCount(value){
    value=Math.max(2,Math.min(capacity,Math.round(Number(value))));
    if(!isFinite(value))return;
    for(var c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;}
    componentCount=value;
    for(c=0;c<3;c++)emit(c,memory[c].slice(0,componentCount),true);
}
function target(channel,values){
    if(values.length!==componentCount)return;
    materialize(channel);tasks[channel].cancel();
    targets[channel]=clean(values);
    starts[channel]=memory[channel].slice(0,componentCount);
    if(!initialized[channel]||durations[channel]<=0){
        initialized[channel]=true;running[channel]=false;emit(channel,targets[channel],false);return;
    }
    initialized[channel]=true;startTimes[channel]=nowMs();activeDuration[channel]=durations[channel];
    running[channel]=true;emit(channel,starts[channel],false);tasks[channel].repeat();
}
function tick(channel){
    if(!running[channel]){tasks[channel].cancel();return;}
    materialize(channel);emit(channel,current[channel],false);
}
function list(){
    var values=arrayfromargs(arguments);
    if(inlet>=0&&inlet<=2)target(inlet,values);
    else if(inlet>=3&&inlet<=5){
        var channel=inlet-3;
        // Ignore echoed output and size-generated lists while restoring memory.
        if(outputGuard[channel]||values.length!==componentCount)return;
        tasks[channel].cancel();running[channel]=false;store(channel,clean(values));initialized[channel]=true;
    }
}
function scalar(x){
    x=Number(x);if(!isFinite(x))return;
    if(inlet===9)setCount(x);
    else if(inlet>=6&&inlet<=8)durations[inlet-6]=Math.max(0,Math.min(600000,x));
}
function msg_int(x){scalar(x);}
function msg_float(x){scalar(x);}
function bang(){}
function clear(){}
function append(){}
function set(){}
function anything(){}
