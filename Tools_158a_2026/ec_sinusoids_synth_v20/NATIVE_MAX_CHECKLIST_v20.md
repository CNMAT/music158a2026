# Native Max verification — still required

No items below were performed in the build environment. Record the actual Max version, OS, audio interface, sample rate and vector size when completing this checklist.

1. **Open and resolve dependencies.** Extract the entire folder, open `_ec_sinusoids_synth_v20.maxpat`, and inspect the Max Console. Confirm every JS/JSUI and bpatcher loads and that CNMAT `sinusoids~` is available. Keep DSP off initially and open only one v20 master/editor instance.
2. **Confirm initialization.** Verify the DAC gang master and all twelve faders are at -70 dB, lane loops are off, and no score fires merely by opening its message space. Check the 25-entry amplitude/ADSR menus and the 94-entry detune menu, including All on full at index 1.
3. **Verify lane identity.** At low monitoring level, use a known test distribution/model and trigger one lane at a time. Confirm editor 01 controls synthesis lane 01, continuing through 12. Check lane identity before the spatial matrix; matrix routing can intentionally distribute a lane to other output groups.
4. **Verify output mapping and gain.** Test a known one-to-one matrix routing, monitor each `receive~ sinusoids_group_NN_v20`, then each DAC output. Send a quiet test value to `Output_Gain_dB_v20`; confirm all DAC faders and the state readback follow. Confirm named group/mono buses remain pre-fader and set separate receive-side gains.
5. **Verify envelope authority.** Give lanes different shapes/durations, edit the legacy Master, and confirm those lanes remain unchanged. Test global trigger/duration/shape/loop/smoothing from the panel and CUEs, then test per-lane overrides and each lane's store/recall independently.
6. **Stop under load.** Enable loops, trigger all lanes, then use global Stop and All Off. Check the console, watch that loop toggles clear, and confirm there are no queued automatic retriggers. Stop any external score as well; future external messages can otherwise restart controls.
7. **Exercise memory and distribution.** With a quiet model, resize 48 -> 2 -> 256 -> 48; test all five plans, fractional base frequency (27.5 Hz), retuning modes, detune, anchors and weighted remove/add. Recall a saved function/registration and check that musical data is intact.
8. **Exercise timing and performance.** Test continuous CUE ramps at 149 and 150 ms, interruption with stop, global duration float values, micro-walk start/stop/reseed, and the timed example's stop/restart. Observe real CPU load and audible artifacts at your actual sample rate/vector size and intended partial count.

A passing source report does not replace these checks. Save a tested local copy and retain the original downloaded ZIP for comparison.
