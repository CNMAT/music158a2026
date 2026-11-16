/*
    abl_help_preset_bank.js
    ABL v26-style 24 editable message-box preset slots.

    Inlet 0: store N, storeclean N, recall N
    Inlet 1: message stream from the large working preset or slot messages
    Outlet 0: recalled state -> parent state-capture/router -> ABL object
*/
autowatch=1;
inlets=2;
outlets=1;
var MAX_SLOTS=24, mode="idle", target_slot=1, buffer=[];
function store(n) { do_store(n,true); }
function storeclean(n) { do_store(n,false); }
function do_store(n,dirty)
{
    if (inlet!==0) return;
    target_slot=valid_slot(n); buffer=[]; mode="store";
    var parent=this.patcher.parentpatcher; if (!parent) { mode="idle"; return; }
    var working=parent.getnamed("fx_preset_recall"); if (!working) { mode="idle"; return; }
    working.message("bang"); write_slot(target_slot,buffer); if (dirty) mark_top_patcher_dirty(); mode="idle";
}
function recall(n)
{
    if (inlet!==0) return;
    target_slot=valid_slot(n); buffer=[]; mode="recall";
    var slot=get_slot(target_slot); if (!slot) { mode="idle"; return; }
    slot.message("bang"); write_working_box(buffer); mode="idle";
}
function anything() { if (inlet===1) receive_message([messagename].concat(arrayfromargs(arguments))); }
function list() { if (inlet===1) receive_message(["list"].concat(arrayfromargs(arguments))); }
function msg_int(v) { if (inlet===1) receive_message([v]); }
function msg_float(v) { if (inlet===1) receive_message([v]); }
function receive_message(msg)
{
    if (mode==="store") { buffer.push(msg); return; }
    if (mode==="recall") { buffer.push(msg); output_message(msg); return; }
    output_message(msg);
}
function output_message(msg) { if (msg && msg.length) outlet.apply(this,[0].concat(msg)); }
function write_slot(n,messages) { var s=get_slot(n); if (s) write_message_box(s,messages); }
function write_working_box(messages)
{
    var parent=this.patcher.parentpatcher; if (!parent) return;
    var w=parent.getnamed("fx_preset_recall"); if (w) write_message_box(w,messages);
}
function write_message_box(box,messages)
{
    box.message("set"); if (!messages || !messages.length) return;
    box.message.apply(box,["set"].concat(messages[0]));
    for (var i=1;i<messages.length;i++) box.message.apply(box,["append",","].concat(messages[i]));
}
function get_slot(n) { return this.patcher.getnamed("preset_slot_"+n); }
function valid_slot(n) { var v=parseInt(n,10); if(isNaN(v))v=1; if(v<1)v=1; if(v>MAX_SLOTS)v=MAX_SLOTS; return v; }
function mark_top_patcher_dirty()
{
    var p=this.patcher; while(p && p.parentpatcher) p=p.parentpatcher;
    if(p) { try{p.dirty();}catch(e){try{p.message("dirty");}catch(e2){}} }
}
