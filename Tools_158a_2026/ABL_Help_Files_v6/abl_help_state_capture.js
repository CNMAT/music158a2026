/*
    abl_help_state_capture.js
    ABL v26-style help system

    One-bang capture of every ABL parameter-connected control listed as an
    argument, plus the EXAMPLE FX output gain. Recalled selector/value messages
    are forwarded to the main ABL object; Final_Output_Gain is restored locally.
*/
autowatch = 1;
inlets = 1;
outlets = 2;

var names = arrayfromargs(jsarguments).slice(1);

function bang() { capture(); }

function capture()
{
    var params = [];
    var values = [];
    for (var i=0; i<names.length; i++) {
        var name=String(names[i]);
        var box=this.patcher.getnamed("abl_param_"+safe(name));
        if (!box) continue;
        try {
            var v=box.getvalueof();
            if (v instanceof Array) v=v[0];
            params.push(name); values.push(v);
        } catch(e) {}
    }
    var gain=this.patcher.getnamed("final_output_gain");
    if (gain) {
        try {
            var gv=gain.getvalueof();
            if (gv instanceof Array) gv=gv[0];
            params.push("Final_Output_Gain"); values.push(gv);
        } catch(e2) {}
    }
    write_box(params,values);
    outlet(1,"preset_complete",params.length,build_text(params,values));
}

function anything()
{
    var a=arrayfromargs(arguments);
    if (messagename === "Final_Output_Gain") {
        restore_gain(a); return;
    }
    outlet(0,messagename,a);
}
function list() { outlet(0,arrayfromargs(arguments)); }
function msg_int(v) { outlet(0,v); }
function msg_float(v) { outlet(0,v); }

function restore_gain(a)
{
    if (!a || a.length<1) return;
    var g=this.patcher.getnamed("final_output_gain");
    if (!g) return;
    try { g.setvalueof(a[0]); } catch(e) { try { g.message(a[0]); } catch(e2) {} }
}

function write_box(params,values)
{
    var b=this.patcher.getnamed("fx_preset_recall");
    if (!b) return;
    if (!params.length) { b.message("set"); return; }
    var atoms=[];
    for (var i=0;i<params.length && i<values.length;i++) {
        if (i>0) atoms.push(",");
        atoms.push(params[i]); atoms.push(values[i]);
    }
    try { b.message.apply(b,["set"].concat(atoms)); }
    catch(e) { try { b.setvalueof(build_text(params,values)); } catch(e2) {} }
}
function build_text(params,values)
{
    var out=[]; var n=Math.min(params.length,values.length);
    for (var i=0;i<n;i++) out.push(params[i]+" "+String(values[i]));
    return out.join(", ");
}
function safe(s) { return String(s).replace(/[^A-Za-z0-9_]/g,"_"); }
