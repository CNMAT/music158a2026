# Native Max verification — still required

No items below were performed in the build environment. Record the actual Max version, OS, audio interface, sample rate and vector size when completing this checklist.

## Message-space update checks

1. With DSP off, open `p Send_Message_Space_v20` and the lower-right `p "AUTOMIXER_CONTROL_v20-message space"`. Confirm readable Presentation layout and scroll to the live readbacks. Opening the page must not change mixer mode or parameters.
2. Click each transport example and its alias. Confirm mode readback, main-page UI and gain targets agree. Bypass means unity, Stop means zero; repeated Start does not reset a running cycle.
3. Try both range examples, zero wait, both fixed-peak settings and both grain settings. Confirm parameters change without automatically entering Auto. Click each full example and verify its settings arrive before Restart. Inspect Console for unrecognized messages.
4. At a low monitoring level with a sounding model/nonzero ADSRs, compare the three examples. The fixed example should show 2 s rise, 2 s fall, 1 s hold in all twelve control values. Confirm actual sound and interpolation in native DSP; target readbacks are not audio meters.
5. Open the standalone gallery only as needed and check it matches the embedded gallery. Do not open a second v20 master. The readbacks must never echo command messages or create a feedback loop.

## Automixer-specific checks

Before the base-synth checks below, inspect the new AUTOMIXER strip at the bottom of the main presentation.

1. Open with DSP off. Check `automatic_lines_v5_ed.js` loads without an outlet-index error. Confirm Bypass, range 2000/10000, wait 5000, random peak mode, grain 20, and a twelve-element unity display. Confirm the existing DAC levels remain quiet.
2. With a sounding model and nonzero/triggered synthesis ADSRs, switch from Bypass to Auto mix at low monitoring level. Confirm 12 independent target values, including output 12; confirm the read-only display cannot alter gains.
3. Select Stop / mute. Confirm all spatial sends, DAC feeds and the mono FX feed fade to silence in approximately 20 ms. Select Bypass and confirm normal through-gain returns. Do not confuse Bypass with mute.
4. Check local and external commands: send `range 9000 1000` through `send Automixer_v20`, verify the UI becomes 1000/9000, then edit only MIN and confirm MAX remains 9000. Verify wait, fixed peak, grain and restart. Listen for artifacts at the intended UPDATE setting.
5. Use All Off/global lane Stop while Auto is active: it should change to Stop, with no continuing generator activity. In Bypass, All Off should leave the mixer bypassed. Confirm a future external command can restart it only when intended.
6. Verify post-matrix placement using a deliberately rerouted matrix. Named group and mono buses must follow the automixer but remain independent of DAC fader attenuation. Check receive-side gain before testing these buses.
7. Save/reopen and confirm the intentional startup policy: Bypass and documented defaults, not restored active automation. Close/reopen the master and inspect the Console for tasks/outlet errors; observe CPU and real audio behavior over several full cycles.

These actions have not been performed in native Max here. The signal values in the automated tests are mathematical emulations, not recorded DSP output.

## Base synth checks

1. **Open and resolve dependencies.** Extract the entire folder, open `_ec_sinusoids_synth_automixer_v20.maxpat`, and inspect the Max Console. Confirm every JS/JSUI and bpatcher loads and that CNMAT `sinusoids~` is available. Keep DSP off initially and open only one v20 master/editor instance.
2. **Confirm initialization.** Verify the DAC gang master and all twelve faders are at -70 dB, lane loops are off, and no score fires merely by opening its message space. Check the 25-entry amplitude/ADSR menus and the 94-entry detune menu, including All on full at index 1.
3. **Verify lane identity.** At low monitoring level, use a known test distribution/model and trigger one lane at a time. Confirm editor 01 controls synthesis lane 01, continuing through 12. Check lane identity before the spatial matrix; matrix routing can intentionally distribute a lane to other output groups.
4. **Verify output mapping and gain.** Test a known one-to-one matrix routing, monitor each `receive~ sinusoids_group_NN_v20`, then each DAC output. Send a quiet test value to `Output_Gain_dB_v20`; confirm all DAC faders and the state readback follow. Confirm named group/mono buses remain pre-fader and set separate receive-side gains.
5. **Verify envelope authority.** Give lanes different shapes/durations, edit the legacy Master, and confirm those lanes remain unchanged. Test global trigger/duration/shape/loop/smoothing from the panel and CUEs, then test per-lane overrides and each lane's store/recall independently.
6. **Stop under load.** Enable loops, trigger all lanes, then use global Stop and All Off. Check the console, watch that loop toggles clear, and confirm there are no queued automatic retriggers. Stop any external score as well; future external messages can otherwise restart controls.
7. **Exercise memory and distribution.** With a quiet model, resize 48 -> 2 -> 256 -> 48; test all five plans, fractional base frequency (27.5 Hz), retuning modes, detune, anchors and weighted remove/add. Recall a saved function/registration and check that musical data is intact.
8. **Exercise timing and performance.** Test continuous CUE ramps at 149 and 150 ms, interruption with stop, global duration float values, micro-walk start/stop/reseed, and the timed example's stop/restart. Observe real CPU load and audible artifacts at your actual sample rate/vector size and intended partial count.

A passing source report does not replace these checks. Save a tested local copy and retain the original downloaded ZIP for comparison.
