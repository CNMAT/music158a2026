/* Stage 15 independent global retuning.
 * Inlets: 0 reference base Hz, 1 target base Hz, 2 mode, 3 glide ms.
 * Modes: 0 regenerate ERB-aware partials; 1 preserve ratios; 2 add target-reference Hz.
 * Outlets: 0 generator base; 1 'tuning ratio shift' to transform; 2 current base display;
 * 3 'set target' to the target box when the original base control changes.
 * Task runs at 25ms; parameter ramps do NOT write to any multislider.
 */
autowatch=1;
inlets=4;
outlets=4;
var referenceBase=110.0, targetBase=110.0, actualBase=110.0;
var mode=0, glideMs=1000.0, active=false;
var rampStart=110.0, rampEnd=110.0, startTime=0, rampDuration=1000.0;
var lastGeneratorBase=-1;
var glideTask=new Task(tick,this);
glideTask.interval=25;
function nowMs(){return (new Date()).getTime();}
function baseValue(x){return Math.max(1.0,Math.min(23000.0,Number(x)));}
function emit(){
    var generatorBase=mode===0?actualBase:referenceBase;
    var ratio=mode===1?actualBase/referenceBase:1.0;
    var shift=mode===2?actualBase-referenceBase:0.0;
    outlet(1,"tuning",ratio,shift,generatorBase!==lastGeneratorBase?1:0);
    if(generatorBase!==lastGeneratorBase){lastGeneratorBase=generatorBase;outlet(0,generatorBase);}
    outlet(2,actualBase);
}
function requestTarget(x){
    x=baseValue(x);if(!isFinite(x))return;
    // Materialize the elapsed ramp before re-targeting, avoiding a restart jump.
    if(active) updateActual();
    glideTask.cancel();targetBase=x;
    rampStart=actualBase;rampEnd=x;startTime=nowMs();rampDuration=glideMs;
    if(rampDuration<=0||rampStart===rampEnd){active=false;actualBase=x;emit();return;}
    active=true;emit();glideTask.repeat();
}
function updateActual(){
    var t=Math.max(0,Math.min(1,(nowMs()-startTime)/rampDuration));
    // Ratio/geometric glide for pitch; linear-Hz glide for additive shifting.
    actualBase=mode===2?rampStart+(rampEnd-rampStart)*t:rampStart*Math.pow(rampEnd/rampStart,t);
    if(t>=1){actualBase=rampEnd;active=false;glideTask.cancel();}
}
function tick(){if(!active){glideTask.cancel();return;}updateActual();emit();}
function scalar(x){
    x=Number(x);if(!isFinite(x))return;
    if(inlet===0){referenceBase=baseValue(x);outlet(3,"set",referenceBase);requestTarget(referenceBase);}
    else if(inlet===1)requestTarget(x);
    else if(inlet===2){if(active)updateActual();active=false;glideTask.cancel();mode=Math.max(0,Math.min(2,Math.round(x)));requestTarget(targetBase);}
    else if(inlet===3)glideMs=Math.max(0,Math.min(600000,x));
}
function msg_int(x){scalar(x);}
function msg_float(x){scalar(x);}
function bang(){emit();}
function loadbang(){emit();}
function clear(){}
function append(){}
function set(){}
function anything(){}
