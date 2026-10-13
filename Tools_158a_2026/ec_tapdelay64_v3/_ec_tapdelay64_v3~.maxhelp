{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 103.0, 1492.0, 911.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 602.0, 152.0, 504.0, 20.0 ],
                    "text": "<amount_ms> <interval_ms> — defaults: 0 ms (OFF), 250 ms. "
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 72.0, 665.0, 167.0, 60.0 ],
                    "text": "ec_tapdelay64_v3~ outputs\n64 channels but on the argument number will be active with others muted"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 227.0, 174.0, 232.5, 33.0 ],
                    "text": "mc.pack~ argument = number of sources to pack into single \"mc\" patch cord"
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1129.0, 60.0, 144.0, 23.0 ],
                    "text": "All DEFAULT Values"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 379.0, 456.25, 47.0 ],
                    "text": "Tap 1 is always undelayed. Drift selects taps 2..N once each, then reshuffles; one tap changes at a time. Drift is relative to each base time, clamped to 0..10000 ms. The interval is a minimum: long crossfades slow selection. No feedback."
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 437.0, 93.5, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 501.0, 93.0, 127.0, 23.0 ],
                    "text": "KEY MESSAGES"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0000000000001, 151.0, 97.0, 22.0 ],
                    "text": "delaydrift 20 250"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 552.0, 125.0, 484.0, 20.0 ],
                    "text": "amount of delay between each source (source 1 is always \"0\" delay) + number of sources"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 124.0, 45.0, 22.0 ],
                    "text": "250 24"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 275.0, 844.0, 357.0, 60.0 ],
                    "text": "ec_tapdelay64_breakout~.maxpat  lets you define ranges of tap outputs with  the argument <from>-<-to> e.g. 8-16 only outputs source/tap output 8, 9, 10, 11, 12, 13, 14, 15, 16.  In edit mode hover over the outlets to see"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 24,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 80.0, 810.0, 680.5, 22.0 ],
                    "text": "ec_tapdelay64_breakout~.maxpat 24"
                }
            },
            {
                "box": {
                    "id": "full",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 9,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 47.0, 858.0, 217.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~.maxpat 8-16"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 351.0, 786.0, 412.0, 20.0 ],
                    "text": "ec_tapdelay64_breakout~.maxpat  uses mc-unpack DOUBLE-CLICK to see"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 441.0, 375.0, 20.0 ],
                    "text": "Be sure to match the number of sources for every object in the chain."
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 69.0, 584.0, 218.0, 33.0 ],
                    "text": "argument = number of sources to delay\nfirst source always begins at 0ms"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 290.0, 742.0, 80.0, 13.0 ]
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-12",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 239.0, 691.0, 99.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 29,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1129.0, 87.0, 356.25, 395.0 ],
                    "text": "ec_tapdelay64_v3~ — DEFAULT VALUES\n\nInput-count argument: 0 / omitted = automatic (input N → tap N).\nDelay spacing: 250 ms.\nActive taps: 4.\nInitial tap times: 0, 250, 500, 750 ms.\nTap 1: always 0 ms.\n\ndelaydrift: 0 250\n  Drift amount: 0 ms (OFF).\n  Selection interval: 250 ms.\n  No drift selections run when amount is 0.\n\nsmooth: 50 ms (crossfade duration).\ngains: 1.0 for every tap.\nmaster: 1.0 (unity gain).\nnormalize: 1 (mono-sum compensation ON).\nStartup state: running; audio requires DSP ON.\n\nstop: no parameters; cancels all taps and clears stored audio.\n\ndump: no parameters; reports current settings.\n\ndefaults: no parameters; restores the values above and resumes audio.\n\nThe creation-time input-count argument is retained by defaults.\n\nFixed limits: 64 inputs / 64 taps; maximum delay 10000 ms."
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 351.0, 223.0, 33.0 ],
                    "text": "in edit mode, hover over the blue cable \nto see it is carrying 24 channels of audio"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 299.0, 150.0, 20.0 ],
                    "text": "mc patch cords are blue"
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 6.0, 605.0, 29.0 ],
                    "text": "ec_tapdelay64_v3~ — MC inputs and round-robin tap signal delays"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 37.0, 626.0, 20.0 ],
                    "text": "Input-count argument: default 0 (automatic, input N to tap N); 1–64 = round robin. Feed signals through mc.pack~ N."
                }
            },
            {
                "box": {
                    "id": "arg",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 59.0, 709.0, 20.0 ],
                    "text": "STARTUP DEFAULTS: spacing 250 ms; 4 taps; drift 0 ms / interval 250 ms; smooth 50 ms; all gains 1.; master 1.; normalize 1 (ON)."
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "commands",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.625, 175.0, 211.0, 23.0 ],
                    "text": "ALL MESSAGES — examples"
                }
            },
            {
                "box": {
                    "id": "m0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 206.0, 45.0, 22.0 ],
                    "text": "250 24"
                }
            },
            {
                "box": {
                    "id": "c0",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 200.0, 451.0, 33.0 ],
                    "text": "<spacing_ms> <tap_count> — defaults: 250 ms, 4 taps. Both integers are required.\nExample: 250 8 gives 8 taps at 0, 250, ... 1750 ms. (Tap 1 is always undelayed)"
                }
            },
            {
                "box": {
                    "id": "m1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 238.0, 39.0, 22.0 ],
                    "text": "50 64"
                }
            },
            {
                "box": {
                    "id": "c1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 238.0, 404.0, 33.0 ],
                    "text": "Same parameters — defaults: spacing 250 ms, count 4. Capacity: 64 taps.\nExample: 50 64 gives 64 taps at 0, 50, ... 3150 ms."
                }
            },
            {
                "box": {
                    "id": "m2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 281.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "c2",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 276.0, 506.0, 33.0 ],
                    "text": "No parameters. Startup state: running (not stopped). Cancels all taps and clears stored audio.\nSend a new spacing/count pair to restart."
                }
            },
            {
                "box": {
                    "id": "m3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 315.0, 97.0, 22.0 ],
                    "text": "delaydrift 20 250"
                }
            },
            {
                "box": {
                    "id": "c3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 315.0, 504.0, 33.0 ],
                    "text": "<amount_ms> <interval_ms> — defaults: 0 ms (OFF), 250 ms. Omitted interval uses 250 ms.\nExample: ±20 ms from the selected tap’s base time; one urn selection every 250 ms."
                }
            },
            {
                "box": {
                    "id": "m4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 352.0, 91.0, 22.0 ],
                    "text": "delaydrift 0 250"
                }
            },
            {
                "box": {
                    "id": "c4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 352.0, 439.0, 33.0 ],
                    "text": "Defaults: amount 0 ms; interval 250 ms. No drift selections run while amount is 0.\nThis message disables drift and crossfades all taps back to their base times."
                }
            },
            {
                "box": {
                    "id": "m5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 430.0, 65.0, 22.0 ],
                    "text": "smooth 50"
                }
            },
            {
                "box": {
                    "id": "c5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 430.0, 438.0, 33.0 ],
                    "text": "<crossfade_ms> — default: 50 ms. Range: 1–5000 ms.\nDrift waits for crossfades to finish; the interval may lengthen. Tap 1 stays at 0 ms."
                }
            },
            {
                "box": {
                    "id": "m6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 492.0, 467.0, 124.0, 22.0 ],
                    "text": "gains 1. 0.75 0.5 0.25"
                }
            },
            {
                "box": {
                    "id": "c6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 467.0, 391.0, 33.0 ],
                    "text": "<gain1> <gain2> ... — default: 1.0 for every tap. Range: 0.0–1.0.\nSets gains in output order; gains omitted from this message reset to 1.0."
                }
            },
            {
                "box": {
                    "id": "m7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 503.0, 65.0, 22.0 ],
                    "text": "master 0.5"
                }
            },
            {
                "box": {
                    "id": "c7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 503.0, 336.0, 33.0 ],
                    "text": "<gain> — default: 1.0 (unity). Range: 0.0–1.0.\nControls both signal outputs; the example sets half amplitude."
                }
            },
            {
                "box": {
                    "id": "m8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 536.0, 71.0, 22.0 ],
                    "text": "normalize 1"
                }
            },
            {
                "box": {
                    "id": "c8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 536.0, 319.0, 33.0 ],
                    "text": "<on_off> — default: 1 (ON). 0 = OFF.\nApplies conservative gain compensation to the mono sum."
                }
            },
            {
                "box": {
                    "id": "m9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 501.0, 571.0, 39.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "c9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 571.0, 466.0, 33.0 ],
                    "text": "No parameters or parameter defaults. Reports current settings without changing them.\nIncludes base/target times, drift, stopped state, gains and input mapping."
                }
            },
            {
                "box": {
                    "id": "m10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 522.0, 611.0, 51.0, 22.0 ],
                    "text": "defaults"
                }
            },
            {
                "box": {
                    "id": "c10",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 607.0, 520.0, 33.0 ],
                    "text": "No parameters. Restores 250 4; delaydrift 0 250; smooth 50; all gains 1.; master 1.; normalize 1.\nResumes audio. The creation-time input-count argument is retained."
                }
            },
            {
                "box": {
                    "id": "listen",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0, 699.0, 167.0, 47.0 ],
                    "text": "MONO summed output  of all current delay taps with gain's balanced"
                }
            },
            {
                "box": {
                    "id": "bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 47.0, 129.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "banglabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 84.0, 131.0, 119.0, 20.0 ],
                    "text": "A SINGLE IMPULSE"
                }
            },
            {
                "box": {
                    "id": "click",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 47.0, 174.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "signal", "" ],
                    "patching_rect": [ 47.0, 637.0, 403.0, 22.0 ],
                    "text": "ec_tapdelay64_v3~ 24"
                }
            },
            {
                "box": {
                    "id": "tapnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 784.0, 820.0, 357.0, 20.0 ],
                    "text": "MC output: 24 separate tap channels. Example: first tap → meter."
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 239.0, 759.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 665.0, 133.0, 22.0 ],
                    "text": "print ec_tapdelay64_v3"
                }
            },
            {
                "box": {
                    "id": "mono_pack",
                    "maxclass": "newobj",
                    "numinlets": 24,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 47.0, 243.0, 413.0, 22.0 ],
                    "text": "mc.pack~ 24"
                }
            },
            {
                "box": {
                    "id": "round_robin_demo",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 688.0, 691.0, 315.0, 22.0 ],
                    "text": "loadunique ec_tapdelay64_v3_example_3_inputs.maxpat"
                }
            },
            {
                "box": {
                    "id": "auto_demo",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1015.0, 691.0, 299.0, 22.0 ],
                    "text": "loadunique ec_tapdelay64_v3_example_auto8.maxpat"
                }
            },
            {
                "box": {
                    "id": "democaption",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 688.0, 664.0, 658.0, 20.0 ],
                    "text": "Click a loadunique message to open an example. Examples load only when requested; close their windows when finished."
                }
            },
            {
                "box": {
                    "id": "example_loader",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 688.0, 724.0, 80.0, 22.0 ],
                    "text": "pcontrol"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "example_loader", 0 ],
                    "source": [ "auto_demo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click", 0 ],
                    "source": [ "bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 23 ],
                    "order": 0,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 22 ],
                    "order": 1,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 21 ],
                    "order": 2,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 20 ],
                    "order": 3,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 19 ],
                    "order": 4,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 18 ],
                    "order": 5,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 17 ],
                    "order": 6,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 16 ],
                    "order": 7,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 15 ],
                    "order": 8,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 14 ],
                    "order": 9,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 13 ],
                    "order": 10,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 12 ],
                    "order": 11,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 11 ],
                    "order": 12,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 10 ],
                    "order": 13,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 9 ],
                    "order": 14,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 8 ],
                    "order": 15,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 7 ],
                    "order": 16,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 6 ],
                    "order": 17,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 5 ],
                    "order": 18,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 4 ],
                    "order": 19,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 3 ],
                    "order": 20,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 2 ],
                    "order": 21,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 1 ],
                    "order": 22,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono_pack", 0 ],
                    "order": 23,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "full", 0 ],
                    "order": 1,
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "delay", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 0,
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "delay", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 628.4609375, 440.5, 628.4609375 ],
                    "source": [ "m0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 629.65234375, 440.5, 629.65234375 ],
                    "source": [ "m1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 531.5, 636.078125, 442.29296875, 636.078125, 442.29296875, 623.7109375, 440.5, 623.7109375 ],
                    "source": [ "m10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 627.890625, 440.5, 627.890625 ],
                    "source": [ "m2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 629.265625, 440.5, 629.265625 ],
                    "source": [ "m3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 628.14453125, 440.5, 628.14453125 ],
                    "source": [ "m4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 629.17578125, 440.5, 629.17578125 ],
                    "source": [ "m5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 501.5, 630.86328125, 440.5, 630.86328125 ],
                    "source": [ "m6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 628.99609375, 440.5, 628.99609375 ],
                    "source": [ "m7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 630.34765625, 440.5, 630.34765625 ],
                    "source": [ "m8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 630.0, 440.5, 630.0 ],
                    "source": [ "m9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 0 ],
                    "source": [ "mono_pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 2,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5, 631.6103515625, 440.5, 631.6103515625 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "midpoints": [ 510.5000000000001, 628.265625, 440.5, 628.265625 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 0,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "example_loader", 0 ],
                    "source": [ "round_robin_demo", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}