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
        "rect": [ 134.0, 172.0, 900.0, 670.0 ],
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 229.5, 457.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 229.5, 413.0, 155.0, 23.0 ],
                    "text": "ec_markov_note_player~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 19.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 18.0, 850.0, 28.0 ],
                    "text": "FROZEN PLAYER / MASTER PATCH EXAMPLE"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 60.0, 605.0, 36.0 ],
                    "text": "This example uses a supplied demonstration model (PCs 0, 4, 7).\nReplace the filename in the js object with YOUR exported .js file. Keep that file beside the master patch."
                }
            },
            {
                "box": {
                    "id": "clock",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 135.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "clock-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 135.0, 155.0, 21.0 ],
                    "text": "Run example clock"
                }
            },
            {
                "box": {
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 183.0, 95.0, 23.0 ],
                    "text": "metro 400"
                }
            },
            {
                "box": {
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 228.0, 85.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "manual",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 180.0, 226.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "manual-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 218.0, 227.0, 180.0, 21.0 ],
                    "text": "One selection"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 135.0, 60.0, 23.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "reset-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 135.0, 350.0, 21.0 ],
                    "text": "Restore exported start, seed and octave"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 175.0, 80.0, 23.0 ],
                    "text": "start 4"
                }
            },
            {
                "box": {
                    "id": "start-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 175.0, 320.0, 21.0 ],
                    "text": "Silent start from active pitch class 4"
                }
            },
            {
                "box": {
                    "id": "seed",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 215.0, 85.0, 23.0 ],
                    "text": "seed 123"
                }
            },
            {
                "box": {
                    "id": "seed-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 215.0, 320.0, 21.0 ],
                    "text": "Set a repeatable random generator"
                }
            },
            {
                "box": {
                    "id": "octave",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 255.0, 85.0, 23.0 ],
                    "text": "octave 4"
                }
            },
            {
                "box": {
                    "id": "octave-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 255.0, 320.0, 21.0 ],
                    "text": "MIDI register; leaves pitch classes fixed"
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 430.0, 295.0, 65.0, 23.0 ],
                    "text": "status"
                }
            },
            {
                "box": {
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 530.0, 295.0, 65.0, 23.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 24.0, 350.0, 142.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "markov-min7chord.js",
                        "parameter_enable": 0
                    },
                    "text": "js markov-min7chord.js"
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
                    "patching_rect": [ 24.0, 430.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "pc-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 470.0, 165.0, 36.0 ],
                    "text": "LEFT: pitch class 0..11\nConnect to your pitch logic."
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
                    "patching_rect": [ 229.5, 381.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 540.0, 350.0, 169.0, 36.0 ],
                    "text": "MIDDLE: MIDI note number\nConnect to your instrument."
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 396.0, 123.0, 23.0 ],
                    "text": "print frozen_markov"
                }
            },
            {
                "box": {
                    "id": "diagnostics",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 470.0, 209.0, 36.0 ],
                    "text": "RIGHT: step / empty / status / error\nInspect with print or route."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "bottom",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 550.0, 609.0, 65.0 ],
                    "text": "The js object is the reusable module. Copy it into a master patch and use your existing clock.\nOne bang selects one successor. The starting state itself makes no sound.\nZero-weight rows produce no note. Transitions remain probabilistic unless each row has one destination.\nThis patch displays note numbers; your master patch supplies its own instrument and note duration."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "metro", 0 ],
                    "source": [ "clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "dump", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "manual", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi", 0 ],
                    "source": [ "player", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc", 0 ],
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "player", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "seed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "status", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}