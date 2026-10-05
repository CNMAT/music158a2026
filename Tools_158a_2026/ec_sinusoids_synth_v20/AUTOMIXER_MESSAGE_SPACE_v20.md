# AUTOMIXER_CONTROL_v20-message space

## Location and use
Open `_ec_sinusoids_synth_automixer_v20.maxpat`, open `p Send_Message_Space_v20`, then double-click the new lower-right object `p "AUTOMIXER_CONTROL_v20-message space"`.

The panel opens in Presentation. It has two main columns: transport/timing commands on the left; the script explanation and three complete examples on the right. Scroll down for six receive-only readbacks. Unlock or leave Presentation to inspect the patch cords. The embedded panel and the panel inside the standalone gallery are identical.

Every clickable command is already connected to `send Automixer_v20`. The new subpatch's inlet forwards incoming commands to that same bus once; it has no outlet to accidentally duplicate the send. No script, timer or initialization command was added to the message space. Opening it does not start, stop or reset the synth. Clicking examples does change the current mixer settings.

## Complete command set
These are direct messages, not the continuous CUE `VALUE [RAMP_MS]` format. Use the exact selector and argument order shown.

| Message | Short description |
|---|---|
| `mode 0` or `bypass` | Stop the generator; restore all twelve mixer gains to unity in 20 ms. Bypass is not mute. |
| `mode 1` or `start` | Enter Auto and start the cycles. Repeating this while already running preserves the current phases. |
| `mode 2` or `stop` | Stop the generator; fade all twelve mixer gains to zero in 20 ms. Stop is not bypass. |
| `restart` or `bang` | Enter Auto and restart every cycle from zero. |
| `range <min_ms> <max_ms>` | Set the duration bounds for one rise or fall. Bounds are sorted and clamped to at least 1 ms. Used when new cycles begin. |
| `waittime <ms>` | Set the nonnegative hold at zero after a falling leg. Consulted when that leg ends; an existing hold is not resized. |
| `fixedpeak <0|1>` | 1 chooses a 1.0 peak for new cycles; 0 chooses independent random peaks. This does not turn the continuous ramps into binary output. |
| `grain <ms>` | Set integer float-update interval and Auto signal interpolation, clamped to 1–1000 ms. Stop/Bypass fades remain 20 ms. |

The panel includes examples of equal time bounds, zero wait, both peak modes and different update intervals. Parameter edits alone do not enable Auto. Send `restart` after settings to start new cycles immediately.

There is no `pause`, per-group level, voice-count, seed or `getstate` message on this bus. Unknown selectors are printed by the existing controller rather than passed through to arbitrary JavaScript functions. No command on this bus enables DSP or triggers the synthesis ADSRs.

## Three complete clickable examples
Each comma separates one message. Settings are sent in order; `restart` is last. All three examples enter Auto.

### Slow random mix
```max
range 2000 10000, waittime 5000, fixedpeak 0, grain 20, restart
```
Each group independently chooses a 2–10 second ramp leg and random peak. After rising and falling, it holds at zero for 5 seconds. Full cycles last 9–25 seconds.

### Continuous full peaks
```max
range 750 2500, waittime 0, fixedpeak 1, grain 20, restart
```
Each group independently chooses a 0.75–2.5 second leg. There is no hold, and every peak target is 1.0. Full cycles last 1.5–5 seconds. Values still traverse the interval between zero and one.

### Synchronized five-second cycles
```max
range 2000 2000, waittime 1000, fixedpeak 1, grain 20, restart
```
All twelve groups rise for 2 seconds, fall for 2 seconds and hold for 1 second. Equal bounds and the common restart align their 5-second control cycles. This is a predictable timing example, not an independently randomized texture.

## How automatic_lines_v5_ed governs the implementation
The existing instance is unchanged:
```max
js automatic_lines_v5_ed.js 12 2000 10000 5000
```
Creation arguments are `<voices> <min_ms> <max_ms> <wait_ms> [fixed_peak]`. The optional fifth argument is omitted, so random peaks are the default. This instance is fixed at twelve voices. The script can use other voice counts in other patches, but this installed wrapper has twelve gain paths and does not expose a voice-count command.

For each voice, the script generates `0 → peak → 0 → hold → repeat`. At the beginning of a cycle it chooses one time T and one peak. The rise and fall share T:

**Full cycle duration = 2 × T + wait.**

The first twelve outlets carry individual interpolated floats, bounded to 0–1. The thirteenth outlet carries the list of twelve current values; it is not a thirteenth gain channel. `start` preserves a running cycle, while `restart` and `bang` begin again. `range` and `fixedpeak` affect the next rising leg of each new cycle. The wait duration is selected when a falling leg finishes.

The v20 wrapper receives `Automixer_v20`, normalizes parameters, updates the main-page controls and publishes state. It adds the three modes and output gates around the original script. Although the raw script auto-starts on load, the wrapper starts with gates closed and unity gain, then stops the script during initialization: the synth's startup mode remains Bypass.

The twelve gain signals are applied **after the spatial matrix**, before named group sends, the mono sum and DAC-fader feeds. The script already generates control ramps; the existing `line~` objects interpolate between its updates at signal rate. Auto interpolation follows `grain`; mode changes to Stop and Bypass remain 20 ms.

These gains multiply the synthesis envelopes rather than replacing or triggering them. Set up a sounding model and nonzero ADSRs first. The existing global lane Stop / All Off stops active Auto but preserves Bypass. It does not cancel future messages from a separate score. Named group and mono feeds remain pre-DAC-fader; use receive-side gain protection.

## Passive readbacks
The lower panel listens to:

| Receive bus | Payload |
|---|---|
| `Automixer_Mode_state_v20` | 0 = Bypass; 1 = Auto; 2 = Stop. |
| `Automixer_Range_state_v20` | Sorted minimum and maximum in ms. |
| `Automixer_Wait_ms_state_v20` | Hold duration in ms. |
| `Automixer_Fixed_Peak_state_v20` | 0 = random; 1 = fixed full peak. |
| `Automixer_Grain_ms_state_v20` | Integer update/interpolation interval in ms. |
| `Automixer_Levels_state_v20` | Twelve target gains; unity in Bypass, zero in Stop. Not audio-meter readings. |

Readbacks display broadcasts they have received; opening the page does not query or reinitialize the controller. The message space contains no return path from these displays to the command bus. A gallery newly loaded into an already running session can await the next broadcast.

## Scope and verification
Only the master and the standalone gallery were changed among runtime files. The entire prior master, after removing exactly the three new gallery boxes, has the same canonical content hash as the source. The standalone is checked in the same way. All existing gallery objects, other subpatches, audio wiring, presets and JavaScript remain intact.

All 17 source/graph/emulated-message suites passed. The new suite verifies all 19 clickable examples, selector coverage, ordered recipes, passive readback wiring, the copying inlet, five-second fixed cycles and saved layout bounds. This is not native Max GUI, DSP or audio verification. The added checklist in `NATIVE_MAX_CHECKLIST_v20.md` remains to be performed in Max.

Source basis: the installed controller and audio-routing subpatches; `automatic_lines_v5_ed.js` (`initializeRisingLeg`, `advanceCompletedLeg`, `updateAllVoices`, `start`, `stop`, `restart`, `range`, `waittime`, `fixedpeak`, `grain`, `loadbang`); and the existing v20 control reference. No generator behavior was changed to match the explanations.
