EC SFZ Builder / Editor v5

Optional development checks

Using Node.js 18 or later, run from the package root:

  node Tests/allocation.cjs
  node Tests/startup.cjs

These run 12 controller regression checks, 15 allocation/path checks, and
13 startup/local-HTML checks. Startup simulates the unavailable patcher context
during global JavaScript evaluation and early table events before initialize.
No installation or external packages are required. The harness supplies mock
Max objects and loads the actual packaged JavaScript; it writes no files.

These checks do not run Max, jweb, MIDI devices, or sfizz~ audio. Seven local HTML browser checks were run for this repair; see
Documentation/Changes_v5.txt.

Suggested Max checks:
1. Open the root patch from this extracted folder and check the Max Console.
2. Load a sound folder. Add three samples to each of groups 1, 2, and 3.
   Expect 0/1/2, 127/126/125, and 84/83/82 respectively.
3. In the mapper, choose each group in View and navigate with Left/Right.
   Group 2 traverses left-to-right 125/126/127 even though it loaded downward.
4. Zoom in; verify selection stays visible. Edit a number and verify arrows
   inside that field do not change the selected region.
5. Enable Audio and audition the samples. Save the SFZ from the main page.
6. Open the built-in single-sample tutorial and the Scala reference to verify
   relocated resource loading. Open the Opcode Browser Output Channel Map;
   there should be no patchcord inlet-out-of-range error.

Controller development
The distributed Max controller is ec_sfz_builder_v5.js. It contains the host
modules and controller source in one file, so runtime include loading is not
required. After editing the source modules in Support, run:

  node Tests/build_controller.cjs
  node Tests/build_controller.cjs --check

Then run both test suites above. The build command regenerates the root JS
file; the --check command verifies it without writing anything.
