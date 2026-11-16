/*
    amxd_randomize_direct_parameters.js
    V26

    Generic one-bang randomizer for each AMXD Direct_Parameter_Messaging
    subpatcher. Arguments are repeating groups of:

        parameter_name minimum maximum mode

    mode is "float" or "int". Input gain, output gain, and wet/dry controls
    are intentionally omitted from the argument list. Each matching number box is updated through its scripting name
    random_<parameter_name>, and the native AMXD setter is emitted from outlet 1.
*/

autowatch = 1;
inlets = 1;
outlets = 1;

var args = arrayfromargs(jsarguments).slice(1);

function bang()
{
    for (var i = 0; i + 3 < args.length; i += 4) {
        var name = String(args[i]);
        var minimum = Number(args[i + 1]);
        var maximum = Number(args[i + 2]);
        var mode = String(args[i + 3]);
        var value = random_value(minimum, maximum, mode);

        set_displayed_value(name, value);
        outlet(0, name, value);
    }
}

function random_value(minimum, maximum, mode)
{
    if (minimum === maximum)
        return minimum;

    if (mode === "int")
        return Math.floor(minimum + Math.random() * (maximum - minimum + 1));

    return Math.round((minimum + Math.random() * (maximum - minimum)) * 1000) / 1000;
}

function set_displayed_value(name, value)
{
    var scripting_name = "random_" + name.replace(/[^A-Za-z0-9_]/g, "_");
    var box = this.patcher.getnamed(scripting_name);

    if (!box)
        return;

    try {
        box.message("set", value);
    } catch (e) {
        try {
            box.setvalueof(value);
        } catch (e2) {
            post("amxd_randomize_direct_parameters.js: unable to update " + name + "\n");
        }
    }
}
