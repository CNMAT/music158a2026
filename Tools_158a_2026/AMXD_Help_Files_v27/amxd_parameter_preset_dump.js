/*
    amxd_parameter_preset_dump.js
    v10 — nested support plus output-gain preset ramping

    Robust two-phase AMXD state capture.

    INLETS
    0 : bang -> capture complete exposed state
        recalled preset messages -> restore AMXD parameters and output gains
    1 : amxd~ outlet 4 -> getparams/getvalue replies

    OUTLETS
    0 : getparams/getvalue requests and recalled parameters -> amxd~
    1 : one complete `set ...` message for the parent LAST PRESET display

    PHASE 1 — PARAMETER ENUMERATION
      getparams may return a burst/stream of:
          info param <name>
      or a list containing several names.
      ALL parameter names are accumulated first.
      A short quiet-period timer marks the end of enumeration.

    PHASE 2 — VALUE QUERY
      Every collected AMXD parameter is explicitly queried:
          getvalue <parameter-name>
      This reads the current state whether or not a UI control has been touched.
      The named final_output_gain control is then appended as Final_Output_Gain.
      Dry/wet balance is already an exposed AMXD parameter and therefore does
      not require a separate external gain control.

    FINAL WRITE
      After the final value is captured, ONE 'set' call writes the complete
      comma-separated preset into the message box named fx_preset_recall:

          Param A value, Param B value, Param C value, ...

      Named controls may live in this patcher or a containing patcher, allowing
      the JavaScript object to remain inside PRESET_BUILD_SYSTEM. Recalled
      Final_Output_Gain values use the shared 150 ms line ramp when available.
*/

autowatch = 1;
inlets = 2;
outlets = 2;

var PHASE_IDLE = 0;
var PHASE_COLLECT_PARAMS = 1;
var PHASE_QUERY_VALUES = 2;

var phase = PHASE_IDLE;

var params = [];
var values = [];
var current = 0;
var waiting_for_value = 0;
var PRESET_RAMP_MS = 150;

var finish_param_task = new Task(finish_parameter_collection, this);
var query_task = new Task(issue_query, this);

// Quiet time after the last info param message.
// getparams enumeration is normally synchronous/bursty; 25 ms gives
// Max plenty of time to deliver the complete series before querying.
var PARAM_QUIET_MS = 25;

function bang()
{
    if (inlet !== 0)
        return;

    start_capture();
}

function start_capture()
{
    finish_param_task.cancel();
    query_task.cancel();

    phase = PHASE_COLLECT_PARAMS;
    params = [];
    values = [];
    current = 0;
    waiting_for_value = 0;

    clear_preset_box();
    outlet(0, "getparams");

    // Safety: if getparams comes back as no parameters, finish cleanly.
    finish_param_task.schedule(PARAM_QUIET_MS);
}

function anything()
{
    var a = arrayfromargs(arguments);

    if (inlet === 0) {
        if (restore_external_gain(messagename, a))
            return;

        // Preserve the native Max anything-message form used by the original
        // working V26 engine. Max expands the atom array correctly here.
        outlet(0, messagename, a);
        return;
    }

    if (inlet !== 1)
        return;

    if (phase === PHASE_COLLECT_PARAMS) {
        if (messagename === "info" && a.length > 0 && a[0] === "param") {
            add_parameter_atoms(a.slice(1));
            restart_param_quiet_timer();
            return;
        }

        if (messagename === "param") {
            add_parameter_atoms(a);
            restart_param_quiet_timer();
            return;
        }

        return;
    }

    if (phase === PHASE_QUERY_VALUES && waiting_for_value) {
        var v = extract_value_reply(messagename, a);
        if (v !== null) {
            accept_value(v);
            return;
        }
    }
}

function list()
{
    var a = arrayfromargs(arguments);

    if (inlet === 0) {
        outlet(0, a);
        return;
    }

    if (inlet !== 1)
        return;

    if (phase === PHASE_COLLECT_PARAMS) {
        if (a.length > 1 && a[0] === "info" && a[1] === "param") {
            add_parameter_atoms(a.slice(2));
            restart_param_quiet_timer();
            return;
        }

        if (a.length > 0 && a[0] === "param") {
            add_parameter_atoms(a.slice(1));
            restart_param_quiet_timer();
            return;
        }

        return;
    }

    if (phase === PHASE_QUERY_VALUES && waiting_for_value) {
        var v = extract_value_reply("list", a);
        if (v !== null)
            accept_value(v);
    }
}

function msg_int(v)
{
    if (inlet === 0) {
        outlet(0, v);
        return;
    }

    if (inlet === 1 && phase === PHASE_QUERY_VALUES && waiting_for_value)
        accept_value(v);
}

function msg_float(v)
{
    if (inlet === 0) {
        outlet(0, v);
        return;
    }

    if (inlet === 1 && phase === PHASE_QUERY_VALUES && waiting_for_value)
        accept_value(v);
}

function add_parameter_atoms(a)
{
    for (var i = 0; i < a.length; i++) {
        var name = a[i];

        // Avoid duplicate parameter names if getparams emits repeated info.
        if (index_of(params, name) < 0)
            params.push(name);
    }
}

function restart_param_quiet_timer()
{
    finish_param_task.cancel();
    finish_param_task.schedule(PARAM_QUIET_MS);
}

function finish_parameter_collection()
{
    if (phase !== PHASE_COLLECT_PARAMS)
        return;

    finish_param_task.cancel();

    if (params.length === 0) {
        phase = PHASE_IDLE;
        append_external_gains();
        write_complete_preset();
        emit_complete_preset();
        return;
    }

    phase = PHASE_QUERY_VALUES;
    values = [];
    current = 0;
    waiting_for_value = 0;

    schedule_query();
}

function schedule_query()
{
    query_task.cancel();
    query_task.schedule(2);
}

function issue_query()
{
    if (phase !== PHASE_QUERY_VALUES)
        return;

    if (current >= params.length) {
        finish_capture();
        return;
    }

    waiting_for_value = 1;

    // params[current] is already a Max symbol; spaces in a parameter name
    // remain part of that symbol when emitted as an outlet argument.
    outlet(0, "getvalue", params[current]);
}

function accept_value(v)
{
    if (phase !== PHASE_QUERY_VALUES || !waiting_for_value)
        return;

    values.push(v);
    current++;
    waiting_for_value = 0;

    if (current >= params.length)
        finish_capture();
    else
        schedule_query();
}

function finish_capture()
{
    query_task.cancel();
    waiting_for_value = 0;
    phase = PHASE_IDLE;

    append_external_gains();
    write_complete_preset();

    // Fire outlet 2 ONCE, only after complete accumulation.
    emit_complete_preset();
}

function append_external_gains()
{
    append_named_value("Final_Output_Gain", "final_output_gain");
}

function append_named_value(preset_name, varname)
{
    var box = find_named_object(varname);
    if (!box)
        return;

    try {
        var v = box.getvalueof();
        if (v instanceof Array)
            v = v[0];

        params.push(preset_name);
        values.push(v);
    } catch (e) {
        post("amxd_parameter_preset_dump.js: unable to capture " + varname + "\n");
    }
}

function restore_external_gain(selector, a)
{
    var varname = null;

    if (selector === "Final_Output_Gain")
        varname = "final_output_gain";
    else
        return false;

    if (a.length < 1)
        return true;

    var line = find_named_object("preset_output_gain_line");
    if (line) {
        try {
            line.message("list", a[0], PRESET_RAMP_MS);
            return true;
        } catch (line_error) {
            post("amxd_parameter_preset_dump.js: unable to ramp " + varname + "\n");
        }
    }

    var box = find_named_object(varname);
    if (!box)
        return true;

    try {
        box.setvalueof(a[0]);
    } catch (e) {
        try {
            box.message(a[0]);
        } catch (e2) {
            post("amxd_parameter_preset_dump.js: unable to restore " + varname + "\n");
        }
    }

    return true;
}

function write_complete_preset()
{
    var box = find_named_object("fx_preset_recall");
    if (!box)
        return;

    if (params.length === 0 || values.length === 0) {
        box.message("set");
        return;
    }

    // Build one atom list for ONE message-box set operation:
    //   Param1 value1 , Param2 value2 , Param3 value3 ...
    //
    // Calling Maxobj.message() directly bypasses a patch-cord stream:
    // the box receives a single SET command containing the complete state.
    var atoms = [];

    for (var i = 0; i < params.length && i < values.length; i++) {
        if (i > 0)
            atoms.push(",");

        atoms.push(params[i]);
        atoms.push(values[i]);
    }

    var argv = ["set"].concat(atoms);

    try {
        box.message.apply(box, argv);
    } catch (e) {
        // Fallback: one complete string stored as the message value.
        try {
            box.setvalueof(build_preset_text());
        } catch (e2) {
            post("amxd_parameter_preset_dump.js: unable to write preset box\n");
        }
    }
}

function clear_preset_box()
{
    var box = find_named_object("fx_preset_recall");
    if (box)
        box.message("set");
}

function build_preset_text()
{
    var parts = [];
    var n = Math.min(params.length, values.length);

    for (var i = 0; i < n; i++)
        parts.push(params[i] + " " + atom_text(values[i]));

    return parts.join(", ");
}

function build_preset_atoms()
{
    var atoms = [];
    var n = Math.min(params.length, values.length);

    for (var i = 0; i < n; i++) {
        if (i > 0)
            atoms.push(",");
        atoms.push(params[i]);
        atoms.push(values[i]);
    }

    return atoms;
}

function emit_complete_preset()
{
    var atoms = build_preset_atoms();
    outlet.apply(this, [1, "set"].concat(atoms));
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

function extract_value_reply(selector, a)
{
    // Current amxd~ implementations can decorate replies with symbols.
    // Since exactly ONE getvalue request is outstanding at a time,
    // the final numeric atom is the queried parameter's value.
    for (var i = a.length - 1; i >= 0; i--) {
        if (typeof a[i] === "number")
            return a[i];

        var n = numeric_symbol(a[i]);
        if (n !== null)
            return n;
    }

    // Bare numeric selector.
    var sn = numeric_symbol(selector);
    if (sn !== null)
        return sn;

    // Enum/symbol fallback: prefer the last atom if one exists.
    if (a.length > 0)
        return a[a.length - 1];

    return null;
}

function numeric_symbol(v)
{
    if (typeof v !== "string" || v === "")
        return null;

    var n = Number(v);
    if (!isNaN(n))
        return n;

    return null;
}

function atom_text(v)
{
    return String(v);
}

function index_of(a, value)
{
    for (var i = 0; i < a.length; i++) {
        if (a[i] === value)
            return i;
    }
    return -1;
}
