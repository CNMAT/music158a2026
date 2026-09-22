/* v19: weighted removal and restoration over visible components.
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
    else {error("v19: use "+verb+" <integer> or "+verb+" X partials <integer>\n");return -1;}
    n=Number(n);
    if(!isFinite(n)||n<0||Math.floor(n)!==n){error("v19: "+verb+" count must be a nonnegative integer\n");return -1;}
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
        error("v19: visible layer lists are not ready\n");return false;
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
