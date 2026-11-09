4X Filter Bank v6 — manual Filter Type reset

Built from the newly supplied _ec_4X_filterbank_v6(3).maxpat master.
Replace the matching files in your current package, retaining these names:
  _ec_4X_filterbank_v6.maxpat
  ec_filterbank_v6.js
  ec_filterbank_v6_display.js
The display script is included unchanged for completeness. Reopen the patch
after replacing the files. Its layout, colors, audio routing, embedded preset
bank and captured-state message are preserved.

When you CHANGE a Filter Type using a filter's menu or the home command menu:
  - Only the addressed filter is reset.
  - Filter gain becomes 0 dB.
  - Both motion depths become 0; Once/Loop playback stops.
  - Output fader becomes -12 dB, or stays at its quieter existing value.
  - Q uses the following starting values:
      Peak: 1
      Lowpass: 0.70710678
      Bandpass: 1
      Ultra-narrow Bandpass: 100
      Highpass: 0.70710678
      Resonant: 1
      Notch: 1
  - Base frequency, Full Trip time and both drawn curves are retained.
  - The filter's ON/OFF state is retained; an OFF filter stays silent.
  - Other filters and Global Gain Out are unchanged.
Selecting the already-selected type does not reset it again.

The visible values reset immediately. In the audio path, existing parameter
and motion ramps first stop at their current values. A 25 ms fade mutes that
filter before the resets and new coefficients are sent. Its history is
cleared, the new filter settles while muted, and the channel returns using
the existing On/off fade time. Ultra mode can require a longer settling time.
This prevents the old type's gain, resonance and motion settings from being
carried straight into a different type. It is not a loudness-matching system.
Peak at 0 dB is flat; raise or lower Filter gain to hear its boost/cut effect.

Preset recalls and full-state restore retain their stored parameters and
motion. A recall during a manual transition supersedes that transition.
Stored slots are not overwritten by choosing a type. Store explicitly to
retain the new settings. The patch still opens silent with Global Gain Out
at -12 dB and no preset selected.

Messages:
  uitype lowpass            Manual-reset type change on the selected filter.
  band 3 uitype resonant    Manual-reset type change on Filter 3.
  type lowpass             Existing programmatic type change; retains settings
                           except the existing type-specific Q constraints.
  band 3 type resonant     Same programmatic behavior for Filter 3.
The four menus now send 'band N uitype ...'. The seven home type entries send
'uitype ...'. Presets update menu displays with 'set', which produces no output.
Intentional multi-command examples in the primer retain their 'type' commands.

Validation:
  Controller simulation: all 168 changed-type combinations over four filters;
  unchanged selections; rapid changes; DSP interruption; OFF; quieter trims;
  all ten preset recalls during transitions; full-state restore; eight copies.
  Structural checks: existing audio wiring, geometry, presets and capture
  retained, with all four menu routes connected to the updated controller.
  Native Max audio and display have not been auditioned in this environment.


PER-FILTER CLEAR
The FILTER 1-4 target buttons are moved left, with a small 'clear' message
beside each. Click clear in the locked patch to reset that filter only:
  Type: Peak (first menu item)       Output state: OFF
  Frequency: 60 Hz                  Q: 0.5
  Filter gain: -36 dB               Output fader: -24 dB
  Frequency depth: 0 Hz             Gain depth: 0 dB
  Full Trip: 100 ms                 Once/Loop playback: stopped
  Both functions: flat at 0, with endpoints at 0 and 100 ms
These are valid minimums, not literal zero for every parameter. In particular,
0 dB is unity gain, so the two gain controls go to their negative limits.
The channel is muted with a 25 ms fade before its parameters, type and biquad
history are reset. Its OFF state then keeps the output silent. Input metering
continues to show incoming audio while Max Audio is on.
Other filters, target selection, globals and stored presets are retained.
Clear does not erase preset slots; use Store if a cleared state should replace
a preset. Store/recall and full-state capture include all cleared values.
External commands: 'band 2 clear' or 'clear 2' clears Filter 2; 'clear' clears
the current target. The visible clear messages always address their own column.
This update changes the main patch and controller; the separate abstraction,
sample, tutorials and other package files retain the supplied contents.


OPENING STATE
Every cold open now initializes all four filters to exactly the same valid
minimum state as clear: OFF, Peak, 60 Hz, Q 0.5, Filter gain -36 dB, Output
-24 dB, both motion depths 0, both curves flat at 0, Full Trip 100 ms, Loop OFF.
The opening state and clear use one shared definition in the controller.
No preset is selected. Global Gain Out still opens at -12 dB. Glide, On/off
fade and Auto headroom keep their existing startup settings.
Saving an active or looping sound does not change this opening behavior.
Stored presets and explicit full-state restoration retain their saved values.
Replace the main patch and ec_filterbank_v6.js together.


COPY BETWEEN FILTERS
Next to Target 1-4, choose a source number and destination number, both 1-4.
Click 'copy to' between them to perform the copy. Changing a number alone does
not copy anything. The feedback line confirms 'Copied 1 to 2', for example.
Equal source and destination is rejected with 'Choose different filters'.
The copied values are type, ON/OFF, base frequency, base gain, Q, output fader,
both motion depths, Full Trip, both function shapes, Loop and playback state.
An active Once or Loop starts from the beginning in the destination after its
brief muted transition. Its phase is not synchronized to the source.
The source keeps playing uninterrupted. Other filters, Target, globals and
stored presets are unchanged. Curves are independent copies: later edits to
one filter do not change another. Use Store to retain the result in a preset.
Copying uses the exact source settings; it does not invoke the manual type
menu's automatic reset. The destination fades out before changing coefficients,
then settles and returns with the existing On/off fade time.
External equivalent: 'copyband 1 2' into the right control inlet.
The controls are local to each complete Filter_Bank_v6 patcher copy.


WRITE BANK FILENAME
In the main patch, Write bank opens Save As with the editable default
name new_4XFilterBank_presetbank.txt. Choose the destination and save,
or Cancel without writing a file. The preset-bank format remains plain
coll text, compatible with Read bank. Explicit writebank paths retain
their existing behavior. This update requires only the main .maxpat;
the controller JS and separate abstraction are unchanged.


Q RANGE UPDATE
Peak, Lowpass, Bandpass, Highpass, Resonant and Notch now accept Q 0.5–50.
Ultra-narrow Bandpass retains Q 20–200. The limits apply to direct controls,
external messages, preset recall, copied settings and full-state restoration.
Opening values and the safe defaults used for manual type changes are unchanged.
Replace the main patch and ec_filterbank_v6.js together.
