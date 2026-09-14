# Score models update — v15

Baseline: latest supplied `ec_sinusoids_synth_v15.zip`, SHA-256 `49700c3955f372de55e1ca45c5e73fe57f77536c6dddb2bc6e39609c25b9bf05`. The uploaded ZIP is untouched. Output is written to a separate `deliverables/v15_score_models/ec_sinusoids_synth_v15` folder.

## Changes

Replaced the Send_Message_Space landing window with a normal patching-view gallery. Added three beginner message recipes, 77 copyable `p Cue_…_v15` modules in category windows, and a 12-cue timed-score example with explicit cancellation. Continuous modules accept target plus optional ramp time, defaulting to 20 ms; named output is visible and reported through an optional outlet. Indexed modules include current-value queries and per-copy reply gating. All functionality necessary to send a cue is embedded in its p object; no new JavaScript or abstraction dependency is needed for copied cues.

The previous standalone live view is nested unchanged in the standalone gallery. The previous embedded live view is nested unchanged in the engine gallery. Main engine object geometry, settings, connections, original nested workspaces, receiver mappings and synthesis JavaScript are unchanged. Only the embedded Send_Message_Space contents and its explanatory main-page label changed. Updated documentation and added/adjusted tests for the new gallery location.

## Verification

- Exact hash comparison of the supplied main graph after excluding only the replaced gallery and explanatory label.
- Exact hashes of both preserved live views and unchanged synthesis dependencies.
- Recursive box-ID, inlet/outlet, dependency and patch-cord validation; no overlap between objects inside cue modules.
- No loadbang or loadmess in copyable cue modules or the timed example.
- Deterministic graph harness tests target/duration ordering, default 20 ms ramps, explicit durations, readback starts, stop cancellation, independently copied partial cues, isolated query replies, discrete/action commands, delayed events and score restart. This harness models the relevant native Max objects; it does not replace native Max scheduler testing.
- Existing synthesis regression suites also run; results are in `test_results_v15.json`. The student-controls test now locates the preserved Live Controls view, skips standalone receivers when checking engine-gallery rows, and initializes its morph test through the actual feedback inlet before testing interpolation.
- ZIP integrity and packaged bytes checked after creation.

## Verify in Max

Native inspection of this revised gallery was not completed: earlier in this session macOS denied screen-capture access. No permission setting was changed.

1. Open the updated engine, open Send_Message_Space, and confirm How_Messages_Work, category windows, Example_Timed_Score and Live_Controls open as expected. Gallery/model views intentionally use patching mode to show cords.
2. Copy one continuous p cue and its input message into a new empty patcher, close the gallery, and send `110. 500.`. Confirm the main source-frequency control follows the ramp and the cue's named display ends at the intended value. Test a bare value, zero-duration input, and stop mid-ramp.
3. Copy an integer and an action cue. Verify one menu selection per input and one action per bang, with no output from opening the score.
4. Test two indexed partial cues at different indices during overlapping ramps; each should reach its own target. Test a hidden index, then raise the visible count to inspect it.
5. Start the worked score; stop before 2000 ms and confirm the later pitch and trigger cues do not fire. Restart twice to verify cancellation. Use ALL OFF separately to silence the banks.
6. Audition with the existing engine DSP/gain controls. Check the Max Console, native ramp timing, display fonts, category-window scrolling and the unchanged Live Controls interface. No native audio verification is claimed for this update.

The cue design follows Cycling '74's [line reference](https://docs.cycling74.com/reference/line/) and [forward reference](https://docs.cycling74.com/reference/forward/): ramps use target/time lists, and forwarding addresses named receive objects.
