/*
    abl_help_bootstrap.js
    Initializes the ABL v26-style EXAMPLE safely on load.

    Args: wet:<attribute> and input:<attribute>.
    - wet/mix controls are forced to their native maximum using rawfloat 1.0
    - recognized input_gain controls are set to -3 dB
    - FX and dry monitor gains initialize to -65 dB
    - after parameter propagation, current factory/default state is captured,
      stored cleanly into Preset 1, then recalled.
*/
autowatch=1;
inlets=1;
outlets=1;
var wet=[], input=[];
var args=arrayfromargs(jsarguments).slice(1);
for(var i=0;i<args.length;i++) {
    var s=String(args[i]);
    if(s.indexOf("wet:")===0) wet.push(s.substring(4));
    else if(s.indexOf("input:")===0) input.push(s.substring(6));
}
var t1=new Task(do_capture,this), t2=new Task(do_store,this), t3=new Task(do_recall,this);
function bang()
{
    t1.cancel(); t2.cancel(); t3.cancel();
    for(var i=0;i<wet.length;i++) {
        var b=this.patcher.getnamed("abl_param_"+safe(wet[i]));
        if(b) try{b.message("rawfloat",1.0);}catch(e){}
    }
    for(var j=0;j<input.length;j++) {
        var g=this.patcher.getnamed("abl_param_"+safe(input[j]));
        if(g) try{g.message(-3.0);}catch(e2){}
    }
    setgain("final_output_gain",-65.0); setgain("dry_output_gain",-65.0);
    t1.schedule(120);
}
function do_capture()
{
    var b=this.patcher.getnamed("fx_preset_dump_js"); if(b) b.message("bang");
    t2.schedule(50);
}
function do_store()
{
    var p=this.patcher.getnamed("preset_collection"); if(p) p.message("storeclean",1);
    t3.schedule(30);
}
function do_recall()
{
    var p=this.patcher.getnamed("preset_collection"); if(p) p.message("recall",1);
    outlet(0,"default_preset_ready",1);
}
function setgain(name,v)
{
    var b=this.patcher.getnamed(name); if(!b)return;
    try{b.setvalueof(v);}catch(e){try{b.message(v);}catch(e2){}}
}
function safe(s){return String(s).replace(/[^A-Za-z0-9_]/g,"_");}
