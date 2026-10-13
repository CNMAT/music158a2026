STOP AND URN DRIFT UPDATE
stop                   Immediately silence every tap and clear stored audio.
delaydrift 20 250       Choose one tap every 250 ms; random drift within +/-20 ms.
delaydrift 0 250        Turn drift off and crossfade back to the base times.

Drift defaults to 0 250. A one-argument delaydrift uses interval 250 ms.
The amount is a nonnegative integer 0..10000; interval is a positive integer.
Tap 1 remains at 0 ms and is excluded from the urn. Taps 2..N are visited in
random order, without repetition, then the urn reshuffles. Here tap/source
means OUTPUT number, regardless of round-robin input routing. A selected tap
gets a fresh integer offset within +/-amount from its original absolute time;
offsets do not accumulate or shift other taps. Results clamp to 0..10000 ms.

The second argument is the selection interval, NOT crossfade duration.
Existing smooth controls the crossfade (default 50 ms). Selection waits for
crossfades with an audio-vector guard; Gen also blocks a drift change until
all current fades finish; the interval is a minimum, so long
fades slow the urn. The scheduler runs only while DSP is on, audio is running,
and at least two taps are active. Drift 0 schedules no further selections.
Turning drift off restores all base times using the existing crossfades.
Stationary-head crossfades avoid pitch slides and abrupt time jumps; blending
can still produce audible coloration with some material.

stop cancels the task, gates all audio (including tap 1), clears history, and
resets pending transitions. A new valid spacing/count pair resumes audio,
resets the urn and offsets, and retains the drift settings. Other controls do
not resume stopped audio. defaults resumes with drift disabled. Immediate
stop can itself make a discontinuity; it is a cancellation command.
DSP off pauses drift. DSP on waits for pending fades before resuming.
The drift status message reports output tap, actual offset, and target ms.
dump reports base_times, target_times, delaydrift, and stopped, plus options.

ZERO-START TIMING UPDATE
Tap 1 is always 0 ms, independent of the input-count argument. With 250 8,
the times are 0,250,500,750,1000,1250,1500,1750 ms. Input mapping is unchanged.
There is no added DSP-sample delay at 0 ms: current inputs are written before
Gen reads the tap history. Tap/master gain and their smoothing still apply.
Audio-interface latency is unchanged. Explicit delay lists accept 0..10000 ms;
their first entry is forced to 0, with a warning if a nonzero first value was
provided. Other entries keep their requested absolute times. Example: delays
0 275 gives an immediate first tap and a second tap at 275 ms.
250 64 fits 41 taps (0..10000 ms), not 40. 10000 2 fits both 0 and 10000 ms.

V3 LOADING CHANGES
This is a true 64-capacity build: inputs, taps, parameters, histories, output
bus and breakout all stop at 64. The help initially creates one delay engine;
the two additional examples are loaded only by clicking their loadunique
messages. V2 files are not overwritten. Gen compilation and load-time savings
must be measured in Max; no fixed speedup is claimed.

Use: ec_tapdelay64_v3~ [input_count]
Open: ec_tapdelay64_v3~.maxhelp
Default delay pattern remains 250 4. No argument remains automatic one-to-one;
argument 1 preserves mono-to-all-taps behavior. All other messages retain their
semantics, with a new upper limit of 64 inputs and 64 taps.
The first outlet is a stable 64-channel MC bus, with unused taps silent.
Use ec_tapdelay64_breakout~ [count or start-end]; its default is 64 outlets.
Two V3 instances may be used independently. Each has its own delay history
and starts numbering at tap 1; their delay sequences do not auto-concatenate.
The 10000 ms limit is unchanged. Both may use the same mc.pack~ input bus.

ec_tapdelay64_v3~ — V3 / 64-input and 64-tap capacity for Max 9

INSTALL
Install this V3 folder alongside V2. Create the new V3 object. Reload/recreate the
delay objects so the updated controller and Gen engine are loaded. Keep the
files together. Open ec_tapdelay64_v3~.maxhelp. No external packages required.

INPUT ARGUMENT
    ec_tapdelay64_v3~       Automatic: tap N reads MC input channel N.
    ec_tapdelay64_v3~ 1     Input channel 1 feeds every active tap.
    ec_tapdelay64_v3~ 3     Inputs repeat 1,2,3,1,2,3,... across taps.
A positive integer 1..64 fixes the round-robin input count. Omitted/0 selects
automatic one-to-one mode. Invalid arguments warn and use automatic mode.
The argument is an INPUT count, not a tap/output count. The delay message sets
the tap count. Arguments are creation-time settings: recreate to change them.

WIRING
Feed individual signals into mc.pack~ N, then its MC outlet to the delay's
LEFT inlet. Send delay/control messages to the RIGHT inlet.
Example: mc.pack~ 3 -> ec_tapdelay64_v3~ 3, with 250 8 at the right inlet.
Tap:       1    2    3    4     5     6     7     8
Input:     1    2    3    1     2     3     1     2
Delay ms:   0  250  500  750  1000  1250  1500  1750
No argument + 250 8 expects channels 1..8, one per tap. Missing channels are
silent; they do not silently wrap. Extra channels above the explicit argument
are ignored. A mono signal may be connected directly in argument-1 mode.
COMPATIBILITY: existing mono patches must add argument 1 to preserve the old
behavior. The new no-argument default is one-to-one, as requested.

OUTPUTS
1. MC signal with 64 tap slots; inactive slots are silent. Use the included
ec_tapdelay64_breakout~ 8 for eight separate outlets, or 8-15 for taps 8..15.
2. Mono wet sum with optional normalization.
3. Status/warnings. dump reports input_mode, expected_inputs, connected_inputs,
and input_map (one-based input channel for each active output tap).
The MC bus retains 64 slots for stable breakout wiring. 250 8 activates eight.

MESSAGES AND DEFAULTS
250 8                  Eight taps at 0,250,...1750 ms.
50 64                  64 taps at 0,50,...3150 ms.
250 1                  One undelayed tap.
gains 1. 0.75 0.5 0.25  Tap gains 0..1; omitted gains reset to 1.
smooth 50              Crossfade length 1..5000 ms.
master 0.5             Master gain 0..1 on both audio outputs.
normalize 1            Mono-sum compensation on (0 = off).
dump                   Report configuration and input map.
defaults               Restore 250 4, unity gains, smooth 50, master 1,
                       normalize 1 and delaydrift 0 250. Resumes audio. Input mode is retained.
A bare pair always means integer spacing_ms/tap_count. Explicit delay lists
accept floats. Times must be >=0 and <=10000 ms. A spacing pattern exceeding
10000 ms is truncated and warns. Tap capacity is 64. Invalid messages leave
settings unchanged. Legacy explicit lists and the delays selector remain supported,
but are omitted from the help examples. The first tap is at 0 ms; tap N uses (N-1) times spacing.

AUDIO AND MEMORY
Each connected/used input has a separate circular history channel in a private
buffer~. Gen reads all active taps from those histories. The input count is
limited to 64. Allocation follows the connected MC channel count (capped by
the explicit argument, if any), not the number of taps. At 48 kHz each input
uses about 1.92 MB of sample memory: 3 inputs ~5.76 MB; 64 inputs ~122.88 MB.
Allocation scales with sample rate. No fixed 192-kHz allocation is made.
Settled silent taps skip their delay reads; settled active taps use one
interpolated lookup, and time crossfades use up to two. Input histories keep
recording while their gains are silent, but stop disables recording. Fixed 64-channel routing has overhead.
Delay-message changes preserve input histories and the prior crossfade behavior.
Changing connected MC channel count or sample rate reallocates/clears history;
do this with playback stopped. Audio output waits for DSP setup to allocate
the history buffer. CPU performance needs measurement on the target Max system.

Changing delay time crossfades stationary read positions; no pitch glide.
Added/removed taps fade. The most recent update waits for a current fade to
finish. Per-tap gains persist by output index. Mono compensation is
1/max(1,sum of active gains), not a limiter or loudness measurement. Tap 1 is undelayed; no feedback. Output source labels identify tap numbers, not round-robin inputs.

HELP PATCH
Main audition uses argument 1 and mc.pack~ 1. Two separately loaded example patches demonstrate
three inputs feeding eight taps and automatic eight-input/eight-tap routing.
Each input has a separate impulse button; output meters show the routing.
All UI colors use Max defaults. SPAT is not required or instantiated.

FILES CHANGED
- ec_tapdelay64_v3~.maxpat: MC input, argument, private history and DSP setup.
- ec_tapdelay64_v3_control.js: mapping, history sizing and routing reports.
- ec_tapdelay64_v3_engine.gendsp: independent input histories, active-tap reads.
- ec_tapdelay64_v3~.maxhelp: mono, three-input and automatic examples.
- README.txt: updated interface, behavior and validation notes.
The included ec_tapdelay64_breakout~.maxpat adapts the tested breakout to a
64-channel ceiling/default, preserving ranges and complete source-number labels.

VALIDATION
Controller executed with a mocked Max JS interface: urn coverage (7 and 63
eligible taps), bounded base-relative offsets, scheduler cancellation, long-fade
spacing, stop/restart, DSP off/on, defaults and invalid arguments; input mappings,
messages, limits, buffer sizes and preservation of history on delay updates.
Patch JSON and connections checked. DSP arithmetic tested offline with impulse
routing, zero and fractional delays, 10-second ring wrap, stop/restart with
cleared history, and audio-side serialization of deliberately overlapping drift
requests. This uses a C++ translation of the Gen arithmetic, not the Max runtime.
Native Gen compilation, audio playback and CPU load still require testing in
Max 9; Max is not available in this environment.
