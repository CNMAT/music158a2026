MICRO-DRIFT: LINE-DRIVEN RANDOM WALK

Each primary partial walks independently around its current slider-set detuned frequency. The detune sliders and their stored values are never overwritten. F0 remains locked; harmonic-anchor duplicates do not drift.

DRIFT AMOUNT: 0 stops the walk and clears its offset. 1 applies the full walk; intermediate values scale the offset and effective step size. Enable MICRO-DRIFT ON to start. At amount 1, the default STEP is 1 Hz.

STEP / SKIP Hz: each new target has a 50/50 chance of being exactly this many Hz above or below the previous target. Steps accumulate like a drunk walk; they are not new absolute detune settings. Change the step control inside Micro-Drift (0–5 Hz, default 1 Hz). Changes apply to subsequent selections.

WALK SEGMENT MS: glide linearly to each new target. Each partial chooses a segment duration between 75% and 125% of this setting (default 2000 ms). The generator updates these lines every 40 ms.

OFF: cancels the walk, clears all accumulated offsets and immediately restores the current slider-set detuned frequencies. Turning it back on starts a fresh walk from zero. Changing the seed also restarts the walk reproducibly.

Example at a slider-set frequency of 440 Hz, amount 1 and step 1 Hz: a possible target sequence is 441, 442, 441, 440, 439 Hz. These are joined by smooth ramps.

The accumulated walk can exceed one step and can move beyond the detune slider’s ±100-cent range. That range sets the underlying pitch, not the drift excursion. Frequencies are kept positive and the existing output filters remain active.

Existing message addresses: Max_Drift_v19 (Drift Amount), Micro_On_v19 (toggle), Micro_Depth_Hz_v19 (step size), Micro_Segment_ms_v19 (line duration), Direction_Seed_v19 (walk seed).

Revision verification: VALIDATION_MICRO_DRIFT_v19.json. Max audio testing remains necessary.
