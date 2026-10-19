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
        "openrect": [ 100.0, 100.0, 1010.0, 790.0 ],
        "openrectmode": 0,
        "description": "Independent internally interpolated random control ramps",
        "digest": "Create 1 to 20 independent random up-and-down control lines",
        "tags": "random line ramp control multivoice",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 582.0, 33.0 ],
                    "text": "automatic_lines_v5.js — arguments and examples"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 57.0, 700.0, 22.0 ],
                    "text": "Independent control ramps: random peaks by default; optional fixed peaks at 1.0.",
                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-about",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 87.0, 930.0, 20.0 ],
                    "text": "js automatic_lines_v5.js <voices> <min_ms> <max_ms> <wait_ms> [fixed_peak]"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-controls-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 258.0, 150.0, 20.0 ],
                    "text": "CONTROL MESSAGES"
                }
            },
            {
                "box": {
                    "id": "obj-bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 30.0, 288.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-bang-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 61.0, 290.0, 155.0, 20.0 ],
                    "text": "bang restarts all voices"
                }
            },
            {
                "box": {
                    "id": "obj-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 327.0, 42.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "obj-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 82.0, 327.0, 39.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-restart",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 131.0, 327.0, 51.0, 22.0 ],
                    "text": "restart"
                }
            },
            {
                "box": {
                    "id": "obj-range",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 366.0, 107.0, 22.0 ],
                    "text": "range 250 1200"
                }
            },
            {
                "box": {
                    "id": "obj-range-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 146.0, 368.0, 145.0, 20.0 ],
                    "text": "new timing boundaries"
                }
            },
            {
                "box": {
                    "id": "obj-waittime",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 402.0, 83.0, 22.0 ],
                    "text": "waittime 1000"
                }
            },
            {
                "box": {
                    "id": "obj-waittime-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 129.0, 404.0, 270.0, 20.0 ],
                    "text": "Change the wait without recreating the object."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-js-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 258.0, 515.0, 20.0 ],
                    "text": "LIVE EXAMPLE: 4 voices | 500–2000 ms per leg | 1000 ms at zero"
                }
            },
            {
                "box": {
                    "id": "obj-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 440.0, 288.0, 425.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "automatic_lines_v5.js",
                        "parameter_enable": 0
                    },
                    "text": "js automatic_lines_v5.js 4 500 2000 1000"
                }
            },
            {
                "box": {
                    "id": "obj-direct-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 325.0, 525.0, 20.0 ],
                    "text": "Outlets 1–4 send floats directly; the rightmost outlet sends a four-value list."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v1-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 365.0, 70.0, 20.0 ],
                    "text": "VOICE 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v2-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 565.0, 365.0, 70.0, 20.0 ],
                    "text": "VOICE 2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v3-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.0, 365.0, 70.0, 20.0 ],
                    "text": "VOICE 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v4-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 815.0, 365.0, 70.0, 20.0 ],
                    "text": "VOICE 4"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-float1",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 440.0, 400.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-float2",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 400.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-float3",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 690.0, 400.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-float4",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 815.0, 400.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-operation-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 455.0, 110.0, 20.0 ],
                    "text": "OPERATION"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-list-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 590.0, 575.0, 330.0, 20.0 ],
                    "text": "RIGHTMOST OUTLET — CURRENT VALUES LIST"
                }
            },
            {
                "box": {
                    "id": "obj-list-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 590.0, 605.0, 330.0, 22.0 ],
                    "text": "0.208328 0.164364 0.324019 0"
                }
            },
            {
                "box": {
                    "id": "obj-list-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 590.0, 647.0, 340.0, 33.0 ],
                    "text": "One current float per voice, in voice order; updated every 20 ms by default."
                }
            },
            {
                "box": {
                    "id": "obj-operation",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 483.0, 501.0, 60.0 ],
                    "text": "Each voice selects a random ramp time between min_ms and max_ms. With four arguments, it also selects a random peak from 0.0 to 1.0. With fifth argument 1, the peak is always 1.0. It rises for the selected time, returns for the SAME time, then waits at zero for wait_ms."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-usage-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 465.0, 80.0, 20.0 ],
                    "text": "USAGE"
                }
            },
            {
                "box": {
                    "id": "obj-usage",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 493.0, 340.0, 60.0 ],
                    "text": "Put the .js file beside this patch or on the Max search path. Outlets are fixed when the object is created. To change the voice count, edit the first number in the object box and recreate it."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-example-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 693.0, 900.0, 20.0 ],
                    "text": "CREATION EXAMPLES: FOUR ARGUMENTS = RANDOM PEAK; FIFTH ARGUMENT 1 = FIXED 1.0 PEAK"
                }
            },
            {
                "box": {
                    "id": "obj-example1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 720.0, 315.0, 20.0 ],
                    "text": "js automatic_lines_v5.js 1 100 800 0"
                }
            },
            {
                "box": {
                    "id": "obj-example2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 720.0, 325.0, 20.0 ],
                    "text": "js automatic_lines_v5.js 4 500 2000 1000"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-argument-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 117.0, 670.0, 20.0 ],
                    "text": "FOUR REQUIRED ARGUMENTS + OPTIONAL FIFTH (after the .js filename)"
                }
            },
            {
                "box": {
                    "id": "obj-arg1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 143.0, 905.0, 20.0 ],
                    "text": "1  voices: 1–20 independent lines; also sets the number of dedicated outlets."
                }
            },
            {
                "box": {
                    "id": "obj-arg2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 165.0, 905.0, 20.0 ],
                    "text": "2  min_ms: shortest time for EACH leg of a rise-and-return cycle (milliseconds)."
                }
            },
            {
                "box": {
                    "id": "obj-arg3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 187.0, 905.0, 20.0 ],
                    "text": "3  max_ms: longest time for EACH leg (milliseconds); min_ms and max_ms bound a random selection."
                }
            },
            {
                "box": {
                    "id": "obj-arg4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 209.0, 945.0, 20.0 ],
                    "text": "4  wait_ms: time held at zero AFTER the return leg (milliseconds); 0 = no pause."
                }
            },
            {
                "box": {
                    "id": "obj-example3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.0, 720.0, 310.0, 20.0 ],
                    "text": "js automatic_lines_v5.js 12 2000 5000 500 1"
                }
            },
            {
                "box": {
                    "id": "obj-example1-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 745.0, 310.0, 20.0 ],
                    "text": "1 voice; 0 ms pause; each leg 100–800 ms."
                }
            },
            {
                "box": {
                    "id": "obj-example2-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 355.0, 745.0, 335.0, 20.0 ],
                    "text": "4 voices; 1000 ms pause; each leg 500–2000 ms."
                }
            },
            {
                "box": {
                    "id": "obj-example3-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.0, 745.0, 320.0, 20.0 ],
                    "text": "12 voices; fixed 1.0 peak; random 2–5 s legs; 500 ms wait."
                }
            },
            {
                "box": {
                    "id": "obj-live-wait",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 664.0, 505.0, 20.0 ],
                    "text": "Runtime: send [waittime 0] or [waittime 1000] to the inlet to change the pause."
                }
            },
            {
                "box": {
                    "id": "obj-arg5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 231.0, 945.0, 20.0 ],
                    "text": "5  fixed_peak: 0 = random peaks (default); 1 = each ramp reaches exactly 1.0."
                }
            },
            {
                "box": {
                    "id": "obj-level-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 433.0, 88.0, 22.0 ],
                    "text": "fixedpeak 1"
                }
            },
            {
                "box": {
                    "id": "obj-random-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 130.0, 433.0, 88.0, 22.0 ],
                    "text": "fixedpeak 0"
                }
            },
            {
                "box": {
                    "id": "obj-level-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.0, 434.0, 384.0, 20.0 ],
                    "text": "Click to change peak mode for future cycles of the live example above."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-fixed-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 562.0, 466.0, 20.0 ],
                    "text": "SECOND LIVE EXAMPLE — fixed 0.0 → 1.0 → 0.0; random duration; 500 ms wait"
                }
            },
            {
                "box": {
                    "id": "obj-fixed-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 26.0, 597.0, 420.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "automatic_lines_v5.js",
                        "parameter_enable": 0
                    },
                    "text": "js automatic_lines_v5.js 1 500 2000 500 1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-fixed-display",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 26.0, 637.0, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-fixed-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 965.0, 920.0, 20.0 ],
                    "text": "The fifth argument 1 overrides random peak levels; duration still varies between 500 and 2000 ms per leg."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-fixed-display", 0 ],
                    "source": [ "obj-fixed-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-float1", 0 ],
                    "source": [ "obj-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-float2", 0 ],
                    "source": [ "obj-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-float3", 0 ],
                    "source": [ "obj-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-float4", 0 ],
                    "source": [ "obj-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-list-display", 1 ],
                    "source": [ "obj-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-level-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-random-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-range", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-restart", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-waittime", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}