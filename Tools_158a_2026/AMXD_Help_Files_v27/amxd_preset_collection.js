/*
    amxd_preset_collection.js
    v6 — empty startup state plus Choose Preset menu sentinel

    INLETS
    0 : commands
          store N
          recall N
    1 : message stream from:
          - large working preset message in parent patcher
          - 24 editable slot message boxes in this subpatcher

    OUTLETS
    0 : recalled parameter/value messages -> parameter preset engine -> amxd~
    1 : complete `set ...` update for the parent LAST PRESET display
    2 : silent `set <index>` update for the parent preset menu

    STORE
      Reads the large working preset, accumulates its comma-separated messages,
      writes them into the selected ordinary Max message box, and marks the
      TOP-LEVEL help patch dirty so Max knows it should be saved.

    RECALL
      Ramps the named output-gain line to silence, waits for that ramp, applies
      the selected AMXD state, and ramps to the stored Final_Output_Gain.
      Empty slots clear both preset displays, remain silent, and post their
      slot number in the Max window.

    Slots are ordinary Max message boxes, so they remain directly editable.
*/

autowatch = 1;
inlets = 2;
outlets = 3;

var MAX_SLOTS = 24;
var MENU_CHOOSE_INDEX = 24;
var DEVICE_LABEL = jsarguments.length > 1 ? String(jsarguments[1]) : "AMXD";
var FADE_MS = jsarguments.length > 2 ? Math.max(0, Number(jsarguments[2])) : 150;
var SILENCE_DB = jsarguments.length > 3 ? Number(jsarguments[3]) : -80;
var FALLBACK_GAIN_DB = -65;
var mode = "idle";
var target_slot = 1;
var buffer = [];
var pending_slot = 0;
var recall_task = new Task(finish_recall, this);
var initialize_task = new Task(initialize_empty_state, this);

function loadbang()
{
    // Let the parent patch and named gain line finish instantiating first.
    initialize_task.cancel();
    initialize_task.schedule(100);
}

function initialize_empty_state()
{
    recall_task.cancel();
    pending_slot = 0;
    buffer = [];
    mode = "idle";

    write_working_box([]);
    output_working_update([]);
    output_menu_update(MENU_CHOOSE_INDEX);
    ramp_output_gain(SILENCE_DB, 0);
}

function no_preset()
{
    if (inlet !== 0)
        return;

    initialize_empty_state();
}

function store(n)
{
    if (inlet !== 0)
        return;

    recall_task.cancel();
    pending_slot = 0;
    target_slot = valid_slot(n);
    buffer = [];
    mode = "store";

    var working = find_working_box();
    if (!working) {
        mode = "idle";
        return;
    }

    // The working message emits every comma-separated component into
    // p Preset Collection inlet 1.
    working.message("bang");

    write_slot(target_slot, buffer);

    // Explicitly mark the top-level .maxhelp dirty so STORE persists
    // when the user saves the patch.
    mark_top_patcher_dirty();

    mode = "idle";
}

function recall(n)
{
    if (inlet !== 0)
        return;

    recall_task.cancel();
    pending_slot = valid_slot(n);
    buffer = [];
    mode = "idle";

    ramp_output_gain(SILENCE_DB, FADE_MS);
    recall_task.schedule(FADE_MS);
}

function finish_recall()
{
    if (pending_slot < 1)
        return;

    target_slot = pending_slot;
    pending_slot = 0;
    buffer = [];
    mode = "recall";

    var slot = get_slot(target_slot);
    if (!slot) {
        mode = "idle";
        return;
    }

    slot.message("bang");

    // During the bang, every stored parameter message is forwarded to the
    // parameter engine and accumulated here.
    if (buffer.length === 0) {
        write_working_box([]);
        output_working_update([]);
        output_menu_update(MENU_CHOOSE_INDEX);
        ramp_output_gain(SILENCE_DB, 0);
        post(DEVICE_LABEL + ": no preset in slot " + target_slot + "; output muted.\n");
        mode = "idle";
        return;
    }

    output_menu_update(target_slot - 1);

    write_working_box(buffer);
    output_working_update(buffer);

    if (!contains_output_gain(buffer)) {
        ramp_output_gain(FALLBACK_GAIN_DB, FADE_MS);
        post(DEVICE_LABEL + ": preset slot " + target_slot +
            " has no Final_Output_Gain; using " + FALLBACK_GAIN_DB + " dB.\n");
    }

    mode = "idle";
}

function bang()
{
    // An empty Max message box emits a bang. During recall/store it represents
    // no stored preset content and must not become a parameter message.
    if (inlet === 1)
        return;
}

function anything()
{
    if (inlet !== 1)
        return;

    var a = arrayfromargs(arguments);
    receive_message([messagename].concat(a));
}

function list()
{
    if (inlet !== 1)
        return;

    receive_message(["list"].concat(arrayfromargs(arguments)));
}

function msg_int(v)
{
    if (inlet === 1)
        receive_message([v]);
}

function msg_float(v)
{
    if (inlet === 1)
        receive_message([v]);
}

function receive_message(msg)
{
    if (mode === "store") {
        buffer.push(msg);
        return;
    }

    if (mode === "recall") {
        buffer.push(msg);
        output_message(msg);
        return;
    }

    // Manual click on a stored slot while the subpatcher is open.
    output_message(msg);
}

function output_message(msg)
{
    if (!msg || msg.length === 0)
        return;

    outlet.apply(this, [0].concat(msg));
}

function write_slot(n, messages)
{
    var slot = get_slot(n);
    if (!slot)
        return;

    write_message_box(slot, messages);
}

function write_working_box(messages)
{
    var working = find_working_box();
    if (!working)
        return;

    write_message_box(working, messages);
}

function find_working_box()
{
    var p = this.patcher;

    while (p) {
        var working = p.getnamed("fx_preset_recall");
        if (working)
            return working;
        p = p.parentpatcher;
    }

    return null;
}

function output_working_update(messages)
{
    var atoms = [];

    for (var i = 0; i < messages.length; i++) {
        if (i > 0)
            atoms.push(",");
        atoms = atoms.concat(messages[i]);
    }

    outlet.apply(this, [1, "set"].concat(atoms));
}

function output_menu_update(index)
{
    outlet(2, "set", index);
}

function contains_output_gain(messages)
{
    for (var i = 0; i < messages.length; i++) {
        if (messages[i] && messages[i].length > 0 &&
            String(messages[i][0]) === "Final_Output_Gain")
            return true;
    }
    return false;
}

function ramp_output_gain(value, milliseconds)
{
    var line = find_named_object("preset_output_gain_line");
    if (!line)
        return;

    try {
        line.message("list", value, milliseconds);
    } catch (e) {
        post(DEVICE_LABEL + ": unable to control preset output-gain ramp.\n");
    }
}

function find_named_object(varname)
{
    var p = this.patcher;

    while (p) {
        var box = p.getnamed(varname);
        if (box)
            return box;
        p = p.parentpatcher;
    }

    return null;
}

function write_message_box(box, messages)
{
    box.message("set");

    if (!messages || messages.length === 0)
        return;

    box.message.apply(box, ["set"].concat(messages[0]));

    for (var i = 1; i < messages.length; i++)
        box.message.apply(box, ["append", ","].concat(messages[i]));
}

function get_slot(n)
{
    return this.patcher.getnamed("preset_slot_" + n);
}

function valid_slot(n)
{
    var v = parseInt(n, 10);

    if (isNaN(v))
        v = 1;
    if (v < 1)
        v = 1;
    if (v > MAX_SLOTS)
        v = MAX_SLOTS;

    return v;
}

function mark_top_patcher_dirty()
{
    var p = this.patcher;

    // Traverse from p Preset Collection to the containing help patch.
    while (p && p.parentpatcher)
        p = p.parentpatcher;

    if (p) {
        try {
            p.dirty();
        } catch (e) {
            try {
                p.message("dirty");
            } catch (e2) {
                post("amxd_preset_collection.js: could not mark patch dirty\n");
            }
        }
    }
}
