ec_tapdelay v4 — 16 / 32 / 64 tap engines for Max 9

START HERE
For the current 12-source / 12-tap patch, open _ec_tapdelay16_v4~.maxhelp.
It retains the supplied help layout, twelve-channel routing and gain controls.
Keep the .maxpat, .gendsp and .js dependencies together in this folder.
Use one current copy of each named abstraction in Max's search path.

Choose the smallest capacity covering BOTH your source count and tap count:
  ec_tapdelay16_v4~  : up to 16 sources / 16 taps
  ec_tapdelay32_v4~  : up to 32 sources / 32 taps
  ec_tapdelay64_v4~  : up to 64 sources / 64 taps

These are separate compiled DSP engines. Selecting twelve taps in the 64-tap
object does not remove the other 52 lanes from its compiled code. The 16-tap
engine actually omits lanes 17–64; the 32-tap engine omits lanes 33–64.
The 16-tap GenExpr source is 32,983 characters versus 131,359 in the original.
The 32-tap source is 65,767 characters. These are code-size measurements,
not measured CPU or startup-speed ratios.

Existing object replacement for twelve independent input channels:
  ec_tapdelay16_v4~ @sources 12 @spacing 250 @curve linear

For ONE sound repeated across twelve taps:
  ec_tapdelay16_v4~ @sources 1 @taps 12 @spacing 250 @curve linear
Connect one mono signal, or mc.pack~ 1. Do not pack twelve identical copies.
Open ec_tapdelay16_v4_example_mono12.maxpat for this arrangement. This shares
one input-history buffer across twelve taps. It is not equivalent to twelve
independent input sounds; those must retain @sources 12 and their MC inputs.

For twenty-four independent sources / taps:
  ec_tapdelay32_v4~ @sources 24 @spacing 250 @curve linear

COMPATIBILITY
All three variants have two inlets and the same four outlets:
  inlet 1: MC or mono audio
  inlet 2: control messages
  outlet 1: MC taps; fixed 16 / 32 / 64 channel capacity
  outlet 2: mono sum
  outlet 3: virtual last-tap completion bang
  outlet 4: settings / status
Active taps occupy the first N MC channels; remaining channels are silent.
Use mc.unpack~ N @replicate 0 to expose a fixed number of individual outputs.
Included help patches use twelve fixed outputs; routing examples use eight.
No startup script deletes outlets or rewrites parent patchcords.
The earlier dynamic ec_tapdelay64_breakout~ is not included or required by
these patches. Existing external parents using it should use a fixed native
mc.unpack~ with the required outlet count, as in the supplied help.

Each variant has its own controller and engine filename, so the capacities can
coexist. The 64-tap Gen DSP file is unchanged from the supplied ZIP. The latest
@delaydrift creation-setting support is included in all three controllers.
Both help filenames (with / without leading underscore) use your current layout.
The 16-tap help's former 24-tap examples are adjusted to sixteen.

CREATION SETTINGS
Positional: <sources> <spacing_ms> <curve>
Named: @sources N @taps N|auto @spacing ms @curve name @delaydrift ms
Named settings may appear in any order; they override positional settings.
  @sources: 0 through capacity. Default 0 = automatic one-to-one input mapping.
            Positive = declared input count, repeated round robin across taps.
  @taps: 1 through capacity, or auto. Default auto follows @sources; when
         sources is 0 it follows the connected MC bus, capped at capacity.
  @spacing: >0 through 10000 ms; default 250. Fractional spacing is allowed.
  @curve: linear by default.
  @delaydrift: integer 0–10000 ms; default 0/off. @delaydrift 20 means +/-20 ms.
               The opening selection interval is 250 ms.
These use patcherargs; they are not custom Inspector / attrui attributes.

CURVES
linear        Equal gaps of one baseline.
expand        Gaps gradually widen.
contract      Gaps gradually narrow.
exponential   Gaps widen gently, with bounded growth.
logarithmic   Gaps narrow gently.
s_curve       Close at both ends; wider in the middle.
reverse_s     Wide at both ends; closer in the middle.
stretch       Equal gaps of 1.25 times baseline.
compress      Equal gaps of 0.75 times baseline.
The first seven curves preserve (N–1) * baseline as the last time before rounding.
Stretch / compress scale it by 1.25 / 0.75. All base times round to whole ms.
Tap 1 stays at zero. Very small spacings can give coincident rounded tap times.

Maximum absolute delay remains 10000 ms for every capacity. Oversized patterns
are rejected, leaving the current valid pattern unchanged. For example, sixty-four
linear taps at 250 ms exceed this limit; sixty-four at 150 ms fit. Omitted settings
remain sources 0, taps auto, spacing 250, curve linear and drift off.

CONTROL MESSAGES — right inlet; omit @
sources N              Change source mapping; source changes clear history.
taps N / taps auto     Explicit count / restore source-following tap count.
spacing ms             Change baseline spacing.
curve name             Select a curve.
tap ms N [curve]       Set spacing, tap count and optional curve together.
ms N                   Legacy spacing/count pair using the current curve.
delays 0 275.5 500     Explicit times; rounds to 0 276 500. First forced to 0.
delaydrift 20 [250]    +/-20 ms; optional selection interval in integer ms.
delaydrift 0           Stop drift and crossfade back to base times.
smooth 50              Crossfade duration, 1–5000 ms; default 50.
gains 1. 0.75 0.5     Per-tap gains 0–1; omitted gains reset to 1.
master 0.5             Both audio outputs, 0–1; default 1.
normalize 1            Mono compensation on/off, default on.
stop / start           Mute and clear / resume the current pattern.
bang / cycle           Arm the virtual completion timer.
cyclecancel            Cancel the timer without stopping audio.
dump / curves          Report settings / list curve names.
defaults               Restore opening sources, taps, spacing, curve and drift
                       amount; reset interval 250, smooth 50, gains/master 1,
                       normalization on, and resume audio.

The completion timer waits the last rounded base_times value only. For twelve
linear taps at 250 ms it requests 2750 ms of elapsed time, including silence.
It does not add sound length, drift offsets or a fade allowance. A new trigger
replaces the previous timer. Pattern edits, stop and cyclecancel cancel it.
Drift/gain/DSP changes do not change an armed wait. Max scheduler load can delay
delivery of the bang. This is not audio-tail detection.

VALIDATION / PERFORMANCE
Offline controller tests passed for capacities 16, 32 and 64, including curves,
rounding, routing, attribute order, drift, defaults, completion timing, limits,
and avoiding repeated buffer allocation for unchanged startup reports.
Patch graph checks passed. Retained per-tap Gen code matches the original.
Native Max loading, Gen compilation, listening and timing measurements could
not be run in this environment. Reduced compilation/processing work is expected;
the actual startup-time and CPU improvement must be measured on your Mac.
See CPU_REVIEW.txt for findings and a short comparison procedure.
