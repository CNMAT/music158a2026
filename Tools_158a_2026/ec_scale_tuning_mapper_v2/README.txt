EC SCALE / TUNING MAPPER -- v1.2.0
2026-10-16 | Prepared for Edmund Campion / CNMAT

START
-----
1. Unzip the complete folder to a local disk.
2. Open _ec_scale_tuning_mapper.maxhelp in Max 8 or Max 9.
   ec_scale_tuning_mapper.maxhelp is an identical copy for Max help lookup.
   Both preserve your scales-tab outlet connected to the main sine audition.
   The help file was generated in Max 9 patch format. Max-host execution has
   not been performed here; numerical tests use Node with a mocked Max API.
3. Click the large bang for one generated tone, or send midi 60.25.
4. For optional sine audition, enable the tone toggle and click the ezdac~.
   Audio and the tone toggle start OFF. No DSP/sample-rate settings are changed.
5. Enable nodesmode modal and move the six-mode cursor, then click bang.
   The p nodes_tuning example opens with modal morph enabled and feeds the
   parent sine audition. Top: mixolydian / ionian / lydian; bottom: dorian /
   aeolian / phrygian. All six nodes use uniform degree weights.
6. Set Primary octave for generated bangs: 3 = C3 / MIDI 48;
   4 = C4 / MIDI 60 (default); 5 = C5 / MIDI 72. Set Octave-shift weight
   from 0.0 (stay) to 1.0 (always one octave higher or lower, equally likely).
7. Choose a controller at notein and play, or click the kslider. MIDI pitch
   is converted to midicents (* 100) before reaching the JS. Note-offs are
   filtered from this simple pitch path; MIDI_events retains full pairing.
   The seven original example subpatchers each have their own independent mapper.
   Each melodic_preferences panel controls its parent mapper. The main menu
   controls the main mapper; the scales-tab menu controls that tab's mapper.
   Message-example cords are hidden in locked view for readability; unlock
   the patch to inspect those connections.

Use either [js ec_scale_tuning_mapper.js] or [ec_scale_tuning_mapper].
Keep the JS and abstraction together in the Max search path. The JS is
self-contained and uses ES5 syntax for Max's legacy js engine; no Node object,
CNMAT external, odot object, network connection or installation is required.
The optional CNMAT adapter is separate. Original supplied patches are unchanged.

UNITS / DEFAULTS
----------------
Raw numeric input and output: floating-point MIDICENTS, not MIDI note numbers.
6000 = MIDI 60; 6050 = 50 cents above MIDI 60. midi 60.5 is equivalent to 6050.
Frequency = reference * 2^((midicents - 6900)/1200).

Scale: major (Ionian)
Tuning: equal, 12-TET major template
Profile: kk_major, restricted to the selected major degrees
Tonic: 6000 midicents
Repeating period: 1200 cents
Reference: A4 / MIDI 69 = 440 Hz
Mapping: nearest; exact ties choose the lower pitch
Register for generation: 0 0 (one period beginning at the tonic)
Strength: 1.0 (unmodified positive profile ratings before normalization)
Legacy step bias: 0.0 (off)
Melodic preferences: ON
Step preference: 0.90
Opposite-step recovery: 0.98
Consecutive-leap avoidance: 0.97
Turn after: 3 moves in one direction
Turning preference: 0.90
Large-leap threshold: 480 cents (includes just and 12-TET fourths)
Repeats: 1 (allowed)
Nodes mode: off
Hysteresis: 0.05 (difference in normalized node weights)
Keyboard base: MIDI 60 = degree 1
Random seed: 0 (Math.random); no automatic clock
Core initial node assignments: 1 major_12tet, 2 major_just
Main help and nodes_tuning assign six modal nodes in the requested 3-by-2 order.
Primary octave: follows the tonic by default (6000 = C4); octave <int> selects
  an explicit generation octave. Octave-shift weight: 0.0 (off).

OUTLETS (LEFT TO RIGHT)
----------------------
1. Midicents, scalar or pitch list.
2. Hz, scalar or corresponding frequency list.
3. Metadata:
   tone <degree> <period-offset> <configuration> <degree-probability> <reason>
   midievent <midicents> <velocity> <channel> <original-input-key>
4. Status: scale, tuning, profile, tonic, period, mapping, nodesmode,
   cents, probabilities, nodeweights, settings, scaleindex, melodic controls,
   catalogs, warning and error.

Metadata precedes Hz, which precedes midicents. Connect the midicents outlet
to a pluck adapter so tuning information is already available at the trigger.
tone probability is conditional on that configuration; it is not the joint
probability of configuration, degree and register. For generated tones it sums
the final candidate probabilities across registers of the selected degree,
including the melodic preferences for this particular history. The period-offset
for generation is relative to that event's primary/shifted tonic; the emitted
midicents contain its complete absolute pitch. For mapped notes it is
the baseline degree probability, not a probability that caused the mapping.
Pitch lists produce one metadata message per member, then one Hz list and
one midicents list. They represent pitch collections, never pitch/velocity pairs.

INLETS
------
Left: bare int, float or list maps midicents; bang generates exactly one tone.
Right: bare numeric list means nodeweights. A right-inlet bang reports state.
Named configuration messages work in either inlet.
Use explicit midi, midinote, nodeweights and seed messages to avoid ambiguity.

INPUT / MAPPING MESSAGES
------------------------
midicents <number(s)>     Map one pitch or a list; note and map are aliases.
midi <number(s)>          MIDI note numbers, including fractions, converted *100.
mapping nearest          Closest tuned pitch; tie -> lower.
mapping ceiling          First tuned pitch at or above input.
mapping floor            First tuned pitch at or below input.
mapping degree           Input must be an integer MIDI key expressed in cents;
                         each semitone key advances one scale degree.
keyboard <MIDI-key>       Explicit sequential degree mapping in any mapping mode.
keybase <0..127>          MIDI key corresponding to degree 1; default 60.
degree <integer>         One-based degree, extending across periods:
                         degree 1 = first degree; degree 8 = next tonic in major;
                         degree 0 = preceding degree. Independent of mapping mode.
repeat                   Remap the last mapped scalar or list using current state.
                         No mapped input exists until the first pitch input.

Invalid notes reject the entire input transaction and emit error; no note 0
is substituted. Mathematically mapped pitches may lie outside MIDI 0..127.
No implicit clipping or integer rounding is applied to midicents or Hz.

MIDI EVENT MESSAGES
------------------
midinote <key 0..127> <velocity 0..127> [channel 1..16, default 1]
panic

The midinote path accepts integer MIDI keys. Note-on stores the mapped pitch
by channel + input key and emits midievent, tone, Hz and midicents. Note-off
(velocity 0) emits only midievent with the originally stored mapped pitch.
Repeated note-ons of the same key/channel are paired FIFO with note-offs.
An unmatched note-off emits a warning. panic emits all tracked note-offs.
Configuration changes and state recalls preserve held-note pairing; reset
first calls panic. This is not an MPE, pitch-bend, MIDI-byte or voice allocator.
Downstream voices should retain channel + original-key identity, since several
input keys can quantize to the same output pitch. A generic MIDI noteout also
cannot represent fractional pitches without a separate tuning/pitch-bend layer.

SCALE / TUNING MESSAGES
-----------------------
scale <name>             Select template and automatic profile; retains tonic.
                         Resets tuning and period to that scale's definition.
                         mode and preset are aliases for scale.
tuning equal             Restore the selected scale's original pitch template.
tuning template          Same as tuning equal. For documented tuning models,
                         restores their archived cents, not a 12-TET approximation.
tuning just_major_5limit  Major only: 1,9/8,5/4,4/3,3/2,5/3,15/8.
tuning pythagorean_major  Major only: 1,9/8,81/64,4/3,3/2,27/16,243/128.
tuning just_minor_5limit  Natural minor only: 1,9/8,6/5,4/3,3/2,8/5,9/5.
tonic <midicents>        Absolute origin; default 6000.
reference <Hz>           Frequency of MIDI 69; default 440. Does not change cents.
period <cents>           Repetition interval, 1..48000 cents. Does not rescale
                         existing degrees; all degrees must fit below it.
cents <list>             New custom scale of 1..256 strictly increasing positions
                         within [0,period); resets profile to uniform.
tuningcents <list>       One replacement position per existing degree; keeps IDs,
                         nominal membership and profile. Must remain ordered.
ratios <list>            One positive ratio per existing degree; keeps profile.
                         Ratios can be numeric or symbols such as 5/4.
edo <N> [period-cents]    New equal-division scale, N=1..256; period default 1200.
                         edo 13 1901.955000865 gives a 13-step tritave.
seed <integer PCs>       Legacy pitch-class set. Modulo 12, sorted, deduplicated;
seedlist <integer PCs>   same. Sets custom 12-TET membership, uniform profile.
                         A set without pitch class 0 is allowed. Keeps tonic.
read <path.scl>          Import Scala pitch data; see below.

Scale aliases include ionian, aeolian, minor, whole-tone, octatonic (=whole-half),
e-hex (=augmented_hexatonic), messiaen3rd and messiaen5th.
SCALE_CATALOG.txt lists every built-in model and its exact nominal positions.
Named just tunings reject incompatible scales rather than silently reassigning
degrees. Period endpoints are not duplicated as extra degrees.

PROFILE / GENERATION MESSAGES
----------------------------
bang                     Generate exactly one pitch; no internal metro.
profile auto             KK major for major; KK minor for natural minor;
                         uniform for all other scales.
profile kk_major         Restrict the published 12-class major ratings to
profile kk_minor         nominal chromatic membership. Retuning preserves IDs.
profile uniform          Equal degree weights; explicitly a constructed model.
weights <list>           Custom nonnegative degree weights, positive total.
strength <0..16>         Exponent on positive profile weights; 1 unchanged,
                         0 equalizes nonzero weights. Zeros stay excluded.
octave <integer>        Primary octave of the generated tonic, -5..9. Uses
                         scientific labels: C4 = MIDI 60 = 6000 midicents.
                         Retains the tonic pitch class: tonic 6900 + octave 3
                         starts on A3 / MIDI 57. Restores register 0 0 and
                         clears phrase history. Does not alter mapped input.
octave tonic            Follow the stored tonic octave (legacy default).
octaveshift <0..1>      Chance of shifting the generated register by exactly
                         one physical octave (1200 cents); default 0.0.
                         0.5 = 50% stay / 25% down / 25% up.
                         1.0 = 50% down / 50% up; no unchanged-octave notes.
                         Independent per bang: shifts never accumulate. Works
                         with melodic ON or OFF; incoming notes are unaffected.
register <min> <max>     Inclusive period offsets, -32..32; generation only.
                         Each degree's profile mass is divided among available
                         registers before melodic preferences are applied.
                         Offsets are relative to the chosen primary tonic.
                         Use 0 0 for one primary period; a wider register
                         intentionally extends the range before octave shifts.
                         Registers are uniform when melodic/stepbias are off;
                         with melodic ON, actual register distance matters.
stepbias <0..1>          Optional preference for proximity to the last output's
                         pitch class: multiply by 1-bias*d/(period/2), where d
                         is shortest circular cent distance. Default 0.
repeats <0|1>            0 excludes the immediately preceding exact output pitch
                         when alternatives exist; 1 allows repeats.
randomseed <integer>     1..2147483646 selects reproducible Park-Miller draws.
                         0 uses Math.random. Seed/position are transient.

Profile ratings are NOT observed next-note probabilities. Normalization,
restriction to scale membership, application to just tuning, strength,
motion preferences and nodes modifications are explicit compositional choices.
The probabilities status message is the baseline profile/nodes distribution;
melodic preferences change the conditional distribution and long-run histogram.
No fabricated non-Western empirical tone profiles are included. Custom/imported
scales default to uniform. If repeat/motion restrictions remove every candidate,
the base distribution is used with a warning so a bang still emits one tone.
KK profiles require nominal integer 12-TET pitch classes. Use custom weights
for scales whose nominal positions do not have that correspondence.

MELODIC PREFERENCES (NEW; ENABLED BY DEFAULT)
-------------------------------------------
melodic <0|1>            Enable/disable these preferences. Default 1. Switching
                         anchors a fresh phrase at the last output pitch.
stepchance <0..1>        Default 0.90. When steps are available, blend at least
                         this much probability into the step-only distribution.
recovery <0..1>          Default 0.98. Immediately after a large leap, blend this
                         much probability into opposite-direction steps.
leapavoid <0..1>         Default 0.97. Multiply a consecutive leap's weight by
                         1-leapavoid, EXCEPT two thirds in the same direction.
maxrun <1..32>           Default 3. After this many moves in one direction,
                         progressively reduce weight for continuing that way.
turnbias <0..1>         Default 0.90. Continuing weight is multiplied by
                         (1-turnbias)^(run-maxrun+1), exponent capped at 16.
recoverycents <1..48000> Default 480. Large leap means actual distance at least
                         this many cents. This covers 12-TET and just fourths.
melodyreset [midicents] Clear interval/direction history; optional starting pitch.
                         Does not emit a tone or change scale/profile/settings.
                         Without a pitch, also clears the repeat reference.

A step is one adjacent scale degree in the actual register, smaller than the
large-leap threshold. The consecutive-thirds exemption means a two-degree move
smaller than that threshold. In diatonic scales these are ordinary seconds
and thirds. For pentatonic, chromatic, unequal and non-octave scales these are
explicit generalizations; they are not claims about traditional melodic grammar.
Adjust recoverycents for a different interval interpretation. B3 -> C4 in C major
is a step; B4 -> C4 is a large downward leap, even though the pitch classes match.

Selection order:
1. Choose a nodes configuration (mixture mode only), then obtain its profile
   and spatial degree weights. Zero weights always remain excluded.
2. Choose the primary tonic octave and the optional +/-1200-cent octave shift.
   Then enumerate actual degree + register candidates, apply repeats and optional
   legacy stepbias, splitting each degree's mass among its available registers.
3. With history and melodic ON, prefer shorter leaps using a weight factor of
   1/max(1,abs(degree-distance)-1)^2. Apply consecutive-leap and direction-run
   penalties, normalize, then blend toward steps. Recovery has highest priority.
4. Draw one actual pitch and remember its interval and direction.

These are soft compositional preferences, not hard counterpoint prohibitions or
empirically verified transition probabilities. Profile ratios still matter within
the preferred candidate groups; the final note histogram will change. A first
note has no motion preference. If a preferred group is unavailable, its preference
is skipped. If penalty weights all vanish, the valid pre-penalty distribution is
retained. The repeat/legacy-bias fallback can permit a repeat when necessary;
profile and nodes zeros are never reopened. One bang always chooses one tone
when the configured pitches can be represented as finite Hz.

A repeated note does not extend or reset the direction run; it does end the
immediate-leap recovery opportunity. Scalar mapping, degree/keyboard and MIDI
note-on supply a fresh anchor without fabricating an interval; lists anchor at
their last output. Scale, tuning, profile and nodes changes keep actual pitch
history. For a different scale, project the previous pitch to the nearest degree
(tie lower) to measure degree movement, while direction and large-leap size use
actual cents. Sparse weights may therefore prevent steps or recovery.
For a new phrase after changing scale, send melodyreset.

For repeatable phrases send randomseed 12345, melodyreset, then the same bang and
control sequence. melodic 0 disables all new preferences and leap-distance bias;
stepbias remains the original independent, optional circular pitch-class bias.

FULL SCALE MENUS
----------------
Both the main page and scales_and_tunings have all 41 built-in scales. The first
six are phrygian, aeolian, dorian, ionian, mixolydian, lydian, followed by locrian
and the remaining collections. Ionian selects major; Aeolian selects natural_minor.
Choosing a menu item sets nodesmode off, selects the scale's template tuning and
automatic profile, and retains the tonic. This does not generate a tone; bang to
hear it. Selecting an assigned nodes mixture separately still uses its snapshots.
Status changes update the menu silently; custom/imported scales show a disabled
placeholder, and the status display retains the actual scale name.

SIX-MODE MORPH
--------------
modalnodes              Prepare and enable the six mode configurations using
                        the current base tonic and uniform degree profiles.
                        Order: mixolydian, ionian, lydian, dorian, aeolian,
                        phrygian. Starts with Ionian weight 1; help cursors
                        then initialize at the centre of the six circles.
nodesmode modal         Blend corresponding degree 1, degree 2, etc. in cents.
                        Assigned configurations must share tonic, period,
                        and degree count. Different mode intervals are allowed.
                        Normalized profiles are also blended by ordinal degree.
                        Outputs can be microtonal between named modes.

The existing nodesmode tuning still requires identical nominal membership
and profile, and remains available for 12-TET / just tuning morphs. Mixture,
degree weighting and all original modes remain available. Modal morph does
not require weakening the strict tuning compatibility checks.
The first three nodes form the top row; the last three form the bottom row.
Primary-octave and octave-shift controls are on the main page, nodes_tuning,
and all three melodic_preferences panels. Each panel controls its own parent.

MIDI KEYBOARD PATH
------------------
notein -> kslider -> stripnote -> * 100 -> js ec_scale_tuning_mapper.js
Velocity is connected alongside pitch so stripnote removes note-offs.
The keyboard accepts the complete MIDI range (inputmode 1), including notes
outside its visible C2-C7 area. Displayed octaves may be named differently
in a user's Max preferences; MIDI numbers and midicents are unambiguous.
Clicking keys follows the same conversion path as the external controller.
The main page owns the external-controller notein. The nodes_tuning keyboard
is mouse-playable only, so a controller note does not also retune the
independent example and override the main audition. MIDI_events retains the
separate midinote protocol for note-off pairing.

NODES MESSAGES
--------------
nodesmode off            Base configuration; nodes weights do not affect pitch.
nodesmode mixture        Bang: choose configuration from normalized node weights,
                         then choose an actual pitch using its profile and melodic rules.
                         Pitch mapping: strongest node, with hysteresis.
nodesmode degrees        One node per base-scale degree. Probability is
                         proportional to profile^strength * nodeweight.
nodesmode tuning         Interpolate corresponding degree positions in CENTS.
                         All assigned contexts must have equal tonic, period,
                         degree IDs, nominal positions and profile weights.
nodecount <1..64>         Set count of configuration nodes. Added slots copy base.
nodeassign <index> <name> Assign a snapshot of a stored configuration, numbered 1+.
nodeassign <index>        Assign a snapshot of the current base configuration.
nodeweights <list>       Explicit nodes left-outlet values (or right-inlet list).
hysteresis <0..1>        Dominant node changes only when a challenger exceeds
                         current weight by this normalized amount; default 0.05.

Connect nodes LEFT outlet -> prepend nodeweights -> mapper RIGHT inlet.
Cursor movement updates weights, never generates a pitch. Send bang to mapper.
Changing a mode keeps compatible weight vectors; switching to/from degree
weighting resets to equal weights. Changing the base configuration in degrees
mode also resets its weights to equal values. All-zero or invalid vectors and
zero overlap with a custom profile are rejected, preserving the previous vector.
Node assignments are snapshots. Later changes to the base configuration or a
stored configuration do not silently retune assigned nodes; reassign explicitly.
Base scale/tonic/profile controls do not edit assigned configuration snapshots.
The global reference, register, strength, stepbias, repeats and all melodic
controls apply to every node configuration.
Node movement does not continuously retune a sounding note. The next mapped
input, degree message or bang uses the current tuning; continuous glissandi
require repeated pitch requests and appropriate smoothing in the sound engine.

Do not apply the nodes help file's sqrt audio-gain conversion to these weights.
Do not apply its recallmulti preset-number encoding. Names and scale IDs are
categorical; only explicitly corresponding pitch values can be interpolated.
The 64 limit here is this mapper's configuration-node limit, not a claim about
every Max version's nodes capacity. Degree mode supports the scale's N degrees.

STORAGE / QUERIES
----------------
store <simple-name>      Save a copy of base scale/tuning/tonic/profile in memory.
recall <simple-name>     Recall it as base. Does not change nodes mode.
listconfigs             Built-ins: major_12tet, major_just, minor_12tet,
                        pentatonic_12tet, dorian_12tet; plus your stored names.
listscales/listpresets   List built-in scale names in the ordered menu sequence.
listmenu                Display names, including Ionian/Aeolian aliases.
melodystate             Inspect transient last pitch, direction/run and leap flags.
listtunings             List tuning controls.
listprofiles            List profile controls.
info <scale-name>       Show the model's classification and source notes.
dump                    Current mapping context, cents, probabilities and settings.
getstate                Full state as a JSON symbol on the status outlet.
restore <JSON-symbol>   Restore a previously obtained JSON state.
reset                   Panic, then all defaults and factory node assignments.

The JS implements save()/embedmessage() and getvalueof()/setvalueof() for Max
state persistence. JSON state is for whole-state recall, not interpolation.
When using the abstraction, bind pattr to its contained JS if instance-specific
state must be stored from an enclosing patch. Verify recall in your Max host.
Held-note bookkeeping, last input/output, melodic history and RNG position
are not serialized. All melodic controls are serialized. Older v1 states load
with the new melodic defaults; send melodic 0 for profile-only comparison.
The named configuration store contains musical snapshots, not global control
settings; the full JSON state contains the global settings as well.

SCALA
-----
read accepts a filesystem path; the help patch includes an opendialog chooser.
The scales folder contains six examples. Add it to Max's search path for short
filename messages, or choose the full path through the dialog.
An implicit 0-cent tonic is inserted; the last listed interval is the period.
Decimals are cents; slash fractions and plain integers are ratios. Blank
descriptions, comment lines, mixed line endings and trailing pitch labels work.
This version accepts 1..256 ascending degrees in one positive period and rejects
unsorted, repeated, negative/out-of-period degrees and zero-note files. Those
restrictions are narrower than all possible valid Scala files. Errors leave the
previous configuration intact. .kbm mappings are not imported. Names/frequencies
in archival descriptions do not automatically set this mapper's tonic.

CNMAT ADAPTER
-------------
ec_midicents_to_string.js has four outlets: pluck amplitude, length fraction,
target Hz, and fractional MIDI calibrated to Max's A440 ftom convention.
It sends MIDI, Hz and length BEFORE the pluck.
Default rootHz 262 matches one_string_ped's internal * 262.; reference is 440;
amplitude is 1. Set voice octave to 0 and keep voice/adapter rootHz synchronized.
Connect adapter outlet 2 to one_string_ped RIGHT inlet and outlet 1 to LEFT.
Avoid feedback from the graphical stopper's rounded positions into tuning.
Alternatively connect fractional MIDI to reso-string~_ped's tuning inlet and
pluck amplitude*127 to its excitation inlet; allocate voices independently.
The adapter does not modify global OSC buses, graphics or the eight-string
allocation in Playspace. See the CNMAT_integration help tab before connecting.

VALIDATION / LIMITS
------------------
Run node tests/test_mapper.js, node tests/test_melody.js, and
node tests/test_octave_modal.js (Node 18+).
Run python3 tests/test_patches.py for patch wiring and menu checks.
Tests cover all 4095 nonempty PC sets,
fractional inputs, profile sampling, nodes modes, state restore, Scala parsing,
MIDI note-off pairing, duplicate register handling and invalid-input rejection.
The melodic suite checks steps, recovery, the thirds exception, direction runs,
sparse/zero weights, register boundaries, all 41 menu entries, changing nodes,
non-octave periods, state migration and reproducible phrases.
Patch JSON and patch cords are checked separately. Max GUI, MIDI device timing,
audio and CNMAT host integration require local audition/testing.
Max js runs as control-rate processing; this is not an audio-rate pitch tracker.

FILES
-----
ec_scale_tuning_mapper.js          Core engine, all built-in data
ec_scale_tuning_mapper.maxpat      Two-inlet / four-outlet abstraction
_ec_scale_tuning_mapper.maxhelp    Your revised help, with menus and controls
ec_scale_tuning_mapper.maxhelp     Identical canonical help-lookup copy
SCALE_MENU.json                    Exact ordered menu names
ec_midicents_to_string.js          Optional direct CNMAT adapter
SCALE_CATALOG.txt / .json          Complete built-in pitch-model catalog
SOURCES.txt                       Profile/model provenance and interpretation
scales/                           Six Scala examples
tests/                            Numerical tests and result record
