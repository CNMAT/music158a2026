/*
    probability-selector.js

    Max/MSP JavaScript probability selector with 1-based index output.

    Object:
        [js probability-selector.js]
        [js probability-selector.js 4]

    Optional argument:
        One positive integer specifying how many weights the left inlet expects.

    Right inlet:
        One positive integer specifying how many weights the left inlet expects.

    Left inlet:
        A numeric list of exactly the expected length loads the probability weights.
        A bang selects and outputs one 1-based index.

    Outlet:
        The selected index, beginning with index 1.

    Example:
        Right inlet: 2
        Left inlet:  50 50
        Left inlet:  bang

        Output:
            1 or 2, each with probability 0.5

    Normalization:
        Input weights do not need to sum to 1.0 or 100.
        Each weight is divided by the total of all weights.
*/

autowatch = 1;
inlets = 2;
outlets = 1;

setinletassist(0, "Numeric weight list, or bang to select");
setinletassist(1, "Positive integer: expected number of weights");
setoutletassist(0, "Selected 1-based index");

var expected_count = 0;
var normalized_weights = [];
var cumulative_weights = [];
var distribution_ready = false;


/* ---------------------------- Initialization ---------------------------- */

if (jsarguments.length > 1) {
    setExpectedCount(jsarguments[1], "object argument");
}

if (jsarguments.length > 2) {
    post("probability-selector: only one optional argument is accepted; extra arguments were ignored.\n");
}


/* ----------------------------- Input methods ----------------------------- */

function bang()
{
    if (inlet === 0) {
        chooseIndex();
    } else {
        post("probability-selector: right inlet expected a positive integer, but received bang.\n");
    }
}


function msg_int(value)
{
    if (inlet === 0) {
        loadWeights([value]);
    } else {
        setExpectedCount(value, "right inlet");
    }
}


function msg_float(value)
{
    if (inlet === 0) {
        loadWeights([value]);
    } else {
        post(
            "probability-selector: right inlet expected a positive integer, but received float "
            + value + ".\n"
        );
    }
}


function list()
{
    var received = arrayfromargs(arguments);

    if (inlet === 0) {
        loadWeights(received);
    } else {
        post(
            "probability-selector: right inlet expected one positive integer, but received list: "
            + formatList(received) + ".\n"
        );
    }
}


function anything()
{
    var args = arrayfromargs(arguments);
    var complete_message = [messagename].concat(args);

    if (inlet === 0) {
        post(
            "probability-selector: left inlet expected a numeric weight list or bang, but received: "
            + formatList(complete_message) + ".\n"
        );
    } else {
        post(
            "probability-selector: right inlet expected one positive integer, but received: "
            + formatList(complete_message) + ".\n"
        );
    }
}


/* -------------------------- Expected list length -------------------------- */

function setExpectedCount(value, source)
{
    var number = Number(value);

    if (!isFinite(number) || Math.floor(number) !== number || number <= 0) {
        post(
            "probability-selector: " + source
            + " expected a positive integer, but received "
            + value + ".\n"
        );
        return;
    }

    expected_count = number;

    /*
        A new expected count invalidates the previous probability table.
        A new list of exactly expected_count weights must now arrive.
    */
    normalized_weights = [];
    cumulative_weights = [];
    distribution_ready = false;
}


/* --------------------------- Weight-list loading -------------------------- */

function loadWeights(received)
{
    var checked = [];
    var sum = 0.0;
    var i;
    var value;

    if (expected_count <= 0) {
        post(
            "probability-selector: no expected list length has been set. "
            + "Send a positive integer to the right inlet or supply one object argument. "
            + "Received left-inlet data: " + formatList(received) + ".\n"
        );
        return;
    }

    if (received.length !== expected_count) {
        post(
            "probability-selector: expected " + expected_count
            + " numeric weight" + plural(expected_count)
            + ", but received " + received.length
            + ": " + formatList(received) + ".\n"
        );
        return;
    }

    for (i = 0; i < received.length; i++) {
        value = Number(received[i]);

        if (!isFinite(value)) {
            post(
                "probability-selector: expected numeric weights, but item "
                + (i + 1) + " was not a finite number: "
                + received[i] + ". Full input: "
                + formatList(received) + ".\n"
            );
            return;
        }

        if (value < 0) {
            post(
                "probability-selector: probability weights cannot be negative. "
                + "Item " + (i + 1) + " was " + value
                + ". Full input: " + formatList(received) + ".\n"
            );
            return;
        }

        checked.push(value);
        sum += value;
    }

    if (sum <= 0.0) {
        post(
            "probability-selector: the received weights sum to 0 and cannot be normalized: "
            + formatList(received) + ".\n"
        );
        return;
    }

    normalized_weights = [];
    cumulative_weights = [];

    var running_total = 0.0;

    for (i = 0; i < checked.length; i++) {
        normalized_weights[i] = checked[i] / sum;
        running_total += normalized_weights[i];
        cumulative_weights[i] = running_total;
    }

    /*
        Force the final cumulative boundary to exactly 1.0 to avoid
        floating-point accumulation error.
    */
    cumulative_weights[cumulative_weights.length - 1] = 1.0;
    distribution_ready = true;
}


/* ----------------------------- Random choice ----------------------------- */

function chooseIndex()
{
    var random_value;
    var i;

    if (!distribution_ready) {
        post(
            "probability-selector: bang received, but no valid probability list is loaded.\n"
        );
        return;
    }

    random_value = Math.random();

    for (i = 0; i < cumulative_weights.length; i++) {
        if (random_value < cumulative_weights[i]) {
            outlet(0, i + 1);
            return;
        }
    }

    /*
        Defensive fallback. The final cumulative value is always 1.0,
        so this should not normally be reached.
    */
    outlet(0, cumulative_weights.length);
}


/* ------------------------------ Utilities ------------------------------- */

function formatList(items)
{
    if (!items || items.length === 0) {
        return "[empty]";
    }

    return items.join(" ");
}


function plural(number)
{
    return number === 1 ? "" : "s";
}
