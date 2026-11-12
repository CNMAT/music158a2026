# Compact tutorial interface

## Compact interface update

The sixteen lesson windows are 560 × 402. Listen messages are green with black text. Use the upper-right ← / → buttons, or release an arrow key while the lesson is frontmost, to open the neighboring lesson and close the current one. The outward arrow at either end returns to the overview. Navigation does not stop sound.

In patching view, open `p LESSON_ACTIONS` to see the exact commands; long preparation sequences are inside `p PREPARE_RECIPE`.

The main synth has `display partials`, two integer boxes, `display all`, and **Hear displayed only** beside Harmonic Partial Amplitudes. The range applies to **Amplitudes, Detune and Anchors together**. Edit either endpoint while locked; 1 ≤ first ≤ last ≤ Partial Count. Turn **Hear displayed only** on to hear only those slots and their anchors. Turn it off to hear the complete model while keeping the cropped views. **Display all** restores all three views, turns audition off, and silently sets the boxes to 1 and Partial Count. All bar edits are retained; hidden values are not erased. The count buttons in lesson 03 still change the active synthesis count.

# CNMAT Sinusoids Synth Tutorial

Use the supplied v23 synth, not an older folder. Open the top-level `_ec_sinusoids_synth_v23.maxpat` normally. Then open `V2_00_START_TUTORIAL.maxpat` in this folder. Double-click a lesson. The numbered lesson files can also be opened individually.

## Before listening

Keep one v23 synth open. Start with low hardware volume. Select the correct audio device and outputs 1–2. Enable the synth’s DAC manually. No tutorial patch turns on DSP.

Opening, navigating, or closing a tutorial sends no commands. **Prepare is an explicit reset:** it clears all 256 spectral slots, resets lesson controls, folds the twelve lanes into two output groups, sets DAC faders to −24 dB, and leaves smooth global gain at zero. Saved user-function slots are not overwritten. Click Listen separately; it sets global gain to 0.1 and triggers the envelopes. Some lessons hold or loop a sound: click **Silence all feeds** before leaving. Silence sets global gain to zero and stops envelopes; it does not erase the spectrum.

Preserve a sound before using Prepare: click `dump` in the synth, copy the populated preset message into a separate patch, and save that patch. The tutorial does not take or restore an automatic snapshot. Stop any external timed score so it cannot overwrite the lesson’s settings.

## Hover help

Keep the patch locked and pause over a control. Hints also appear on the individual ADSRs and message examples. The same text is stored as a Clue annotation. Source: Cycling ’74, Objects → Annotations and Hints, https://docs.cycling74.com/userguide/objects/ .

## Signal path in this package

Partial amplitudes + signed detune + anchor amplitudes → transformed and filtered model → twelve synthesis lanes with independent envelopes → spatial routing → automixer → model-power compensation and smoothed global gain → named audio feeds and DAC faders. The mono and group sends are before the DAC faders. They are not protected by lowering only the DAC master.

## Five different time controls

**Spectrum morph** moves bar patterns to new values. **Retune time** glides pitch. **ADSR duration** is envelope playback length. **ADSR shape smoothing** moves to a new point pattern. **Automixer leg time** is the length of a rise or fall. A lane’s **DEL** is an additional wait before each start.

## 01. First sound

Hear one sine wave before building a spectrum.

**Where:** Main page: DAC on/off, MASTER output, BASE FREQ and TRIGGER ADSR.

**Listen at 110 Hz:** Play one four-second note.

**220 Hz:** Set the base frequency one octave higher.

**110 Hz:** Return to the starting pitch.

**Trigger again:** Play the current envelope again.

**Listen:** Enable the synth’s DAC manually, then click Listen. Prepare sets DAC gain to −24 dB and routes to two outputs. Raise the MASTER slowly if needed.

**Notice:** No sound? Check DAC, hardware outputs 1–2, global gain, partial amplitude and a nonzero envelope. The tutorial never turns DSP on.

**Try next:** Change only the base frequency. The sound stays simple.

## 02. Partials and amplitudes

Build a timbre by adding sine waves at different frequencies.

**Where:** Main page: HARMONIC PARTIAL AMPLITUDES and partial count.

**Listen:** Play the prepared 16-partial spectrum.

**Fundamental only:** Set sixteen visible values: only the first is active.

**Add partial 3:** Set the third partial to half amplitude.

**Add partial 5:** Set the fifth partial to one-quarter amplitude.

**Sloping spectrum:** Restore a high-to-low amplitude shape.

**Listen:** Click Listen after each change. At 110 Hz, partial 3 is 330 Hz and partial 5 is 550 Hz in the normal sequence.

**Notice:** The first and third multisliders are amplitudes, not audio faders. Their combined sound also passes through the ADSRs and output gains.

**Try next:** Draw three different bars. Listen for a change in color rather than one new melody.

## 03. Shapes, morphing and hidden memory

Move between amplitude patterns and keep values when the visible count changes.

**Where:** Main page: amplitude SHAPES, MORPH TIME and partial count.

**Listen / hold:** Trigger constant lane envelopes for comparison.

**Slow morph:** Use a 3000 ms amplitude transition.

**Center peak:** Move toward the triangle spectrum.

**Random amplitudes:** Generate a fresh amplitude target.

**Show 4:** Hide slots 5–16 without erasing their values.

**Show 16:** Reveal the hidden slots again without reapplying a shape.

**Listen:** After Listen, click Center peak or Random amplitudes and watch the bars move. Use Silence to end the held sound.

**Notice:** Count changes fade over 150 ms. They do not regenerate the selected shape. Hidden values return when their slots are shown again.

**Try next:** Draw a distinctive value in slot 12, reduce the count to 4, then restore 16.

## 04. Detune and harmonic anchors

Hear beating between a detuned partial and its undetuned partner.

**Where:** Main page: DETUNE, HARMONIC ANCHOR AMPLITUDES, Mirror and Scale.

**Listen / hold:** Listen to two nearby tones around 220 Hz.

**More detune:** Increase slot 2 from 3 cents to 10 cents.

**No detune:** Bring the pair back to the same frequency.

**Mute anchors:** Set Anchor Scale to zero without erasing the pattern.

**Restore anchors:** Restore the anchor scale to unity.

**Mirror on:** Make anchors follow primary amplitudes.

**Listen:** Use Silence when finished. Small frequency differences produce slow beating; larger differences make it faster.

**Notice:** The true fundamental is protected from detune. This example uses slot 2. Mirror disables independent anchor editing until switched off.

**Try next:** Return to 3 cents and compare Anchor Scale 0, 0.5 and 1 in the main patch.

## 05. Micro-drift

Add small moving pitch changes without redrawing the detune pattern.

**Where:** Main page DRIFT and p Micro-Drift.

**Listen / hold:** Start the steady spectrum before adding movement.

**Drift on:** Enable the random walk at half amount.

**Larger steps:** Set each walk step to 1 Hz.

**Slower steps:** Give each step 3000 ms.

**Drift off:** Return the accumulated offsets toward zero over 2000 ms.

**Listen:** Listen for movement around the steady anchors. Step size is not a maximum total excursion: the walk accumulates.

**Notice:** Amount scales the walk. Step Hz and segment ms set its movement. OFF morph time sets its return to zero.

**Try next:** Compare a slow 0.3 Hz step with a fast 1 Hz step. Keep the output level unchanged.

## 06. Retuning and smoothing

Compare moving the entire spectrum by ratio with adding the same Hz shift.

**Where:** Main page: GLOBAL RETUNING, TARGET Hz and RETUNE MS.

**Listen / hold:** Start a sustained spectrum.

**Preserve ratios:** Select retuning mode 1.

**Target 165 Hz:** Move the target base from 110 to 165 Hz.

**Return 110 Hz:** Return the target to 110 Hz.

**Fixed Hz shift:** Select mode 2, then target 165 Hz: add 55 Hz to every component.

**Fast glide:** Set the next retuning transition to 100 ms.

**Listen:** Wait for each glide to finish. Ratio mode keeps relationships proportional; a fixed Hz shift changes them.

**Notice:** Pitch glide, spectrum morph, ADSR duration, ADSR shape smoothing and automixer leg time are different controls.

**Try next:** Return to 110 Hz. Repeat the move in modes 0, 1 and 2 using the main menu.

## 07. Partial sequences and offset

Change which frequency multipliers each spectral slot represents.

**Where:** Main page: PARTIAL SEQUENCE and PARTIAL OFFSET.

**Listen / hold:** Start the normal sequence.

**Even sequence:** Use 1, 2, 4, 6, 8… . The fundamental is retained.

**Odd sequence:** Use 1, 3, 5, 7, 9… .

**Prime sequence:** Use 1, 2, 3, 5, 7, 11… .

**Start at position 5:** Enable offset, then choose sequence position 5.

**Normal / no offset:** Return to 1, 2, 3… beginning at position 1.

**Listen:** Read the multiplier rulers under the bars. In the prime sequence, position 5 starts at multiplier 7, not 5.

**Notice:** Sequence and offset changes crossfade over 150 ms. Very high components can be rejected by the frequency limits.

**Try next:** Compare odd and prime at the same count. Do not confuse this menu with lane distribution.

## 08. The global ADSR panel

Shape the loudness of each note over time.

**Where:** Open p AMP_ENVELOPE_ADSR_12_VOICES_v23. Use its global row.

**Listen:** Play the four-second triangle envelopes.

**Short note:** Set every envelope to 500 ms. Trigger to hear it.

**Long note:** Set every envelope to 6000 ms.

**Falling shape:** Select high-to-low shape 4 for every lane.

**Triangle shape:** Select the center-peak shape 6.

**Loop on:** Enable repetition; click Listen to begin.

**Listen:** Wait for the shape change, then click Listen. DUR changes playback time; smoothing changes how the point pattern is replaced.

**Notice:** These editors are breakpoint envelopes, not four separate ADSR knobs. MIDI note-off does not release them; Stop silences them.

**Try next:** Try a short falling envelope, then a long triangle. Use the global STOP button to cancel loops.

## 09. Individual lanes, delay and memory

Give two parts of the spectrum different timing.

**Where:** ADSR panel: Lane 01 and Lane 02. Hover over PTS, DUR, DEL, TRIG, LOOP, STO and RCL.

**Listen:** Trigger both lanes; lane 2 waits one second.

**Lane 1 only:** Trigger only lane 01.

**Lane 2 only:** Trigger only lane 02 after its DEL.

**Four-point shape:** Replace lane 01 points with 0, 1, 0.4, 0.

**Loop lane 2:** Enable repetition for lane 02, then trigger it.

**Cancel lane 2:** Stop its loop and any waiting delayed start.

**Listen:** In stereo, the two active lanes are routed to different output groups. Their timing remains independent.

**Notice:** For memory: choose an unused slot in lane 01, click STO, change its points, then RCL. STO can overwrite that lane’s selected slot.

**Try next:** Use DEL on lane 2 to make a reply to lane 1. Stored points do not store DUR or DEL; a full-synth preset does.

## 10. Lane distribution and output routing

Separate three ideas: spectral slots, synthesis lanes and physical outputs.

**Where:** Main page distribution menu and p Partial_Distributions.

**Listen / hold:** Hear all twelve lanes folded into two output groups.

**Interleaved:** Distribute successive partial pairs across the lanes.

**Spectral bands:** Group partials into frequency-order bands.

**Seeded random:** Use a repeatable random lane assignment.

**Octave families:** Group by octave-family membership.

**Fifth bands:** Group by the Perfect Fifth Bands plan.

**Listen:** Compare the stereo balance. For a multichannel system, choose its output-group count in the routing panel.

**Notice:** The synth still has twelve envelope lanes when output-group count is 2. Primary and anchor partners stay together.

**Try next:** Change only lane 01’s envelope and compare two distribution plans. Notice which part of the sound it shapes.

## 11. Remove, restore and octave families

Make a sparse spectrum without manually clearing every bar.

**Where:** Main page REMOVE / ADD and p Octave_Families_stage_v23.

**Listen / hold:** Begin with the complete 32-slot shape.

**Remove eight:** Choose eight active slots using the current weights.

**Restore eight:** Restore up to eight removed slots from memory.

**Clear spectrum:** Clear all three full memories and stop playback.

**Family 3 on:** Enable 3, 6, 12, 24 within the current count.

**Family 5 on:** Add 5, 10, 20 within the current count.

**Listen:** After building families, click Listen again. Higher members of each family are quieter.

**Notice:** Remove/Add uses its own remembered values. All Off is destructive to all 256 spectral slots; it is not a substitute for Silence.

**Try next:** Build families 3 and 5, then open the workspace to add or remove other families.

## 12. Organ-inspired registrations

Use prepared spectral recipes as starting points.

**Where:** Open the organ-stop builder from the main patch.

**Open Flute:** Apply the OpenFlute registration (index 6).

**Stopped Flute:** Apply StoppedFlute (index 7).

**Principal Chorus:** Apply PrincipalChorus (index 0).

**Celeste pair:** Set 0.3 Hz beating and apply CelesteII (index 4).

**Listen / hold:** Trigger the currently selected registration.

**Longer tail:** Set 48 harmonics per rank, then apply.

**Listen:** Click a registration, then Listen. These recipes are normalized differently from a full-amplitude shape; adjust the MASTER slowly if needed.

**Notice:** The stops are organ-inspired recipes, not measured pipe recordings. A stop toggle selects it; Apply builds it. Named registrations apply immediately.

**Try next:** Select two stop toggles, click Apply, then compare their combined spectrum with either stop alone.

## 13. Automatic mixing

Move twelve post-routing gains with independent rising and falling ramps.

**Where:** Main page AUTOMIXER strip and its message space.

**Listen / bypass:** Start the sound with unity automixer gains.

**Auto mix:** Start independent cycles.

**Full peaks:** Use 1.0 as future cycle peaks, not as an on/off switch.

**Continuous cycles:** Remove the pause at zero.

**Stop / mute:** Stop cycles and set all automixer gains to zero.

**Bypass:** Stop cycles and restore all automixer gains to unity.

**Listen:** Watch the target display. In stereo, only the first two output groups carry the folded signal; the other gain cycles still run.

**Notice:** automatic_lines_v5_ed produces zero → peak → zero → wait. Each cycle lasts 2 × its chosen leg time + wait. It does not trigger ADSRs.

**Try next:** Compare random and fixed peaks. Use restart in the main strip to replace every active cycle immediately.

## 14. Gain, compensation and frequency limits

Separate output level from spectrum changes and model-power compensation.

**Where:** Main page: Smooth Global Gain, Auto Level, model gain and MIN/MAX Hz.

**Listen / hold:** Start with global gain 0.1 and Auto Level off.

**Half global gain:** Use global gain 0.05. All named and DAC feeds follow.

**Restore global gain:** Return to 0.1. The audio gain ramps over 50 ms.

**Limit to 800 Hz:** Reject higher transformed partials.

**Restore 12000 Hz:** Return to the lesson’s upper frequency limit.

**Capture / compensate:** Capture this non-silent model, then enable Auto Level.

**Listen:** After Capture / compensate, change an amplitude shape. Compensation follows estimated model power, not the changing ADSR.

**Notice:** Auto Level is not a limiter. Named group feeds and the mono bus are before the DAC faders. Global gain zero mutes all synth feeds.

**Try next:** Compare the filter indicator with the 800 Hz and 12000 Hz limits. Keep the hardware volume modest.

## 15. Send messages and make a cue

Control the same instrument from another patch.

**Where:** Open p V2_Send_Message_Space_v23 in the main synth.

**Listen:** Start the prepared sound.

**Note-in 60:** Set MIDI pitch 60, then trigger all lane envelopes.

**Pitch only:** Set the base to 220 Hz without triggering an envelope.

**Set slot 5:** Address one primary slot directly.

**Two-second envelopes:** Set the total duration, not a parameter-ramp time.

**Trigger:** Play all lane envelopes with the current settings.

**Listen:** These buttons send messages to Synth_Control_v23. Unlock this tutorial to inspect their exact commands and connections.

**Notice:** Direct sends take their documented payload. Continuous CUE modules accept VALUE [RAMP_MS]. A CUE already sends internally; do not send its reported output a second time.

**Try next:** Copy one CUE from the message space into a new patch. Stop a timed score before testing unrelated controls.

## 16. Capture a sound and make a study

Save the instrument’s complete state, then combine the lessons.

**Where:** Main page: check, sweep, dump, and the saved-preset message.

**Check preset engines:** Check the 25 engine connections. Watch the main status box.

**Capture in memory:** Capture controls, engines and user stores. No file is written.

**Dump preset message:** Capture now and fill the main patch’s saved-preset message.

**Trigger recalled sound:** After manually clicking a saved preset, trigger its envelopes.

**Listen:** This lesson does not prepare or reset a sound. Work with the settings you want to save. Do not change controls during a capture or recall.

**Notice:** Copy the populated preset message to a separate patch and save that patch. Recall restores settings but waits for a new trigger. It may restore loops and automixer mode.

**Try next:** Make a 30-second study: a sparse opening, a slow spectral change, independent lane replies, then an automixer ending. Save two contrasting states.

## Source and testing boundary

The lessons were written from the supplied `ec_cnmat_sinusoids_synth_v23(2).zip`: the main patch, lane patches, JavaScript, and existing message examples. They do not describe the low-CPU instrument. Tutorial actions can be inspected by unlocking a lesson; every command goes to `send V2_Synth_Control_v23`. `diagnostics/tutorial_actions_v23.json` records every action.

The automixer uses the supplied `V2_automatic_lines_v5_ed.js`: one float outlet per voice plus a final list outlet. Each voice rises from zero to a peak, falls to zero over the same chosen leg time, then waits. The v23 patch uses twelve voices and adds its bypass/mute behavior and signal interpolation.

Native Max execution and audio auditioning were not available here. Run the included native-Max checklist before teaching with the package.
