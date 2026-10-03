# v20 diagnostic report

**Build:** v20 repair release, October 3, 2026  
**Entry point:** `_ec_sinusoids_synth_v20.maxpat`  
**Result:** PASS — automated source, saved-graph and emulated-message tests.  
**Native Max / audio execution:** NOT PERFORMED.

## Automated results

| Check | Result |
|---|---|
| Max patch JSON files | 19 parsed and checked |
| Embedded patcher contexts | 316 checked |
| Saved objects / patch cords | 11,165 / 8,773 checked |
| Structural and contract assertions | 39,450 passed |
| Missing cord endpoints, invalid saved ports, duplicate cords | 0 |
| Embedded parent/child port counts and left-to-right index consistency | Passed throughout the supplied patch corpus |
| Project JavaScript files | 14 syntax checks passed |
| JavaScript / message-graph regression suites | 14 passed; 0 failed |
| Referenced bundled dependency files | 26 resolve |
| Explicit named-bus objects / distinct names | 1,633 / 444 catalogued and namespaced |
| Original embedded collection datasets | 31 record-content hashes unchanged |
| Embedded collection count fields repaired | 13, from 1104 to 1150 |
| Current embedded collections, including added shared-bank copies | 33 |
| Copyable CUE models | 84 instances / 80 distinct addresses; all forwarded destinations have receivers in the supplied corpus |
| Embedded / standalone panel and message-space copies | Exact structural parity |
| Uploaded archive and extracted source files | Original archive hash unchanged; all 67 substantive source files unchanged |

## Coverage

The exhaustive detune suite checks **95,880 shape/count/base-frequency combinations**, all 94 choices and all counts from 2 through 256 at four base frequencies. Other suites cover 25 amplitude/weight presets, exact signed detune conversion, source-fundamental locking, harmonic anchors, memory resize/copy operations, hidden slots, weighted removal/restoration, All Off, organ registrations, retuning modes and interrupted glides, transformed-model filtering/merging, and persistent primary/anchor IDs.

The renderer suite passes 1,555 counted assertions. Seeded micro-walk checks compare 300 paired 256-slot frames; they test an accumulating walk rather than incorrectly constraining it to one step. Positive and zero micro amounts, repeatable seeds, timing continuity, fixed anchors, source transactions and tagged-model movement are covered.

The CUE harness executes selected saved Max message graphs in a deterministic simulation. It tests parameter ramps, feedback-seeded starts, copied per-partial CUE independence, cancellation, discrete/action protocols, the timed score, all six global lane CUEs, exact twelve-way fanout and float durations. Completion behavior is checked at 0, 149, 150 and 151 ms. Global loop-off precedes Stop dispatch, and smoothing feedback does not recurse.

The semantic routing contract separately traces every editor to its same-numbered synthesizer lane and matrix input. Matrix outputs are traced to their correctly numbered pre-fader buses and DAC faders. The matrix may intentionally redistribute input lanes; this is not a claim that every distribution routes a synthesis lane to only one speaker.

## Preservation and namespace

Preset preservation compares actual collection **records**, independently of corrected `count` metadata. No record keys or values were edited. The two additional shared-bank placements make the standalone/embedded lane panel self-contained for its preset reference; they are copies, not new preset content.

Runtime project references were scanned for old `v19` names. Literal control/signal buses, named collections, project JavaScript references, JSUI filenames and bpatcher dependencies use v20. Native object/API names, including `sinusoids~`, were intentionally retained. Two copies of v20 are not instance-isolated; Max DSP is globally managed by Max.

## Repairs represented by these checks

The release corrects interleaved envelope-port mapping, named spatial-bus numbering, the disconnected Output_Gain_dB control/state path, implicit Master-to-lane overwrites, deferred-loop stop ordering, global UI/CUE synchronization, timed-score command/readback names, smoothing-CUE bounds/cache, and stale library-count metadata. The original uploaded ZIP remains untouched.

## What is not verified

**No native Max application or audio device was available in this execution environment.** The tests do not instantiate `sinusoids~`, exercise Max's real scheduler, render audio, measure CPU performance, interact with the native GUI, listen for clicks or validate physical DAC assignments. JavaScript tests use Max messaging/Task/clock stubs; native-object CUE execution is a selective simulation, not a replacement Max runtime. Layout checks compare saved rectangles, not rendered Max windows.

Use `NATIVE_MAX_CHECKLIST_v20.md` before rehearsal or performance. In particular, confirm external loading, real channel mapping, quiet gain initialization, lane independence, stop behavior and timing at the actual sample rate/vector size.

## Reproduction and evidence

Run `python3 run_diagnostics_v20.py` with Python 3.10+ and Node 18+. Tests run in a temporary copy; new results go to `diagnostics/latest/`. The included release run used Linux, Python 3.13.5 and Node v22.16.0.

Detailed results, logs, bus inventory and audio maps are in `diagnostics/release/`. Preset baseline, count repairs, source-integrity proof, rename provenance and test-migration notes are one directory above. Inherited reference material under `docs/history/` is not current validation.

Source archive SHA-256: `59cb75bc257c9967b5ac9037f4f39743e4d4d2e34e9d910894aa3bb7f6a0601c`.
