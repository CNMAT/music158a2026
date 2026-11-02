V6 CHANGES
Built from your attached ec_filterbank_v5_8(1).zip. The compact home/editor
layouts, captured-state subpatch, saved data and extra tutorial are retained.
The standalone processor and primer now match your edited embedded versions.

SEVEN FILTER OPTIONS
0 Peak       Parametric boost/cut.
1 Lowpass    Pass below the cutoff; Q adds resonance.
2 Bandpass   Pass a band around the center.
3 Ultra      Very narrow parallel bandpass; Q 20-200.
4 Highpass   Pass above the cutoff; Q adds resonance.
5 Resonant   Max's resonant bandpass mode; Q controls resonance.
6 Notch      Reject the center frequency; Q sets the width of the dip.

New commands (right/control inlet):
  type highpass
  type resonant
  type notch
  band 2 type notch          Address filter 2 without changing the target.
All three are in each filter's menu and the home Presets/Filters menu.
New modes have Q 0.5-20 and support both motion curves, on/off fades,
preset transitions, slot storage and full-state capture. Gain and Gain Depth
remain active: they scale the filtered output for these three modes.
In Notch mode, gain is a passband level trim, not the depth of the hole.
Use Peak with negative gain when you want an adjustable-depth dip.
All ordinary modes are in series; Ultra alone uses parallel branches.

QUICK AUDITION
Enable Max Audio, raise the listening fader, and enable local Output.
Open the primer and click One peak. Choose one of the new types from the
home menu, or the filter 1 menu. Adjust frequency and Q. To hear motion,
use Triangle shapes, nonzero depths, and Once or Loop.

GRAPH
One combined response remains. Its coefficients now come from native
filtergraph~ for all modes, including Resonant. Graph coefficients never
feed audio. The existing filtercoeff~ / biquad~ signal-rate processing,
parameter ramps and protected mode-change fades remain in place.

COMPATIBILITY / COPY SAFETY
New v6 exports use bank-record format 9 so older controllers do not silently
misinterpret new filter types. v6 still imports bank formats 3-8 and complete
format-8 state messages from v5.8. Your existing slots and saved state have
not been rewritten. Use the v6 controller and display files supplied here.

Copy the complete p Filter_Bank_v6 object, or create multiple
[ec_filterbank_v6~] abstractions. Every instance owns its own parameters,
function curves, motion tasks, gain ramps, captured-state cache and preset bank.
There are no global send/receive buses or shared named data stores in the
processor or its connected menus. Connect each primer/menu to its own target.
The home Output switch now uses a local 100 ms fade, rather than commanding
Max's global DSP engine. Enable the shared audio engine in Max Audio Status.

V6 VALIDATION
Controller checks passed for all 28 slot/type combinations, all 49 mode
transitions, preset and snapshot recall, v5.8 import, malformed-packet
rejection and maximum-sized state messages. Eight isolated controller contexts
passed cross-instance checks for edits, motion, presets, capture, restore,
export and deletion. Nested patchcord ports and private routing were checked.
Native Max audio playback and UI interaction have not been run here.

FILTER BANK v6

Open _ec_filterbank_v6.maxpat with the included ec_filterbank_v6.js and
ec_filterbank_v6_display.js alongside it. Use these updated support files;
the earlier controller does not understand full-state messages.
The supplied main patch and its embedded filter editor are the source for this
version. The editor layout, colors, existing DSP stages and stored preset data remain.

HOME PAGE
Two menus replace the two columns of command buttons. Each item reads:
  message description
Selecting an item sends only the message to Filter_Bank_v6's right inlet.
The small field below each menu shows the exact message sent.
Numeric values in the menus are examples. Use your own message boxes for other
values. Commands.txt lists the commands, including aliases.
Lock the patch to use its controls and brief hover descriptions.

FULL-STATE MESSAGE
1. Develop a sound in the editor. Store individual presets if wanted.
2. Click Capture current state, or send dumpstate to the right inlet.
3. The message inside p captured-restore-state receives one restorestate message.
4. Open p captured-restore-state and click its box, or copy/paste the
   whole message box elsewhere. Connect its outlet to the right/control inlet
   of any v6 Filter_Bank_v6 processor.
5. Save the MAIN patch to preserve the captured message. Capture marks that
   main patch as changed. Copy the message box before capturing again if you
   want to keep multiple snapshots.

A snapshot contains the current four-filter configuration, all eight function
curves and their points, enable states, modes, Q, base frequency/gain, both
motion depths, trip times, loop flags, currently running Once/Loop flags,
selected filter, store slot, last loaded preset label, Level, Global Gain Out,
parameter glide, on/off fade, output headroom, and all stored slots 1-10.
Restoring replaces this instance's stored bank with the bank in the message.
The initial box preserves your attached captured state and its stored bank.
It does not run on open. A newly opened processor remains silent with no
preset selected.

Active motion restarts from each curve's beginning. Snapshots do not retain
sample-accurate playhead phase, an in-progress ramp, filter delay history,
meter readings, Max's audio device/settings, or the demo noise/fader/output
switch outside Filter_Bank_v6. Restore uses the receiver's current glide time;
it also loads the saved glide time for subsequent edits. Global Gain Out always
fades over 2000 ms. Type changes retain the existing fade/reconfigure behavior.

COMMANDS
  dumpstate               Export full state from the new right outlet.
  restorestate <packet>   Restore a self-contained captured message.
  restorestate            Restore this copy's last capture or received packet.
                         Capture once first when using this command from a menu.
The left outlet remains processed audio. Capture outputs to the message box's
RIGHT inlet, which stores without sending. Clicking the box sends to the
Filter Bank's RIGHT inlet. No external dictionary or file is required by a
captured message. Invalid/truncated packets are rejected before any mutation.

Packet layout (automatic; normally do not edit numbers by hand):
  restorestate 1 loadedSlot running1 running2 running3 running4 recordCount
    key length encodedState ...
Key 0 is the working sound; keys 1-10 are stored presets. New encodedState records use bank format 9.
Format-8 captures from v5.8 remain readable by v6. Curves support up to 64 points each. The largest
packet is 11877 atoms including its selector. Full_state_example.txt is a
plain-text copy of the initial message.

PRIMER
Double-click p Filter_Bank_Primer on the home page. It explains biquad filters,
frequency, gain, Q, routing, motion and capture. Its example buttons send local
commands to the connected Filter Bank. They do not generate audio or overwrite
stored presets. One peak sets an audible test configuration; Motion starts
both curves; Four Ultra sets four parallel narrow bands; Quiet fades Level down.
The separately supplied Filter_Bank_Primer.maxpat is the same guide. If used
elsewhere, connect its outlet to the processor's control inlet. For its Capture
button to fill a box, also wire the processor's right outlet to the right inlet
of a message box.

AUDIO / INDEPENDENT COPIES
Enable the shared Max audio engine in Audio Status. Raise the local listening
fader and enable Output on/off. The home Output switch fades only this copy.
The reusable p Filter_Bank_v6 contains no source or hardware-output object.
Copy/paste the WHOLE processor p object for independent banks, parameter state,
functions, motion tasks and control routing. Each menu uses an unnamed local
lookup table; control/state connections use patch cords. Keep each primer/menu
connected to its intended processor. Max's audio engine is shared by Max itself.

RANGES
Frequency: 60-13000 Hz, additionally limited for the current sample rate.
Gain: -24 to +24 dB. Q: 0.5-20 ordinary; 20-200 Ultra.
Frequency Depth: 0-12940 Hz. Gain Depth: 0-48 dB.
Full Trip: 100-600000 ms. Curves range -1 to +1 with zero endpoints.
Frequency = base Hz + Hz depth x frequency curve.
Gain = base dB + dB depth x gain curve, limited to +/-24 dB.
Depth needs a non-flat curve and Once/Loop to produce motion.
Level: 0-1. Global Gain Out: -36 to +12 dB, fixed 2-second fade.
Protection limits sample peaks at -6 dBFS (normalize 1) or -1 dBFS
(normalize 0); it does not add automatic makeup gain.

VALIDATION
Static nested-object/port validation; all original command examples mapped;
brief hover descriptions; attached editor/DSP/bank preservation checks;
eight isolated controller contexts; full-state round trips including eight
64-point curves and all ten presets; malformed packet rejection; local menu
routing and capture/replay wiring. Layout renders checked for text clipping.
These are controller/structure checks, not native Max audio/UI execution.

Cycling '74 documentation:
https://docs.cycling74.com/reference/biquad~/
https://docs.cycling74.com/reference/filtercoeff~/
https://docs.cycling74.com/reference/function/
https://docs.cycling74.com/reference/umenu/
https://docs.cycling74.com/reference/message/
