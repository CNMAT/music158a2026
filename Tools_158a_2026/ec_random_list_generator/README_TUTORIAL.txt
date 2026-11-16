RAND_LIST.JS — EIGHT-STAGE TUTORIAL PACKAGE

Files
  rand_list.js                  Unmodified generator from the uploaded ZIP
  rand_list.maxhelp             Existing help with embedded 8-stage tutorial
  rand_list_tutorial.maxpat     Standalone copy of the full 8-stage tutorial

Put all three Max files in the same folder. Open rand_list.maxhelp,
then double-click the blue "p EIGHT_STAGE_TUTORIAL" object in the upper right.
Or open rand_list_tutorial.maxpat directly. Double-click any lesson box
and click each numbered message in order; click the prominent BANG button
to execute or advance when instructed.

The eight stages cover:
  1 Reset and first bang
  2 List length, numeric range, repeats
  3 Sorting, parity, lower and upper filters
  4 Feeding a list and deferred getlast
  5 One-shot masked mutation
  6 Persistent round-robin mutation
  7 Fixed-list rotation (rotate1..rotate16)
  8 Seed, make, getstate, reproducibility

Notes grounded in the supplied rand_list.js:
  resetdefaults sets length 6, range 0..1, and lastList 1 0 0 0 0 0.
  The first bang after resetdefaults outputs that base unchanged.
  mutate, mutate1/2/3, generate, make and getlast wait for bang.
  listfeed stores a list and the next bang echoes it unless another
  operation is armed first.
  rotate1...rotate16 rotate the supplied integer list itself; the first
  bang emits the original list, and later bangs rotate to the right.
  The supplied JS does not implement a mutatepattern message.

Validation: structural checks of Max JSON and JavaScript behavior
were performed in this environment; opening in the Max 9 GUI was not
available, so the package is not a substitute for in-Max testing.
