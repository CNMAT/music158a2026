/* v20: independent linear shape morphs with 256-slot per-partial memory.
 * 0..2 target lists; 3..5 manual/current slider feedback; 6..8 morph ms; 9 count.
 * 0..2 outputs to the three multisliders (size messages plus value lists).
 * Outlet 3 brackets indexed edits with beginupdate/endupdate; inlet 10 accepts
 * zeroindices and restoreindices INDEX DETUNE AMPLITUDE ANCHOR records.
 * Only active slots are changed by edits/shapes/random lists; hidden slots survive.
 * v20-6: count births/deaths use the SAME 150 ms amplitudes for UI and synthesis.
 * Outlet 5 owns the actual displayed/rendered count. A requested decrease keeps
 * departing bars/oscillators alive until their amplitudes reach exactly zero.
 * Outlets 6/7 are authoritative anchor/primary amplitude lists for synthesis and
 * remove/add snapshots. UI amplitude outlets now feed back ONLY to inlets 5/4.
 * Inlet 10: anchormirror 0|1; anchorscale 0..1 (absolute, noncompounding).
 * Anchor patterns are retained unscaled internally; shown/audio values reflect
 * the scale. Mirror uses the primary's current level, including count fades.
 */
autowatch=1;
inlets=11;
outlets=8;
var capacity=256, componentCount=32;
var displayCount=32, PARTIAL_FADE_MS=150;
// memory/current hold nominal levels; lifecycle ramps never erase saved levels.
// mode: 0 hidden, 1 active, 2 entering, 3 departing.
var lifeMode=[],lifeEnd=[],lifeStart=[[],[],[]],lifeTime=[[],[],[]],lifeTarget=[[],[],[]];
var lifeTask=new Task(lifeTick,this),lifeRunning=false;
lifeTask.interval=5;
var durations=[1000,1000,1000], activeDuration=[1000,1000,1000];
var memory=[[],[],[]], current=[[],[],[]], starts=[[],[],[]], targets=[[],[],[]];
var lastDrawn=[[],[],[]];
var anchorMirror=false,anchorScale=1.0,updateDepth=0;
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
for(i=0;i<capacity;i++){
    lifeMode[i]=i<componentCount?1:0;lifeEnd[i]=0;
    for(c=0;c<3;c++){lifeStart[c][i]=0;lifeTime[c][i]=0;lifeTarget[c][i]=0;}
}
function nowMs(){return (new Date()).getTime();}
function beginModel(){if(updateDepth++===0)outlet(3,"beginupdate");}
function endModel(){if(updateDepth>0&&--updateDepth===0)outlet(3,"endupdate");}
function clipped(x,channel){x=Number(x);return isFinite(x)?Math.round(Math.max(channel===0?-1:0,Math.min(1,x))*1000000)/1000000:0;}
function clean(values,channel){var r=[],i;for(i=0;i<values.length;i++)r[i]=clipped(values[i],channel);return r;}
function store(channel,values){
    // Never update hidden components from a short active list.
    var limit=Math.min(componentCount,values.length),i;
    for(i=0;i<limit;i++)memory[channel][i]=clipped(values[i],channel);
    current[channel]=memory[channel].slice(0,componentCount);
}
function lifeValue(channel,index,time){
    var mode=lifeMode[index];
    if(mode===0)return 0;
    if(channel===0)return mode===3?lifeStart[0][index]:memory[0][index];
    if(mode===1)return memory[channel][index];
    var fraction=Math.max(0,Math.min(1,(time-lifeTime[channel][index])/
        Math.max(1,lifeEnd[index]-lifeTime[channel][index])));
    var target=mode===3?0:lifeTarget[channel][index];
    return clipped(lifeStart[channel][index]+(target-lifeStart[channel][index])*fraction,channel);
}
function synchronizeEntryTargets(channel,time){
    if(channel===0)return;
    for(var i=0;i<componentCount;i++)if(lifeMode[i]===2&&lifeTarget[channel][i]!==memory[channel][i]){
        lifeStart[channel][i]=lifeValue(channel,i,time);
        lifeTime[channel][i]=time;
        lifeTarget[channel][i]=memory[channel][i];
    }
}
function visibleValues(channel,time){
    var values=[];
    for(var i=0;i<displayCount;i++){
        var value=lifeValue(channel===2&&anchorMirror?1:channel,i,time);
        values.push(channel===2?clipped(value*anchorScale,2):value);
    }
    return values;
}
function draw(channel,resize,time){
    if(channel===2&&anchorMirror){
        memory[2]=memory[1].slice(0);current[2]=memory[2].slice(0,componentCount);
    }
    synchronizeEntryTargets(channel,time);
    outputGuard[channel]=true;
    if(resize)outlet(channel,"size",displayCount);
    lastDrawn[channel]=visibleValues(channel,time);
    outlet(channel,lastDrawn[channel].slice(0));
    // Size-generated UI echoes and edits cannot bypass these canonical lists.
    if(channel===2)outlet(6,lastDrawn[2].slice(0));
    else if(channel===1)outlet(7,lastDrawn[1].slice(0));
    outputGuard[channel]=false;
}
function emit(channel,values,resize){
    store(channel,values);
    var time=nowMs();beginModel();
    draw(channel,resize,time);
    if(channel===1&&anchorMirror)draw(2,resize,time);
    endModel();
}
function frame(resize,time){
    // Generator holds the entire resize transaction, including size-generated
    // UI echoes, so no intermediate cached amplitude can reach the audio model.
    beginModel();
    if(resize)outlet(5,displayCount);
    for(var c=0;c<3;c++)draw(c,resize,time);
    endModel();
}
function updateLifeTask(){
    var active=false;
    for(var i=0;i<capacity;i++)if(lifeMode[i]===2||lifeMode[i]===3){active=true;break;}
    if(active&&!lifeRunning){lifeRunning=true;lifeTask.repeat();}
    else if(!active&&lifeRunning){lifeTask.cancel();lifeRunning=false;}
}
function lifeTick(){
    var time=nowMs(),i,c,oldCount=displayCount;
    for(c=0;c<3;c++)materialize(c);
    // Emit departing amplitudes at zero BEFORE deleting their UI/oscillator IDs.
    frame(false,time);
    for(i=0;i<capacity;i++)if(time>=lifeEnd[i]){
        if(lifeMode[i]===2)lifeMode[i]=1;
        else if(lifeMode[i]===3)lifeMode[i]=0;
    }
    displayCount=componentCount;
    for(i=componentCount;i<capacity;i++)if(lifeMode[i]===3)displayCount=i+1;
    if(displayCount!==oldCount)frame(true,time);
    updateLifeTask();
}
function notifydeleted(){lifeTask.cancel();for(var c=0;c<3;c++)tasks[c].cancel();}
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
    var time=nowMs(),oldCount=componentCount,i,c;
    for(c=0;c<3;c++){
        materialize(c);synchronizeEntryTargets(c,time);tasks[c].cancel();running[c]=false;
    }
    for(i=Math.min(oldCount,value);i<Math.max(oldCount,value);i++){
        for(c=0;c<3;c++){
            lifeStart[c][i]=lifeValue(c,i,time);
            lifeTime[c][i]=time;
            lifeTarget[c][i]=memory[c][i];
        }
        lifeMode[i]=i<value?2:3;
        lifeEnd[i]=time+PARTIAL_FADE_MS;
    }
    componentCount=value;
    displayCount=value;
    for(i=value;i<capacity;i++)if(lifeMode[i]===3)displayCount=i+1;
    for(c=0;c<3;c++)current[c]=memory[c].slice(0,componentCount);
    frame(true,time);
    updateLifeTask();
}
function target(channel,values){
    if(channel===2&&anchorMirror)return;
    if(values.length!==componentCount)return;
    materialize(channel);tasks[channel].cancel();
    targets[channel]=clean(values,channel);
    starts[channel]=memory[channel].slice(0,componentCount);
    // A resized preset supplies the destination for new bars immediately.
    // Its ordinary shape-morph duration still governs already-active bars.
    // Pin both shape endpoints for entering bars: no second ramp or snap-back
    // after their independent 150 ms lifecycle finishes.
    if(channel>0)for(var i=0;i<componentCount;i++)if(lifeMode[i]===2){
        starts[channel][i]=targets[channel][i];memory[channel][i]=targets[channel][i];
    }
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
        if(outputGuard[channel]||values.length!==displayCount)return;
        if(channel===2&&anchorMirror){
            beginModel();draw(2,false,nowMs());endModel();return;
        }
        // Feedback contains audible/displayed levels. Preserve untouched entry
        // targets instead of feeding their temporary faded values into memory.
        var time=nowMs(),shown=lastDrawn[channel],i;
        materialize(channel);tasks[channel].cancel();running[channel]=false;
        for(i=0;i<componentCount;i++){
            var changed=i>=shown.length||Math.abs(Number(values[i])-shown[i])>0.000001;
            if(channel===2){
                // A manual bar is an already-scaled value. Preserve untouched
                // nominal levels, especially when the scale is temporarily 0.
                if(changed)memory[2][i]=anchorUnscale(values[i]);
            }else if(lifeMode[i]!==2||changed)memory[channel][i]=clipped(values[i],channel);
        }
        current[channel]=memory[channel].slice(0,componentCount);
        synchronizeEntryTargets(channel,time);initialized[channel]=true;
        if(channel>0){
            beginModel();draw(channel,false,time);
            if(channel===1&&anchorMirror)draw(2,false,time);
            endModel();
        }
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

function anchorUnscale(value){
    return clipped(anchorScale>0?Number(value)/anchorScale:Number(value),2);
}
function anchormirror(value){
    if(inlet!==10||!isFinite(Number(value)))return;
    var on=Number(value)!==0;
    messnamed("Anchor_Mirror_state_v20",on?1:0);
    if(on===anchorMirror)return;
    var time=nowMs();materialize(1);synchronizeEntryTargets(1,time);
    materialize(2);tasks[2].cancel();running[2]=false;initialized[2]=true;
    // Switching OFF holds the mirrored pattern and its in-flight entry/exit
    // ramps. It can then be edited independently without a level discontinuity.
    memory[2]=memory[1].slice(0);current[2]=memory[2].slice(0,componentCount);
    for(var i=0;i<capacity;i++){
        lifeStart[2][i]=lifeStart[1][i];lifeTime[2][i]=lifeTime[1][i];lifeTarget[2][i]=lifeTarget[1][i];
    }
    anchorMirror=on;
    beginModel();draw(1,false,time);draw(2,false,time);endModel();
}
function anchorscale(value){
    if(inlet!==10||!isFinite(Number(value)))return;
    value=Math.max(0,Math.min(1,Number(value)));
    messnamed("Anchor_Scale_state_v20",value);
    if(value===anchorScale)return;
    materialize(anchorMirror?1:2);
    var time=nowMs();
    if(anchorMirror)synchronizeEntryTargets(1,time);
    anchorScale=value;
    beginModel();
    if(anchorMirror)draw(1,false,time);
    draw(2,false,time);endModel();
}
function loadbang(){
    messnamed("Anchor_Mirror_state_v20",anchorMirror?1:0);
    messnamed("Anchor_Scale_state_v20",anchorScale);
}

// External removal applies to indexed memory, not a temporary post-model mask.
function zeroindices(){
    if(inlet!==10)return;
    var args=arrayfromargs(arguments),indices=[],seen={},i,c;
    for(i=0;i<args.length;i++){var n=Number(args[i]);if(isFinite(n)&&Math.floor(n)===n&&n>=1&&n<=componentCount&&!seen[n]){seen[n]=true;indices.push(n-1);}}
    if(!indices.length)return;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    // Update all layer banks before exposing a single final model to the synthesizer.
    beginModel();
    for(c=0;c<3;c++)for(i=0;i<indices.length;i++)memory[c][indices[i]]=0.0;
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    endModel();
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
    beginModel();
    for(i=0;i<records.length;i++){
        memory[0][records[i][0]]=records[i][1];
        memory[1][records[i][0]]=records[i][2];
        // Remove/add snapshots contain visible (scaled) anchor amplitudes.
        memory[2][records[i][0]]=anchorUnscale(records[i][3]);
    }
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    endModel();
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
    beginModel();
    for(n=base;n<=componentCount;n*=2){
        memory[1][n-1]=state==="on"?clipped(1/ordinal):0.0;
        memory[2][n-1]=0.0;ordinal++;
    }
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    endModel();
}

// Global flat zero clears the full 256-slot bank, including partial 1.
// The current visible component count is preserved.
function alloff(){
    if(inlet!==10)return;
    // Stop through the lane authority even when alloff arrives from a workspace.
    messnamed("ADSR_12_Lanes_Stop_v20","bang");
    messnamed("Envelope_Loop_v20",0);
    var c,i;
    for(c=0;c<3;c++){materialize(c);tasks[c].cancel();running[c]=false;initialized[c]=true;}
    for(i=0;i<capacity;i++)lifeMode[i]=i<componentCount?1:0;
    displayCount=componentCount;updateLifeTask();
    beginModel();
    for(c=0;c<3;c++)for(i=0;i<capacity;i++)memory[c][i]=0.0;
    outlet(5,displayCount);
    emit(1,memory[1].slice(0,componentCount),true);
    emit(2,memory[2].slice(0,componentCount),true);
    emit(0,memory[0].slice(0,componentCount),true);
    endModel();
    outlet(4,"flatmenus");
}

// Copy the current primary amplitude bank to harmonic anchors, including hidden slots.

function copyAmplitudeLayer(destination){
    if(inlet!==10)return;
    materialize(1);
    tasks[1].cancel();running[1]=false;initialized[1]=true;
    tasks[destination].cancel();running[destination]=false;initialized[destination]=true;
    memory[destination]=memory[1].slice(0);
    beginModel();
    emit(1,memory[1].slice(0,componentCount),false);
    emit(destination,memory[destination].slice(0,componentCount),false);
    endModel();
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
    beginModel();
    emit(1,memory[1].slice(0,componentCount),false);
    emit(2,memory[2].slice(0,componentCount),false);
    emit(0,memory[0].slice(0,componentCount),false);
    endModel();
}

// v20 student-message controls. Indices are one-based, including hidden slots.
function partialvalue(channel,index,value){
    channel=Number(channel);index=Number(index);value=Number(value);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity||!isFinite(value))return;
    if(channel===2&&anchorMirror)return;
    materialize(channel);tasks[channel].cancel();running[channel]=false;initialized[channel]=true;
    memory[channel][index-1]=clipped(value,channel);
    beginModel();emit(channel,memory[channel].slice(0,componentCount),false);endModel();
}
function partialget(channel,index){
    channel=Number(channel);index=Number(index);
    if(inlet!==10||!isFinite(channel)||channel!==Math.floor(channel)||channel<0||channel>2||
       !isFinite(index)||index!==Math.floor(index)||index<1||index>capacity)return;
    materialize(channel===2&&anchorMirror?1:channel);
    var names=["Partial_Drift_current_v20","Partial_Amplitude_current_v20","Partial_Anchor_current_v20"];
    var value=memory[channel===2&&anchorMirror?1:channel][index-1];
    messnamed(names[channel],channel===2?clipped(value*anchorScale,2):value);
}
function familyvalue(root,state){
    root=Number(root);state=Number(state);
    if(state!==0&&state!==1)return;
    octavefamily(root,state===1?"on":"off");
}
