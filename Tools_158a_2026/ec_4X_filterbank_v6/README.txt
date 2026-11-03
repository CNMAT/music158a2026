4X FILTER BANK v6 — PARALLEL OUTPUT UPDATE

Open _ec_4X_filterbank_v6.maxpat. Keep the two included JavaScript files
alongside it. The embedded Filter_Bank_v6 editor and the standalone
ec_filterbank_v6~.maxpat contain the same updated processor.

PRESENTATION
Filter 1 supplies the colors and relative control positions for all four
columns. Each column now has an input meter at its top and a horizontal
output fader at its bottom. Labels are shortened and no controls overlap.
The editor remains 1030 pixels wide; it is taller to fit meters and faders.

ROUTING / OFF
The mono input feeds four PARALLEL filters. Each channel is:
input → biquad → smoothed ON/OFF gate → output trim.
All four outputs sum into Global Gain Out, then the existing peak protection.
OFF fades that channel to zero, using On/off time. There is no dry fallback.
With all four OFF, the processor produces no signal after the fade completes.
One OFF channel does not mute the other enabled channels.
Input meters are connected before filtering and muting. Since all four
filters receive the same input, these meters normally show the same level,
even with every filter OFF. They do not indicate the filtered output level.

OUTPUT FADERS
Each horizontal live.gain~ control sets its own -24 to +12 dB output trim.
Default: 0 dB, with every filter OFF and no preset recalled on opening.
The controller sends dB ramps to native line~/dbtoa~ stages. Glide controls
the transition time, including preset recalls. The UI fader's signal outlet
is unused, so gain is applied exactly once. Its meter shows channel output.
The old shared Output Level control and its hidden 0–1 multiplier are removed.
Global Gain Out retains its -36 to +12 dB range and fixed 2-second fade.
Peak protection may attenuate large boosts; it does not add makeup gain.

New right-inlet commands:
  level -6 1000             Selected channel output -6 dB over 1 second.
  band 2 level -12 2000     Filter 2 output -12 dB over 2 seconds.
  enable 2 0               Filter 2 OFF, using On/off fade.
  enable 2 1               Filter 2 ON, retaining its output fader setting.
  filters 0                All four OFF.
The home menus output only command atoms, without their descriptions.
Commands.txt includes the complete menu and message list.

FILTERS / MOTION
Peak, Lowpass, Bandpass, Ultra-narrow Bandpass, Highpass, Resonant and Notch
all use the same parallel routing. Frequency remains 60–13000 Hz, limited
further if necessary for the current sample rate. Ordinary Q is 0.5–20;
Ultra Q is 20–200. The graph shows the complex sum of all four channels,
including their mute fades and output trims, before Global Gain Out.
Parallel signals can reinforce or cancel according to their phase.

Filter gain and output trim are separate. Peak gain shapes its boost/cut;
the other modes use gain as a filtered-output scale. Gain Depth modulates
that filter gain, not the new output fader. Frequency curve × Hz depth adds
a frequency offset; Gain curve × dB depth adds a gain offset. Both share the
Full Trip duration. Once plays a trip; Loop repeats. Flat curves or zero
depth give no modulation. Mode changes still fade out, reconfigure, settle
and fade back in.

PRESETS / CAPTURE / COMPATIBILITY
Store slots 1–10 include all four output trims. Save the containing patch
or Write bank to keep stored changes. Capture current state / dumpstate
exports the current sound and stored slots as one restorestate message.
Save the MAIN patch after Capture. Send the whole message to a processor's
right inlet to restore it. Motion restarts from the beginning of its curves.
The attached capture and stored presets are retained and import on demand.
Old master amplitude is translated to the same dB trim on each channel;
old zero amplitude also switches every channel OFF. Values below -24 dB
clamp to -24 dB. The routing change means old serial sounds can sound different.
Legacy amp messages still work: positive values trim all channels; amp 0
turns all four OFF. There is no remaining hidden master amplitude control.

New records use format 10; old bank formats 3–9 and full-state formats 8/9
remain readable. Use both updated JavaScript files with this patch.
Full-state packets support eight curves of up to 64 points plus ten presets;
maximum size is 11921 atoms including the restorestate selector.
Snapshots exclude meter values, filter delay history, sample-accurate motion
phase, audio-device settings and the main patch's test/listening controls.

INDEPENDENT COPIES
Copy the complete p Filter_Bank_v6 object, or create multiple
[ec_filterbank_v6~] abstractions. Controls, output ramps, motion tasks,
presets and captures are private to each instance. No named send/receive
buses or shared data stores connect copies. Connect each menu/primer to
its intended processor. Max's audio engine itself remains shared.

TESTING
Controller checks passed for all 28 filter/type combinations, 49 type
transitions, four output-fader bounds and ramps, preset/full-state recall,
old-state imports, maximum packets and malformed-message rejection.
Eight isolated controller contexts passed cross-instance checks. Nested
patchcord ports, actual summing connections, wet-only audio paths, meter
taps, matching presentation geometry/colors and original asset preservation
were checked. An approximate layout render was inspected for overlaps.
Native Max audio playback and UI interaction have not been run here.

The separate tutorial and the 8_Triangles_sfz assets are unchanged.
Cycling '74 references used:
https://docs.cycling74.com/reference/live.gain~/
https://docs.cycling74.com/reference/meter~/
https://docs.cycling74.com/reference/filtercoeff~/
https://docs.cycling74.com/reference/biquad~/
