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
        "openrect": [ 100.0, 100.0, 900.0, 620.0 ],
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
                    "patching_rect": [ 30.0, 20.0, 579.0, 33.0 ],
                    "text": "automatic_lines_v5.js — aggregate outlet revision"
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
                    "text": "V5: independent random control ramps plus a visibly separate rightmost list outlet",
                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-about",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 88.0, 825.0, 33.0 ],
                    "text": "Creation arguments: voices (1–20), minimum ramp time, global wait time at 0.0, and maximum ramp time—all times in milliseconds. Each voice has a float outlet; one additional rightmost outlet sends the complete current-value list."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-controls-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 153.0, 150.0, 20.0 ],
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
                    "patching_rect": [ 30.0, 183.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-bang-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 61.0, 185.0, 155.0, 20.0 ],
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
                    "patching_rect": [ 30.0, 222.0, 42.0, 22.0 ],
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
                    "patching_rect": [ 82.0, 222.0, 39.0, 22.0 ],
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
                    "patching_rect": [ 131.0, 222.0, 51.0, 22.0 ],
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
                    "patching_rect": [ 30.0, 261.0, 107.0, 22.0 ],
                    "text": "range 250 1200"
                }
            },
            {
                "box": {
                    "id": "obj-range-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 146.0, 263.0, 145.0, 20.0 ],
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
                    "patching_rect": [ 30.0, 297.0, 90.0, 22.0 ],
                    "text": "waittime 1000"
                }
            },
            {
                "box": {
                    "id": "obj-waittime-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 129.0, 299.0, 230.0, 20.0 ],
                    "text": "changes the global wait for future cycles"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-js-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 153.0, 378.0, 20.0 ],
                    "text": "4 voice outlets + 1 list outlet • 500–2000 ms ramps • 1000 ms wait"
                }
            },
            {
                "box": {
                    "id": "obj-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 375.0, 183.0, 275.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "automatic_lines_v5.js",
                        "parameter_enable": 0
                    },
                    "text": "js automatic_lines_v5.js 4 500 1000 2000"
                }
            },
            {
                "box": {
                    "id": "obj-direct-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 220.0, 350.0, 20.0 ],
                    "text": "The first four outlets below are connected directly to displays:"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-v1-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 260.0, 70.0, 20.0 ],
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
                    "patching_rect": [ 500.0, 260.0, 70.0, 20.0 ],
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
                    "patching_rect": [ 625.0, 260.0, 70.0, 20.0 ],
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
                    "patching_rect": [ 750.0, 260.0, 70.0, 20.0 ],
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
                    "patching_rect": [ 375.0, 295.0, 72.0, 22.0 ]
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
                    "patching_rect": [ 500.0, 295.0, 72.0, 22.0 ]
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
                    "patching_rect": [ 625.0, 295.0, 72.0, 22.0 ]
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
                    "patching_rect": [ 750.0, 295.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-operation-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 350.0, 100.0, 20.0 ],
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
                    "patching_rect": [ 500.0, 470.0, 290.0, 20.0 ],
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
                    "patching_rect": [ 500.0, 500.0, 300.0, 22.0 ],
                    "text": "0 0.203783 0.277727 0.073217"
                }
            },
            {
                "box": {
                    "id": "obj-list-note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 532.0, 315.0, 33.0 ],
                    "text": "One item per voice, updated at the same interval as the dedicated float outlets."
                }
            },
            {
                "box": {
                    "id": "obj-operation",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 378.0, 420.0, 60.0 ],
                    "text": "Each voice rises to a random destination and returns to 0.0 using the same random ramp time for both legs. It then remains at 0.0 for the global wait before starting a new cycle. Set the wait argument to 0 for continuous looping."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-usage-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 360.0, 80.0, 20.0 ],
                    "text": "USAGE"
                }
            },
            {
                "box": {
                    "id": "obj-usage",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 388.0, 295.0, 74.0 ],
                    "text": "Keep the .js file in the same folder as this helpfile, or place it in Max's search path. Change the first creation argument to set the outlet count. Max fixes the outlet count when the js object is instantiated, so the number of voices cannot be changed while it runs."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-example-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 495.0, 150.0, 20.0 ],
                    "text": "CREATION EXAMPLES"
                }
            },
            {
                "box": {
                    "id": "obj-example1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 523.0, 390.0, 20.0 ],
                    "text": "js automatic_lines_v5.js 1 100 0 800       → 1 voice outlet + 1 list outlet"
                }
            },
            {
                "box": {
                    "id": "obj-example2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 549.0, 430.0, 20.0 ],
                    "text": "js automatic_lines_v5.js 20 2000 1000 10000 → 20 voice outlets + 1 list outlet"
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