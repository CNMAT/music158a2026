# Score control reference — v16

These are the 77 model modules in Send_Message_Space. Engine payloads omit the destination name; cue inputs may additionally include a ramp time. `stop` is a cue-level cancellation command.

## Core

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Partial_Count_v16` | int 2–256 | `32` |  |
| `Source_Base_Hz_v16` | float 1–23000 | `110. 500.` | Also resets retuning target; RETUNE MS remains active. |
| `Max_Drift_v16` | float 0–1 | `0.5 500.` |  |
| `Output_Gain_dB_v16` | float -70–6 | `-30. 250.` |  |
| `Audio_On_v16` | int 0–1 | `0` | Explicit DSP switch; never sent on load. |
| `Envelope_Loop_v16` | int 0–1 | `0` |  |
| `Envelope_Trigger_v16` | bang | `bang` |  |

## Shapes

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Drift_Shape_v16` | int 0–23 | `0` |  |
| `Drift_Morph_ms_v16` | float 0–600000 | `1000.0 500.` | Applies to subsequent shape/random changes. |
| `Amplitude_Shape_v16` | int 0–23 | `3` |  |
| `Amplitude_Morph_ms_v16` | float 0–600000 | `1000.0 500.` | Applies to subsequent shape/random changes. |
| `Anchor_Shape_v16` | int 0–23 | `0` |  |
| `Anchor_Morph_ms_v16` | float 0–600000 | `1000.0 500.` | Applies to subsequent shape/random changes. |

## Retuning

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Retuning_Mode_v16` | int 0–2 | `0` |  |
| `Target_Base_Hz_v16` | float 1–23000 | `220. 1000.` |  |
| `Retune_ms_v16` | float 0–600000 | `1000.0 500.` |  |
| `Semitones_v16` | float -120–120 | `0.0 500.` |  |
| `Cents_v16` | float -12000–12000 | `0.0 500.` |  |
| `Offset_Hz_v16` | float -23000–23000 | `0.0 500.` |  |
| `Model_Gain_v16` | float 0–4 | `1.0 500.` |  |
| `Minimum_Hz_v16` | float 0–23000 | `20.0 500.` |  |
| `Maximum_Hz_v16` | float 0–23000 | `12000.0 500.` |  |
| `Cluster_Hz_v16` | float 0–23000 | `0.0 500.` |  |
| `Post_Bypass_v16` | int 0–1 | `0` |  |

## ADSR shaper

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `ADSR_Breakpoints_v16` | int 3–48 | `48` |  |
| `ADSR_Duration_ms_v16` | float 1–3600000 | `1000.0 500.` |  |
| `ADSR_Shape_v16` | int 0–23 | `0` |  |
| `ADSR_Store_Index_v16` | int 1–9999 | `1` |  |
| `ADSR_Store_v16` | bang | `bang` |  |
| `ADSR_Emit_v16` | bang | `bang` |  |
| `ADSR_Points_v16` | list | `0. 0.5 1. …` | List updates preserve the current point count only when lengths match; preset selection uses 48. |

## Library shaper

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Library_Breakpoints_v16` | int 3–48 | `48` |  |
| `Library_Duration_ms_v16` | float 1–3600000 | `1000.0 500.` |  |
| `Library_Shape_v16` | int 0–23 | `0` |  |
| `Library_Store_Index_v16` | int 1–9999 | `1` |  |
| `Library_Store_v16` | bang | `bang` |  |
| `Library_Emit_v16` | bang | `bang` |  |
| `Library_Points_v16` | list | `0. 0.5 1. …` | List updates preserve the current point count only when lengths match; preset selection uses 48. |

## Micro-drift

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Direction_Seed_v16` | int 0–2147483647 | `12345` |  |
| `Micro_On_v16` | int 0–1 | `1` |  |
| `Micro_Depth_Hz_v16` | float 0–5 | `0.1 500.` |  |
| `Micro_Segment_ms_v16` | float 100–600000 | `2000.0 500.` |  |

## Removal

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Removal_Shape_v16` | int 0–23 | `3` |  |
| `Removal_Count_v16` | int 0–256 | `10` |  |
| `Remove_Partials_v16` | bang | `bang` |  |

## Actions

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `All_Off_v16` | bang | `bang` |  |
| `Copy_Amplitude_to_Anchor_v16` | bang | `bang` |  |
| `Copy_Amplitude_to_Drift_v16` | bang | `bang` |  |
| `Random_Drift_v16` | bang | `bang` |  |
| `Random_Amplitude_v16` | bang | `bang` |  |
| `Random_Anchor_v16` | bang | `bang` |  |

## Organ stops

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Stop_0_v16` | int 0–1 | `0` |  |
| `Stop_1_v16` | int 0–1 | `0` |  |
| `Stop_2_v16` | int 0–1 | `0` |  |
| `Stop_3_v16` | int 0–1 | `0` |  |
| `Stop_4_v16` | int 0–1 | `0` |  |
| `Stop_5_v16` | int 0–1 | `0` |  |
| `Stop_6_v16` | int 0–1 | `0` |  |
| `Stop_7_v16` | int 0–1 | `0` |  |
| `Stop_8_v16` | int 0–1 | `0` |  |
| `Stop_9_v16` | int 0–1 | `0` |  |
| `Stop_10_v16` | int 0–1 | `0` |  |
| `Stop_11_v16` | int 0–1 | `0` |  |
| `Stop_12_v16` | int 0–1 | `0` |  |
| `Stop_13_v16` | int 0–1 | `0` |  |
| `Stop_Beat_Hz_v16` | float 0–5 | `0.2 500.` |  |
| `Stop_Tail_v16` | int 1–256 | `24` |  |
| `Stops_Apply_v16` | bang | `bang` |  |
| `Stops_Clear_v16` | bang | `bang` |  |
| `Registration_v16` | int 0–9 | `0` | Applies immediately: 0 PrincipalChorus, 1 CornetV, 2 SesquialteraII, 3 FluteQuint, 4 CelesteII, 5 ReedChorus, 6 OpenFlute, 7 StoppedFlute, 8 String8, 9 SharpMixture. |

## Individual partials

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Partial_Drift_v16` | indexed | `3 0.5 250.` |  |
| `Partial_Amplitude_v16` | indexed | `3 0.5 250.` |  |
| `Partial_Anchor_v16` | indexed | `3 0.5 250.` |  |
| `Drift_Values_v16` | list | `0. 0.5 1. …` | Exactly the visible partial count; uses the existing layer morph time. |
| `Amplitude_Values_v16` | list | `0. 0.5 1. …` | Exactly the visible partial count; uses the existing layer morph time. |
| `Anchor_Values_v16` | list | `0. 0.5 1. …` | Exactly the visible partial count; uses the existing layer morph time. |

## Octave families

| Destination / cue name | Type and bounds | Cue input example | Notes |
| --- | --- | --- | --- |
| `Octave_Family_v16` | family | `3 1` | Root is 2 or odd 3–255; 0 off / 1 on. Roots beyond visible count are unchanged. |

## Shape index mapping

Applies to the synth, removal and envelope SHAPE menus. Index 0 is Flat zero.

| Index | Shape |
| --- | --- |
| 0 | Flat zero |
| 1 | Linear: low to high |
| 2 | Exponential: low to high |
| 3 | Linear: high to low |
| 4 | Exponential: high to low |
| 5 | Triangle: center peak |
| 6 | Exponential triangle: center peak |
| 7 | Gaussian |
| 8 | Steep Gaussian |
| 9 | Inverted Gaussian |
| 10 | Steep Inverted Gaussian |
| 11 | Double Gaussian |
| 12 | Steep Double Gaussian |
| 13 | Inverted Double Gaussian |
| 14 | Steep Inverted Double Gaussian |
| 15 | Triple Gaussian |
| 16 | Steep Triple Gaussian |
| 17 | Inverted Triple Gaussian |
| 18 | Steep Inverted Triple Gaussian |
| 19 | Quadruple Gaussian |
| 20 | Steep Quadruple Gaussian |
| 21 | Inverted Quadruple Gaussian |
| 22 | Steep Inverted Quadruple Gaussian |
| 23 | Random (fixed) |

## Registration index mapping

Selecting a registration applies it immediately. Individual stop switches only propose a selection until Stops_Apply is banged.

| Index | Registration |
| --- | --- |
| 0 | PrincipalChorus |
| 1 | CornetV |
| 2 | SesquialteraII |
| 3 | FluteQuint |
| 4 | CelesteII |
| 5 | ReedChorus |
| 6 | OpenFlute |
| 7 | StoppedFlute |
| 8 | String8 |
| 9 | SharpMixture |

## Standalone envelope

The separately supplied Envelope-Shaper_01_v16 retains its seven Standalone_* receive names. The gallery ADSR_* and Library_* cues address the two embedded engine shapers. To score the standalone instead, adapt the matching module destination and its state-readback name to Standalone_*.
