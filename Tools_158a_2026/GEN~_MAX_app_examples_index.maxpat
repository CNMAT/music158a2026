{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 2335.0, 156.0, 1000.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 20.0, 600.0, 27.0 ],
                    "text": "Max Gen~ Complete Index (85 Patches)"
                }
            },
            {
                "box": {
                    "id": "obj-pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 42.0, 53.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 70.0, 400.0, 22.0 ],
                    "text": "Analysis & Measurement"
                }
            },
            {
                "box": {
                    "id": "c-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 100.0, 417.0, 20.0 ],
                    "text": "Computes running signal averages and RMS energy calculations inside Gen."
                }
            },
            {
                "box": {
                    "id": "m-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 122.0, 463.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.average.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 155.0, 512.0, 20.0 ],
                    "text": "Performs spectral analysis based on the psychoacoustic Bark scale inside a spectral subpatch."
                }
            },
            {
                "box": {
                    "id": "m-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 177.0, 444.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.bark.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 210.0, 445.0, 20.0 ],
                    "text": "Calculates the spectral centroid of an audio signal to track brightness over time."
                }
            },
            {
                "box": {
                    "id": "m-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 232.0, 465.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.centroid.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 265.0, 465.0, 20.0 ],
                    "text": "Calculates cross-correlation between two audio signals to measure phase similarity."
                }
            },
            {
                "box": {
                    "id": "m-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 287.0, 509.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.cross-correlation.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 320.0, 429.0, 20.0 ],
                    "text": "Tracks running minimum and maximum peak levels in an audio signal stream."
                }
            },
            {
                "box": {
                    "id": "m-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 342.0, 462.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.minmax.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 375.0, 422.0, 20.0 ],
                    "text": "Zero-crossing detector and period counter for frequency tracking and sync."
                }
            },
            {
                "box": {
                    "id": "m-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 397.0, 449.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.zerox.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 440.0, 400.0, 22.0 ],
                    "text": "Buffer & Sample Processing"
                }
            },
            {
                "box": {
                    "id": "c-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 470.0, 442.0, 20.0 ],
                    "text": "Sorts buffer audio contents directly in real-time sample memory using Gen code."
                }
            },
            {
                "box": {
                    "id": "m-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 492.0, 476.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.buffer.sort.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 525.0, 456.0, 20.0 ],
                    "text": "Slices and repeats incoming audio buffer segments with synchronous retriggering."
                }
            },
            {
                "box": {
                    "id": "m-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 547.0, 504.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.chopper_repeat.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 580.0, 397.0, 20.0 ],
                    "text": "Real-time buffer slicing engine with randomized audio chunk playback."
                }
            },
            {
                "box": {
                    "id": "m-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 602.0, 462.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.chucker.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 635.0, 465.0, 20.0 ],
                    "text": "Records and loops audio with sample-accurate sync and dynamic playback controls."
                }
            },
            {
                "box": {
                    "id": "m-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 657.0, 473.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.livelooper.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 690.0, 371.0, 20.0 ],
                    "text": "Audio transient slicing engine for auto-segmenting sound buffers."
                }
            },
            {
                "box": {
                    "id": "m-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 712.0, 448.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.slicer.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 755.0, 400.0, 22.0 ],
                    "text": "Control & Math Utilities"
                }
            },
            {
                "box": {
                    "id": "c-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 785.0, 566.0, 20.0 ],
                    "text": "Low-frequency oscillation and algorithmic MIDI event generation running in the event-rate Gen domain."
                }
            },
            {
                "box": {
                    "id": "m-1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 807.0, 456.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen.midi_lfo.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 840.0, 476.0, 20.0 ],
                    "text": "Generates a 7-segment envelope with velocity scaling and customizable curve shaping."
                }
            },
            {
                "box": {
                    "id": "m-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 862.0, 534.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.7_segment_envelope.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 895.0, 412.0, 20.0 ],
                    "text": "Tracks sample counts and trigger events with sample-accurate reset logic."
                }
            },
            {
                "box": {
                    "id": "m-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 917.0, 451.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.count.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 950.0, 429.0, 20.0 ],
                    "text": "Maps input values using custom exponential and logarithmic transfer curves."
                }
            },
            {
                "box": {
                    "id": "m-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 972.0, 450.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.curve.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1005.0, 488.0, 20.0 ],
                    "text": "Generates non-repeating random values from a data array until all values are exhausted."
                }
            },
            {
                "box": {
                    "id": "m-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1027.0, 466.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.data-urn.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1060.0, 444.0, 20.0 ],
                    "text": "Produces random walk step motion for algorithmic control or sound generation."
                }
            },
            {
                "box": {
                    "id": "m-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1082.0, 452.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.drunk.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1115.0, 415.0, 20.0 ],
                    "text": "Smooths rapid parameter control changes dynamically based on slew rate."
                }
            },
            {
                "box": {
                    "id": "m-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1137.0, 525.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.dynamic-smoothing.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1170.0, 441.0, 20.0 ],
                    "text": "Detects signal threshold transitions and generates single-sample trigger pulses."
                }
            },
            {
                "box": {
                    "id": "m-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1192.0, 447.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.edge.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1225.0, 496.0, 20.0 ],
                    "text": "Computes mathematical greatest common divisor and least common multiple per sample."
                }
            },
            {
                "box": {
                    "id": "m-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1247.0, 491.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.gcd_and_lcm.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1280.0, 481.0, 20.0 ],
                    "text": "Demonstrates various signal interpolation algorithms including linear and cubic modes."
                }
            },
            {
                "box": {
                    "id": "m-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1302.0, 489.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.interpolation.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1335.0, 372.0, 20.0 ],
                    "text": "Smooths control and signal paths using spline curve interpolation."
                }
            },
            {
                "box": {
                    "id": "m-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1357.0, 551.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.interpolation.splinecurve.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1390.0, 453.0, 20.0 ],
                    "text": "Interprets and evaluates mathematical expressions sample-by-sample inside Gen."
                }
            },
            {
                "box": {
                    "id": "m-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1412.0, 533.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.interpreter-calculator.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1445.0, 399.0, 20.0 ],
                    "text": "Multi-channel audio routing and matrix switching built using Gen logic."
                }
            },
            {
                "box": {
                    "id": "m-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1467.0, 459.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.routing.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1500.0, 370.0, 20.0 ],
                    "text": "Sinc function interpolation implemented using iterative for-loops."
                }
            },
            {
                "box": {
                    "id": "m-68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1522.0, 550.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.sincinterpolation.forloop.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1555.0, 403.0, 20.0 ],
                    "text": "High-quality sinc interpolation for high-fidelity band-limited resampling."
                }
            },
            {
                "box": {
                    "id": "m-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1577.0, 509.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.sincinterpolation.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1610.0, 396.0, 20.0 ],
                    "text": "Rate-limits control event streams to a maximum frequency inside Gen."
                }
            },
            {
                "box": {
                    "id": "m-75",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1632.0, 468.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.speedlim.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1665.0, 366.0, 20.0 ],
                    "text": "Threshold-based hysteresis detection and gate trigger generator."
                }
            },
            {
                "box": {
                    "id": "m-77",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1687.0, 454.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.thresh.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1720.0, 356.0, 20.0 ],
                    "text": "Non-repeating random integer selector running at sample rate."
                }
            },
            {
                "box": {
                    "id": "m-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1742.0, 439.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.urn.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1785.0, 400.0, 22.0 ],
                    "text": "DSP Effects & Dynamics"
                }
            },
            {
                "box": {
                    "id": "c-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1815.0, 418.0, 20.0 ],
                    "text": "Applies variable bit-depth reduction and sample-rate downsampling effects."
                }
            },
            {
                "box": {
                    "id": "m-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1837.0, 464.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.bitcrush.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1870.0, 366.0, 20.0 ],
                    "text": "Cuts audio signals into rhythmic stuttered and windowed bursts."
                }
            },
            {
                "box": {
                    "id": "m-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1892.0, 464.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.chopper.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1925.0, 433.0, 20.0 ],
                    "text": "Limits the rate of signal change per sample to smooth or distort audio signals."
                }
            },
            {
                "box": {
                    "id": "m-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1947.0, 465.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.deltaclip.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 1980.0, 494.0, 20.0 ],
                    "text": "Produces classic modulation effects using variable delay lines and low-frequency sweeps."
                }
            },
            {
                "box": {
                    "id": "m-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2002.0, 495.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.flange_chorus.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2035.0, 443.0, 20.0 ],
                    "text": "Smoothly gates audio signals without click artifacts using envelope crossfading."
                }
            },
            {
                "box": {
                    "id": "m-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2057.0, 490.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.gate-noclicks.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2090.0, 457.0, 20.0 ],
                    "text": "Adds harmonic warmth and saturation through non-linear waveshaping distortion."
                }
            },
            {
                "box": {
                    "id": "m-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2112.0, 471.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.overdrive.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2145.0, 464.0, 20.0 ],
                    "text": "Lookahead peak limiter preventing digital clipping while preserving transient clarity."
                }
            },
            {
                "box": {
                    "id": "m-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2167.0, 479.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.peaklimiter.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2200.0, 350.0, 20.0 ],
                    "text": "Real-time pitch shifting using multi-tap windowed delay lines."
                }
            },
            {
                "box": {
                    "id": "m-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2222.0, 471.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.pitchshift.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2255.0, 408.0, 20.0 ],
                    "text": "Waveset distortion and transformation with dynamic amplitude tracking."
                }
            },
            {
                "box": {
                    "id": "m-83",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2277.0, 551.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.waveset_with_amplitude.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2310.0, 441.0, 20.0 ],
                    "text": "Non-linear audio distortion by altering individual zero-crossing wave segments."
                }
            },
            {
                "box": {
                    "id": "m-84",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2332.0, 464.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.waveset.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2375.0, 400.0, 22.0 ],
                    "text": "Filters & Resonators"
                }
            },
            {
                "box": {
                    "id": "c-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2405.0, 491.0, 20.0 ],
                    "text": "Implements a standard 2-pole 2-zero biquad filter architecture for dynamic audio filtering."
                }
            },
            {
                "box": {
                    "id": "m-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2427.0, 457.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.biquad.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2460.0, 439.0, 20.0 ],
                    "text": "Implements a finite impulse response (FIR) filter using buffer reference lookup."
                }
            },
            {
                "box": {
                    "id": "m-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2482.0, 450.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.buffir.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2515.0, 516.0, 20.0 ],
                    "text": "Implements feedback and feedforward comb filtering for delay effects and physical modeling."
                }
            },
            {
                "box": {
                    "id": "m-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2537.0, 450.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.comb.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2570.0, 468.0, 20.0 ],
                    "text": "Splits an audio signal into distinct frequency bands using multi-way crossover filters."
                }
            },
            {
                "box": {
                    "id": "m-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2592.0, 471.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.crossover.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2625.0, 422.0, 20.0 ],
                    "text": "Demonstrates a wide collection of common filter topologies and equations."
                }
            },
            {
                "box": {
                    "id": "m-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2647.0, 451.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.filters.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2680.0, 429.0, 20.0 ],
                    "text": "Models the iconic 24dB/octave Moog transistor ladder filter with resonance."
                }
            },
            {
                "box": {
                    "id": "m-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2702.0, 483.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.moogladder.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2735.0, 412.0, 20.0 ],
                    "text": "Parallel filter resonator bank with enhanced tuning and damping controls."
                }
            },
            {
                "box": {
                    "id": "m-64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2757.0, 522.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.resonator_bank_v2.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2790.0, 373.0, 20.0 ],
                    "text": "Bank of parallel resonant filters for acoustic resonance simulation."
                }
            },
            {
                "box": {
                    "id": "m-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2812.0, 503.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.resonator_bank.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2845.0, 407.0, 20.0 ],
                    "text": "Sample-accurate logarithmic low-pass smoothing and envelope tracking."
                }
            },
            {
                "box": {
                    "id": "m-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2867.0, 445.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.slide.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2910.0, 400.0, 22.0 ],
                    "text": "Physical Modeling"
                }
            },
            {
                "box": {
                    "id": "c-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2940.0, 422.0, 20.0 ],
                    "text": "Models acoustic flute sounds using physical modeling waveguide synthesis."
                }
            },
            {
                "box": {
                    "id": "m-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 2962.0, 445.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.flute.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 2995.0, 428.0, 20.0 ],
                    "text": "Physical modeling of plucked strings with non-linear feedback modifications."
                }
            },
            {
                "box": {
                    "id": "m-45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3017.0, 545.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.karplus_strong_strange.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3050.0, 426.0, 20.0 ],
                    "text": "Classic Karplus-Strong plucked string physical modeling synthesis algorithm."
                }
            },
            {
                "box": {
                    "id": "m-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3072.0, 498.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.karplus_strong.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3105.0, 399.0, 20.0 ],
                    "text": "Physical model synthesizing percussion noise like maracas and shakers."
                }
            },
            {
                "box": {
                    "id": "m-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3127.0, 455.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.shaker.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3160.0, 395.0, 20.0 ],
                    "text": "Digital waveguide mesh modeling vibrating acoustic strings and tubes."
                }
            },
            {
                "box": {
                    "id": "m-82",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3182.0, 477.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.waveguide.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3225.0, 400.0, 22.0 ],
                    "text": "Reverb & Delay"
                }
            },
            {
                "box": {
                    "id": "c-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3255.0, 418.0, 20.0 ],
                    "text": "Algorithmic reverb designed for eerie soundscapes and long diffusion tails."
                }
            },
            {
                "box": {
                    "id": "m-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3277.0, 490.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.creepyreverb.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3310.0, 395.0, 20.0 ],
                    "text": "Implements Jon Dattorro classical 1997 plate reverberation algorithm."
                }
            },
            {
                "box": {
                    "id": "m-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3332.0, 504.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.dattorro_reverb.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3365.0, 484.0, 20.0 ],
                    "text": "Implements the classic Schroeder-Moorer Freeverb algorithm with parallel comb filters."
                }
            },
            {
                "box": {
                    "id": "m-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3387.0, 465.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.freeverb.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3420.0, 488.0, 20.0 ],
                    "text": "Studio-grade algorithmic reverberator featuring rich early reflections and room controls."
                }
            },
            {
                "box": {
                    "id": "m-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3442.0, 466.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.gigaverb.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3485.0, 400.0, 22.0 ],
                    "text": "Spectral & FFT Processing"
                }
            },
            {
                "box": {
                    "id": "c-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3515.0, 438.0, 20.0 ],
                    "text": "Blends the spectral characteristics of two audio sources in real time using FFT."
                }
            },
            {
                "box": {
                    "id": "m-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3537.0, 502.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.cross-synthesis.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3570.0, 428.0, 20.0 ],
                    "text": "Performs discrete Haar wavelet analysis and reconstruction on audio signals."
                }
            },
            {
                "box": {
                    "id": "m-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3592.0, 487.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.haar.wavelet.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3625.0, 457.0, 20.0 ],
                    "text": "Spectral centroid analysis implemented inside a pfft~ frequency domain subpatch."
                }
            },
            {
                "box": {
                    "id": "m-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3647.0, 489.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.pfft_centroid.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3680.0, 442.0, 20.0 ],
                    "text": "Basic template for integrating Gen code inside pfft~ spectral processing chains."
                }
            },
            {
                "box": {
                    "id": "m-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3702.0, 490.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.pfft_example.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3735.0, 361.0, 20.0 ],
                    "text": "Spectral frame processing and vector manipulation within pfft~."
                }
            },
            {
                "box": {
                    "id": "m-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3757.0, 478.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.pfft.vectral.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3790.0, 393.0, 20.0 ],
                    "text": "Captures and freezes frequency spectra in buffer memory using pfft~."
                }
            },
            {
                "box": {
                    "id": "m-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3812.0, 494.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.spectralbuffer.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3845.0, 413.0, 20.0 ],
                    "text": "Frequency-domain delay effect with independent per-bin feedback loops."
                }
            },
            {
                "box": {
                    "id": "m-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3867.0, 546.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.spectraldelay_feedback.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3900.0, 367.0, 20.0 ],
                    "text": "Applies independent delay times to separate FFT frequency bins."
                }
            },
            {
                "box": {
                    "id": "m-74",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 3922.0, 490.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.spectraldelay.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3965.0, 400.0, 22.0 ],
                    "text": "Synthesis & Oscillators"
                }
            },
            {
                "box": {
                    "id": "c-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 3995.0, 472.0, 20.0 ],
                    "text": "Synthesizes a band-limited sawtooth waveform using feedback frequency modulation."
                }
            },
            {
                "box": {
                    "id": "m-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4017.0, 627.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.band_limited_saw_using_feedback_fm.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4050.0, 467.0, 20.0 ],
                    "text": "Generates anti-aliased sawtooth waveforms using band-limited synthesis techniques."
                }
            },
            {
                "box": {
                    "id": "m-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4072.0, 515.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.band_limited_saw.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4105.0, 482.0, 20.0 ],
                    "text": "Generates chaotic audio signals and attractor functions for experimental sound design."
                }
            },
            {
                "box": {
                    "id": "m-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4127.0, 452.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.chaos.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4160.0, 470.0, 20.0 ],
                    "text": "Computes sine wave cycles algorithmically using mathematical approximation series."
                }
            },
            {
                "box": {
                    "id": "m-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4182.0, 501.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.computed_sine.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4215.0, 421.0, 20.0 ],
                    "text": "Creates complex dynamic sidebands using feedback amplitude modulation."
                }
            },
            {
                "box": {
                    "id": "m-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4237.0, 492.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.feedback_am.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4270.0, 494.0, 20.0 ],
                    "text": "Generates rich dynamic spectra through single-operator feedback frequency modulation."
                }
            },
            {
                "box": {
                    "id": "m-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4292.0, 489.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.feedback_fm.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4325.0, 430.0, 20.0 ],
                    "text": "Synthesizes metallic chime and bell tones using multi-operator FM synthesis."
                }
            },
            {
                "box": {
                    "id": "m-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4347.0, 465.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.fm_bells.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4380.0, 425.0, 20.0 ],
                    "text": "Modified frequency modulation technique producing rich harmonic spectra."
                }
            },
            {
                "box": {
                    "id": "m-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4402.0, 459.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.modfm.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4435.0, 480.0, 20.0 ],
                    "text": "Real-time overlap-add granular synthesis engine for time-stretching and pitch-shifting."
                }
            },
            {
                "box": {
                    "id": "m-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4457.0, 482.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.ola.granular.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4490.0, 433.0, 20.0 ],
                    "text": "Overlap-add pulsar synthesis generating windowed microsonic grain streams."
                }
            },
            {
                "box": {
                    "id": "m-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4512.0, 471.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.ola.pulsar.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4545.0, 479.0, 20.0 ],
                    "text": "Custom ramp and phase accumulator generator for driving LFOs and sample playback."
                }
            },
            {
                "box": {
                    "id": "m-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4567.0, 456.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.phasor.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4600.0, 432.0, 20.0 ],
                    "text": "Microsonic pulsar synth generating windowed burst grains driven by phasors."
                }
            },
            {
                "box": {
                    "id": "m-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4622.0, 452.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.pulsar.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4655.0, 389.0, 20.0 ],
                    "text": "Pseudo-random noise and value generators operating at sample rate."
                }
            },
            {
                "box": {
                    "id": "m-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4677.0, 461.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.random.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4710.0, 506.0, 20.0 ],
                    "text": "Variable-shape oscillator smoothly morphing between square, sine, and triangle waveforms."
                }
            },
            {
                "box": {
                    "id": "m-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4732.0, 483.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.squinewave.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4765.0, 455.0, 20.0 ],
                    "text": "Variable trapezoidal wave generator for custom envelopes and modulation ramps."
                }
            },
            {
                "box": {
                    "id": "m-78",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4787.0, 470.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.trapezoid.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4820.0, 366.0, 20.0 ],
                    "text": "Multi-table wavetable synthesizer with smooth vector morphing."
                }
            },
            {
                "box": {
                    "id": "m-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4842.0, 512.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.vector-wavetable.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4875.0, 500.0, 20.0 ],
                    "text": "Voice simulation synth using repeating sinewave bursts with exponential decay envelopes."
                }
            },
            {
                "box": {
                    "id": "m-81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4897.0, 451.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.vosim.maxpat"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "hdr-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4940.0, 400.0, 22.0 ],
                    "text": "System & Benchmarks"
                }
            },
            {
                "box": {
                    "id": "c-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 4970.0, 538.0, 20.0 ],
                    "text": "Dynamically compiles and updates Gen code expressions inside poly~ without audio interruption."
                }
            },
            {
                "box": {
                    "id": "m-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 4992.0, 488.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.dynamicexpr.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 5025.0, 456.0, 20.0 ],
                    "text": "Demonstrates patcher scripting techniques to programmatically build Gen graphs."
                }
            },
            {
                "box": {
                    "id": "m-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 5047.0, 506.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.patcherscripting.maxpat"
                }
            },
            {
                "box": {
                    "id": "c-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 5080.0, 469.0, 20.0 ],
                    "text": "Benchmark patch comparing DSP performance across Gen, MSP, and native objects."
                }
            },
            {
                "box": {
                    "id": "m-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 5102.0, 488.0, 22.0 ],
                    "text": "load /Applications/Max.app/Contents/Resources/Examples/gen/gen~.performance.maxpat"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-pcontrol", 0 ],
                    "source": [ "m-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}