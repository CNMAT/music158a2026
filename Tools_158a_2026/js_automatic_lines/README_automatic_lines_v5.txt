AUTOMATIC LINES V5 FOR MAX 9
=========================

Files
-----
automatic_lines_v5.js       JavaScript object
automatic_lines_v5.maxhelp  Interactive Max help patch

Installation
------------
Keep both files together in a folder included in Max's File Preferences search
path. You may also keep both files beside the patch that uses the object.

Basic use
---------
Create the object with four arguments, plus an optional fifth:

    js automatic_lines_v5.js <voices> <minimum_ms> <maximum_ms> <wait_ms> [fixed_peak]

Example:

    js automatic_lines_v5.js 4 500 2000 1000       (random peaks)
    js automatic_lines_v5.js 4 500 2000 1000 1     (every peak is 1.0)

The first argument creates 1 to 20 voices, each with a dedicated float outlet.
One additional outlet is always created at the far right. The outlet count is
fixed when the js object is instantiated. The second and third arguments set the
random ramp-time boundaries in milliseconds. The fourth argument sets the fixed
global wait time at 0.0 before each voice starts its next cycle.
The optional fifth argument controls the peak: 0 (or omitted) randomly chooses
a level between 0.0 and 1.0 for each cycle; 1 always reaches exactly 1.0.
Both modes produce a continuously interpolated rise from zero and return to zero.
The timing remains random within min_ms and max_ms in either mode.

A wait value of 0 produces a continuous loop. A wait value of 1000 holds each
voice at 0.0 for 1000 milliseconds after its return ramp finishes.

Each outlet emits the interpolated float values directly. External [line]
objects are not required. The default float update interval is 20 milliseconds.

The final rightmost outlet emits an updating list containing the current value
of every voice in voice order. For a four-voice object, the list contains four
floats and the object has five outlets total.

Operation
---------
Every voice starts at 0.0. It independently chooses a random destination from
0.0 to 1.0 and a random time within the specified boundaries. It ramps upward
for that amount of time, then returns to 0.0 using the same time. When the
return ramp finishes, the voice waits for wait_ms, then chooses a new
destination and time. With fixed_peak 1, the destination is always 1.0.

Thus, a selected time of 1000 ms produces a 1000 ms upward ramp and a 1000 ms
return ramp, making the ramp portion of the cycle 2000 ms. The global wait is
added after that ramp portion.

The three-argument syntax—voices, minimum, maximum—still works and uses a wait
time of 0. Four-argument patches using the earlier order (voices, minimum,
wait, maximum) must swap their last two values.

Messages
--------
bang                 Restart all voices
start                Start stopped voices
stop                 Stop and reset every outlet to 0.0
restart              Stop, reset, and generate new cycles
range <min> <max>    Change the boundaries used by future cycles
waittime <ms>        Change the global wait used by future cycles
grain <ms>           Change the float update interval (1-1000 ms)
fixedpeak <0|1>      Change peak mode for future cycles (0 random; 1 fixed)

Open automatic_lines_v5.maxhelp for working random-peak and fixed-peak examples. The distinct
v5 filenames prevent Max from loading an earlier same-named script elsewhere in
its search path.
