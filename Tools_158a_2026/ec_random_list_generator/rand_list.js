autowatch = 1;
inlets = 1;
outlets = 2; // 0 = list output, 1 = status/debug

// --------------------
// persistent settings
// --------------------
var listLength = 6;
var minValue = 1;
var maxValue = 15;

var allowRepeatsFlag = 1; // 1 = allow repeats, 0 = no repeats
var sortMode = 0;         // 0 = none, 1 = ascending, -1 = descending
var parityMode = 0;       // 0 = any, 1 = odd only, 2 = even only

var filterMinValue = null;
var filterMaxValue = null;

var lastList = [];

// RNG state
var rngSeed = 1;
var initCount = 0;
var lastInitSeed = 1;
var lastBurnCount = 0;

// cycle-mutate state
var cycleModeActive = 0;
var cycleBlockSize = 1;
var cyclePosition = 0;        // zero-based start slot for next cycle mutation
var cycleHoldFirstBangFlag = 0;
var pendingGenerateFlag = 0;   // next bang generates a fresh random list
var pendingMaskActive = 0;
var pendingMask = [];

// migrate state
var migrateModeActive = 0;
var migrateStepSize = 1;
var migrateRotation = 0;       // right-rotation amount for the next migrate bang
var migrateBaseList = [];

// --------------------
// lifecycle
// --------------------
function loadbang()
{
    init();
}

// --------------------
// core public messages
// --------------------
function bang()
{
    if (migrateModeActive) {
        performMigrateBang();
        return;
    }

    if (cycleHoldFirstBangFlag) {
        cycleHoldFirstBangFlag = 0;

        if (lastList.length < 1) {
            errorOut("no base list available for held first bang");
            return;
        }

        outlet(0, lastList);
        statusOut(["bang", "heldbaseoutput", "length", lastList.length]);
        return;
    }

    if (pendingGenerateFlag) {
        pendingGenerateFlag = 0;
        generateNow();
        return;
    }

    if (pendingMaskActive) {
        performPendingMaskMutation();
        return;
    }

    if (cycleModeActive) {
        cycleStep();
        return;
    }

    generateNow();
}

function generate()
{
    if (migrateModeActive) {
        errorOut("generate is suspended while rotate is active; use resetdefaults first");
        return;
    }

    pendingGenerateFlag = 1;
    cycleHoldFirstBangFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    cycleModeActive = 0;
    cyclePosition = 0;

    statusOut(["generatearmed", "length", listLength]);
}

function generateNow()
{
    var result = buildRandomList();
    if (result === null) {
        return;
    }

    applySort(result);
    lastList = result.slice(0);
    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];

    outlet(0, result);
    statusOut(["generated", "length", result.length]);
}

function init()
{
    initCount++;

    var now = (new Date()).getTime() >>> 0;
    var salt = Math.floor(Math.random() * 4294967295) >>> 0;
    var counterSalt = ((initCount * 2654435761) >>> 0);

    var s = (now ^ salt ^ counterSalt) >>> 0;
    if (s === 0) {
        s = 1;
    }

    srand(s);
    lastInitSeed = s;

    lastBurnCount = randInt(64, 1024);
    var i;
    for (i = 0; i < lastBurnCount; i++) {
        randUnit();
    }

    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    migrateModeActive = 0;
    migrateStepSize = 1;
    migrateRotation = 0;
    migrateBaseList = [];
    statusOut(["init", "seed", lastInitSeed, "burn", lastBurnCount]);
}

function resetdefaults()
{
    listLength = 6;
    minValue = 0;
    maxValue = 1;

    allowRepeatsFlag = 1;
    sortMode = 0;
    parityMode = 0;

    filterMinValue = null;
    filterMaxValue = null;

    init();

    lastList = [1, 0, 0, 0, 0, 0];

    cycleModeActive = 0;
    cycleBlockSize = 1;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 1;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    migrateModeActive = 0;
    migrateStepSize = 1;
    migrateRotation = 0;
    migrateBaseList = [];

    statusOut([
        "resetdefaults",
        "length", listLength,
        "range", minValue, maxValue,
        "allowrepeats", allowRepeatsFlag,
        "sort", sortMode,
        "parity", parityMode,
        "filtermin", "none",
        "filtermax", "none",
        "cycle", "off",
        "cyclesize", cycleBlockSize,
        "cyclepos", cyclePosition + 1,
        "holdfirstbang", cycleHoldFirstBangFlag,
        "migrate", "off"
    ]);
}

function seed(v)
{
    var n = toInt(v);
    if (n === null) {
        errorOut("seed requires an integer");
        return;
    }

    if (n === 0) {
        n = 1;
    }

    srand(n);
    lastInitSeed = n;
    lastBurnCount = 0;
    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];

    statusOut(["seed", lastInitSeed]);
}

function length(v)
{
    var n = toInt(v);
    if (n === null || n < 1) {
        errorOut("length must be an integer >= 1");
        return;
    }

    listLength = n;

    if (lastList.length > listLength) {
        lastList = lastList.slice(0, listLength);
    }
    normalizeCycleState();

    statusOut(["length", listLength]);
}

function range(a, b)
{
    var lo = toInt(a);
    var hi = toInt(b);

    if (lo === null || hi === null) {
        errorOut("range requires two integers");
        return;
    }

    if (lo <= hi) {
        minValue = lo;
        maxValue = hi;
    } else {
        minValue = hi;
        maxValue = lo;
    }

    statusOut(["range", minValue, maxValue]);
}

function allowrepeats(v)
{
    var n = toInt(v);
    if (n === null) {
        errorOut("allowrepeats requires 0 or 1");
        return;
    }

    allowRepeatsFlag = (n !== 0) ? 1 : 0;
    statusOut(["allowrepeats", allowRepeatsFlag]);
}

function repeats(v)
{
    allowrepeats(v);
}

function sort(v)
{
    if (typeof v === "string") {
        var s = String(v).toLowerCase();
        if (s === "asc" || s === "ascending" || s === "up") {
            sortMode = 1;
        } else if (s === "desc" || s === "descending" || s === "down") {
            sortMode = -1;
        } else if (s === "none" || s === "off" || s === "0") {
            sortMode = 0;
        } else {
            errorOut("sort accepts asc, desc, none, 1, -1, or 0");
            return;
        }
    } else {
        var n = toInt(v);
        if (n === null) {
            errorOut("sort accepts asc, desc, none, 1, -1, or 0");
            return;
        }

        if (n > 0) sortMode = 1;
        else if (n < 0) sortMode = -1;
        else sortMode = 0;
    }

    statusOut(["sort", sortMode]);
}

function parity(v)
{
    if (typeof v === "string") {
        var s = String(v).toLowerCase();

        if (s === "any" || s === "all" || s === "none" || s === "0") {
            parityMode = 0;
        } else if (s === "odd" || s === "1") {
            parityMode = 1;
        } else if (s === "even" || s === "2") {
            parityMode = 2;
        } else {
            errorOut("parity accepts any, odd, even, 0, 1, or 2");
            return;
        }
    } else {
        var n = toInt(v);
        if (n === null || n < 0 || n > 2) {
            errorOut("parity accepts 0(any), 1(odd), or 2(even)");
            return;
        }
        parityMode = n;
    }

    statusOut(["parity", parityMode]);
}

function filtermin(v)
{
    var n = toInt(v);
    if (n === null) {
        errorOut("filtermin requires an integer");
        return;
    }
    filterMinValue = n;
    statusOut(["filtermin", filterMinValue]);
}

function filtermax(v)
{
    var n = toInt(v);
    if (n === null) {
        errorOut("filtermax requires an integer");
        return;
    }
    filterMaxValue = n;
    statusOut(["filtermax", filterMaxValue]);
}

function clearfilter()
{
    filterMinValue = null;
    filterMaxValue = null;
    parityMode = 0;
    statusOut(["filters", "cleared"]);
}

function getstate()
{
    statusOut([
        "state",
        "length", listLength,
        "range", minValue, maxValue,
        "allowrepeats", allowRepeatsFlag,
        "sort", sortMode,
        "parity", parityMode,
        "filtermin", (filterMinValue === null ? "none" : filterMinValue),
        "filtermax", (filterMaxValue === null ? "none" : filterMaxValue),
        "seed", lastInitSeed,
        "burn", lastBurnCount,
        "cycleactive", cycleModeActive,
        "cyclesize", cycleBlockSize,
        "cyclepos", (lastList.length ? cyclePosition + 1 : 0),
        "holdfirstbang", cycleHoldFirstBangFlag,
        "pendinggenerate", pendingGenerateFlag,
        "pendingmask", pendingMaskActive,
        "migrateactive", migrateModeActive,
        "migratestep", migrateStepSize,
        "migraterotation", migrateRotation,
        "lastlength", lastList.length
    ]);
}

function getlast()
{
    if (lastList.length < 1) {
        statusOut(["last", "none"]);
        return;
    }

    if (migrateModeActive) {
        statusOut(["last", "migrateactive", "usebang"]);
        return;
    }

    cycleHoldFirstBangFlag = 1;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    cycleModeActive = 0;
    cyclePosition = 0;

    statusOut(["lastarmed", "length", lastList.length]);
}

function make()
{
    if (migrateModeActive) {
        errorOut("make is suspended while migrate is active; use resetdefaults first");
        return;
    }

    if (arguments.length > 0) {
        var n0 = toInt(arguments[0]);
        if (n0 !== null && n0 > 0) {
            listLength = n0;
        }
    }

    if (arguments.length > 2) {
        var lo = toInt(arguments[1]);
        var hi = toInt(arguments[2]);
        if (lo !== null && hi !== null) {
            if (lo <= hi) {
                minValue = lo;
                maxValue = hi;
            } else {
                minValue = hi;
                maxValue = lo;
            }
        }
    }

    if (arguments.length > 3) {
        var ar = toInt(arguments[3]);
        if (ar !== null) {
            allowRepeatsFlag = (ar !== 0) ? 1 : 0;
        }
    }

    if (arguments.length > 4) {
        var sm = toInt(arguments[4]);
        if (sm !== null) {
            if (sm > 0) sortMode = 1;
            else if (sm < 0) sortMode = -1;
            else sortMode = 0;
        }
    }

    pendingGenerateFlag = 1;
    cycleHoldFirstBangFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    cycleModeActive = 0;
    cyclePosition = 0;

    statusOut(["makearmed", "length", listLength, "range", minValue, maxValue]);
}

// --------------------
// feed an explicit list into the internal state
// the fed list becomes the new lastList and sets listLength
// the next mutate or cycle-mutate bang acts on this list
// --------------------
function listfeed()
{
    if (migrateModeActive) {
        errorOut("listfeed is suspended while migrate is active; use resetdefaults or send a new migrate message");
        return;
    }

    var a = arrayfromargs(arguments);
    var fed = [];
    var i, n;

    if (a.length < 1) {
        errorOut("listfeed requires one or more integer values");
        return;
    }

    for (i = 0; i < a.length; i++) {
        n = toInt(a[i]);
        if (n === null) {
            errorOut("listfeed accepts integers only");
            return;
        }
        fed.push(n);
    }

    lastList = fed.slice(0);
    listLength = lastList.length;
    cycleHoldFirstBangFlag = 1;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    cycleModeActive = 0;
    cyclePosition = 0;
    normalizeCycleState();

    statusOut(["listfeedarmed", "length", listLength]);
}

function list()
{
    listfeed.apply(this, arguments);
}

// --------------------
// mutate by explicit mask
// 0/keep/hold/k = keep old value
// n/1/x/r/new/replace = replace with new random value
// --------------------
function mutate()
{
    if (migrateModeActive) {
        errorOut("mutate is suspended while rotate is active; use resetdefaults or send a new rotate message");
        return;
    }

    var mask = [];
    var i;

    for (i = 0; i < arguments.length; i++) {
        mask.push(arguments[i]);
    }

    if (mask.length < 1) {
        errorOut("mutate requires a mask, e.g. mutate 0 n 0 0 0 n");
        return;
    }

    ensureBaseList();
    if (lastList.length < 1) {
        return;
    }

    if (mask.length !== lastList.length) {
        errorOut("mask length must equal last generated or listfed list length");
        return;
    }

    pendingMask = mask.slice(0);
    pendingMaskActive = 1;
    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;

    statusOut(["mutatearmed", "replaced", countReplaceSlots(mask), "length", mask.length]);
}

function mutatecycle(v)
{
    if (migrateModeActive) {
        errorOut("mutatecycle is suspended while rotate is active; use resetdefaults or send a new rotate message");
        return;
    }

    var n = toInt(v);
    if (n === null || n < 1) {
        errorOut("mutatecycle requires an integer >= 1");
        return;
    }

    ensureBaseList();
    if (lastList.length < 1) {
        return;
    }

    cycleBlockSize = n;
    if (cycleBlockSize > lastList.length) {
        cycleBlockSize = lastList.length;
    }
    cycleModeActive = 1;
    cycleHoldFirstBangFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];

    statusOut(["cyclearmed", "group", cycleBlockSize, "next", cyclePosition + 1]);
}

function stopcycle()
{
    if (migrateModeActive) {
        errorOut("stopcycle is unavailable while migrate is active; use resetdefaults or send a new migrate message");
        return;
    }

    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    statusOut(["cycle", "stopped"]);
}

function cyclepos(v)
{
    if (migrateModeActive) {
        errorOut("cyclepos is unavailable while migrate is active; use resetdefaults or send a new migrate message");
        return;
    }

    var n = toInt(v);
    if (n === null || n < 1) {
        errorOut("cyclepos requires a 1-based slot index >= 1");
        return;
    }

    ensureBaseList();
    if (lastList.length < 1) {
        return;
    }

    cyclePosition = (n - 1) % lastList.length;
    if (cyclePosition < 0) {
        cyclePosition = 0;
    }
    statusOut(["cycleposition", cyclePosition + 1]);
}

function mutate1() { armAndStep(1); }
function mutate2() { armAndStep(2); }
function mutate3() { armAndStep(3); }
function mutate4() { armAndStep(4); }
function mutate5() { armAndStep(5); }
function mutate6() { armAndStep(6); }
function mutate7() { armAndStep(7); }
function mutate8() { armAndStep(8); }
function mutate9() { armAndStep(9); }
function mutate10() { armAndStep(10); }
function mutate11() { armAndStep(11); }
function mutate12() { armAndStep(12); }
function mutate13() { armAndStep(13); }
function mutate14() { armAndStep(14); }
function mutate15() { armAndStep(15); }
function mutate16() { armAndStep(16); }

function rotate1() { armMigrate(1, arguments); }
function rotate2() { armMigrate(2, arguments); }
function rotate3() { armMigrate(3, arguments); }
function rotate4() { armMigrate(4, arguments); }
function rotate5() { armMigrate(5, arguments); }
function rotate6() { armMigrate(6, arguments); }
function rotate7() { armMigrate(7, arguments); }
function rotate8() { armMigrate(8, arguments); }
function rotate9() { armMigrate(9, arguments); }
function rotate10() { armMigrate(10, arguments); }
function rotate11() { armMigrate(11, arguments); }
function rotate12() { armMigrate(12, arguments); }
function rotate13() { armMigrate(13, arguments); }
function rotate14() { armMigrate(14, arguments); }
function rotate15() { armMigrate(15, arguments); }
function rotate16() { armMigrate(16, arguments); }

// --------------------
// internals
// --------------------
function armAndStep(n)
{
    mutatecycle(n);
}

function armMigrate(step, argsLike)
{
    var args = arrayfromargs(argsLike);
    var base = [];
    var i;
    var n;

    if (args.length > 0) {
        for (i = 0; i < args.length; i++) {
            n = toInt(args[i]);
            if (n === null) {
                errorOut("rotate accepts integers only");
                return;
            }
            base.push(n);
        }
    } else {
        ensureBaseList();
        if (lastList.length < 1) {
            return;
        }
        base = lastList.slice(0);
    }

    listLength = base.length;
    lastList = base.slice(0);
    migrateBaseList = base.slice(0);
    migrateModeActive = 1;
    migrateStepSize = step;
    migrateRotation = 0;

    cycleModeActive = 0;
    cycleBlockSize = 1;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingGenerateFlag = 0;
    pendingMaskActive = 0;
    pendingMask = [];
    normalizeCycleState();

    statusOut(["migratearmed", "step", migrateStepSize, "length", listLength, "firstbang", "base"]);
}

function normalizeCycleState()
{
    if (listLength < 1) {
        cycleModeActive = 0;
        cycleBlockSize = 1;
        cyclePosition = 0;
        cycleHoldFirstBangFlag = 0;
        return;
    }

    if (cycleBlockSize < 1) {
        cycleBlockSize = 1;
    }
    if (cycleBlockSize > listLength) {
        cycleBlockSize = listLength;
    }
    cyclePosition = cyclePosition % listLength;
    if (cyclePosition < 0) {
        cyclePosition += listLength;
    }
}

function ensureBaseList()
{
    if (lastList.length > 0) {
        return;
    }

    var base = buildRandomList();
    if (base === null) {
        return;
    }

    applySort(base);
    lastList = base.slice(0);
    statusOut(["basegenerated", "length", lastList.length]);
}

function cycleStep()
{
    ensureBaseList();
    if (lastList.length < 1) {
        return;
    }

    var len = lastList.length;
    var k = cycleBlockSize;
    if (k < 1) {
        k = 1;
    }
    if (k > len) {
        k = len;
    }

    var mask = [];
    var i;
    for (i = 0; i < len; i++) {
        mask.push(0);
    }
    for (i = 0; i < k; i++) {
        mask[(cyclePosition + i) % len] = "n";
    }

    var startSlot = cyclePosition;
    var result = mutateByMask(mask);
    if (result === null) {
        return;
    }

    lastList = result.slice(0);
    cycleModeActive = 1;
    cycleHoldFirstBangFlag = 0;
    cyclePosition = (cyclePosition + k) % len;

    outlet(0, result);
    statusOut(["cyclemutated", "group", k, "start", startSlot + 1, "next", cyclePosition + 1]);
}


function performMigrateBang()
{
    if (!migrateModeActive) {
        return;
    }

    if (migrateBaseList.length < 1) {
        errorOut("no rotate base list available");
        migrateModeActive = 0;
        return;
    }

    var len = migrateBaseList.length;
    var result = rotateRight(migrateBaseList, migrateRotation);

    lastList = result.slice(0);
    outlet(0, result);
    statusOut(["migrateoutput", "step", migrateStepSize, "rotation", migrateRotation, "length", len]);

    migrateRotation = (migrateRotation + normalizedMigrateStep(len)) % len;
}

function performPendingMaskMutation()
{
    ensureBaseList();
    if (lastList.length < 1) {
        return;
    }

    if (!pendingMaskActive || pendingMask.length !== lastList.length) {
        errorOut("no valid pending mutate mask available");
        pendingMaskActive = 0;
        pendingMask = [];
        return;
    }

    var result = mutateByMask(pendingMask);
    if (result === null) {
        return;
    }

    lastList = result.slice(0);
    cycleModeActive = 0;
    cyclePosition = 0;
    cycleHoldFirstBangFlag = 0;
    pendingGenerateFlag = 0;

    var replaceCount = countReplaceSlots(pendingMask);
    pendingMaskActive = 0;
    pendingMask = [];

    outlet(0, result);
    statusOut(["mutated", "replaced", replaceCount, "length", result.length]);
}

function buildRandomList()
{
    var pool = buildPool();

    if (pool.length < 1) {
        errorOut("no values available after range/filter settings");
        return null;
    }

    if (!allowRepeatsFlag && listLength > pool.length) {
        errorOut("listLength exceeds available unique values in current pool");
        return null;
    }

    var result = [];
    var i, pickIndex, working;

    if (allowRepeatsFlag) {
        for (i = 0; i < listLength; i++) {
            pickIndex = randInt(0, pool.length - 1);
            result.push(pool[pickIndex]);
        }
    } else {
        working = pool.slice(0);
        for (i = 0; i < listLength; i++) {
            pickIndex = randInt(0, working.length - 1);
            result.push(working[pickIndex]);
            working.splice(pickIndex, 1);
        }
    }

    return result;
}

function mutateByMask(mask)
{
    var pool = buildPool();
    if (pool.length < 1) {
        errorOut("no values available after range/filter settings");
        return null;
    }

    var result = lastList.slice(0);
    var replaceCount = countReplaceSlots(mask);
    var i;

    if (!allowRepeatsFlag) {
        var used = {};
        var keepCount = 0;

        for (i = 0; i < result.length; i++) {
            if (!isReplaceToken(mask[i])) {
                if (used[result[i]]) {
                    errorOut("kept values already contain duplicates; cannot mutate with allowrepeats 0");
                    return null;
                }
                used[result[i]] = 1;
                keepCount++;
            }
        }

        if ((keepCount + replaceCount) > pool.length) {
            errorOut("not enough unique values available to satisfy mutate request");
            return null;
        }

        for (i = 0; i < result.length; i++) {
            if (isReplaceToken(mask[i])) {
                var candidates = [];
                var j;
                for (j = 0; j < pool.length; j++) {
                    if (!used[pool[j]]) {
                        candidates.push(pool[j]);
                    }
                }

                if (candidates.length < 1) {
                    errorOut("not enough unique values available to satisfy mutate request");
                    return null;
                }

                var pick = candidates[randInt(0, candidates.length - 1)];
                result[i] = pick;
                used[pick] = 1;
            }
        }
    } else {
        for (i = 0; i < result.length; i++) {
            if (isReplaceToken(mask[i])) {
                result[i] = pool[randInt(0, pool.length - 1)];
            }
        }
    }

    return result;
}

function buildPool()
{
    var lo = minValue;
    var hi = maxValue;

    if (filterMinValue !== null && filterMinValue > lo) {
        lo = filterMinValue;
    }
    if (filterMaxValue !== null && filterMaxValue < hi) {
        hi = filterMaxValue;
    }

    var pool = [];
    var i;

    for (i = lo; i <= hi; i++) {
        if (parityMode === 1 && (i % 2 === 0)) {
            continue;
        }
        if (parityMode === 2 && (i % 2 !== 0)) {
            continue;
        }
        pool.push(i);
    }

    return pool;
}

function applySort(arr)
{
    if (sortMode === 1) {
        arr.sort(numAsc);
    } else if (sortMode === -1) {
        arr.sort(numDesc);
    }
}

function numAsc(a, b)
{
    return a - b;
}

function numDesc(a, b)
{
    return b - a;
}

function isReplaceToken(v)
{
    if (typeof v === "number") {
        return (v !== 0);
    }

    var s = String(v).toLowerCase();

    if (s === "0" || s === "k" || s === "keep" || s === "hold") {
        return false;
    }
    if (s === "n" || s === "1" || s === "x" || s === "r" || s === "new" || s === "replace") {
        return true;
    }

    return false;
}

function countReplaceSlots(mask)
{
    var i, c = 0;
    for (i = 0; i < mask.length; i++) {
        if (isReplaceToken(mask[i])) {
            c++;
        }
    }
    return c;
}

function normalizedMigrateStep(len)
{
    if (len < 1) {
        return 0;
    }
    return ((migrateStepSize % len) + len) % len;
}

function rotateRight(arr, shift)
{
    var len = arr.length;
    if (len < 1) {
        return [];
    }

    var amt = ((shift % len) + len) % len;
    if (amt === 0) {
        return arr.slice(0);
    }

    return arr.slice(len - amt).concat(arr.slice(0, len - amt));
}

function toInt(v)
{
    var n = parseInt(v, 10);
    if (isNaN(n)) {
        return null;
    }
    return n;
}

function srand(s)
{
    s = (parseInt(s, 10) >>> 0);
    if (s === 0) {
        s = 1;
    }
    rngSeed = s;
}

function randUnit()
{
    rngSeed = (1664525 * rngSeed + 1013904223) % 4294967296;
    return rngSeed / 4294967296;
}

function randInt(lo, hi)
{
    return lo + Math.floor(randUnit() * (hi - lo + 1));
}

function statusOut(msg)
{
    outlet(1, msg);
}

function errorOut(msg)
{
    post("rand_list_resetdefaults.js error: " + msg + "\n");
    outlet(1, ["error", msg]);
}
