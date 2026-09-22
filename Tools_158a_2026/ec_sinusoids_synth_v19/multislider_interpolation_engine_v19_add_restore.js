/* v19: independent linear shape morphs with 256-slot per-partial memory.
 * 0..2 target lists; 3..5 manual/current slider feedback; 6..8 morph ms; 9 count.
 * 0..2 outputs to the three multisliders (size messages plus value lists).
 * Outlet 3 brackets indexed edits with beginupdate/endupdate; inlet 10 accepts
 * zeroindices and restoreindices INDEX DETUNE AMPLITUDE ANCHOR records.
 * Only active slots are changed by edits/shapes/random lists; hidden slots survive.
 */
autowatch=1;
inlets=11;
outlets=5;
var capacity=256, componentCount=32;
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
function clipped(x,channel){x=Number(x);return isFinite(x)?Math.round(Math.max(channel===0?-1:0,Math.min(1,x))*1000000)/1000000:0;}
function clean(values,channel){var r=[],i;for(i=0;i<values.length;i++)r[i]=clipped(values[i],channel);return r;}
function store(channel,values){
    // Never update hidden components from a short active list.
    var limit=Math.min(componentCount,values.length),i;
    for(i=0;i<limit;i++)memory[channel][i]=clipped(values[i],channel);
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
    for(i=0;i<componentCount;i++)values[i]=clipped(starts[channel][i]+(targets[channel][i]-starts[channel][i])*t,channel);
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
    targets[channel]=clean(values,channel);
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
        tasks[channel].cancel();running[channel]=false;store(channel,clean(values,channel));initialized[channel]=true;
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

// External removal applies to indexed memory, not a temporary post-model mask.
function zeroindices(){
    if(inlet!==10)return;
    var args=arrayfromargs(arguments),indices=[],seen={},i,c;
    for(i=0;i<args.length;i++){var n=Number(args[i]);if(isFinite(n)&&Math.floor(n)===n&&n>=1&&n<=componentCount&&!seen[n]){seen[n]=true;indices.push(n-1);}}
    if(!indices.length)return;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    // Update all layer banks before exposing a single final model to the synthesizer.
    outlet(3,"beginupdate");
    for(c=0;c<3;c++)for(i=0;i<indices.length;i++)memory[c][indices[i]]=0.0;
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// Restore exact three-layer snapshots captured by the weighted remove/add engine.
// Records are: index, signed detune, primary amplitude, harmonic-anchor amplitude.
function restoreindices(){
    if(inlet!==10)return;
    var args=arrayfromargs(arguments),records=[],seen={},i,c;
    if(!args.length||args.length%4!==0)return;
    for(i=0;i<args.length;i+=4){
        var index=Number(args[i]),detune=Number(args[i+1]),amplitude=Number(args[i+2]),anchor=Number(args[i+3]);
        if(!isFinite(index)||index!==Math.floor(index)||index<1||index>componentCount||seen[index]||
           !isFinite(detune)||!isFinite(amplitude)||!isFinite(anchor))return;
        seen[index]=true;records.push([index-1,clipped(detune,0),clipped(amplitude,1),clipped(anchor,2)]);
    }
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    outlet(3,"beginupdate");
    for(i=0;i<records.length;i++){
        memory[0][records[i][0]]=records[i][1];
        memory[1][records[i][0]]=records[i][2];
        memory[2][records[i][0]]=records[i][3];
    }
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// Design workspaces send octavefamily BASE on|off to inlet 10.
// Visible primary amplitudes are replaced; anchor amplitudes are cleared.
function octavefamily(base,state){
    if(inlet!==10)return;
    base=Number(base);state=String(state);
    if(!isFinite(base)||base!==Math.floor(base)||base<2||base>capacity||
       (base!==2&&base%2===0)||(state!=="on"&&state!=="off")||base>componentCount)return;
    var c,n,ordinal=1;
    for(c=1;c<=2;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    outlet(3,"beginupdate");
    for(n=base;n<=componentCount;n*=2){
        memory[1][n-1]=state==="on"?clipped(1/ordinal):0.0;
        memory[2][n-1]=0.0;ordinal++;
    }
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// Global flat zero clears the full 256-slot bank, including partial 1.
// The current visible component count is preserved.
function alloff(){
    if(inlet!==10)return;
    var c,i;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    outlet(3,"beginupdate");
    for(c=0;c<3;c++)for(i=0;i<capacity;i++)memory[c][i]=0.0;
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
    outlet(4,"flatmenus");
}

// Copy the current primary amplitude bank to harmonic anchors, including hidden slots.

function copyAmplitudeLayer(destination){
    if(inlet!==10)return;
    materialize(1);
    tasks[1].cancel();running[1]=false;initialized[1]=true;
    tasks[destination].cancel();running[destination]=false;initialized[destination]=true;
    memory[destination]=memory[1].slice(0);
    outlet(3,"beginupdate");
    emit(1,memory[1].slice(0,componentCount),false);
    emit(destination,memory[destination].slice(0,componentCount),false);
    outlet(3,"endupdate");
}
function PartialAmplitudes_to_HarmonicAnchor(){copyAmplitudeLayer(2);}
function PartialAmplitudes_to_Inharmonicity(){copyAmplitudeLayer(0);}
// Workspace applies complete 256-slot inharmonicity, primary and anchor banks.
function stoplayers(){
    if(inlet!==10)return;
    var v=arrayfromargs(arguments),c,i;
    if(v.length!==capacity*3)return;
    for(i=0;i<v.length;i++)if(!isFinite(Number(v[i])))return;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    for(c=0;c<3;c++)memory[c]=clean(v.slice(c*capacity,(c+1)*capacity),c);
    outlet(3,"beginupdate");
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    outlet(3,"endupdate");
}

// v19 student-message controls. Indices are one-based, including hidden slots.
function partialvalue(channel,index,value){
    channel=Number(channel);index=Number(index);value=Number(value);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity||!isFinite(value))return;
    materialize(channel);tasks[channel].cancel();running[channel]=false;initialized[channel]=true;
    memory[channel][index-1]=clipped(value,channel);
    outlet(3,"beginupdate");emit(channel,memory[channel].slice(0,componentCount),false);outlet(3,"endupdate");
}
function partialget(channel,index){
    channel=Number(channel);index=Number(index);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity)return;
    materialize(channel);
    var names=["Partial_Drift_current_v19","Partial_Amplitude_current_v19","Partial_Anchor_current_v19"];
    messnamed(names[channel],memory[channel][index-1]);
}
function familyvalue(root,state){
    root=Number(root);state=Number(state);
    if(state!==0&&state!==1)return;
    octavefamily(root,state===1?"on":"off");
}
