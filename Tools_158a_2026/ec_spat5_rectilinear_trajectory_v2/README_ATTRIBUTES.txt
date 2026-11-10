RECTILINEAR TRAJECTORY v2.3 — NAMED ATTRIBUTES

Use this object in Max 9 (legacy js; no v8 required):

js spat5_rectilinear_trajectory.js @sources 8 @cycle 20 @distance 4 @sourcepres 2

Attribute      Accepted values              Default
@sources       integer 1–150                1
@cycle         positive integer seconds     10
@distance      integer 1–10                 2
@sourcepres    integer 2–10                 2

Attributes can appear in any order. Omitted attributes use defaults.
Distance is measured in multiples of the radius-1 circle. Cycle is the
full outer → center → outer trip. Sourcepres sets the distance where
direct sound reaches zero; reverb continues. It is independent of the
maximum trajectory distance and is not the Spat Presence dial.

The help patch preserves your example values: 8 sources, 20 seconds,
4X distance, sourcepres 2. Its js box now uses the four named attributes.
The reference comments have been brought into the visible window.

RUNTIME CONTROL
Send the same inlet messages as before, without @:

sources 12, cycle 20, distance 6, sourcepres 6, go

Message changes and runtime attribute changes are queued. Only go
applies them and starts a new weighted-random launch sequence.
bang restarts using active values and leaves queued changes pending.
init and hold also use active values and leave queued changes pending.
Attribute getters return the queued values, which become active on go.
The four attributes use declareattribute with explicit getters/setters,
so they are available to Max attribute access and pattr attribute binding.

SAVING / COMPATIBILITY
The settings typed into the js object are saved with your patch.
Runtime edits do not rewrite them or embed a separate saved state.
To change the next opening state, edit the @values in the object box.

Existing positional arguments still work:
js spat5_rectilinear_trajectory.js 8 20 4 2
If combining formats, put positional arguments first. Named attributes
override the corresponding positional values; the last duplicate wins.
Legacy fractional cycle/distance creation values remain supported.
Invalid runtime values are rejected without changing the queued value.
Malformed creation syntax must be corrected in the object box.

Only the JavaScript and help patch were updated; this note is new.
Trajectory mathematics, random weighting, source amplitude curve,
Spat preset, speaker configuration and audio wiring are retained.
The help still requires Spat5 and your existing ec_tapdelay64_v4~ and
ec_tapdelay64_breakout~ abstractions on Max's search path.

VALIDATION
JavaScript syntax, argument parsing, declared getters/setters, validation,
queued-versus-active behavior, and output equivalence to v2.2 were checked
in a Node-based Max API simulation. Help JSON and patch connections were
checked. Max / Spat5 are unavailable here; native attribute UI and audio
operation still need testing in Max.

Cycling '74 documentation for declareattribute:
https://docs.cycling74.com/apiref/js/jsthis/#declareattribute
