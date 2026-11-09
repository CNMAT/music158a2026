# v23 MorphBank A–X — diagnostic report

## Basis and scope

Built from `ec_cnmat_sinusoids_synth_v23.zip`, the v23 package whose morphing the user reported as working. No new current-package upload was present on this turn. The original archive is unchanged.

This remains **v23**. The request specifies A–X and four rows by six messages, so the bank has **24** slots. The isolated reference to Z was not used to enlarge the bank to 26.

## Runtime changes

Exactly four existing runtime files changed:

1. `javascript/synth_controller_v23.js`: A–X slot allocation, cloned full captures, passive slot-message publication, bank clear/status, native File read/write, whole-bank validation, and explicit command/control integration.
2. `patchers/_ec_sinusoids_synth_v23_main.maxpat`: the replacement morph strip, hidden per-letter dump editors, save/open dialog plumbing, startup restaging and command/readback connections.
3. `patchers/Send_Message_Space_v23.maxpat`: updated morph help and added morph CUE.
4. `patchers/Full_State_Morph_v23.maxpat`: updated command examples and explanations.

One runtime file was added: `patchers/Cue_Morph_v23.maxpat`.

**57 of 61 original runtime files are byte-for-byte unchanged**, including the starter, all original tutorial patches, all lane patches and the other 21 JavaScript files. The tested full-state transition core from `_morphfault` through the original controller's final private-function registration is byte-identical. It includes setup, actual numeric frame interpolation, curves, retargeting, release and codec/migration functions. The existing six controller outlets and three inlets are retained; A/B legacy outlets remain available, while the UI now uses individually addressed slot buses.

The whole original master and standalone message space are reconstructed by reversing only declared morph-strip, bank and help changes and then compared by canonical hashes. All non-replaced original patch cords and their order fields are retained. The independent original v21-to-v23 preservation audit also still passes.

All **35 embedded collection datasets / 24,806 records** remain unchanged. No DSP routing, oscillator bank, smoothing engine, interpolation adapter, ADSR, automixer algorithm, or original global bus was changed.

## Bank behavior

Each slot holds the existing complete full-state preset; bank workflow is not recursively included in a sound preset. Reading a bank validates the envelope checksum, slot map, seconds and every complete preset before replacing anything. Sparse banks clear stale destinations. Capture/read fills each hidden message with `set preset …`; clear uses a silent empty `set`. New file errors and invalid slots report through the existing controller status output.

`clear all` affects bank slots and messages only. Running morph targets have already been copied and are not erased. Pending capture callbacks are invalidated when their slot is cleared or replaced. Saving a bank prepares the entire serialized bank before opening its output file, checks native File positions, and verifies the saved text by rereading it. Writes are not OS-atomic; a write error can leave an incomplete output file, so backups remain necessary. File operations and large validation runs may delay real-time control updates.

## Executed results

| Check | Result |
|---|---:|
| Existing regression suites | 28 / 28 passed |
| Added MorphBank regression suite | 1 / 1 passed |
| Total regression suites | 29 / 29 passed |
| New MorphBank assertions | 3,224 passed |
| Source/destination dispatch combinations | 576 passed |
| Existing full-state morph tests | 1,102 passed |
| Existing connected model-path checks | 153,068 passed |
| Runtime JavaScript syntax checks | 22 / 22 passed |
| Saved graph/control/dependency assertions | 37,579 passed |
| Dedicated bank layout/preservation assertions | 18,833 passed |
| Bundled named dependencies referenced | 32 found |
| Original embedded collections | 35 / 35 preserved |

The new suite runs the actual controller and engine JavaScript. It performs all 24 full captures, checks independent hidden memories, and exercises a real G-to-X adapter retarget including seconds and transport. The 576-pair portion checks public destination dispatch, not native audio for every pair. File tests use real disk files behind a modeled Max File interface, covering 24-slot, sparse, empty, Unicode-path/store and overwrite round-trips, late-slot corruption, bad checksum, missing/truncated files, non-progress reads, short writes, and capture invalidation. Dialog wiring and cancellation behavior are checked from the saved graph.

One older test was updated deliberately: a passive B-slot stage now emits bank-display/status buses. The test permits only those new readback buses and still rejects sound-control changes; it no longer assumes that staging emits zero named messages of any kind.

The front-page layout was rendered from saved presentation rectangles for review. It is a schematic preview, **not a native Max screenshot**. Native GUI fonts, dialog behavior and patch execution remain untested here.

## Reports and rerun

- `V23_TEST_RESULTS.json`: all 29 suites and elapsed times.
- `MORPHBANK_TEST_RESULTS_v23.json`: new controller/bank tests.
- `MORPHBANK_AUDIT_RESULTS_v23.json`: exact scope and UI/message-path checks.
- `MORPHBANK_PRESERVATION_BASELINE_v23.json`: input hashes and declared reversal data.
- `V23_STRUCTURE_RESULTS.json`: saved structure and runtime-script checks.
- `V23_PRESERVATION_RESULTS.json`: retained original v21-to-v23 audit.
- `v23_regression_logs/`: current test output.
- `previous_reports/v23_initial_morph/`: earlier morph report, retained as historical context.

```sh
python3 -B diagnostics/run_diagnostics_v23.py
```

Python and Node.js are test tools only. The synth and bank-file operations run inside Max.

## Native verification boundary

**No native Max execution, real OS dialog testing, native File API execution, or audio auditioning of this upgrade has been performed here.** The user's successful test applies to the earlier morph package. Passing source, modeled-message and disk tests are not native certification of the new bank interface. Complete `NATIVE_MAX_MORPHBANK_v23_CHECKLIST.md`, especially saving, clearing, loading and restarting Max, before performance use.
