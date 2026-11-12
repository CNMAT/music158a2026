/* Presentation one-shot: Global Shape = All on full (index 1), Loops = ON,
 * then trigger all 12 lanes once their existing shape smoothing has completed.
 * Inlet 0: bang starts; fire is the deferred completion callback; stop cancels.
 * Inlet 1: points LANE values..., shape INDEX, loop 0|1, stop.
 * Outlets: 0 shape index, 1 loop state, 2 defer request, 3 global trigger bang.
 * Native deferlow feeds a fire message back, after all point translators finish.
 */
autowatch=1;
inlets=2;
outlets=4;
var pending=false,setting=false,deferred=false,ready=[];
function allReady(){
    for(var i=0;i<12;i++)if(!ready[i])return false;
    return true;
}
function check(){
    if(pending&&!setting&&!deferred&&allReady()){
        deferred=true;outlet(2,"bang");
    }
}
function bang(){
    if(inlet!==0)return;
    pending=true;deferred=false;ready=[];setting=true;
    // Sequential calls complete each synchronous fanout before the next action.
    outlet(0,1);
    outlet(1,1);
    setting=false;check();
}
function points(){
    if(inlet!==1||!pending)return;
    var values=arrayfromargs(arguments),lane=Number(values.shift());
    if(lane!==Math.floor(lane)||lane<1||lane>12)return;
    var full=values.length>0;
    for(var i=0;i<values.length;i++)if(!isFinite(Number(values[i]))||Number(values[i])!==1)full=false;
    ready[lane-1]=full;check();
}
function fire(){
    if(inlet!==0)return;
    deferred=false;
    if(!pending||!allReady())return;
    pending=false;outlet(3,"bang");
}
function stop(){pending=false;deferred=false;}
function shape(value){if(inlet===1&&Number(value)!==1)stop();}
function loop(value){if(inlet===1&&Number(value)===0)stop();}
function anything(){}
