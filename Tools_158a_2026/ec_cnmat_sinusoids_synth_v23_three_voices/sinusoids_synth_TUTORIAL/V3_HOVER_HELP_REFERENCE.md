# Linked-view / audio-zoom update

The current range controls select the same slots in Amplitudes, Detune and Anchors.
Hear displayed only auditions that section and its anchors; OFF restores full sound
without changing the crop. Display all restores all three views and full sound.
These descriptions supersede older amplitude-only range descriptions below.
See AUDIO_ZOOM.md for the complete current behavior.

# Hover help quick reference

These descriptions are also embedded in the patch controls. Lock the patch and pause over a control.

## Main synth

**obj-84** — Last MIDI note number from the keyboard. This box is a display, not a pitch control.

**base-morph-v23-value** — Set pitch glide time in milliseconds. Zero changes pitch immediately.

**midi-base-v23-refresh** — Refresh connected MIDI input names and return the input selection to all.

**midi-base-v23-input-menu** — Choose your controller, all MIDI inputs, or none. All MIDI channels are accepted.

**obj-81** — Click a note to set base pitch, then trigger all twelve envelopes. Note-offs are ignored; this is not a sustained MIDI gate.

**obj-31** — Unconnected number box in this supplied patch. Changing it does not control the synth.

**obj-102** — Set every lane to Flat Zero. This changes their shape to silence; it does not select All on full.

**obj-82** — Open the twelve-lane ADSR panel.

**obj-78** — Signal display used here to indicate that audio processing is running.

**obj-76** — Assign primary/anchor pairs to the twelve synthesis lanes. Choose interleaved, bands, random, octave families, or fifth bands.

**obj-33** — Double-click to open Partial Distributions HELP.

**obj-75** — Set all DAC faders to −70 dB. This does not mute the named pre-fader buses.

**obj-112** — Open all twelve ADSR editors, with global shape, duration, loop, trigger, and stop controls.

**obj-74** — Set all twelve DAC faders together, from −70 to +6 dB. Named audio buses are before these faders.

**obj-1** — DAC output 12 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-25** — DAC output 11 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-50** — DAC output 10 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-65** — DAC output 9 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-66** — DAC output 8 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-67** — DAC output 7 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-68** — DAC output 6 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-69** — DAC output 5 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-70** — DAC output 4 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-71** — DAC output 3 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-72** — DAC output 2 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-73** — DAC output 1 gain in dB. Affects this hardware feed only, not the named audio bus.

**obj-63** — Set each random-walk step size in Hz, from 0 to 5. This is not a bound on total accumulated drift.

**obj-49** — Audio-processing state readback. This menu is not wired as an audio on/off control.

**obj-39** — Named audio feed sinusoids_v23. Receive it with receive~; use receive-side gain control.

**obj-38** — Turn Max audio processing on or off. This does not load a spectrum or trigger an envelope.

**obj-13** — Copy the primary amplitude values into the signed-detune layer. Positive values raise partial pitches.

**obj-3** — Copy the current primary amplitudes into the harmonic-anchor layer.

**obj-34** — Start or stop micro-drift. Turning it off returns the accumulated drift toward zero over the OFF morph time.

**obj-32** — Double-click to open Micro-Drift.

**obj-14** — Double-click to open why the anchor and what is BEATING?.

**obj-11** — Double-click to open FILTER ACTIVE.

**obj-6** — Double-click to open MICRO DRIFT HELP.

**obj-2** — Hardware audio outputs. Double-click for audio settings; use the DAC on/off control to start or stop DSP.

**syn-count-slider** — Set 2–256 visible partial slots. Hidden values are retained; count changes fade over 150 ms.

**syn-base** — Set the source base frequency in Hz. All partial frequencies are built from this reference.

**syn-drift** — Set random-walk amount from 0 to 1. Enable Micro-Drift to hear it. Zero resets the walk.

**syn-freq-slider** — Draw signed detune per partial: −1 to +1 equals −100 to +100 cents. The true fundamental stays fixed.

**syn-amp-slider** — Draw primary partial amplitudes from 0 to 1. Left to right follows the displayed partial multipliers.

**syn-alias-toggle** — Status: some transformed frequencies are outside the output limits. This is an indicator, not a filter bypass.

**obj-trigger-button** — Trigger all twelve independent lane envelopes. This does not turn on DSP.

**syn-freq-shape-menu** — Apply a signed detune shape. Values range from −1 to +1, equivalent to −100 to +100 cents.

**syn-amp-shape-menu** — Replace the primary amplitude pattern with a shape. The amplitude morph time sets the transition.

**syn-harmonic-amp-slider** — Draw harmonic-anchor amplitudes from 0 to 1. Anchors pair with detuned partials for beating. Turn Mirror off to edit.

**syn-random-freq-button** — Generate a new signed detune pattern using the current morph time.

**syn-random-amp-button** — Generate a new random primary-amplitude pattern using the current morph time.

**syn-random-harmonic-button** — Generate a new random anchor-amplitude pattern. Turn Mirror off for independent anchors.

**syn-harmonic-shape-menu** — Replace the harmonic-anchor amplitude pattern with a shape. Turn Mirror off to edit anchors independently.

**syn-freq-interp-ms** — Set the time for detune patterns to move to new values. Units: milliseconds.

**syn-amp-interp-ms** — Set the time for primary amplitude patterns to move to new values. Units: milliseconds.

**syn-harmonic-interp-ms** — Set the time for anchor amplitude patterns to move to new values. Units: milliseconds.

**rt14-mode** — Choose regenerate, preserve frequency ratios, or add a fixed Hz shift to every partial.

**rt14-target** — Set the target base frequency in Hz. The selected retuning mode determines how the spectrum moves.

**rt14-glide** — Readback: Set pitch glide time in milliseconds. Zero changes pitch immediately.

**rt14-current** — Display only. This object has no outgoing control connection.

**rt14-bypass** — Readback: Bypass the model transform. Use with care when comparing gain and frequency filtering.

**rt14-semitones** — Transpose the transformed model in semitones. Twelve semitones is one octave.

**rt14-cents** — Fine-tune the transformed model in cents. One hundred cents is one semitone.

**rt14-offset** — Add this many Hz to every transformed frequency. Equal Hz shifts do not preserve harmonic ratios.

**rt14-gain** — Scale model amplitudes before rendering, from 0 to 4. This differs from output gain.

**rt14-low** — Reject transformed partials below this frequency in Hz.

**rt14-high** — Set the upper frequency limit in Hz. The sample-rate limit also applies.

**rt14-cluster** — Merge nearby transformed frequencies within the selected Hz distance. Zero disables clustering.

**rm14-count** — Choose how many partials the Remove or Add button will attempt to change.

**rm14-go** — Remove the selected number of active partials using the probability weights. Values are remembered for restoration.

**workspace14** — Double-click to open Octave Families stage.

**retuning-help14** — Double-click to open Retuning Modes HELP.

**global-flat-zero14** — Clear all 256 slots in all three spectral memories and stop envelopes and loops. This is more than an output mute.

**send-message-space-v23** — Double-click to open Send Message Space.

**rm14-add-go** — Restore the selected number of previously removed partials from removal memory.

**v23-render-controls** — Double-click to open Partial Distributions.

**am-ui-mode** — Bypass restores unity. Auto runs twelve gain cycles. Stop/mute stops the cycles and fades this mixer layer to zero.

**am-ui-restart** — Engage Auto and restart all twelve gain cycles. It does not trigger the synth envelopes.

**am-ui-min** — Minimum time for one rising or falling automixer leg, in ms. Each cycle uses the same time for both legs.

**am-ui-max** — Maximum time for one rising or falling automixer leg, in ms. A complete cycle lasts twice this chosen time plus wait.

**am-ui-wait** — Time to hold at zero after each automixer fall, in ms. Zero gives continuous cycles.

**am-ui-grain** — Automixer update and signal-interpolation interval, 1–1000 ms. Default: 20 ms.

**am-ui-peak** — Off: choose a new random 0–1 peak per cycle. On: new cycles peak at 1. The values still ramp smoothly.

**am-ui-levels** — Read-only targets for all twelve automixer gains. These are not audio level meters.

**partial-offset-v23-toggle** — Enable a different starting position in the selected partial sequence. Enabling resets the position to 1.

**partial-offset-v23-number** — Choose the first position in the selected partial sequence. Changes crossfade over 150 ms.

**alc-on** — Enable model-power compensation. Off smoothly returns its gain to unity. It is not a limiter.

**alc-db** — Read-only applied compensation gain in dB. Zero means no gain change.

**alc-gain** — Read-only compensation multiplier. One is unchanged; 0.5 is half amplitude.

**alc-strength** — Amount of model-power compensation, 0–100%. Zero applies no correction.

**alc-smooth** — Time for compensation-gain changes in ms. Includes switching compensation on or off.

**alc-maxboost** — Maximum automatic gain boost, 0–24 dB. Zero permits attenuation only.

**alc-model** — Estimated model power expressed as RMS dB, before ADSRs and automixing. Not a DAC meter.

**alc-reference** — Stored reference model power as RMS dB. Not a measured output level.

**alc-help** — Double-click to open Auto Level Help.

**anchor-mirror-v23-6** — When on, anchors follow primary amplitudes multiplied by Anchor Scale. Turn off to hold and edit the current anchor pattern.

**anchor-scale-v23-6** — Scale the anchor pattern from 0 to 1. Zero mutes it without erasing its stored values.

**opt-distribution** — Partial sequence: normal 1,2,3…; even 1,2,4…; odd 1,3,5…; prime 1,2,3,5,7…. Separate from lane routing.

**ec-gain-slider** — Smooth global gain, 0–1, with a 50 ms ramp. Affects named feeds, the mono sum, and DAC feeds.

**ec-gain-number** — Smooth global gain, 0–1. Zero mutes every synth feed; one adds no attenuation. This is before the DAC faders.

**ec-note-example** — Send MIDI note 60 with velocity 100. Updates pitch first, then triggers the twelve envelopes.

**ec-sweep** — Capture the current full-synth state in memory. Use dump to make a clickable preset message.

**ec-dump** — Capture current settings and write a recallable preset into the saved-preset message box. No file is written automatically.

**v23-preset-message** — After dump, click this populated message to recall the captured state. Playback waits for another trigger.

**v23-status-message** — Controller status and preset-check readback. This message box does not send commands.

**v23-check-message** — Check communication with all 25 preset engine instances. Read the status message for the result.

## ADSR lane 01 — repeated for all twelve lanes

**count** — Lane 01. PTS: choose 3–48 evenly spaced envelope values. Changing the count rebuilds the selected shape.

**duration** — Lane 01. DUR: set the total envelope playback time, 1–3,600,000 ms. Delay is separate.

**shape-menu** — Lane 01. Choose a point shape for this lane. The current smoothing time controls the change; TRIG starts playback.

**points** — Lane 01. Drag these 0–1 values to shape the lane envelope. Points are evenly spaced over DUR.

**trigger-button** — Lane 01. TRIG: start this lane after DEL. A new trigger replaces a waiting start.

**memory-index** — Lane 01. Choose this lane’s user-memory slot, 1–9999. Each lane has its own store.

**store-button** — Lane 01. STO: save the current sampled point values in this lane’s selected slot. An existing entry is replaced.

**recall-button** — Lane 01. RCL: load point values from this lane’s selected slot. Duration and delay are separate settings.

**loop-toggle** — Lane 01. LOOP: repeat this lane after its envelope finishes. DEL is also applied to each repeat. Trigger to begin.

**delay-ms** — Lane 01. DEL: wait 0–3,600,000 ms before this lane starts. Applies to triggers and loop restarts; Stop cancels the wait.

