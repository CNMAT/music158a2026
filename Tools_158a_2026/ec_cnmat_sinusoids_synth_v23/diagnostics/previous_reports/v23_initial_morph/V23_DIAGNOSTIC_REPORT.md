# CNMAT Sinusoids v23 — implementation and diagnostic report

## Authoritative input

- Uploaded archive: `ec_cnmat_sinusoids_synth_v21 2.zip`.
- SHA-256: `857b27055fe25777bd6eae3e5ed2b983c41300e14c5d54ed39aca87d3001a706`.
- Built as a separate v23 folder. The uploaded archive was not modified.

## New functionality

Full-state A/B capture and control-rate morphing to a complete dump in a requested number of seconds, without repeated preset recall. Supported numeric controls, complete hidden partial memories, live linear envelope curves, pitch geometry and spatial weights have explicit interpolation paths. Discrete selectors, boolean modes, seeds and dormant user-library records commit at the destination. Pause, resume, hold, finish, retarget and intermediate-state dumping are supported.

Full v21 messages are checksum-validated before format/address migration. New full v23 dumps use schema 2 with native function-curve metadata. Low-CPU dumps are not the same schema. A/B slots are passive staging inputs, not automatic recalls.

The existing full twelve-bank renderer and original audio patch cords remain. No low-CPU architecture was introduced. The linked three-layer editor, non-destructive audio zoom, automixer, ADSRs, compact tutorials and auto-closing starter are retained under the v23 namespace. Morph start exits temporary audition so the whole model is heard.

## Runtime modifications

All synth-owned v21 names/buses/dependencies were migrated to v23. The generic `automatic_lines_v5_ed.js` remains byte-identical to the upload.

Beyond that namespace migration:

- Main instrument: additive morph controls, A/B message boxes, duration, progress, help and emergency cancel; controller saved ports expand from 1/3 to 3/6.
- Twelve ADSR patches and two embedded functions: passive native `function dump` readback proxies. No existing envelope cords were removed or rerouted.
- Message galleries: a new passive morph help subpatch. Their original, potentially different user edits were preserved independently, not overwritten by synchronization.
- New standalone `patchers/Full_State_Morph_v23.maxpat`.
- Fifteen runtime scripts have morph/controller/adapter or fractional-ruler-label changes. Seven have only namespace changes or are byte-identical. The exact list is in `V23_PRESERVATION_RESULTS.json`.
- Existing startup logic is unchanged apart from v23 names. There are no new `Patcher:/` runtime references or permanent search-path changes.

## Automated results

| Check | Result |
|---|---:|
| Actual-JavaScript regression suites | 28 / 28 passed |
| New full-state morph suite | 1,102 checks passed |
| New connected model-message path suite | 153,068 checks across 51 frames passed |
| Saved-graph and control-port checks | 36,292 passed |
| Max documents checked | 39 |
| Objects / patch cords checked | 15,367 / 11,894 |
| Runtime JavaScript syntax checks | 22 / 22 passed |
| Directly referenced bundled dependency files | 32 found |
| Native function readback proxies | 14 |
| Retained native sinusoids~ instances | 12 |
| Original Max documents retained apart from additions and declared controller-port/help fields | 38 / 38 |
| Original embedded collection datasets / records preserved | 35 / 24,806 |

The 28 suites comprise 26 inherited behavioral suites and two new morph suites. Tests exercise the actual delivered JavaScript in emulated Max hosts. The connected path test runs memory → model generator → transform → partial-offset stage → group manager, then checks its model messages; it does not execute sinusoids~ audio synthesis.

Coverage includes full three-layer hidden-memory interpolation; count-dependent activity fades; positive-frequency geometric paths; union-grid envelope interpolation; exact endpoint data; all 1024 routing-identity weight sums; pause/resume timing; hold and retarget; midpoint snapshots; legacy v21 messages; passive slot inlets; dormant store commits; malformed target rejection; adapter-fault cleanup; explicit curved-mode rejection; and external mute/emergency cancellation.

The preservation audit recursively removes only added objects/cords and restores exactly five declared controller fields, then compares the entire retained document against the namespace-migrated source fingerprint. All original patch cords, UI positions, saved data, collections and source-specific gallery edits must therefore match. The generic automatic-lines script is checked against its original byte hash.

## Reproduce checks

From the delivered folder, with Python 3 and Node.js installed:

```sh
python3 -B diagnostics/run_diagnostics_v23.py
```

The runner checkpoints each suite and saves stdout/stderr under `diagnostics/v23_regression_logs/`. A constrained host can resume with `--from TEST_FILENAME`. These tools are not needed to run the synth in Max.

Current results: `V23_TEST_RESULTS.json`, `V23_STRUCTURE_RESULTS.json`, `V23_PRESERVATION_RESULTS.json`, `full_state_morph_results_v23.json`, `morph_signal_path_results_v23.json`. Original diagnostics are archived in `historical_v21_diagnostics.zip` and are not presented as new certification.

## Deliberate boundaries and remaining verification

**Native Max execution, native loading, window behavior, audio auditioning, oscillator phase continuity, real scheduler timing, and CPU profiling have NOT been performed here.** There is no claim that offline model-message checks prove click-free native audio.

This is control-rate morphing with an approximately 20 ms requested update interval, not sample-accurate automation. Existing native smoothing may settle after the control endpoint. Max documents variable latency for low-priority JavaScript Tasks: https://docs.cycling74.com/apiref/js/task/ . Elapsed-time progress avoids cumulative tick-count error but cannot remove scheduler latency.

The supplied nonempty linear-mode function curves are supported. Curved-mode function morphing is explicitly rejected. Existing ADSR segments are not retriggered or rewritten mid-segment; updated curves apply at the next trigger or loop. Oscillator phases, current envelope segment positions and the automixer's live random-cycle phase are not captured by the preset format. Categorical switches can change behavior at the endpoint; they are not fractional interpolated selections.

The live controller holds generator/transform emission while applying a complete frame, uses prepared engine states rather than transferring a whole dump every tick, and avoids replaying spatial-plan menus at completion so live oscillator slots are not needlessly reordered. These are source-level safeguards, not an audio guarantee.

Follow `NATIVE_MAX_V23_CHECKLIST.md` at low listening volume before relying on v23 in performance. Use a full fresh folder, not a partial v21 overlay.
