# Sinusoids synth v19

Open `_ec_sinusoids_synth_stage_v19-1.maxpat` with this whole folder on the Max search path. All supplied patchers, JavaScript helpers, sends, receives, cues, and versioned references use the v19 address space. CNMAT sinusoids~ and any other installed Max packages used by the original project remain prerequisites; this ZIP contains the supplied project dependencies, not a new installation of those packages.

## Twelve-lane partial renderer

The final transformed model now carries stable IDs into `Partial_Group_Manager_v19.js`. Each of the 256 primary partials and its exact-harmonic anchor partner has a permanent identity, for 512 possible records. Those records are allocated across twelve persistent `sinusoids~` lanes. Resizing, removal/restoration, filtering, amplitude changes and retuning do not compact or renumber the lane slots.

Open `p Render_v19` from Presentation Mode for:

* **Render Distribution**: Interleaved, Spectral Bands, Seeded Random, Octave Families, or Perfect Fifth Bands.
* **Spatial Group Count**: 2–12 output groups. This changes only the ramped `matrix~` routing and does not relocate oscillator ownership.
* **Distribution Seed**: repeatable assignments for Seeded Random and Octave Families.
* **Routing Ramp ms**: click-reduction time when the output grouping changes.

The existing mono output is the sum of the active spatial groups and continues through the original gain/DAC path. Independently enveloped group signals are available as `receive~ sinusoids_group_01_v19` through `receive~ sinusoids_group_12_v19`. Outputs above the selected Spatial Group Count are silent.

Changing the distribution plan intentionally rebuilds partial ownership and can change phase relationships. Changing only Spatial Group Count is the phase-safer performance operation because the twelve oscillator lanes remain unchanged.

**Perfect Fifth Bands (mode 4)** uses the lowest current primary frequency as its starting point. Lanes 1–11 each cover one successive perfect fifth, a frequency ratio of 3:2: lane 1 is `[f, 1.5f)`, lane 2 is `[1.5f, 2.25f)`, and so on. Lane 12 takes every frequency at or above `f × 1.5^11` (about `86.5f`). At a 110 Hz lowest partial, the lane 12 threshold is approximately 9.51 kHz. Every primary and its exact-harmonic anchor occupy the same lane, determined by the primary's actual frequency. Retuning, detuning, or a change in the lowest frequency can move pairs across bands and change their oscillator slots; the other four modes keep their original fixed assignments. A band can be empty when no current partial falls within it.

## Master and lane ADSRs

The Presentation **Trigger ADSR** button now enters the Master `GAIN ENVELOPE SHAPER (ADSR)`. The Master broadcasts its current value/duration list on `Envelope_Trigger_v19`, so the root monitor and all twelve lane envelopes start together. **Loop ADSR** controls only the Master; a Master completion retriggers that same broadcast and therefore restarts all lanes without a control-feedback loop.

Open `p INDEPENDENT_ADSR_12_VOICES` from the main Presentation canvas. It opens directly in Presentation Mode and contains twelve compact, independently editable function generators. Drag each lane multislider to edit its values. Every lane has its own shape, breakpoint count, duration, trigger, loop, memory index, visible `STO`/`RCL` controls, and embedded `coll` memory. Master point/duration changes update all lane mirrors; a later lane edit remains local until the next Master change.

The Master ADSR and the twelve-lane panel now expose **SHAPE SMOOTHING (ms)**, defaulting to 200 ms. This interpolates shape, recall, and received point-list changes; set it to 0 for immediate changes. The lane-panel control addresses all twelve lanes with `ADSR_Lane_Smoothing_ms_v19`. Individual overrides use `ADSR_Lane_01_Smoothing_ms_v19` through `ADSR_Lane_12_Smoothing_ms_v19`. The Master address remains `ADSR_Morph_ms_v19`.

Audio is divided into two explicit modules in patching mode:

* `SINUSOIDS_AUDIO_RENDERING`: transformed model, twelve stable `sinusoids~` lanes, per-lane ADSR multipliers, and `matrix~`.
* `SINUSOIDS_AUDIO_ROUTING`: post-matrix multipliers, named lane sends, twelve DAC feeds, and the mono FX sum.

Public messages:

* `Render_Distribution_v19 0` — 0 Interleaved, 1 Spectral Bands, 2 Seeded Random, 3 Octave Families, 4 Perfect Fifth Bands.
* `Spatial_Group_Count_v19 6`
* `Render_Seed_v19 12345`
* `Render_Ramp_ms_v19 100.`

Copyable cues and working examples are installed in both `Send_Message_Space_v19.maxpat` and its embedded `p Send_Message_Space_v19` version.

## Detune ±

The existing inharmonicity multislider now has −1 at the bottom, 0 at the center and +1 at the top. Each unit equals 100 cents: `frequency = harmonicFrequency * 2^(value/12)`. Negative values survive morphs, per-partial edits, and 256-slot memory. The existing F0 lock remains: partial 1 always plays the source fundamental. The other partials detune independently. Harmonic-anchor duplicates stay at their exact harmonic frequencies. No second amplitude slider was added.

Flat Zero centers all visible slider values (using the selected morph time). All on full moves every visible detune slider to its maximum, +1 (100 cents). There are 94 detune presets: Flat Zero, All on full, and four variants of each of the 23 original nonzero shapes. The variants are Up, Down, Critical Band Up, and Critical Band Down. The full numbered menu is in `DETUNE_SHAPES_v19.json`.

Critical-band presets use the supplied ERB estimate, `24.7 * (1 + 0.00437 * f)` Hz. For each partial, the shape magnitude scales HALF that bandwidth as a signed Hz displacement. That target is converted to cents and capped at ±100 cents. ERB is a psychoacoustic estimate, not an exact universal beating boundary. Once applied, the sliders still represent cents; students can move beyond a preset's ERB value up to the fixed semitone limit. Up and down ERB values can differ in cents because equal Hz offsets are not symmetric in cents.

Changing Partial Count rebuilds the selected preset at 2–256 points after the morph engine resizes. Active critical-band presets also recalculate from the actual generator base, including a base glide. Amplitude and anchor presets keep the existing embedded resizer. Manual edits follow the existing selected-preset rebuilding behavior when the count changes.

`PartialAmplitudes_to_Inharmonicity` and `Copy_Amplitude_to_Drift_v19` copy amplitudes directly to the positive 0…1 half, including hidden memory. Random Detune generates signed −1…1 values. Organ-stop beating offsets are converted to the new cents scale.

## Messages

The familiar Drift address names are retained with the new suffix and signed meaning:

* `Partial_Drift_v19 3 -0.5`: partial 3 down 50 cents.
* Cue_Partial_Drift_v19 input `3 -0.5 1000`: ramp partial 3 down 50 cents over 1000 ms.
* `Drift_Values_v19 <list>`: exactly one signed value per visible partial; uses Drift_Morph_ms_v19.
* `Drift_Shape_v19 0`: Flat Zero.
* `Drift_Shape_v19 1`: All on full (+1, or 100 cents).
* `Drift_Shape_v19 2`: linear rising, positive.
* `Drift_Shape_v19 3`: linear rising magnitude, negative (0 down to −1).
* `Drift_Shape_v19 4` / `5`: linear critical-band up / down.
* `Drift_Morph_ms_v19 1000`: preset morph duration.

The control is now labeled DRIFT AMOUNT (default 0). Enable Micro-Drift and set Drift Amount to 1 for the default ±1 Hz steps. Its existing `Max_Drift_v19` address scales only the optional micro-walk (0…1); it does not change the detune slider scale. Micro-walk now accumulates Hz steps around the detuned pitch and can exceed the slider range; see MICRO_DRIFT_v19.md. Disable Micro_On_v19 for exact static detune measurements.

## Verification and preservation

See `VALIDATION_RENDERER_v19.json` for this build's current checks, counts and limitations. The new renderer behavioral test executes in a Node VM with Max messaging/task stubs; no Max audio runtime is available here. Test the patch in Max before performance use.

Existing Master ADSR stored entries are preserved. Each new lane memory is isolated under `ADSR_Lane_NN_User_Functions_v19`; storing or recalling one lane does not address another lane or the Master. A 150 ms requested cue duration still controls completion bangs.

The other inherited test scripts, baseline hashes, preservation manifests and old test-results files are retained for project completeness with renamed version references. Some describe earlier design assumptions and are not current renderer validation evidence; `VALIDATION_RENDERER_v19.json` and `tests_partial_group_manager_v19.cjs` are authoritative for the v19 renderer.

Max multislider range/display reference: https://docs.cycling74.com/reference/multislider/
