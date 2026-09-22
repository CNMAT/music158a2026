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
        "rect": [
            100.0,
            80.0,
            1260.0,
            860.0
        ],
        "openinpresentation": 0,
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        15.0,
                        1150.0,
                        28.0
                    ],
                    "text": "EXAMPLE TIMED SCORE — copy this entire p object"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        48.0,
                        1190.0,
                        45.0
                    ],
                    "text": "START schedules all offsets relative to that bang. Starting again cancels the previous run first. STOP cancels pending delays and active cue ramps; it does not silence audio already running."
                }
            },
            {
                "box": {
                    "id": "audio",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        96.0,
                        1180.0,
                        35.0
                    ],
                    "text": "Open the v19 engine and enable audio there. This example never changes DSP or output gain. Set the engine gain to a suitable level before listening."
                }
            },
            {
                "box": {
                    "id": "start-in",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        145.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "bang: restart the score",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        80.0,
                        145.0,
                        28.0,
                        28.0
                    ],
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "start-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        120.0,
                        150.0,
                        90.0,
                        22.0
                    ],
                    "text": "START"
                }
            },
            {
                "box": {
                    "id": "stop-in",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "patching_rect": [
                        240.0,
                        145.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "bang: cancel pending cues and active ramps",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "stop",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        290.0,
                        145.0,
                        28.0,
                        28.0
                    ],
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "stop-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        330.0,
                        150.0,
                        170.0,
                        22.0
                    ],
                    "text": "STOP / CANCEL"
                }
            },
            {
                "box": {
                    "id": "start-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        80.0,
                        193.0,
                        75.0,
                        22.0
                    ],
                    "text": "t b b",
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cancel",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        290.0,
                        193.0,
                        60.0,
                        22.0
                    ],
                    "text": "stop",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "silence",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        650.0,
                        145.0,
                        65.0,
                        22.0
                    ],
                    "text": "bang",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "silence-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        730.0,
                        150.0,
                        440.0,
                        22.0
                    ],
                    "text": "ALL OFF — separate from STOP"
                }
            },
            {
                "box": {
                    "id": "silence-cue",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        650.0,
                        193.0,
                        210.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Clear all 256-slot banks — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "route bang",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "t b",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend All_Off_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "All_Off_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route All_Off_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "bang-only",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang-only",
                                        0
                                    ],
                                    "destination": [
                                        "bang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_All_Off_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        260.0,
                        395.0,
                        22.0
                    ],
                    "text": "0 ms — All_Off_v19"
                }
            },
            {
                "box": {
                    "id": "delay0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        291.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 0",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        150.0,
                        291.0,
                        240.0,
                        22.0
                    ],
                    "text": "bang",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        338.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Clear all 256-slot banks — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "route bang",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "t b",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend All_Off_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "All_Off_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route All_Off_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "bang-only",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang-only",
                                        0
                                    ],
                                    "destination": [
                                        "bang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_All_Off_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        435.0,
                        260.0,
                        395.0,
                        22.0
                    ],
                    "text": "0 ms — Source_Base_Hz_v19"
                }
            },
            {
                "box": {
                    "id": "delay1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        291.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 0",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        560.0,
                        291.0,
                        240.0,
                        22.0
                    ],
                    "text": "55. 0.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        338.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Source base Hz — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: VALUE [RAMP_MS]. A bare value uses 20 ms; VALUE 0 jumps immediately. stop cancels this copy’s ramp. No output on load."
                                }
                            },
                            {
                                "box": {
                                    "id": "parse",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        165.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "t l b b",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        205.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "stop",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "default-ms",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        310.0,
                                        205.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "current",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "f 55.0",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        250.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "unpack f f",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "value-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "clip 1 23000",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "time-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        290.0,
                                        170.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 3600000.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "target-time",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        335.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "pack f 20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        385.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "line 55.0 5",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "readback",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        155.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "receive Source_Base_Hz_state_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        320.0,
                                        470.0,
                                        60.0
                                    ],
                                    "text": "5 ms line grain. Current engine readback is cached without output. Each cue starts from the last known value. Keep one active writer per variable."
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Source_Base_Hz_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Source_Base_Hz_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Source_Base_Hz_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Source_Base_Hz_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Source_Base_Hz_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "parse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        0
                                    ],
                                    "destination": [
                                        "stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        1
                                    ],
                                    "destination": [
                                        "default-ms",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        2
                                    ],
                                    "destination": [
                                        "current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "current",
                                        0
                                    ],
                                    "destination": [
                                        "set-current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        0
                                    ],
                                    "destination": [
                                        "unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        0
                                    ],
                                    "destination": [
                                        "value-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        1
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "default-ms",
                                        0
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "value-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "time-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "stop",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "set-current",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "target-time",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ],
                                    "order": 0
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "readback",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ],
                                    "order": 1
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Source_Base_Hz_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        845.0,
                        260.0,
                        395.0,
                        22.0
                    ],
                    "text": "0 ms — Retune_ms_v19"
                }
            },
            {
                "box": {
                    "id": "delay2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        291.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 0",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        970.0,
                        291.0,
                        240.0,
                        22.0
                    ],
                    "text": "0. 0.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        338.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Retuning glide ms — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: VALUE [RAMP_MS]. A bare value uses 20 ms; VALUE 0 jumps immediately. stop cancels this copy’s ramp. No output on load."
                                }
                            },
                            {
                                "box": {
                                    "id": "parse",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        165.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "t l b b",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        205.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "stop",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "default-ms",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        310.0,
                                        205.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "current",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "f 1000.0",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        250.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "unpack f f",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "value-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "clip 0 600000",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "time-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        290.0,
                                        170.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 3600000.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "target-time",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        335.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "pack f 20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        385.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "line 1000.0 5",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "readback",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        155.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "receive Retune_ms_state_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        320.0,
                                        470.0,
                                        60.0
                                    ],
                                    "text": "5 ms line grain. Current engine readback is cached without output. Each cue starts from the last known value. Keep one active writer per variable."
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Retune_ms_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Retune_ms_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Retune_ms_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Retune_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Retune_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "parse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        0
                                    ],
                                    "destination": [
                                        "stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        1
                                    ],
                                    "destination": [
                                        "default-ms",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        2
                                    ],
                                    "destination": [
                                        "current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "current",
                                        0
                                    ],
                                    "destination": [
                                        "set-current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        0
                                    ],
                                    "destination": [
                                        "unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        0
                                    ],
                                    "destination": [
                                        "value-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        1
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "default-ms",
                                        0
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "value-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "time-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "stop",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "set-current",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "target-time",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ],
                                    "order": 0
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "readback",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ],
                                    "order": 1
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Retune_ms_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        405.0,
                        395.0,
                        22.0
                    ],
                    "text": "50 ms — Amplitude_Morph_ms_v19"
                }
            },
            {
                "box": {
                    "id": "delay3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        436.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 50",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        150.0,
                        436.0,
                        240.0,
                        22.0
                    ],
                    "text": "20. 0.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        483.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Amplitude shape morph ms — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: VALUE [RAMP_MS]. A bare value uses 20 ms; VALUE 0 jumps immediately. stop cancels this copy’s ramp. No output on load."
                                }
                            },
                            {
                                "box": {
                                    "id": "parse",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        165.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "t l b b",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        205.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "stop",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "default-ms",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        310.0,
                                        205.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "current",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "f 1000.0",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        250.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "unpack f f",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "value-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "clip 0 600000",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "time-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        290.0,
                                        170.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 3600000.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "target-time",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        335.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "pack f 20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        385.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "line 1000.0 5",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "readback",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        155.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "receive Amplitude_Morph_ms_state_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        320.0,
                                        470.0,
                                        60.0
                                    ],
                                    "text": "5 ms line grain. Current engine readback is cached without output. Each cue starts from the last known value. Keep one active writer per variable."
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Amplitude_Morph_ms_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Amplitude_Morph_ms_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Amplitude_Morph_ms_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Amplitude_Morph_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Amplitude_Morph_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "parse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        0
                                    ],
                                    "destination": [
                                        "stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        1
                                    ],
                                    "destination": [
                                        "default-ms",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        2
                                    ],
                                    "destination": [
                                        "current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "current",
                                        0
                                    ],
                                    "destination": [
                                        "set-current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        0
                                    ],
                                    "destination": [
                                        "unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        0
                                    ],
                                    "destination": [
                                        "value-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        1
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "default-ms",
                                        0
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "value-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "time-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "stop",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "set-current",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "target-time",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ],
                                    "order": 0
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "readback",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ],
                                    "order": 1
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Amplitude_Morph_ms_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        435.0,
                        405.0,
                        395.0,
                        22.0
                    ],
                    "text": "100 ms — Amplitude_Shape_v19"
                }
            },
            {
                "box": {
                    "id": "delay4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        436.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 100",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        560.0,
                        436.0,
                        240.0,
                        22.0
                    ],
                    "text": "8",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        483.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Amplitude shape index 0–24 — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: one integer, 0–23. Immediate; no intermediate menu/count/seed values. stop is ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "clip 0 24",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "integer",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "i",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Amplitude_Shape_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Amplitude_Shape_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Amplitude_Shape_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "limit",
                                        0
                                    ],
                                    "destination": [
                                        "integer",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "integer",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Amplitude_Shape_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        845.0,
                        405.0,
                        395.0,
                        22.0
                    ],
                    "text": "150 ms — ADSR_Shape_v19"
                }
            },
            {
                "box": {
                    "id": "delay5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        436.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 150",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        970.0,
                        436.0,
                        240.0,
                        22.0
                    ],
                    "text": "6",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        483.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "ADSR shaper shape 0–24 — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: one integer, 0–23. Immediate; no intermediate menu/count/seed values. stop is ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "clip 0 24",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "integer",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "i",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend ADSR_Shape_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "ADSR_Shape_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route ADSR_Shape_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward ADSR_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive ADSR_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "limit",
                                        0
                                    ],
                                    "destination": [
                                        "integer",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "integer",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_ADSR_Shape_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        550.0,
                        395.0,
                        22.0
                    ],
                    "text": "200 ms — ADSR_Duration_ms_v19"
                }
            },
            {
                "box": {
                    "id": "delay6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        581.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 200",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        150.0,
                        581.0,
                        240.0,
                        22.0
                    ],
                    "text": "1500. 0.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        628.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "ADSR shaper duration ms — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: VALUE [RAMP_MS]. A bare value uses 20 ms; VALUE 0 jumps immediately. stop cancels this copy’s ramp. No output on load."
                                }
                            },
                            {
                                "box": {
                                    "id": "parse",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        165.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "t l b b",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        205.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "stop",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "default-ms",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        310.0,
                                        205.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "current",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "f 1000.0",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        250.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "unpack f f",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "value-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "clip 1 3600000",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "time-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        290.0,
                                        170.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 3600000.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "target-time",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        335.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "pack f 20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        385.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "line 1000.0 5",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "readback",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        155.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "receive ADSR_Duration_ms_state_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        320.0,
                                        470.0,
                                        60.0
                                    ],
                                    "text": "5 ms line grain. Current engine readback is cached without output. Each cue starts from the last known value. Keep one active writer per variable."
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend ADSR_Duration_ms_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "ADSR_Duration_ms_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route ADSR_Duration_ms_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward ADSR_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive ADSR_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "parse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        0
                                    ],
                                    "destination": [
                                        "stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        1
                                    ],
                                    "destination": [
                                        "default-ms",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        2
                                    ],
                                    "destination": [
                                        "current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "current",
                                        0
                                    ],
                                    "destination": [
                                        "set-current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        0
                                    ],
                                    "destination": [
                                        "unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        0
                                    ],
                                    "destination": [
                                        "value-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        1
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "default-ms",
                                        0
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "value-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "time-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "stop",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "set-current",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "target-time",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ],
                                    "order": 0
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "readback",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ],
                                    "order": 1
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_ADSR_Duration_ms_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        435.0,
                        550.0,
                        395.0,
                        22.0
                    ],
                    "text": "300 ms — Envelope_Trigger_v19"
                }
            },
            {
                "box": {
                    "id": "delay7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        581.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 300",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        560.0,
                        581.0,
                        240.0,
                        22.0
                    ],
                    "text": "bang",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        628.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Trigger stored envelope — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "route bang",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "t b",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Envelope_Trigger_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Envelope_Trigger_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Envelope_Trigger_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Envelope_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Envelope_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "bang-only",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang-only",
                                        0
                                    ],
                                    "destination": [
                                        "bang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Envelope_Trigger_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        845.0,
                        550.0,
                        395.0,
                        22.0
                    ],
                    "text": "2000 ms — Target_Base_Hz_v19"
                }
            },
            {
                "box": {
                    "id": "delay8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        581.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 2000",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        970.0,
                        581.0,
                        240.0,
                        22.0
                    ],
                    "text": "110. 750.",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        845.0,
                        628.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Target base Hz — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: VALUE [RAMP_MS]. A bare value uses 20 ms; VALUE 0 jumps immediately. stop cancels this copy’s ramp. No output on load."
                                }
                            },
                            {
                                "box": {
                                    "id": "parse",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        165.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "t l b b",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        205.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "stop",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "default-ms",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        310.0,
                                        205.0,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "current",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "f 110.0",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "set-current",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        250.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "unpack f f",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "value-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "clip 1 23000",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "time-limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        290.0,
                                        170.0,
                                        22.0
                                    ],
                                    "text": "clip 0. 3600000.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "target-time",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        335.0,
                                        130.0,
                                        22.0
                                    ],
                                    "text": "pack f 20.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        385.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "line 110.0 5",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "readback",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        155.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "receive Target_Base_Hz_state_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "ramp-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        320.0,
                                        470.0,
                                        60.0
                                    ],
                                    "text": "5 ms line grain. Current engine readback is cached without output. Each cue starts from the last known value. Keep one active writer per variable."
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Target_Base_Hz_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Target_Base_Hz_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Target_Base_Hz_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Target_Base_Hz_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Target_Base_Hz_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "parse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        0
                                    ],
                                    "destination": [
                                        "stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        1
                                    ],
                                    "destination": [
                                        "default-ms",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        2
                                    ],
                                    "destination": [
                                        "current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "current",
                                        0
                                    ],
                                    "destination": [
                                        "set-current",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "parse",
                                        0
                                    ],
                                    "destination": [
                                        "unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        0
                                    ],
                                    "destination": [
                                        "value-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "unpack",
                                        1
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "default-ms",
                                        0
                                    ],
                                    "destination": [
                                        "time-limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "value-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "time-limit",
                                        0
                                    ],
                                    "destination": [
                                        "target-time",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "stop",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "set-current",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "target-time",
                                        0
                                    ],
                                    "destination": [
                                        "ramp",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ],
                                    "order": 0
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "readback",
                                        0
                                    ],
                                    "destination": [
                                        "current",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "ramp",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ],
                                    "order": 1
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Target_Base_Hz_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        695.0,
                        395.0,
                        22.0
                    ],
                    "text": "2200 ms — Envelope_Trigger_v19"
                }
            },
            {
                "box": {
                    "id": "delay9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        726.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 2200",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        150.0,
                        726.0,
                        240.0,
                        22.0
                    ],
                    "text": "bang",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        25.0,
                        773.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Trigger stored envelope — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "route bang",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "t b",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Envelope_Trigger_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Envelope_Trigger_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Envelope_Trigger_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Envelope_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Envelope_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "bang-only",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang-only",
                                        0
                                    ],
                                    "destination": [
                                        "bang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_Envelope_Trigger_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        435.0,
                        695.0,
                        395.0,
                        22.0
                    ],
                    "text": "4500 ms — All_Off_v19"
                }
            },
            {
                "box": {
                    "id": "delay10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        726.0,
                        100.0,
                        22.0
                    ],
                    "text": "delay 4500",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "message10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        560.0,
                        726.0,
                        240.0,
                        22.0
                    ],
                    "text": "bang",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "cue10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        435.0,
                        773.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Clear all 256-slot banks — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        100.0,
                                        22.0
                                    ],
                                    "text": "route bang",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "t b",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend All_Off_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "All_Off_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route All_Off_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive All_Off_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "bang-only",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang-only",
                                        0
                                    ],
                                    "destination": [
                                        "bang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "bang",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "text": "p Cue_All_Off_v19",
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "event-label11",
                    "maxclass": "comment",
                    "text": "0 ms — Envelope_Loop_v19",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        845.0,
                        695.0,
                        395.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "delay11",
                    "maxclass": "newobj",
                    "text": "delay 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        845.0,
                        726.0,
                        100.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "message11",
                    "maxclass": "message",
                    "text": "0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        970.0,
                        726.0,
                        240.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "cue11",
                    "maxclass": "newobj",
                    "text": "p Cue_Envelope_Loop_v19",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        845.0,
                        773.0,
                        380.0,
                        22.0
                    ],
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
                        "rect": [
                            100.0,
                            80.0,
                            980.0,
                            820.0
                        ],
                        "openinpresentation": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        900.0,
                                        28.0
                                    ],
                                    "text": "Envelope loop 0/1 — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "id": "in",
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        110.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        155.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "route stop",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        50.0,
                                        900.0,
                                        35.0
                                    ],
                                    "text": "Input: one integer, 0–1. Immediate; no intermediate menu/count/seed values. stop is ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        205.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "clip 0 1",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "integer",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        165.0,
                                        250.0,
                                        45.0,
                                        22.0
                                    ],
                                    "text": "i",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        30.0,
                                        570.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "prepend Envelope_Loop_v19",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "patching_rect": [
                                        30.0,
                                        606.0,
                                        80.0,
                                        22.0
                                    ],
                                    "text": "t l l l",
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        606.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend set",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "patching_rect": [
                                        425.0,
                                        645.0,
                                        480.0,
                                        22.0
                                    ],
                                    "text": "Envelope_Loop_v19 — last message appears here",
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "patching_rect": [
                                        30.0,
                                        645.0,
                                        350.0,
                                        22.0
                                    ],
                                    "text": "route Envelope_Loop_v19",
                                    "outlettype": [
                                        "",
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        684.0,
                                        370.0,
                                        22.0
                                    ],
                                    "text": "forward Envelope_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "out",
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        695.0,
                                        30.0,
                                        30.0
                                    ],
                                    "index": 1,
                                    "comment": "Named outgoing message, for optional logging. No connection required."
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        780.0,
                                        900.0,
                                        22.0
                                    ],
                                    "text": "Destination in synthesis engine: receive Envelope_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        725.0,
                                        490.0,
                                        35.0
                                    ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425.0,
                                        205.0,
                                        460.0,
                                        90.0
                                    ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "in",
                                        0
                                    ],
                                    "destination": [
                                        "route-stop",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "route-stop",
                                        1
                                    ],
                                    "destination": [
                                        "limit",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "limit",
                                        0
                                    ],
                                    "destination": [
                                        "integer",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "integer",
                                        0
                                    ],
                                    "destination": [
                                        "name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "name",
                                        0
                                    ],
                                    "destination": [
                                        "fan",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        2
                                    ],
                                    "destination": [
                                        "display-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "display-set",
                                        0
                                    ],
                                    "destination": [
                                        "display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        1
                                    ],
                                    "destination": [
                                        "out",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "fan",
                                        0
                                    ],
                                    "destination": [
                                        "strip-name",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "strip-name",
                                        0
                                    ],
                                    "destination": [
                                        "send",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "start-in",
                        0
                    ],
                    "destination": [
                        "start",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "stop-in",
                        0
                    ],
                    "destination": [
                        "stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start",
                        0
                    ],
                    "destination": [
                        "start-order",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        1
                    ],
                    "destination": [
                        "stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "stop",
                        0
                    ],
                    "destination": [
                        "cancel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "silence",
                        0
                    ],
                    "destination": [
                        "silence-cue",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay0",
                        0
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay0",
                        0
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue0",
                        0
                    ],
                    "order": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay0",
                        0
                    ],
                    "destination": [
                        "message0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message0",
                        0
                    ],
                    "destination": [
                        "cue0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay1",
                        0
                    ],
                    "order": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay1",
                        0
                    ],
                    "order": 2
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue1",
                        0
                    ],
                    "order": 3
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay1",
                        0
                    ],
                    "destination": [
                        "message1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message1",
                        0
                    ],
                    "destination": [
                        "cue1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay2",
                        0
                    ],
                    "order": 2
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay2",
                        0
                    ],
                    "order": 4
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue2",
                        0
                    ],
                    "order": 5
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay2",
                        0
                    ],
                    "destination": [
                        "message2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message2",
                        0
                    ],
                    "destination": [
                        "cue2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay3",
                        0
                    ],
                    "order": 3
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay3",
                        0
                    ],
                    "order": 6
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue3",
                        0
                    ],
                    "order": 7
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay3",
                        0
                    ],
                    "destination": [
                        "message3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message3",
                        0
                    ],
                    "destination": [
                        "cue3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay4",
                        0
                    ],
                    "order": 4
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay4",
                        0
                    ],
                    "order": 8
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue4",
                        0
                    ],
                    "order": 9
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay4",
                        0
                    ],
                    "destination": [
                        "message4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message4",
                        0
                    ],
                    "destination": [
                        "cue4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay5",
                        0
                    ],
                    "order": 5
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay5",
                        0
                    ],
                    "order": 10
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue5",
                        0
                    ],
                    "order": 11
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay5",
                        0
                    ],
                    "destination": [
                        "message5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message5",
                        0
                    ],
                    "destination": [
                        "cue5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay6",
                        0
                    ],
                    "order": 6
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay6",
                        0
                    ],
                    "order": 12
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue6",
                        0
                    ],
                    "order": 13
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay6",
                        0
                    ],
                    "destination": [
                        "message6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message6",
                        0
                    ],
                    "destination": [
                        "cue6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay7",
                        0
                    ],
                    "order": 7
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay7",
                        0
                    ],
                    "order": 14
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue7",
                        0
                    ],
                    "order": 15
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay7",
                        0
                    ],
                    "destination": [
                        "message7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message7",
                        0
                    ],
                    "destination": [
                        "cue7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay8",
                        0
                    ],
                    "order": 8
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay8",
                        0
                    ],
                    "order": 16
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue8",
                        0
                    ],
                    "order": 17
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay8",
                        0
                    ],
                    "destination": [
                        "message8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message8",
                        0
                    ],
                    "destination": [
                        "cue8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay9",
                        0
                    ],
                    "order": 9
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay9",
                        0
                    ],
                    "order": 18
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue9",
                        0
                    ],
                    "order": 19
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay9",
                        0
                    ],
                    "destination": [
                        "message9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message9",
                        0
                    ],
                    "destination": [
                        "cue9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay10",
                        0
                    ],
                    "order": 10
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay10",
                        0
                    ],
                    "order": 20
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue10",
                        0
                    ],
                    "order": 21
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay10",
                        0
                    ],
                    "destination": [
                        "message10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message10",
                        0
                    ],
                    "destination": [
                        "cue10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "start-order",
                        0
                    ],
                    "destination": [
                        "delay11",
                        0
                    ],
                    "order": 11
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "delay11",
                        0
                    ],
                    "order": 22
                }
            },
            {
                "patchline": {
                    "source": [
                        "cancel",
                        0
                    ],
                    "destination": [
                        "cue11",
                        0
                    ],
                    "order": 23
                }
            },
            {
                "patchline": {
                    "source": [
                        "delay11",
                        0
                    ],
                    "destination": [
                        "message11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "message11",
                        0
                    ],
                    "destination": [
                        "cue11",
                        0
                    ]
                }
            }
        ]
    }
}
