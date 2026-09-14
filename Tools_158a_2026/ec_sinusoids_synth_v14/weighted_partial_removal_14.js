/* Stage 14: weighted sampling without replacement over audible visible components.
 * Inlets: 0 remove commands; 1 weights; 2 inharmonicity; 3 amplitude; 4 anchors; 5 count.
 * Outlets: 0 zeroindices command to indexed memory; 1 selected component indices;
 * 2 requested/removed/remaining/uniform-fallback-count/visible-count status.
 * Menu/weight updates NEVER emit the removal command.
 */
autowatch=1;
inlets=6;
outlets=3;
var componentCount=32, weights=[], layers=[[],[],[]];
function list(){
    var values=arrayfromargs(arguments);
    if(inlet===1)weights=values.slice(0);
    else if(inlet>=2&&inlet<=4)layers[inlet-2]=values.slice(0);
}
function msg_int(n){if(inlet===5){n=Number(n);if(isFinite(n))componentCount=Math.max(2,Math.min(256,Math.round(n)));}}
function msg_float(n){msg_int(n);}
function probability(i){var w=Number(weights[i]);return isFinite(w)&&w>0?w:0;}
function sounding(i){return Number(layers[1][i])>0||Number(layers[2][i])>0;}
function remove(){
    if(inlet!==0)return;
    var args=arrayfromargs(arguments),n;
    // Accept remove 10; remove 10 partials; remove partials 10; remove X partials 10.
    if(args.length===1)n=args[0];
    else if(args.length===2&&(args[1]==="partials"||args[1]==="components"))n=args[0];
    else if(args.length===2&&(args[0]==="partials"||args[0]==="components"))n=args[1];
    else if(args.length===3&&(args[0]==="X"||args[0]==="x")&&(args[1]==="partials"||args[1]==="components"))n=args[2];
    else {error("Stage 14: use remove <integer> or remove X partials <integer>\n");return;}
    n=Number(n);
    if(!isFinite(n)||n<0||Math.floor(n)!==n){error("Stage 14: removal count must be a nonnegative integer\n");return;}
    if(layers[1].length!==componentCount||layers[2].length!==componentCount){error("Stage 14: visible amplitude lists are not ready\n");return;}
    var candidates=[],chosen=[],fallbacks=0,i,k;
    for(i=0;i<componentCount;i++)if(sounding(i))candidates.push({index:i+1,weight:probability(i)});
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
    // Apply first; slider feedback updates these stored layers synchronously.
    if(chosen.length)outlet(0,["zeroindices"].concat(chosen));
    if(chosen.length)outlet(1,chosen);else outlet(1,"none");
    outlet(2,[n,chosen.length,available-chosen.length,fallbacks,componentCount]);
}
function bang(){}
function clear(){}
function append(){}
function set(){}
function anything(){}
