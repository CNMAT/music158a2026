# CNMAT Sinusoids v23 — full-state morphing

## Open the instrument

Extract the complete v23 folder into a new location. Close other copies of this synth and restart Max before testing. Open the top-level `_ec_sinusoids_synth_v23.maxpat`. This is the same ordered, auto-closing starter, updated for v23 names. It registers `patchers/` and `javascript/`, opens `patchers/_ec_sinusoids_synth_v23_main.maxpat`, then closes its own window.

Do not move the master out of `patchers/`, mix v21 and v23 dependencies, or replace only the master. The installed compatible CNMAT `sinusoids~` external is still required. Keep hardware volume low: the destination dump includes gains and can be louder than the source. This feature is not a limiter.

## First transition with the A–X MorphBank controls

Scroll down on the synth to **MORPHBANK A–X**. This update extends the original two slots to 24. See `MORPHBANK_v23.md` in this folder for bank save/load and command examples.

1. Make a sound, set its arrival time in **seconds**, select A in the capture menu, and click **morphcapture A**. This fills the hidden A dump message without recalling it or stopping playback.
2. Change the synth to a second sound, set its own arrival time, select B, and click **morphcapture B**. All letters through X work the same way.
3. Each slot retains its captured seconds (0–3600). Use `morphslottime A 8` to adjust a stored time without recapturing.
4. Click **morphto A** to transition from the current sound to A over A’s stored seconds. The time is posted in MorphBank. Then click **morphto B** to go back to B.

There is no need to return to an endpoint before starting another transition. Every morph starts from the current live model. A/B capture stores the current complete supported preset state, including hidden partial values and user stores. A captured state is not a recording of playing oscillator phases, the current ADSR segment, or the automixer's random-cycle phase.

The 24 hidden dump boxes in `p MorphBank_v23` are passive staging inputs. Clicking one stages its letter without recalling it or starting a morph. Capture and bank loading update them using `set`. Use `morphbank write` to save all slots, their independent times, current seconds and color variant to a separate JSON bank; `morphbank read` validates and replaces the bank. Saved times and nonempty messages are also restaged on startup, with the time staged first. Bank slots and duration are workflow controls, not recursively included in a sound dump.

## Morph directly to an existing full message dump

An ordinary full dump begins with `preset` and continues with its version, checksum and encoded chunks. Do not edit those encoded tokens.

Connect the complete destination message as follows:

Connect the full `preset VERSION CHECKSUM CHUNKS...` message to `prepend morph 8`, then to `send Synth_Control_v23`.

Clicking it morphs from the current live state to that destination in eight seconds. `8` is seconds, not milliseconds. Keep the complete `preset` prefix and all chunks.

To transition between two existing messages explicitly, recall the source once using its normal `preset ...` message, trigger the envelopes as needed, and route the destination through `prepend morph 8`. Ordinary recall retains its existing stop/mute/restore behavior; subsequent morphs do not repeatedly call recall.

Compatible full-synth v21 dumps are accepted and their internal address keys are migrated. Full v23 dumps use schema 2 and include native function-curve metadata. The low-CPU abstraction's different preset format is not accepted. New v23 dumps are not intended for loading back into v21.

## Commands

Send these to `Synth_Control_v23`, or use the clickable examples in `p FULL_STATE_MORPH_v23-message_space` on the main page and inside `p Send_Message_Space_v23`. `patchers/Full_State_Morph_v23.maxpat` is a passive standalone copy.

| Message | Action |
|---|---|
| `morphcapture LETTER [SECONDS]` (A–X) | Capture the current state and time into one independent slot. |
| `morphslot LETTER preset ...` (A–X) | Stage an existing full dump without changing the live instrument. |
| `morphseconds 10` | Set the time for the next capture; existing slot times remain unchanged. |
| `morphto LETTER` (A–X) | Morph from the current state to that slot using that slot’s stored duration. |
| `morphto B 8` | Morph to B over eight seconds. This explicit duration applies to this transition. |
| `morphslottime A 8` | Change only A’s stored time. |
| `morphjump A` | Apply A immediately without changing its stored time. |
| `morphcue A B A D C F` | Repeat the list using each destination’s time. |
| `morphcue stop` | Stop the cue and hold the current sound. |
| `morphcolor 0` / `morphcolor 1` | Classic / Pastel display. |
| `morph 8 preset ...` | Morph directly to the following complete dump over eight seconds. |
| `morphpause` | Freeze transition progress. It does not stop audio playback. |
| `morphresume` | Continue the paused transition over its remaining time. |
| `morphstop` | Hold the current intermediate state and return to normal editing. It does not mute audio. |
| `morphfinish` | Apply the destination now, subject to existing signal smoothing. |
| `morphdump LETTER` (A–X) | Copy a slot into the ordinary dump output message. |
| `morphbank write` / `morphbank read` | Save/load the complete A–X bank with native file dialogs. Optional quoted path bypasses the dialog. |
| `clear all` / `morphclear LETTER` | Clear the entire bank / one slot without changing the live sound. |
| `command morphto G 10` | Command-system equivalent of the direct morph message. |
| `dump` | Capture the current complete sound state, including an intermediate morph state, not the bank. |

`receive Synth_Morph_progress_v23` reports 0–1 progress. `receive Synth_Morph_done_v23` receives a bang at completion. The existing status output reports errors, waiting, pause and completion.

While morphing, the morph engine owns the controlled values. Use **morphstop** before manual editing; direct GUI edits can otherwise be overwritten on the next frame. Starting a new morph holds the current state and uses it as the new source. All Off/global lane Stop cancels the morph, and an external controller `gain 0` cancels it before muting so a later frame cannot restore the old gain.

## How different state fields move

| State | Transition policy |
|---|---|
| Partial amplitudes, signed detune and anchor amplitudes | Interpolate the complete three 256-slot memories, including hidden slots. |
| Different active partial counts | Temporarily use the larger count. Fade the additional/departing slots; finish at the destination count without erasing hidden memories. |
| Base frequency, effective retuning ratios and partial-frequency multipliers | Geometric interpolation for positive frequencies/ratios. This gives an even pitch movement rather than an even-Hz movement. |
| Sequence or partial-offset changes | Interpolate actual slot frequency multipliers while keeping the current oscillator bank. Commit the destination sequence/offset identity at completion. |
| Numeric gains, filtering limits, timing controls and engine settings | Linear numeric interpolation driven by eased progress; integer controls round to their legal values. Existing signal smoothing remains in place. |
| Envelope memories and current editable function curves | Interpolate sampled memories and normalized linear-mode breakpoints, including different point counts and durations. Restore exact native endpoint curves. |
| Lane assignment and spatial distribution | Crossfade per-partial lane weights and spatial matrix weights while retaining the full twelve-bank renderer and stable live slot positions. |
| Auto Level | Blend the captured compensation and its numeric settings; resume normal full-model evaluation at the destination. |
| Micro-drift | Blend the captured instantaneous offsets and drift parameters. Resume the destination walk after the transition. |
| Automixer | Morph minimum/maximum ramp times, wait and update interval; let current cycles continue. Mode and fixed-peak switch at completion. |
| Menu indices, switches, seeds and stored-library entries | These are discrete, not fractional numbers. Commit the destination choices and dormant library contents once at completion. |

This is a continuous transition of the numeric sound state with explicit treatment of discrete state. It is not a claim that a menu can have a fractional selection or that every categorical switch is acoustically continuous. Changing automixer mode, loop flags or other discrete behavior can change the result at the destination. Integer controls may step, while the rendered pitch, partial amplitudes and routing use dedicated continuous adapters.

Anchor Mirror and transform Bypass are temporarily resolved into their actual audible values during the transition. The UI shows these temporary effective modes; their saved destination settings return at completion. A held intermediate model keeps the blended pitch geometry and spatial weights, so dumping and recalling that model does not collapse it to a menu endpoint.

## Envelopes, audition and live playback

Morphing does not trigger ADSRs, enable DSP, or restart the automixer. Keep a sounding or looping envelope running to hear the transition. Existing ADSR playback is allowed to finish its current segment; the newly interpolated curve is used on the next trigger or loop boundary. Changing a curve is not retroactive replacement of an already-sent `line~` segment.

The full-state morph supports the supplied nonempty **linear-mode** function curves. A curved-mode function target is rejected with an explicit status error rather than being silently flattened. Ordinary preset recall is separate. Intermediate curve reconstruction does not interpolate sustain/fix flags; exact endpoint native values are restored.

Temporary **Hear displayed only** audition is not a stored sound parameter. Starting a morph exits that mode and restores all three full views. This ensures the transition auditions the full model. The linked display controls and audio zoom remain available after the morph.

## Timing and performance

Progress accelerates exponentially over the first 25% of the time, runs at constant speed over the middle 50%, and decelerates over the final 25%. The curve is normalized to retain the requested total seconds. Pause/resume retains linear elapsed time separately from eased progress.

The controller uses elapsed time and requests updates every 20 ms. This is control-rate automation, not sample-accurate scheduling. Native gain/matrix/envelope smoothing can take a short time to settle after the control endpoint. A zero-second morph requests the destination immediately, but does not disable those smoothing stages.

Setup first collects and validates the source and destination. For timed morphs, an already-running partial-count or offset crossfade is allowed to finish before the new clock starts. `morphjump` and zero-second morphs bypass this wait. That short preparation time is separate from the requested transition duration. Native JavaScript Task execution has variable latency; the patch uses elapsed time rather than counting callbacks to limit accumulated timing drift. See Cycling '74's Task documentation: https://docs.cycling74.com/apiref/js/task/

This is the full renderer, not a CPU-optimized replacement. Rebuilding curve displays and crossfading multiple lane assignments can add load. Real-time CPU use, native message scheduling, GUI behavior and audible continuity have not been measured here.

## Validation boundary

See `diagnostics/V23_DIAGNOSTIC_REPORT.md` for current JavaScript regression results, saved-graph/dependency checks and the uploaded-source preservation audit. Native Max execution, `sinusoids~` DSP, audio-device output and auditory assessment were not performed. Follow `diagnostics/NATIVE_MAX_V23_CHECKLIST.md` before performance use.
