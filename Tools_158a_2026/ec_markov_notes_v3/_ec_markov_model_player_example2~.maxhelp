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
        "rect": [ 134.0, 172.0, 1020.0, 760.0 ],
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 16.0, 970.0, 29.0 ],
                    "text": "ec_markov_note_player~ / extracted builder tone"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 58.0, 571.0, 36.0 ],
                    "text": "Click AUDIO, then NEXT or RUN. The included model selects C, E and G.\nFor your own model, replace example_markov_frozen.js in the js box with your exported filename."
                }
            },
            {
                "box": {
                    "id": "run",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 120.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "run-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 121.0, 70.0, 21.0 ],
                    "text": "RUN"
                }
            },
            {
                "box": {
                    "id": "rate",
                    "maxclass": "number",
                    "maximum": 5000,
                    "minimum": 50,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 160.0, 120.0, 75.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "rate-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.0, 121.0, 90.0, 21.0 ],
                    "text": "interval ms"
                }
            },
            {
                "box": {
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 170.0, 100.0, 23.0 ],
                    "text": "metro 650"
                }
            },
            {
                "box": {
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 210.0, 90.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "next",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 230.0, 205.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "id": "next-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 208.0, 100.0, 21.0 ],
                    "text": "NEXT"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 207.0, 70.0, 23.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "model",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 24.0, 265.0, 430.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "example_markov_frozen.js",
                        "parameter_enable": 0
                    },
                    "text": "js example_markov_frozen.js"
                }
            },
            {
                "box": {
                    "id": "pc",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 325.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "pc-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 360.0, 122.0, 36.0 ],
                    "text": "Outlet 1: pitch class\nDisplay only here."
                }
            },
            {
                "box": {
                    "id": "midi",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 230.0, 325.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 360.0, 134.0, 36.0 ],
                    "text": "Outlet 2: MIDI note\nThis triggers the tone."
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 325.0, 175.0, 23.0 ],
                    "text": "print markov_model"
                }
            },
            {
                "box": {
                    "id": "status-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 360.0, 145.0, 36.0 ],
                    "text": "Outlet 3: status\nShown in Max Console."
                }
            },
            {
                "box": {
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 230.0, 435.0, 270.0, 23.0 ],
                    "text": "ec_markov_note_player~"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 515.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "dac-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 522.0, 85.0, 21.0 ],
                    "text": "AUDIO"
                }
            },
            {
                "box": {
                    "id": "meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 440.0, 510.0, 125.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "meter-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 545.0, 165.0, 21.0 ],
                    "text": "Mono audio output"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "level-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 120.0, 173.0, 36.0 ],
                    "text": "RIGHT INLET: LEVEL\nDefault 0.12; range 0.0-0.3."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level",
                    "maxclass": "flonum",
                    "maximum": 0.3,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 670.0, 175.0, 85.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "mute",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 175.0, 45.0, 23.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "restore-level",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 845.0, 175.0, 60.0, 23.0 ],
                    "text": "0.12"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "manual-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 260.0, 221.0, 36.0 ],
                    "text": "DIRECT NOTE TEST\nClick a MIDI note to hear one tone."
                }
            },
            {
                "box": {
                    "id": "test-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.0, 320.0, 55.0, 23.0 ],
                    "text": "60"
                }
            },
            {
                "box": {
                    "id": "test-64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 745.0, 320.0, 55.0, 23.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "test-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 820.0, 320.0, 55.0, 23.0 ],
                    "text": "67"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "defaults",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 385.0, 207.0, 108.0 ],
                    "text": "SAME SOUND AS THE BUILDER\nSine oscillator, one voice.\nEnvelope: 250 ms total.\nPitch smoothing: 10 ms.\nLevel smoothing: 50 ms.\nEach note retriggers the envelope.\nNo creation arguments required."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "integration",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 605.0, 611.0, 79.0 ],
                    "text": "IN YOUR MASTER PATCH\nPut ec_markov_note_player~.maxpat beside the master patch and create [ec_markov_note_player~].\nConnect the js model's SECOND outlet to the LEFT inlet. Connect its signal outlet to your audio routing.\nThe right inlet is optional: level starts at 0.12. You can also use the builder engine's second outlet.\nFor pitch-class output instead, insert [+ 60] before the player for octave 4. Use one note source at a time."
                }
            },
            {
                "box": {
                    "id": "load-rate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 160.0, 96.0, 105.0, 23.0 ],
                    "text": "loadmess 650"
                }
            },
            {
                "box": {
                    "id": "load-level",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 657.5, 88.0, 110.0, 23.0 ],
                    "text": "loadmess 0.12"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 1 ],
                    "midpoints": [ 679.5, 240.0, 632.0, 240.0, 632.0, 415.0, 490.5, 415.0 ],
                    "source": [ "level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "load-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate", 0 ],
                    "source": [ "load-rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer", 0 ],
                    "source": [ "metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi", 0 ],
                    "source": [ "model", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc", 0 ],
                    "source": [ "model", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "model", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "mute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "next", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 1,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 2,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter", 0 ],
                    "order": 0,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 1 ],
                    "source": [ "rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "restore-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 0 ],
                    "source": [ "run", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 679.5, 350.0, 645.0, 350.0, 645.0, 585.0, 205.0, 585.0, 205.0, 420.0, 239.5, 420.0 ],
                    "source": [ "test-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 754.5, 350.0, 645.0, 350.0, 645.0, 585.0, 205.0, 585.0, 205.0, 420.0, 239.5, 420.0 ],
                    "source": [ "test-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 829.5, 350.0, 645.0, 350.0, 645.0, 585.0, 205.0, 585.0, 205.0, 420.0, 239.5, 420.0 ],
                    "source": [ "test-67", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}