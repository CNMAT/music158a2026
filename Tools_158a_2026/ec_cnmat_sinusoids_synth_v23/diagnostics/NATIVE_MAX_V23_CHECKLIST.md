# v23 — native Max verification checklist

These checks have NOT been run here. Use low hardware volume and a noncritical test copy.

1. Start Max afresh; open the root `_ec_sinusoids_synth_v23.maxpat`. Confirm the main synth opens, the starter closes, and the console has no missing files, deleted cords or missing functions.
2. Confirm twelve lane panels, three linked spectral editors, Hear displayed only, automixer and the existing tutorial operate normally.
3. Keep a simple held/looping envelope sounding. Capture A with a modest spectrum, then B with different amplitudes, detuning, anchors and base frequency. Set ten seconds; morph A, then B. Confirm continuous sound, visible progress and exact endpoint settings without an ADSR retrigger.
4. Change active count, even/odd/prime sequence and Partial Offset between endpoints. Check that new/departing slots fade and the pitch path has no hard sequence jump. Inspect the console for non-finite data or per-bank capacity errors.
5. Change lane/spatial plans between endpoints. Listen for routing motion and verify no unintended phase/slot reorder at the last frame. Native oscillator phase continuity is specifically unverified by the offline tests.
6. Change individual ADSR duration, delay and linear-mode shape. Confirm visible curves interpolate. Confirm the running segment finishes normally and the next trigger/loop uses the current curve. Do not expect the already-sent segment to be rewritten.
7. Pause midway, wait, resume. Only morph progress should pause. Hold midway, then edit and dump. Recall that dump and compare its pitch geometry, hidden amplitude memories and spatial balance.
8. Retarget a running transition to the other slot. Check for a smooth new departure from the current state.
9. Try a previously saved full v21 dump through `prepend morph 8`. Verify that no checksum error occurs and the endpoint is correct. A low-CPU preset should be rejected.
10. Close/reopen a saved copy with populated A/B boxes. Click each saved message once to stage it, then run a morph. Confirm no passive stage operation alters the live synth.
11. Press All Off/global lane Stop midway. Confirm the morph cannot subsequently restore sound. Repeat with a message `gain 0` to Synth_Control_v23.
12. Select Hear displayed only before morphing. Confirm morph start restores all views and turns temporary audition off without erasing model values.
13. Try unequal linear envelope point counts, Auto Level, mirroring, micro-drift and active automixing separately. Check destination state, levels and mode changes. Test categorical endpoint behavior deliberately, not on stage.
14. Test zero, short, long and fractional-second durations. Control scheduling is not sample-accurate and native smoothing may settle after the endpoint.
15. Monitor Max CPU and audio under the heaviest intended count, routing and envelope workload. No CPU profiling was performed here.
16. A nonempty function switched manually to curved mode should reject morphing clearly; it must not silently flatten the curve. Existing ordinary preset recall remains separate.

Do not overwrite a working v21 setup until the v23 behavior is confirmed in native Max.
