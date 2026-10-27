SFZ / sfizz~ — COLLEGE LAB TUTORIAL
Version 1.0 | Prepared 21 October 2026

QUICK START
1. Extract the entire ZIP. Keep the SFZ files and samples/ together.
2. Use Max 8.6 or later (Max 9 recommended); sfizz~ is a built-in MSP object.
3. Open _START_HERE_SFZ_sfizz_Tutorial.maxpat. It opens in Presentation mode.
4. Turn audio on with the speaker icon. Output starts at -12 dB.
5. Select lesson 01; click demo. Read, predict, listen, then compare variants.
6. The main patch never turns DSP on automatically.

Names matter: sfizz~ is the Max object. SFZ is the instrument text format.
This package is not for sfplay~, fluid~, or another object named sfz~.

WHAT IS INCLUDED
- Ten progressive lessons in one Max patch; 23 playable SFZ files.
- Deterministic guided demonstrations plus manual pitch, velocity, timed
  note, hold/release, sustain pedal, and touchscreen-mode onscreen keyboard.
- Optional external MIDI notes and CC64; enable the checkbox to use them.
- Read-only source preview that reads the actual SFZ from disk.
- Native Max example, opcode reference, teaching notes and answer key.
- Ten original mono 48 kHz / 16-bit WAV samples. No external sample downloads.

CONTROLS
Selecting a lesson or variant stops old notes, cancels pending demo events,
raises the sustain pedal, loads its SFZ, and restores lesson note settings.
The output volume is left at your chosen value. A load request is not proof
that sfizz~ loaded successfully: check the Max Console for parser warnings.

TIMED: one note-on followed by note-off after Duration milliseconds.
HOLD: starts the selected pitch; RELEASE releases that stored pitch even if
      you have changed the pitch number in the meantime.
DEMO: runs the current variant's fixed experiment. It does not auto-advance.
PANIC: cancels scheduled events; sends CC64=0, CC123=0, then CC120=0.
RELOAD: stops notes and rereads the selected named SFZ and its source preview.
SUSTAIN: CC64=127 while checked, 0 while unchecked.

Timed, hold and demo start fresh and reset the pedal. For a manual pedal
experiment: click hold, then pedal down, release, then pedal up. To play
chords or overlap notes use an external keyboard. The onscreen keyboard
sends note-off on mouse-up and uses its own click-height velocity; the
numeric velocity control applies to timed and hold. Demos use fixed events
so their comparisons remain reproducible.

External MIDI notes from all ports/channels are merged onto channel 1.
Only sustain (CC64) is forwarded. Disable external MIDI when not using it;
disabling sends panic so a blocked note-off does not strand a held voice.
Do not simultaneously play the same pitch from multiple input sources;
ordinary MIDI note-off does not identify a particular same-pitch voice.

READ AND EDIT
The displayed code is a preview, not an editor. Open the named .sfz in a
plain-text editor, save it, then click reload. Max also opens an SFZ editor
when you double-click sfizz~. After editing there, save changes to the named
file on disk before using reload, so source and playback remain in sync.
Use lesson 10B for experiments. Keep originals or work in a copied folder.

Every sample= path is relative to the SFZ file, not the location of your
Max installation. Pathmode/defaultpathname concern dictionary instruments,
not the standard SFZ files used here. Moving the whole folder is portable;
moving only an SFZ or only the Max patch is not.

The main patch's JavaScript handles navigation and event scheduling; it
contains no sampler. Disable Presentation mode to inspect the connections.
Open Minimal_sfizz_player.maxpat for a tiny, conventional native Max chain:
message pitches -> makenote -> pack -> prepend midievent 144 -> sfizz~.
Use either player at a time. They have independent engines and output.

SFZ SYNTAX
A header such as <region> begins a scope; there are no closing tags.
Write opcodes as name=value. // starts a comment. A more specific value
replaces an inherited value; volume under <global> and volume under
<region> are not two separate gain stages that add together.
A new <group> begins a fresh group, inheriting global defaults rather than
the previous group's settings. All matching regions can play at once.
Keep filenames simple. The supplied paths have no spaces.

GAIN AND UNITS
SFZ volume is per-region dB. The Max message volume -12 changes the whole
sfizz~ output by -12 dB. These two stages add in dB. ampeg times are seconds;
timed note Duration is milliseconds; sustain is percent; loop indices are
sample frames with an inclusive end. MIDI velocity is not a dB value.
Default amp_veltrack=100 is nonlinear: velocity 64 is much quieter than 127
(roughly one-quarter amplitude). Most early examples set it to 0 so that
note duration, mapping and gain can be compared independently.

SAMPLE DESIGN
The samples were synthesized specifically for this tutorial; they are not
recordings of acoustic instruments. All are peak-normalized to 0.45 (-6.94
dBFS), so changes remain audible at conservative output settings.
sustain_tail_C4.wav has a repeatable periodic body and a brighter tail;
its precise loop indices are printed in each looping SFZ and SAMPLE_INFO.
The body frequency is rounded by an extremely small amount to make a
periodic integer-sample loop. wood_1/2/3, hats and release_click are unpitched
teaching sounds. C4 denotes nominal MIDI 60; numeric mappings are authoritative.
Samples and tutorial code may be reused and modified for teaching or music.

TROUBLESHOOTING
- Object is missing: check spelling sfizz~ and use a Max version that has it.
- No sound: turn DSP on; choose the audio device in Max Audio Status; check
  output dB and MIDI pitch. Several lessons map only 60; choke maps 42/46.
- Sample warning: extract the whole ZIP; check samples/ is beside the SFZ.
- A note keeps playing: compare one_shot, sustain and looping. PANIC resets
  the tutorial. A long release is not necessarily a stuck MIDI note.
- First/legato sounds unexpected: release every key and raise the pedal.
- Source and sound differ after editing: save the actual named disk file,
  click reload, and read the Max Console. Avoid duplicate copies in search paths.
- This is a local file exercise. Keep the working folder fully downloaded.

TEACHING PLAN
Lab 1 (60-75 minutes): lessons 01-06. Lab 2: lessons 07-10, then workshop.
The main patch contains p 03_Teaching_and_answers in patching view.
Use predict -> play -> explain -> change one opcode -> predict again.
Ask for a 30-second composition demonstrating the instrument's rules.

LESSONS AND LISTENING TARGETS

01  A text recipe + a sound file
An SFZ file contains rules, not recorded sound. sample= points to a WAV; a <region> says when and how that WAV plays. An opcode is a name=value instruction.

Here, key=60 permits exactly MIDI note 60 and sets its original pitch. Other notes are intentionally silent. Numeric MIDI notes avoid octave-name differences between applications.

Max sends performance events; sfizz~ reads the recipe and produces audio. You do not send SFZ opcodes as ordinary Max messages.

1. Turn audio on below; click demo.
2. Play 60, then 62. Only 60 belongs to this region.
3. Find sample= and key= in the source at right.
4. Keep the samples folder beside all the SFZ files.
Predict: if key=60 becomes key=62, which key plays the sample at its original pitch?
  01_recipe.sfz — Demo: MIDI 60 sounds; MIDI 62 is silent. Note-off starts a short fade.

02  A root pitch is not a key range
lokey and hikey choose which incoming notes may trigger a region. pitch_keycenter identifies the sample's original pitch. A note above the root speeds playback up; one below slows it down.

A: one sample covers 48-84. B: two regions split the keyboard at 65/66. Every matching region can sound: overlapping ranges create layers, not an automatic choice.

<group> supplies shared values to following regions. A region can override an inherited value.

1. Compare A and B with demo (48, 60, 65, 66, 72, 84).
2. In A, compare the length of notes 48 and 72.
3. In B, listen for the timbre change at 65/66.
4. Edit hikey=65 to 66, reload, then test 66.
Predict: what happens at 66 if both regions include it?
  02a_range.sfz — Same sample transposed. High notes are faster and shorter.
  02b_split.sfz — Notes 48-65 use soft_C4; 66-84 use bright_C5.

03  What does note-off actually do?
Note-off is an event, not an instruction to erase all audio instantly. Its result depends on loop_mode and the amplitude envelope.

Compare the SAME waveform in four modes. no_loop reads once and obeys note-off. one_shot reads once and ignores note-off. loop_continuous repeats through release. loop_sustain leaves the loop on release.

A finite sample can end before an envelope does. Loop points are sample-frame indices, not milliseconds; loop_end is inclusive.

1. Run demo for each variant: short press, then long hold.
2. Listen for the brighter tail after the steady body.
3. Use hold, wait 4 seconds, then release.
4. Compare C and D with ampeg_release=2 seconds.
Explain why a 10-second release cannot extend an unlooped 2.45-second WAV.
  03a_no_loop.sfz — Note-off starts a fade; a held note still ends at the WAV end.
  03b_one_shot.sfz — Note-off is ignored; the sample runs into its bright tail and finishes.
  03c_loop_continuous.sfz — Held note repeats the body. The body also loops during the release fade.
  03d_loop_sustain.sfz — Held note repeats the body. Releasing exits the loop and reaches the bright tail.

04  Shape time with an amplitude envelope
ampeg_attack is the rise time; ampeg_decay moves from the peak toward ampeg_sustain. Sustain is a LEVEL (0-100%), not a duration. ampeg_release is the fade after note-off.

SFZ envelope times are seconds. The timed-note duration control below is in milliseconds: 1000 ms = 1 second.

Both examples loop the same body. A pluck can decay to silence while its key is still held; a swell needs a long enough held note to reach its peak.

1. Run A: a 3-second hold makes a short pluck.
2. Run B: the same hold makes a slow swell and release.
3. In B set duration to 200 ms; try timed.
4. Edit ampeg_sustain only. Predict the held level.
Why can a long MIDI note produce a short sound?
  04a_pluck.sfz — The decay reaches zero even though the key is held for 3 seconds.
  04b_swell.sfz — A 1.2-second attack, held level, then a 1.5-second release.

05  Velocity: loudness versus sample selection
MIDI note-on velocity is 1-127. Velocity 0 means note-off in this patch, not a very quiet attack.

amp_veltrack=100 scales amplitude with velocity; 0 removes that scaling. lovel/hivel instead select which region plays. Layers can change timbre as well as loudness.

The layer example deliberately uses amp_veltrack=0 and equal-peak samples to isolate the timbre switch. Real instruments often combine layers with velocity tracking.

1. Run demo: velocities 30, 63, 64, 100, 127.
2. Compare A (level change) and B (fixed level).
3. In C, focus on the boundary at 63/64.
4. Try velocity 0 via a MIDI note-off: no new attack.
Can two notes have equal peak level but different timbre?
  05a_velocity_gain.sfz — Low velocities are much quieter; the same WAV is used each time.
  05b_fixed_gain.sfz — Five velocities, similar level and identical timbre.
  05c_velocity_layers.sfz — The timbre changes at 64. There is no gap or overlap in the velocity zones.

06  Gain, layers, and stereo position
SFZ volume is a per-region gain offset in decibels. 0 dB preserves the level; negative values attenuate. It does not mean silence. -6 dB is roughly half the signal amplitude, not necessarily half perceived loudness.

The output dB control below changes the whole sfizz~ engine. Keep it constant when comparing instruments.

C uses two matching regions. Both play on one note; pan places them left/right, and tune offsets pitch in cents (100 cents = one semitone).

1. At fixed velocity, compare A (-6 dB) and B (-18 dB).
2. Compare the meters without changing output dB.
3. Run C: one MIDI note produces two sample voices.
4. In C, change pan values to 0; listen again.
If region volume=-6 and output volume=-12, what is their combined dB offset?
  06a_gain.sfz — Centered sample at -6 dB region gain.
  06b_gain.sfz — Same sound 12 dB below A: about one quarter of A's amplitude.
  06c_stereo_layers.sfz — Both regions trigger together; stereo detuning creates a wider sound.

07  A release tail is not a release sample
ampeg_release fades the voice already playing. trigger=release starts a NEW sample when the note is released, or when the sustain pedal finally releases it.

trigger=release_key starts at physical key release even with sustain down. The examples keep an attack voice alive so that the comparison is unambiguous. Release-trigger details can differ across SFZ players.

CC64 values 64-127 hold the sustain pedal; 0-63 release it. These demos use 127 and 0.

1. Compare A (envelope only), B, and C.
2. Demo: note on; pedal down; key up; pedal up.
3. Watch event status. When does the bright click occur?
4. Repeat manually with hold, pedal, and release.
Which opcode would you use for a key-release mechanical noise?
  07a_envelope_only.sfz — No click. Sustain keeps the body alive after key-up; pedal-up releases it.
  07b_release.sfz — Bright release click at pedal-up, about 3 seconds into demo.
  07c_release_key.sfz — Bright release click at key-up, about 1.4 seconds into demo; body remains sustained.

08  First notes and legato notes
trigger=first selects a region at the start of a phrase when no other key is held. trigger=legato selects a region when another key is already held.

These opcodes CHOOSE samples. They do not automatically make a monophonic synthesizer, a pitch glide, or a recorded interval transition.

This example makes the difference obvious: a soft first note and bright overlapping notes. Pedal is off for this exercise.

1. Run demo: detached 60/64, then overlapping 60/64.
2. Listen to the changed timbre of the overlapping 64.
3. Use an external keyboard to vary overlap length.
4. Keep the first key held as you add a second.
Would pitch gliding necessarily happen just because trigger=legato is present?
  08_legato.sfz — Detached pair: both soft. Overlapping pair: second note bright.

09  Repetition and one sound stopping another
seq_length and seq_position rotate through a fixed sequence of matching regions. This round robin is deterministic; it is not random or machine learning.

For a choke, off_by on the OLD voice names the group number of a NEW voice that will stop it. Example: open hat off_by=2; closed hat group=2.

The <group> header supplies shared opcodes. The group=2 opcode is a voice-lifecycle number. They are different uses of the word group.

1. A: run demo; identify the repeating 1-2-3 pattern.
2. B: hear an open hat alone, then open followed by closed.
3. In B use pitch 46 (open), then 42 (closed).
4. Remove off_by=2 in a copy; compare the result.
Where does off_by go: on the sound to be stopped, or the sound doing the stopping?
  09a_round_robin.sfz — Nine taps cycle through three distinct percussion timbres.
  09b_choke.sfz — Open hat alone, then a second open hat cut short by closed hat.

10  Build and explain your own instrument
The finished example combines a keyboard split, velocity layers, and a release marker. <global> supplies defaults; each new <group> starts a fresh set of group values; regions refine those choices.

Use B as your editable working file. Open it as plain text (or double-click sfizz~), save, then reload. The source preview is read-only and refreshes from disk.

Build a short composition that makes the rules audible. Your SFZ file is a performable design, not just a sample list.

1. A: compare low notes, soft high notes, and hard high notes.
2. Choose B and edit 10b_student_instrument.sfz.
3. Add one velocity layer and one note-off behavior.
4. Explain each region and demonstrate a 30-second study.
What evidence would convince a listener that your mapping behaves as intended?
  10a_complete_instrument.sfz — Low one-shots; high soft/bright layers. MIDI 60 also has a quiet release click.
  10b_student_instrument.sfz — Your starting point: one mapped sample, velocity response, and a release fade.

VALIDATION AND LIMITS
The deliverable is checked for Max JSON structure and patch connections,
JavaScript control flow under a mocked Max API, SFZ headers/opcode values,
sample paths, loop bounds, region selection in the teaching cases, and WAV
integrity. Native Max/sfizz~ audio playback is not available in the build
environment; perform the included listening checks in Max. No claim of
native Max runtime testing is made. sfizz~ embeds its own engine version;
release-trigger corner cases can vary between engines and versions.

SOURCE REFERENCES (checked 21 October 2026)
Cycling '74 sfizz~ object reference:
https://docs.cycling74.com/reference/sfizz~/
Cycling '74 kslider reference (Touchscreen mode sends mouse-up note-offs):
https://docs.cycling74.com/reference/kslider/
SFZ structure and opcode references:
https://sfzformat.com/headers/
https://sfzformat.com/opcodes/key/
https://sfzformat.com/opcodes/lokey/
https://sfzformat.com/opcodes/pitch_keycenter/
https://sfzformat.com/opcodes/loopmode/
https://sfzformat.com/opcodes/loop_end/
https://sfzformat.com/opcodes/trigger/
https://sfzformat.com/opcodes/ampeg_release/
https://sfzformat.com/opcodes/ampeg_sustain/
https://sfzformat.com/opcodes/amp_veltrack/
https://sfzformat.com/opcodes/volume/
https://sfzformat.com/opcodes/pan/
https://sfzformat.com/opcodes/off_by/
https://sfzformat.com/opcodes/seq_position/
Sfizz project:
https://sfz.tools/sfizz/

ANNOTATED SFZ SOURCE
Every opcode now occupies its own line with a concise // explanation.
Header comments explain <global>, <group>, and <region> scope.
The source panel reads these annotated files; scroll for longer examples.
All opcode values, audio samples, and performance events are preserved.
