/*
    proportional_series.js
    Max js object for Fibonacci, prime numbers, prime gaps, and expandable proportional series generation.

    Save this file in the same folder as proportional_series.maxhelp.

    Primary lookup messages:
        fib n...        -> output Fibonacci value(s) at zero-based position(s) n...
                           Example: fib 18 outputs 2584 when seed is 0 1
                                    fib 0 1 2 3 4 5 outputs 0 1 1 2 3 5

        prime n...      -> output nth prime number(s), one-based
                           Example: prime 1 outputs 2
                                    prime 18 outputs 61
                                    prime 1 2 3 4 5 outputs 2 3 5 7 11
                                    prime 1200 outputs 9733

        fib_rcp n...     -> output reciprocal Fibonacci value(s), zero-based
                           Example: fib_rcp 5 outputs 0.2 because fib 5 = 5
                                    fib_rcp 0 outputs 0 as a guarded value because 1/0 is undefined

        prime_rcp n...   -> output reciprocal prime value(s), one-based
                           Example: prime_rcp 1 outputs 0.5 because prime 1 = 2
                                    prime_rcp 1 2 3 outputs 0.5 0.3333333333333333 0.2

        fib_index values...
                         -> output zero-based Fibonacci index/indices for value(s)
                            Example: fib_index 2584 outputs 18
                                     fib_index 0 1 1 2 3 5 outputs 0 1 1 3 4 5
                            Note: duplicate Fibonacci value 1 returns first matching index, 1.

        prime_index values...
                         -> output one-based prime index/indices for value(s)
                            Example: prime_index 2 outputs 1
                                     prime_index 2 3 5 7 11 outputs 1 2 3 4 5

        fib_index_rcp values...
                         -> output zero-based Fibonacci index/indices for reciprocal value(s)
                            Example: fib_index_rcp 0.2 outputs 5
                                     fib_index_rcp 1/5 also outputs 5

        prime_index_rcp values...
                         -> output one-based prime index/indices for reciprocal value(s)
                            Example: prime_index_rcp 0.5 outputs 1
                                     prime_index_rcp 1/2 1/3 1/5 outputs 1 2 3

    Slice messages:
        fib_slice a-b slots       -> evenly sample slots Fibonacci values across zero-based range a-b
        fib_slice a b slots       -> same as above
        prime_slice a-b slots     -> evenly sample slots prime values across one-based range a-b
        prime_slice a b slots     -> same as above
        fib_slice_rcp a-b slots    -> evenly sample reciprocal Fibonacci values across zero-based range a-b
        prime_slice_rcp a-b slots  -> evenly sample reciprocal prime values across one-based range a-b

        Example:
            prime_slice 100-200 6 -> indices 100 120 140 160 180 200
                                      values 541 659 809 941 1069 1223

    List messages:
        fiblist n             -> output the first n Fibonacci values as a list
        fiblist a-b           -> output Fibonacci values from zero-based positions a through b
        fiblist a-b step      -> output every step-th indexed Fibonacci value from a through b
        fiblist_nth a-b step  -> alias for stepped Fibonacci list output

        primelist n           -> output the first n prime numbers as a list, up to 1200
        primelist a-b         -> output primes numbered a through b, one-based, inclusive
        primelist a-b step    -> output every step-th indexed prime from a through b
        primelist_nth a-b step -> alias for stepped prime list output

        fiblist_rcp n          -> output the first n reciprocal Fibonacci values as a list
        fiblist_rcp a-b        -> output reciprocal Fibonacci values from zero-based positions a through b
        fiblist_rcp a-b step   -> output every step-th indexed reciprocal Fibonacci value from a through b

        primelist_rcp n        -> output the first n reciprocal prime values as a list, up to 1200
        primelist_rcp a-b      -> output reciprocal primes numbered a through b, one-based, inclusive
        primelist_rcp a-b step -> output every step-th indexed reciprocal prime from a through b

    Prime-gap messages:
        prime_gaplist gaps...          -> output consecutive prime pairs whose gap matches one or more gap values
        prime_gaplist gaps... a-b      -> same, restricted to prime values in the value range a-b
                                           Example: prime_gaplist 2 0-100 outputs pair messages: 3 5, 5 7, ... 71 73
                                           Example: prime_gaplist 2 3 50-200 searches gaps 2 and 3 in prime values 50-200
                                           Output is one two-number list per pair: p1 p2, p1 p2, ...

        prime_gapslist a-b             -> output only the consecutive gap numbers for primes in value range a-b
                                           Example: prime_gapslist 0-100 outputs 1 2 2 4 2 4 2 4 ...

    Stream messages:
        bang            -> output current stream value, then advance one position
        next n          -> output next n stream values as a list, then advance n positions
        reset           -> reset stream to current series start
        position n      -> move stream cursor to zero-based position n
        seed a b        -> set Fibonacci seeds; default is 0 1

    Series selection:
        series fibonacci
        series fib
        series prime
        series fib_rcp
        series prime_rcp

    Outlets:
        outlet 0        -> generated values/lists
        outlet 1        -> status messages

    Notes:
        Fibonacci uses JavaScript Number arithmetic. Conventional Fibonacci
        values are exactly reliable up to about F(78).

        Prime lookup uses an embedded table of the first 1200 primes.

        Reciprocal series use reciprocal values: 1 / fib(n) and 1 / prime(n).
        Since fib(0) is 0, fib_rcp 0 outputs 0 as a guarded substitute
        for the undefined reciprocal 1/0.

        Slice algorithm:
            For N slices over start-end, indices are computed as:
            round(start + i * (end - start) / (N - 1)), i = 0...(N - 1).
            This includes both start and end when N > 1.
*/

autowatch = 1;

inlets = 1;
outlets = 2;

var currentSeries = "fibonacci";

var seedA = 0;
var seedB = 1;

var pos = 0;
var prev = seedA;
var curr = seedB;

var PRIME_TABLE = [
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
    73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173,
    179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281,
    283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409,
    419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541,
    547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659,
    661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809,
    811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941,
    947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069,
    1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223,
    1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373,
    1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511,
    1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627, 1637, 1657,
    1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759, 1777, 1783, 1787, 1789, 1801, 1811,
    1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889, 1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987,
    1993, 1997, 1999, 2003, 2011, 2017, 2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129,
    2131, 2137, 2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281, 2287,
    2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383, 2389, 2393, 2399, 2411, 2417, 2423,
    2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531, 2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617,
    2621, 2633, 2647, 2657, 2659, 2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741,
    2749, 2753, 2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887, 2897, 2903,
    2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, 3001, 3011, 3019, 3023, 3037, 3041, 3049, 3061, 3067, 3079,
    3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181, 3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257,
    3259, 3271, 3299, 3301, 3307, 3313, 3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413,
    3433, 3449, 3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557, 3559, 3571,
    3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671, 3673, 3677, 3691, 3697, 3701, 3709, 3719, 3727,
    3733, 3739, 3761, 3767, 3769, 3779, 3793, 3797, 3803, 3821, 3823, 3833, 3847, 3851, 3853, 3863, 3877, 3881, 3889, 3907,
    3911, 3917, 3919, 3923, 3929, 3931, 3943, 3947, 3967, 3989, 4001, 4003, 4007, 4013, 4019, 4021, 4027, 4049, 4051, 4057,
    4073, 4079, 4091, 4093, 4099, 4111, 4127, 4129, 4133, 4139, 4153, 4157, 4159, 4177, 4201, 4211, 4217, 4219, 4229, 4231,
    4241, 4243, 4253, 4259, 4261, 4271, 4273, 4283, 4289, 4297, 4327, 4337, 4339, 4349, 4357, 4363, 4373, 4391, 4397, 4409,
    4421, 4423, 4441, 4447, 4451, 4457, 4463, 4481, 4483, 4493, 4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583,
    4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751,
    4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937,
    4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087,
    5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279,
    5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443,
    5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639,
    5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791,
    5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939,
    5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133,
    6143, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301,
    6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473,
    6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673,
    6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833,
    6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997,
    7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207,
    7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411,
    7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561,
    7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723,
    7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919,
    7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111,
    8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, 8209, 8219, 8221, 8231, 8233, 8237, 8243, 8263, 8269, 8273, 8287, 8291,
    8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447, 8461, 8467, 8501,
    8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677,
    8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831,
    8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011,
    9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199,
    9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377,
    9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533,
    9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733
];


// ------------------------------------------------------------
// Utility
// ------------------------------------------------------------

function status(msg)
{
    outlet(1, msg);
}

function safeInt(x, fallback)
{
    var n = parseInt(x, 10);

    if (isNaN(n)) {
        return fallback;
    }

    return n;
}

function safeFloat(x, fallback)
{
    var n = parseFloat(x);

    if (isNaN(n)) {
        return fallback;
    }

    return n;
}

function parseNumberToken(x, fallback)
{
    var s = String(x);
    var parts;
    var num;
    var den;
    var n;

    if (s.indexOf("/") >= 0) {
        parts = s.split("/");

        if (parts.length === 2) {
            num = parseFloat(parts[0]);
            den = parseFloat(parts[1]);

            if (!isNaN(num) && !isNaN(den) && den !== 0) {
                return num / den;
            }
        }
    }

    n = parseFloat(s);

    if (isNaN(n)) {
        return fallback;
    }

    return n;
}

function approxEqual(a, b)
{
    var scale = Math.max(1, Math.abs(a), Math.abs(b));
    return Math.abs(a - b) <= (1e-12 * scale);
}

function reciprocalValue(value, label, index)
{
    if (value === null) {
        return null;
    }

    if (value === 0) {
        status(label + " reciprocal undefined at index " + index + "; output 0");
        return 0;
    }

    return 1 / value;
}

function reciprocalValueQuiet(value)
{
    if (value === null) {
        return null;
    }

    if (value === 0) {
        return 0;
    }

    return 1 / value;
}

function isFibonacciSeriesName(name)
{
    return name === "fibonacci" || name === "fibonacci_rcp";
}

function isPrimeSeriesName(name)
{
    return name === "prime" || name === "prime_rcp";
}

function clampIndex(n)
{
    n = safeInt(n, 0);

    if (n < 0) {
        n = 0;
    }

    return n;
}

function limitedCount(n, maxCount)
{
    n = safeInt(n, 1);

    if (n < 1) {
        return 0;
    }

    if (n > maxCount) {
        status("count limited to " + maxCount);
        return maxCount;
    }

    return n;
}

function parseRangeToken(token)
{
    var s = String(token);
    var parts;

    if (s.indexOf("-") < 0) {
        return null;
    }

    parts = s.split("-");

    if (parts.length !== 2) {
        return null;
    }

    if (parts[0] === "" || parts[1] === "") {
        return null;
    }

    return {
        start: safeInt(parts[0], null),
        end: safeInt(parts[1], null)
    };
}

function parseListRange(args, defaultCount, firstIndex, maxIndex, label)
{
    var range = null;
    var count;
    var start;
    var end;
    var step = 1;

    if (args.length < 1) {
        count = defaultCount;
        start = firstIndex;
        end = firstIndex + count - 1;
    } else if (args.length === 1) {
        range = parseRangeToken(args[0]);

        if (range !== null) {
            start = range.start;
            end = range.end;
        } else {
            count = safeInt(args[0], defaultCount);
            start = firstIndex;
            end = firstIndex + count - 1;
        }
    } else if (args.length === 2) {
        range = parseRangeToken(args[0]);

        if (range !== null) {
            start = range.start;
            end = range.end;
            step = safeInt(args[1], 1);
        } else {
            start = safeInt(args[0], firstIndex);
            end = safeInt(args[1], start);
        }
    } else {
        range = parseRangeToken(args[0]);

        if (range !== null) {
            start = range.start;
            end = range.end;
            step = safeInt(args[1], 1);
        } else {
            start = safeInt(args[0], firstIndex);
            end = safeInt(args[1], start);
            step = safeInt(args[2], 1);
        }
    }

    if (start === null || end === null || isNaN(start) || isNaN(end)) {
        status(label + " range syntax error");
        return null;
    }

    if (step === null || isNaN(step) || step < 1) {
        status(label + " step must be an integer greater than or equal to 1");
        return null;
    }

    if (start < firstIndex) {
        status(label + " start limited to " + firstIndex);
        start = firstIndex;
    }

    if (maxIndex !== null && end > maxIndex) {
        status(label + " end limited to " + maxIndex);
        end = maxIndex;
    }

    if (end < start) {
        status(label + " range end must be greater than or equal to start");
        return null;
    }

    return {
        start: start,
        end: end,
        step: step
    };
}

function parseSliceSpec(args, firstIndex, maxIndex, label)
{
    var range = null;
    var start;
    var end;
    var slots;
    var available;

    if (args.length < 2) {
        status(label + " expects: " + label + " start-end slots");
        return null;
    }

    range = parseRangeToken(args[0]);

    if (range !== null) {
        start = range.start;
        end = range.end;
        slots = safeInt(args[1], 0);
    } else {
        if (args.length < 3) {
            status(label + " expects either start-end slots or start end slots");
            return null;
        }

        start = safeInt(args[0], firstIndex);
        end = safeInt(args[1], start);
        slots = safeInt(args[2], 0);
    }

    if (start === null || end === null || isNaN(start) || isNaN(end)) {
        status(label + " range syntax error");
        return null;
    }

    if (slots === null || isNaN(slots) || slots < 1) {
        status(label + " slots must be an integer greater than or equal to 1");
        return null;
    }

    if (start < firstIndex) {
        status(label + " start limited to " + firstIndex);
        start = firstIndex;
    }

    if (maxIndex !== null && end > maxIndex) {
        status(label + " end limited to " + maxIndex);
        end = maxIndex;
    }

    if (end < start) {
        status(label + " range end must be greater than or equal to start");
        return null;
    }

    available = end - start + 1;

    if (slots > available) {
        status(label + " slots limited to available index count " + available);
        slots = available;
    }

    return {
        start: start,
        end: end,
        slots: slots
    };
}

function sliceIndices(start, end, slots)
{
    var out = [];
    var i;
    var index;

    if (slots <= 1) {
        out.push(start);
        return out;
    }

    for (i = 0; i < slots; i++) {
        index = Math.round(start + (i * (end - start)) / (slots - 1));
        out.push(index);
    }

    return out;
}


// ------------------------------------------------------------
// State control
// ------------------------------------------------------------

function reset()
{
    pos = 0;
    prev = seedA;
    curr = seedB;

    status("reset " + currentSeries);
}

function seed(a, b)
{
    seedA = safeFloat(a, 0);
    seedB = safeFloat(b, 1);

    reset();
    status("fibonacci seed " + seedA + " " + seedB);
}

function position(n)
{
    var target = clampIndex(n);
    var i;

    reset();

    for (i = 0; i < target; i++) {
        advanceSeries();
    }

    status("position " + pos + " value " + currentValueForStatus());
}

function series(name)
{
    if (name === undefined) {
        status("current series " + currentSeries);
        return;
    }

    name = String(name).toLowerCase();

    if (name === "fibonacci" || name === "fib") {
        currentSeries = "fibonacci";
        reset();
    } else if (name === "prime" || name === "primes") {
        currentSeries = "prime";
        reset();
    } else if (name === "fib_rcp" || name === "fibonacci_rcp") {
        currentSeries = "fibonacci_rcp";
        reset();
    } else if (name === "prime_rcp" || name === "primes_rcp") {
        currentSeries = "prime_rcp";
        reset();
    } else {
        status("unknown series " + name);
    }
}

function info()
{
    status("series " + currentSeries + " position " + pos + " current " + currentValueForStatus() + " prime_range 1-" + PRIME_TABLE.length + " fibonacci_seed " + seedA + " " + seedB + " reciprocal_modes fib_rcp prime_rcp prime_gap_functions prime_gaplist prime_gapslist");
}


// ------------------------------------------------------------
// Current series engine
// ------------------------------------------------------------

function currentValue()
{
    if (currentSeries === "fibonacci") {
        return prev;
    }

    if (currentSeries === "fibonacci_rcp") {
        return reciprocalValue(prev, "fib_rcp", pos);
    }

    if (currentSeries === "prime") {
        return primeAtZeroBased(pos);
    }

    if (currentSeries === "prime_rcp") {
        return reciprocalValue(primeAtZeroBased(pos), "prime_rcp", pos + 1);
    }

    return prev;
}

function currentValueForStatus()
{
    var value = currentValue();

    if (value === null) {
        return "none";
    }

    return value;
}

function advanceSeries()
{
    if (isFibonacciSeriesName(currentSeries)) {
        var nextVal = prev + curr;

        prev = curr;
        curr = nextVal;
        pos += 1;

        if (currentSeries === "fibonacci_rcp") {
            return reciprocalValue(prev, "fib_rcp", pos);
        }

        return prev;
    }

    if (isPrimeSeriesName(currentSeries)) {
        pos += 1;

        if (currentSeries === "prime_rcp") {
            return reciprocalValue(primeAtZeroBased(pos), "prime_rcp", pos + 1);
        }

        return primeAtZeroBased(pos);
    }

    return prev;
}


// ------------------------------------------------------------
// Single/multiple indexed value lookup
// ------------------------------------------------------------

function outputValueLookup(args, valueFn, indexFn, label)
{
    var out = [];
    var i;
    var index;
    var value;

    if (args.length < 1) {
        status(label + " expects one or more index values");
        return;
    }

    for (i = 0; i < args.length; i++) {
        index = indexFn(args[i]);
        value = valueFn(index);

        if (value === null) {
            return;
        }

        out.push(value);
    }

    if (out.length === 1) {
        outlet(0, out[0]);
    } else {
        outlet(0, out);
    }
}

// ------------------------------------------------------------
// Fibonacci commands
// ------------------------------------------------------------

function fib()
{
    outputValueLookup(arrayfromargs(arguments), fibonacciAt, clampIndex, "fib");
}

function nth()
{
    fib.apply(this, arguments);
}

function fibonacci()
{
    fib.apply(this, arguments);
}

function fiblist()
{
    outputFibList(arrayfromargs(arguments), "fiblist");
}

function fiblist_nth()
{
    outputFibList(arrayfromargs(arguments), "fiblist_nth");
}

function fibonacci_list_nth()
{
    outputFibList(arrayfromargs(arguments), "fibonacci_list_nth");
}

function fib_slice()
{
    outputFibSlice(arrayfromargs(arguments), "fib_slice");
}

function fibslice()
{
    fib_slice.apply(this, arguments);
}

function fibonacci_slice()
{
    fib_slice.apply(this, arguments);
}

function outputFibSlice(args, label)
{
    var r = parseSliceSpec(args, 0, null, label);
    var indices;
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    indices = sliceIndices(r.start, r.end, r.slots);

    for (i = 0; i < indices.length; i++) {
        out.push(fibonacciAt(indices[i]));
    }

    outlet(0, out);
}

function outputFibList(args, label)
{
    var r = parseListRange(args, 8, 0, null, label);
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    for (i = r.start; i <= r.end; i += r.step) {
        out.push(fibonacciAt(i));
    }

    outlet(0, out);
}

function fibonacciAt(n)
{
    var a = seedA;
    var b = seedB;
    var c;
    var i;

    n = clampIndex(n);

    if (n === 0) {
        return a;
    }

    if (n === 1) {
        return b;
    }

    for (i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }

    return b;
}

function reciprocalFibonacciAt(n)
{
    n = clampIndex(n);
    return reciprocalValue(fibonacciAt(n), "fib_rcp", n);
}

function fib_rcp()
{
    outputValueLookup(arrayfromargs(arguments), reciprocalFibonacciAt, clampIndex, "fib_rcp");
}

function fibonacci_rcp()
{
    fib_rcp.apply(this, arguments);
}

function fiblist_rcp()
{
    outputFibListRcp(arrayfromargs(arguments), "fiblist_rcp");
}

function fibonacci_list_rcp()
{
    fiblist_rcp.apply(this, arguments);
}

function fiblist_nth_rcp()
{
    outputFibListRcp(arrayfromargs(arguments), "fiblist_nth_rcp");
}

function fibonacci_list_nth_rcp()
{
    fiblist_nth_rcp.apply(this, arguments);
}

function fib_slice_rcp()
{
    outputFibSliceRcp(arrayfromargs(arguments), "fib_slice_rcp");
}

function fibslice_rcp()
{
    fib_slice_rcp.apply(this, arguments);
}

function fibonacci_slice_rcp()
{
    fib_slice_rcp.apply(this, arguments);
}

function outputFibSliceRcp(args, label)
{
    var r = parseSliceSpec(args, 0, null, label);
    var indices;
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    indices = sliceIndices(r.start, r.end, r.slots);

    for (i = 0; i < indices.length; i++) {
        out.push(reciprocalFibonacciAt(indices[i]));
    }

    outlet(0, out);
}

function outputFibListRcp(args, label)
{
    var r = parseListRange(args, 8, 0, null, label);
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    for (i = r.start; i <= r.end; i += r.step) {
        out.push(reciprocalFibonacciAt(i));
    }

    outlet(0, out);
}



// ------------------------------------------------------------
// Index lookup commands
// ------------------------------------------------------------

var FIB_INDEX_SEARCH_LIMIT = 1000;

function fib_index()
{
    outputIndexLookup(arrayfromargs(arguments), fibIndexForValue, "fib_index");
}

function fibindex()
{
    fib_index.apply(this, arguments);
}

function fibonacci_index()
{
    fib_index.apply(this, arguments);
}

function fib_index_rcp()
{
    outputIndexLookup(arrayfromargs(arguments), reciprocalFibIndexForValue, "fib_index_rcp");
}

function fibindex_rcp()
{
    fib_index_rcp.apply(this, arguments);
}

function fibonacci_index_rcp()
{
    fib_index_rcp.apply(this, arguments);
}

function prime_index()
{
    outputIndexLookup(arrayfromargs(arguments), primeIndexForValue, "prime_index");
}

function primeindex()
{
    prime_index.apply(this, arguments);
}

function primes_index()
{
    prime_index.apply(this, arguments);
}

function prime_index_rcp()
{
    outputIndexLookup(arrayfromargs(arguments), reciprocalPrimeIndexForValue, "prime_index_rcp");
}

function primeindex_rcp()
{
    prime_index_rcp.apply(this, arguments);
}

function primes_index_rcp()
{
    prime_index_rcp.apply(this, arguments);
}

function outputIndexLookup(args, lookupFn, label)
{
    var out = [];
    var i;
    var index;

    if (args.length < 1) {
        status(label + " expects one or more input values");
        return;
    }

    for (i = 0; i < args.length; i++) {
        index = lookupFn(args[i]);
        out.push(index);
    }

    outlet(0, out);
}

function fibIndexForValue(value)
{
    var target = safeFloat(value, null);
    var a = seedA;
    var b = seedB;
    var c;
    var i;

    if (target === null || isNaN(target)) {
        status("fib_index invalid value: " + value);
        return -1;
    }

    for (i = 0; i <= FIB_INDEX_SEARCH_LIMIT; i++) {
        if (a === target) {
            return i;
        }

        c = a + b;
        a = b;
        b = c;

        if (!isFinite(a)) {
            break;
        }
    }

    status("fib_index value not found within search limit: " + value);
    return -1;
}

function reciprocalFibIndexForValue(value)
{
    var target = parseNumberToken(value, null);
    var i;
    var fib;
    var inv;

    if (target === null || isNaN(target)) {
        status("fib_index_rcp invalid value: " + value);
        return -1;
    }

    for (i = 0; i <= FIB_INDEX_SEARCH_LIMIT; i++) {
        fib = fibonacciAt(i);
        inv = reciprocalValueQuiet(fib);

        if (approxEqual(inv, target)) {
            return i;
        }

        if (!isFinite(fib)) {
            break;
        }
    }

    status("fib_index_rcp value not found within search limit: " + value);
    return -1;
}

function primeIndexForValue(value)
{
    var target = safeInt(value, null);
    var i;

    if (target === null || isNaN(target)) {
        status("prime_index invalid value: " + value);
        return -1;
    }

    for (i = 0; i < PRIME_TABLE.length; i++) {
        if (PRIME_TABLE[i] === target) {
            return i + 1;
        }
    }

    status("prime_index value not found in first " + PRIME_TABLE.length + " primes: " + value);
    return -1;
}

function reciprocalPrimeIndexForValue(value)
{
    var target = parseNumberToken(value, null);
    var i;
    var inv;

    if (target === null || isNaN(target)) {
        status("prime_index_rcp invalid value: " + value);
        return -1;
    }

    for (i = 0; i < PRIME_TABLE.length; i++) {
        inv = 1 / PRIME_TABLE[i];

        if (approxEqual(inv, target)) {
            return i + 1;
        }
    }

    status("prime_index_rcp value not found in first " + PRIME_TABLE.length + " reciprocal primes: " + value);
    return -1;
}

// ------------------------------------------------------------
// Prime commands
// ------------------------------------------------------------

function prime()
{
    outputValueLookup(arrayfromargs(arguments), primeAtOneBased, function(x) { return safeInt(x, 1); }, "prime");
}

function primes()
{
    prime.apply(this, arguments);
}

function primelist()
{
    outputPrimeList(arrayfromargs(arguments), "primelist");
}

function primelist_nth()
{
    outputPrimeList(arrayfromargs(arguments), "primelist_nth");
}

function prime_list_nth()
{
    outputPrimeList(arrayfromargs(arguments), "prime_list_nth");
}

function prime_slice()
{
    outputPrimeSlice(arrayfromargs(arguments), "prime_slice");
}

function primeslice()
{
    prime_slice.apply(this, arguments);
}

function primes_slice()
{
    prime_slice.apply(this, arguments);
}

function outputPrimeSlice(args, label)
{
    var r = parseSliceSpec(args, 1, PRIME_TABLE.length, label);
    var indices;
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    indices = sliceIndices(r.start, r.end, r.slots);

    for (i = 0; i < indices.length; i++) {
        out.push(PRIME_TABLE[indices[i] - 1]);
    }

    outlet(0, out);
}

function outputPrimeList(args, label)
{
    var r = parseListRange(args, 8, 1, PRIME_TABLE.length, label);
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    for (i = r.start; i <= r.end; i += r.step) {
        out.push(PRIME_TABLE[i - 1]);
    }

    outlet(0, out);
}

function primeAtOneBased(n)
{
    n = safeInt(n, 1);

    if (n < 1 || n > PRIME_TABLE.length) {
        status("prime index out of range: use 1-" + PRIME_TABLE.length);
        return null;
    }

    return PRIME_TABLE[n - 1];
}

function primeAtZeroBased(n)
{
    n = safeInt(n, 0);

    if (n < 0 || n >= PRIME_TABLE.length) {
        status("prime stream position out of range: use 0-" + (PRIME_TABLE.length - 1));
        return null;
    }

    return PRIME_TABLE[n];
}

function reciprocalPrimeAtOneBased(n)
{
    n = safeInt(n, 1);
    return reciprocalValue(primeAtOneBased(n), "prime_rcp", n);
}

function reciprocalPrimeAtZeroBased(n)
{
    n = safeInt(n, 0);
    return reciprocalValue(primeAtZeroBased(n), "prime_rcp", n + 1);
}

function prime_rcp()
{
    outputValueLookup(arrayfromargs(arguments), reciprocalPrimeAtOneBased, function(x) { return safeInt(x, 1); }, "prime_rcp");
}

function primes_rcp()
{
    prime_rcp.apply(this, arguments);
}

function primelist_rcp()
{
    outputPrimeListRcp(arrayfromargs(arguments), "primelist_rcp");
}

function primes_list_rcp()
{
    primelist_rcp.apply(this, arguments);
}

function primelist_nth_rcp()
{
    outputPrimeListRcp(arrayfromargs(arguments), "primelist_nth_rcp");
}

function primes_list_nth_rcp()
{
    primelist_nth_rcp.apply(this, arguments);
}

function prime_slice_rcp()
{
    outputPrimeSliceRcp(arrayfromargs(arguments), "prime_slice_rcp");
}

function primeslice_rcp()
{
    prime_slice_rcp.apply(this, arguments);
}

function primes_slice_rcp()
{
    prime_slice_rcp.apply(this, arguments);
}

function outputPrimeSliceRcp(args, label)
{
    var r = parseSliceSpec(args, 1, PRIME_TABLE.length, label);
    var indices;
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    indices = sliceIndices(r.start, r.end, r.slots);

    for (i = 0; i < indices.length; i++) {
        out.push(reciprocalPrimeAtOneBased(indices[i]));
    }

    outlet(0, out);
}

function outputPrimeListRcp(args, label)
{
    var r = parseListRange(args, 8, 1, PRIME_TABLE.length, label);
    var out = [];
    var i;

    if (r === null) {
        return;
    }

    for (i = r.start; i <= r.end; i += r.step) {
        out.push(reciprocalPrimeAtOneBased(i));
    }

    outlet(0, out);
}




// ------------------------------------------------------------
// Prime gap commands
// ------------------------------------------------------------

function parsePrimeGapSearchSpec(args, label)
{
    var gaps = [];
    var range = null;
    var r;
    var i;
    var g;
    var startValue = 0;
    var endValue = PRIME_TABLE[PRIME_TABLE.length - 1];

    for (i = 0; i < args.length; i++) {
        r = parseRangeToken(args[i]);

        if (r !== null) {
            if (range !== null) {
                status(label + " expects only one value range");
                return null;
            }

            range = r;
        } else {
            g = safeInt(args[i], null);

            if (g === null || isNaN(g) || g < 1) {
                status(label + " invalid gap value: " + args[i]);
                return null;
            }

            gaps.push(g);
        }
    }

    if (gaps.length < 1) {
        status(label + " expects one or more gap values, optionally followed by a value range such as 0-100");
        return null;
    }

    if (range !== null) {
        startValue = range.start;
        endValue = range.end;
    }

    if (startValue === null || endValue === null || isNaN(startValue) || isNaN(endValue)) {
        status(label + " range syntax error");
        return null;
    }

    if (endValue < startValue) {
        status(label + " range end must be greater than or equal to start");
        return null;
    }

    return {
        gaps: uniqueSortedInts(gaps),
        startValue: startValue,
        endValue: endValue
    };
}

function parsePrimeGapsListSpec(args, label)
{
    var range = null;
    var startValue = 0;
    var endValue = PRIME_TABLE[PRIME_TABLE.length - 1];
    var countEnd;

    if (args.length < 1) {
        return {
            startValue: startValue,
            endValue: endValue
        };
    }

    if (args.length === 1) {
        range = parseRangeToken(args[0]);

        if (range !== null) {
            startValue = range.start;
            endValue = range.end;
        } else {
            countEnd = safeInt(args[0], null);

            if (countEnd === null || isNaN(countEnd)) {
                status(label + " expects a value range such as 0-100");
                return null;
            }

            startValue = 0;
            endValue = countEnd;
        }
    } else {
        status(label + " expects no argument or one value range such as 0-100");
        return null;
    }

    if (startValue === null || endValue === null || isNaN(startValue) || isNaN(endValue)) {
        status(label + " range syntax error");
        return null;
    }

    if (endValue < startValue) {
        status(label + " range end must be greater than or equal to start");
        return null;
    }

    return {
        startValue: startValue,
        endValue: endValue
    };
}

function uniqueSortedInts(values)
{
    var copy = [];
    var out = [];
    var i;

    for (i = 0; i < values.length; i++) {
        copy.push(values[i]);
    }

    copy.sort(function(a, b) { return a - b; });

    for (i = 0; i < copy.length; i++) {
        if (i === 0 || copy[i] !== copy[i - 1]) {
            out.push(copy[i]);
        }
    }

    return out;
}

function valueInList(value, values)
{
    var i;

    for (i = 0; i < values.length; i++) {
        if (value === values[i]) {
            return true;
        }
    }

    return false;
}

function primesInValueRange(startValue, endValue)
{
    var out = [];
    var i;
    var p;

    for (i = 0; i < PRIME_TABLE.length; i++) {
        p = PRIME_TABLE[i];

        if (p >= startValue && p <= endValue) {
            out.push(p);
        }

        if (p > endValue) {
            break;
        }
    }

    return out;
}

function prime_gaplist()
{
    outputPrimeGapPairs(arrayfromargs(arguments), "prime_gaplist");
}

function primegaplist()
{
    prime_gaplist.apply(this, arguments);
}

function primes_gaplist()
{
    prime_gaplist.apply(this, arguments);
}

function outputPrimeGapPairs(args, label)
{
    var spec = parsePrimeGapSearchSpec(args, label);
    var primes;
    var i;
    var p0;
    var p1;
    var gap;
    var matches = 0;

    if (spec === null) {
        return;
    }

    primes = primesInValueRange(spec.startValue, spec.endValue);

    /*
        Output each pair as its own two-number list message.
        In Max message-box syntax this corresponds to comma-separated messages:
            3 5, 5 7, 11 13, ...
        This is more useful downstream than one long flat list because each twin/gap pair
        remains grouped as a pair.
    */
    for (i = 0; i < primes.length - 1; i++) {
        p0 = primes[i];
        p1 = primes[i + 1];
        gap = p1 - p0;

        if (valueInList(gap, spec.gaps)) {
            outlet(0, [p0, p1]);
            matches += 1;
        }
    }

    if (matches === 0) {
        status(label + " found no matching consecutive prime pairs");
    }
}

function prime_gaplist_flat()
{
    outputPrimeGapPairsFlat(arrayfromargs(arguments), "prime_gaplist_flat");
}

function primegaplist_flat()
{
    prime_gaplist_flat.apply(this, arguments);
}

function outputPrimeGapPairsFlat(args, label)
{
    var spec = parsePrimeGapSearchSpec(args, label);
    var primes;
    var out = [];
    var i;
    var p0;
    var p1;
    var gap;

    if (spec === null) {
        return;
    }

    primes = primesInValueRange(spec.startValue, spec.endValue);

    for (i = 0; i < primes.length - 1; i++) {
        p0 = primes[i];
        p1 = primes[i + 1];
        gap = p1 - p0;

        if (valueInList(gap, spec.gaps)) {
            out.push(p0);
            out.push(p1);
        }
    }

    outlet(0, out);
}

function prime_gapslist()
{
    outputPrimeGapsOnly(arrayfromargs(arguments), "prime_gapslist");
}

function primegapslist()
{
    prime_gapslist.apply(this, arguments);
}

function primes_gapslist()
{
    prime_gapslist.apply(this, arguments);
}

function outputPrimeGapsOnly(args, label)
{
    var spec = parsePrimeGapsListSpec(args, label);
    var primes;
    var out = [];
    var i;

    if (spec === null) {
        return;
    }

    primes = primesInValueRange(spec.startValue, spec.endValue);

    for (i = 0; i < primes.length - 1; i++) {
        out.push(primes[i + 1] - primes[i]);
    }

    outlet(0, out);
}

// ------------------------------------------------------------
// Stream commands
// ------------------------------------------------------------

function bang()
{
    var value = currentValue();

    if (value === null) {
        return;
    }

    outlet(0, value);
    advanceSeries();
}

function next(n)
{
    var count = safeInt(n, 1);
    var out = [];
    var i;
    var value;

    if (count < 1) {
        return;
    }

    for (i = 0; i < count; i++) {
        value = currentValue();

        if (value === null) {
            break;
        }

        out.push(value);
        advanceSeries();
    }

    if (out.length > 0) {
        outlet(0, out);
    }
}


// ------------------------------------------------------------
// Max compatibility handlers
// ------------------------------------------------------------

function msg_int(n)
{
    if (currentSeries === "prime") {
        prime(n);
    } else if (currentSeries === "prime_rcp") {
        prime_rcp(n);
    } else if (currentSeries === "fibonacci_rcp") {
        fib_rcp(n);
    } else {
        fib(n);
    }
}

function msg_float(f)
{
    msg_int(Math.floor(f));
}

function list()
{
    var args = arrayfromargs(arguments);

    if (args.length < 1) {
        status("list input expects one or more index values");
        return;
    }

    if (currentSeries === "prime") {
        prime.apply(this, args);
    } else if (currentSeries === "prime_rcp") {
        prime_rcp.apply(this, args);
    } else if (currentSeries === "fibonacci_rcp") {
        fib_rcp.apply(this, args);
    } else {
        fib.apply(this, args);
    }
}

function anything()
{
    var args = arrayfromargs(messagename, arguments);
    status("unknown message " + args.join(" "));
}

function loadbang()
{
    reset();
    status("loaded proportional_series.js v11 with fibonacci, prime, reciprocal _rcp functions, prime_gaplist, prime_gapslist, lists, slices, streams, and index functions");
}
