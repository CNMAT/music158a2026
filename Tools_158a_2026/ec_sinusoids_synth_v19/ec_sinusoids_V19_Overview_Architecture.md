# V19 Sinusoids Synth — Architecture and Change Guide

Reviewed source: `ec_sinusoids_synth_v19(1).zip`, with `_ec_sinusoids_synth_v19-5.maxpat` as the main patch, on 25 September 2026. This is a source and structural review. Native Max playback, DSP behavior, and Presentation rendering were not run in this environment.

## 1. What the instrument does

V19 is an additive synthesizer with three editable per-partial layers, a variable number of visible partials (2–256), optional exact-harmonic anchor components, independent global pitch transforms, weighted remove/add, micro-drift, twelve synthesis lanes, independently editable lane envelopes, and a twelve-channel audio matrix. It includes copyable named-message score cues, a timed-score example, embedded shape and function memories, and organ-stop recipes.

**Primary data path**

```text
detune / amplitude / anchor multisliders
  → 256-slot interpolation and memory engine
  → generator: source frequencies, primary/anchor amplitudes, stable IDs
  → global retuning + post-model frequency/amplitude transform
  → tagged-model-s_v19
  → partial group manager: 12 frequency/amplitude lists + matrix commands
  → 12 sinusoids~ → 12 independent lane ADSRs → matrix~ 12×12
  → group sends, twelve output gains/DAC channels, summed mono FX bus
```

The original pair-list model also feeds `p model_v19` as a display/legacy output path. The twelve-lane renderer receives the *tagged* transform output, not the display pair list.

## 2. Main patch layout and shared state

The main patch contains 433 immediate boxes and 407 immediate patch cords. Its key modules are `p MASTER GAIN ENVELOPE SHAPER (ADSR)`, `p AMP_ENVELOPE_ADSR_12_VOICES`, `p Micro-Drift`, `p Octave_Families_stage_v19`, `p Envelope-Shaper_01_v19`, `p Send_Message_Space_v19`, `p Partial_Distributions`, `p SINUSOIDS_AUDIO_RENDERING`, and `p SINUSOIDS_AUDIO_ROUTING`. The twelve lane envelopes are external `ADSR_Lane_01_v19.maxpat` through `ADSR_Lane_12_v19.maxpat` bpatchers. All twelve referenced files exist in this package.

Named Max `send`/`receive` addresses connect the patch, score cues, envelope lanes, and audio renderer. The instrument does **not** namespace these buses by patch instance: two open V19 engines can both respond to a score. Distinguish a control destination (for example `Render_Distribution_v19`), its UI/readback (`Render_Distribution_state_v19`), and the renderer's internal bus (`render-distribution-engine-v19`). The score gallery is separately supplied as `Send_Message_Space_v19.maxpat` and also embedded inside the main patch; edits to one copy do not automatically update the other.

## 3. Three source layers and 256-slot memory

The main sliders represent signed detune (−1…1, equal to −100…100 cents), primary amplitude (0…1), and exact-harmonic anchor amplitude (0…1). `multislider_interpolation_engine_v19_add_restore.js` owns 256 slots per layer. The visible partial count selects a window into this memory; resizing should not erase hidden values. It receives shape targets, random targets, manual slider feedback, lists, morph durations, count changes, and indexed edits. Its transaction outlet brackets multi-layer operations using `beginupdate`/`endupdate` to prevent a half-updated source model.

Detune presets come from `detune_shape_library_v19.js` and can use an ERB-based frequency estimate. Amplitude and anchor shapes come through `p THREE MULTISLIDER SHAPE RESIZERS (2-256)`. The weighted removal engine uses its *own* copy of the shape library as weights, then sends `zeroindices` or `restoreindices` to the memory engine. Removing a partial snapshots all three source values; adding restores the snapshot. The octave-family controls and organ-stop recipes also ultimately edit the same layer memory. These paths must keep layer order consistent: 0 detune, 1 primary amplitude, 2 anchor amplitude.

## 4. Model generator and post-transform

`cnmat_sinusoid_model_generator_v19.js` has nine inlets: the three lists, count, base Hz, micro-drift amount, sample rate, transaction commands, and micro-drift commands. Its outlet 6 emits `ID frequency amplitude` records. Odd IDs 1,3,…,511 are primary partials 1–256; the immediately following even IDs are their harmonic anchors. The fundamental primary is fixed at the source base frequency. Other primary frequencies use the harmonic index, signed cents detune, and optional seeded micro-drift; anchor frequencies remain exact harmonic multiples. The generator can emit several other legacy pair-list, status, filtered, and source outputs, but the tagged outlet is the renderer's input.

`global_retuning_controller_v19.js` controls generator base and sends `tuning ratio shift` to `sinusoid_model_transform_v19.js`; its modes are regenerate, preserve ratios, and fixed-Hz shift. The transform holds the source records and applies post-tuning, semitone/cents/Hertz offsets, gain, low/high windows, sample-rate limit, and optional frequency clustering. It merges coincident accepted frequencies while retaining absorbed identities as silent tagged records. Rejected identities do not enter the renderer's current list. Its outlet 5 supplies the tagged records to `tagged-model-s_v19`. This means changes in source, post-transform settings, or filters can all affect what the group manager receives.

Micro-drift is a seeded independent random walk around the slider-set primary frequencies. The generator schedules updates at 40 ms while enabled. The retuning controller also uses periodic updates during a glide. Changes to rendering should therefore be evaluated during continuous model updates, not only when a menu item is clicked.

## 5. Distribution, synthesis, and audio routing

`Partial_Group_Manager_v19.js` consumes tagged records, has five inlets (model, distribution index, output-group count, seed, matrix ramp), and sends a single outlet protocol: `model LANE_INDEX <frequency amplitude ...>`, `matrix <input output gain ramp-ms>`, and `status ...`. It maintains a cache for all 512 IDs; missing records become silent at their last frequency. Each primary and anchor are assigned to the same lane. Twelve `sinusoids~` objects receive lane lists; twelve lane-envelope signals multiply their outputs before the `matrix~ 12 12` router. The matrix combines the permanent render lanes into 2–12 selected spatial output groups. `p SINUSOIDS_AUDIO_ROUTING` exposes group buses `sinusoids_group_01_v19` through `_12_v19`, twelve DAC feeds, and a summed mono signal on `sinusoids_v19`.

Distribution indices are 0 Interleaved, 1 Spectral Bands, 2 Seeded Random, 3 Octave Families, and 4 Perfect Fifth Bands. Modes 0–3 assign by partial index or hash and ordinarily keep ownership fixed as the audible window changes. Mode 4 uses actual *post-transform primary frequencies*: each of lanes 1–11 covers a successive [f, 1.5f) band starting at the lowest current primary frequency; lane 12 receives everything at or above `f × 1.5^11`. Primary and anchor share ownership even when their frequencies differ. New tuning/filter/model lists can move a pair to another lane and reorder oscillator slots. A change in Spatial Group Count changes the matrix destination, not partial ownership. Empty lanes are possible; group count alone cannot populate a lane.

The Presentation menu on the main patch and the menu inside `p Partial_Distributions` are separate Max objects. Both need the same fifth item and numeric index. The score cue in both score galleries must also accept 0–4. The earlier missing-item incident came from changing only the internal menu.

## 6. Envelopes, functions, and score control

The Master gain-envelope shaper owns an editable 0–1 function, breakpoint count, duration, shape presets, and embedded `coll` memory. It provides a trigger and loop, with a 200 ms default shape-smoothing control. Its trigger bus also reaches all twelve independent lane shapers. Each lane bpatcher has its own function, duration, shape, memory, trigger, loop, 200 ms default smoothing, and `line~` output. The global lane panel sends shape, loop, and smoothing changes to all twelve lanes; individual lane edits remain local until a new global/Master change. The rendered signal is multiplied by the corresponding lane `line~` before matrix routing.

`p Send_Message_Space_v19` is a gallery of copyable cue modules, including scalar ramps, discrete menus, bangs, indexed partial edits, full lists, and an example timed score. Continuous cues use Max `line` and send their *current numeric output* to a named receive; their ramp time is specified at the cue inlet. Discrete cues send an integer without interpolating menu indices. `stop` cancels that cue's own ramp, not the instrument's other ongoing processes. An example score does not start DSP or change output gain automatically. The separate gallery patch should be kept synchronized with its embedded copy whenever score protocols change.

## 7. Change boundaries for future work

| Change | Primary files or modules | Other surfaces to check |
| --- | --- | --- |
| Shape or partial memory | memory engine JS, shape helper(s), slider connections | three layer order; hidden slots; removal snapshots; copy controls; menu indices; score cues |
| Pitch, drift, or post-filter | generator, retuning controller, transform JS | tagged IDs; primary/anchor pairing; sample-rate filtering; frequency-based distribution; 40 ms updates |
| Distribution algorithm | `Partial_Group_Manager_v19.js`, `p SINUSOIDS_AUDIO_RENDERING` | main Presentation menu; nested menu; embedded and standalone score gallery; readback; documentation |
| Spatial outputs | group-manager routing, `matrix~`, audio-routing subpatch | twelve group sends; gain stages; DAC feeds; mono FX sum; lane ADSRs |
| ADSR or presets | Master subpatch and/or twelve external lane bpatchers | global panel; trigger and loop buses; smoothing; embedded `coll` data; matching score controls |
| Public score address | engine receiver and state send | copied cue's forwarding and readback; both score galleries; control reference |

For a change that introduces a new option, trace **UI selection → numeric value → named bus → receiver → processing code → status/readback**. Inspect the Presentation view, embedded and standalone subpatches, all related menus, and index clamps. For a change to signal handling, also trace model or audio patch cords and sample-rate/zero-amplitude behavior. Keep all needed JS and bpatchers in the folder returned to the user. Report every file modified beyond the main patch.

## 8. Review findings and limits

1. **Documentation drift.** `CONTROL_REFERENCE_v19.md` still gives the distribution range as 0–3, while the current patch and manager accept 0–4. Several README passages still mention an earlier main-patch filename; the actual entry point in this ZIP is `_ec_sinusoids_synth_v19-5.maxpat`. Older preservation manifests and baselines describe earlier packages and must not be treated as proof of the current revision.
2. **Tests are not a clean current-package gate.** I ran the thirteen `tests_*.cjs` scripts against the folder. The focused group-manager suite passed. Nine suites stopped because they seek `_ec_sinusoids_synth_stage_v19.maxpat`, which is absent; the other failures included older assumptions about the detune shape, an unsupported native `>=` object in the score simulator, and a stop-related assertion. These failures require triage against this revision; they do not by themselves establish that native Max audio is broken. The new mode's focused test checks JS behavior, not Max UI or audio.
3. **Runtime cost and phase continuity.** The manager can emit twelve complete lane models per generator update. Frequency-based mode 4 rebuilds ownership on each received model; a band crossing or moving lowest frequency can change slots and phase. The package has not been profiled in Max at 256 partials with micro-drift and twelve lane envelopes running.
4. **External runtime dependencies.** All referenced lane bpatcher files are bundled, but `sinusoids~` and other required Max/CNMAT packages must be available in the user's Max environment. No native Max launch or audible validation was performed here.

This review made **no changes** to the V19 package. It records the current structure and the checks needed for later revisions.
