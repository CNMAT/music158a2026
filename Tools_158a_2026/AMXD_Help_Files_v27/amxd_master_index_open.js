autowatch = 1;
inlets = 1;
outlets = 1;

var targetName = "";
var attempts = 0;
var repositionTask = new Task(repositionTarget, this);

function anything() {
    var outgoing = arrayfromargs(messagename, arguments);
    if ((messagename === "loadunique" || messagename === "load") && arguments.length) {
        targetName = String(arguments[0]).replace(/^.*[\\\/]/, "").replace(/\.maxhelp$/i, "");
        attempts = 0;
        repositionTask.cancel();
    }

    // Open or reactivate the requested patch first. The subsequent Task runs
    // after pcontrol and the Help Library have performed their own placement.
    outlet(0, outgoing);
    if (targetName) repositionTask.schedule(25);
}

function repositionTarget() {
    var wanted = targetName.toLowerCase();
    var patcher = max.frontpatcher;
    var wind = patcher ? patcher.wind : null;
    var safety = 0;

    while (wind && safety < 256) {
        var title = String(wind.title || "").replace(/\.maxhelp$/i, "").toLowerCase();
        if (title.indexOf(wanted) !== -1) {
            // Wind.location is [left, top, right, bottom] in global screen
            // coordinates. Repeat briefly to outlast late Help Library moves.
            wind.location = [37, 288, 1276, 880];
            wind.bringtofront();
            break;
        }
        wind = wind.next;
        safety++;
    }

    attempts++;
    if (attempts < 12) repositionTask.schedule(100);
}
