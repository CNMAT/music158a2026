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
        "rect": [ 136.0, 167.0, 1000.0, 892.0 ],
        "default_fontsize": 18.0,
        "boxes": [
            {
                "box": {
                    "channels": 1,
                    "id": "obj-10",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 323.0, 744.0, 166.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
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
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.252427184466, 667.0, 123.0, 22.0 ],
                    "text": "s markov-note"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 370.0, 324.0, 24.0 ],
                    "text": "load _ec_cnmat_sinusoids_lowcpu_abs~.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 624.0, 398.0, 58.0, 24.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 313.0, 540.0, 314.0, 22.0 ],
                    "text": "see the full \"model\" responsible for the pattern"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 323.0, 810.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 323.0, 711.0, 166.0, 24.0 ],
                    "text": "ec_markov_note_player~"
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
                    "patching_rect": [ 44.66019417475728, 384.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "clock-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 82.52427184466019, 384.0, 123.0, 38.0 ],
                    "text": "Run example clock"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 44.66019417475728, 423.0, 95.0, 24.0 ],
                    "text": "metro 400"
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
                    "patching_rect": [ 68.93203883495146, 460.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "manual-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 106.79611650485437, 461.0, 71.0, 38.0 ],
                    "text": "One selection"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 391.0, 49.0, 24.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "reset-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 313.0, 391.0, 275.0, 22.0 ],
                    "text": "Restore exported start, seed and octave"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 421.0, 64.0, 24.0 ],
                    "text": "start 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "start-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 421.0, 251.0, 22.0 ],
                    "text": "Silent start from active pitch class 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "seed",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 451.0, 68.0, 24.0 ],
                    "text": "seed 123"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "seed-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 451.0, 251.0, 22.0 ],
                    "text": "Set a repeatable random generator"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "octave",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 482.0, 68.0, 24.0 ],
                    "text": "octave 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "octave-desc",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 482.0, 251.0, 38.0 ],
                    "text": "MIDI register; leaves pitch classes fixed"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 512.0, 53.0, 24.0 ],
                    "text": "status"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 539.0, 53.0, 24.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 45.0, 636.0, 575.0, 24.0 ],
                    "saved_object_attributes": {
                        "filename": "markov-min7chord.js",
                        "parameter_enable": 0
                    },
                    "text": "js markov-min7chord.js"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "pc",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 44.66019417475728, 706.0, 59.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "pc-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.66019417475728, 738.0, 207.0, 38.0 ],
                    "text": "LEFT OUTLET: pitch class 0..11\nConnect to your pitch logic."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "midi",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 323.0, 683.0, 59.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "midi-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 82.0, 667.0, 239.0, 38.0 ],
                    "text": "MIDDLE OUTLET: MIDI note number\nConnect to your instrument."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 601.0, 767.0, 132.0, 24.0 ],
                    "text": "print frozen_markov"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "diagnostics",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 379.0, 814.0, 165.0, 69.0 ],
                    "text": "RIGHT: step / empty / status / error\nInspect with print or route."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "bottom",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 241.5, 568.0, 685.0, 69.0 ],
                    "text": "The js object is the reusable MAX module/object. Copy it into a master patch.\nOne bang selects one successor. The starting state itself makes no sound.\nZero-weight rows produce no note. Transitions remain probabilistic unless each row has one destination.\nThis patch displays note numbers; your master patch supplies its own instrument and note duration."
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "fontsize": 14.0,
                    "id": "obj-27",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 246.0, 943.0, 132.0 ],
                    "text": "ASSIGNMENT: CREATE 4 first-order markov chain .js files based on the following prompts. Use the model-player below and load your .js files into 4 separate model-players.\n\n1. Fixed sequence:alternate between two selections. note 1 is always the same, and note 2 is changes as much as possible.\n2. Weighted sequence: 2 notes oscillate unevenly, with two other notes occassionaly happening, but rarely.\n3. Weighted random selection: Play a pattern that is generally moving upwards, returning to bottom, but never in exactly the same way.\n4. Make a melody that is always stepwise but also changes directions (see the \"drunk\" object).\nIf you don't like the boring ec_markov_note_player~, then plug it all into a "
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 604.752427184466, 194.0, 260.0, 24.0 ],
                    "text": "load _ec_markov_model_builder.maxpat"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 604.752427184466, 218.0, 58.0, 24.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 604.7524271844659, 117.0, 308.0, 24.0 ],
                    "text": "load _markov-performer_class_example.maxpat"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 604.7524271844659, 141.0, 58.0, 24.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.752427184466, 142.0, 104.0, 22.0 ],
                    "text": "open and study"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 130.752427184466, 166.0, 716.0, 22.0 ],
                    "text": "Documents/GitHub/music158a2026/Tools_158a_2026/ec_markov_notes_v3/_ec_markov_model_builder.maxpat"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 96.0, 63.0, 104.0, 22.0 ],
                    "text": "open and study"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 6.0, 478.0, 27.0 ],
                    "text": "Homework 4 Markov Chains for advanced decision making"
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 93.0, 37.0, 719.0, 22.0 ],
                    "text": "1) Begin with Documents/GitHub/music158a2026/_158a2026_ClassPatches/1020_Markov-Decision-Chains"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 122.0, 87.0, 872.0, 22.0 ],
                    "text": "Documents/GitHub/music158a2026/_158a2026_ClassPatches/1020_Markov-Decision-Chains/_markov-performer_class_example.maxpat"
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
                    "destination": [ "player", 0 ],
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
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-3", 0 ]
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
                    "order": 1,
                    "source": [ "player", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 0,
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
        "parameters": {
            "obj-10": [ "live.gain~", "live.gain~", 0 ],
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