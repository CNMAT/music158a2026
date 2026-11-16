{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [ 37.0, 288.0, 1239.0, 592.0 ],
        "openrectmode": 0,
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 604.0, 110.0, 55.0, 22.0 ],
                    "text": "route set"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 759.0, 110.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 716.0, 110.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 767.0, 87.0, 48.0, 20.0 ],
                    "text": "careful!"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 89.0, 369.0, 80.0, 12.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 841.0, 287.0, 48.0, 20.0 ],
                    "text": "careful!"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 896.0, 243.0, 244.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_out_MONO"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.0, 404.0, 231.0, 22.0 ],
                    "text": "send~ AMXD_HarmonicFilter_out_MONO"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 66.0, 342.0, 215.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_out_R"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "maximum": 24,
                    "minimum": 1,
                    "mousefilter": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 898.0, 355.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-21",
                    "maxclass": "flonum",
                    "maximum": 12.0,
                    "minimum": -80.0,
                    "mousefilter": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 896.0, 282.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 896.0, 209.0, 215.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_out_R"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.0, 430.0, 202.0, 22.0 ],
                    "text": "send~ AMXD_HarmonicFilter_out_R"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 548.0, 291.0, 80.0, 12.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 233.5, 196.0, 22.0 ],
                    "text": "send~ AMXD_HarmonicFilter_send"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 947.0, 276.5, 164.0, 33.0 ],
                    "text": "set gain level on output effect\n-80-0.0 dBa"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 956.0, 357.0, 148.0, 20.0 ],
                    "text": "recall a stored preset 1-24"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 896.0, 149.0, 241.0, 20.0 ],
                    "text": "receive output effect signal to patch or dac~"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 896.0, 77.0, 115.0, 20.0 ],
                    "text": "send signal to effect"
                }
            },
            {
                "box": {
                    "color": [ 0.4392156862745098, 0.596078431372549, 0.8313725490196079, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 898.0, 383.5, 197.0, 22.0 ],
                    "text": "send AMXD_HarmonicFilter_preset"
                }
            },
            {
                "box": {
                    "color": [ 0.439, 0.596, 0.831, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 896.0, 312.0, 226.0, 22.0 ],
                    "text": "send AMXD_HarmonicFilter_output_gain"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 896.0, 176.0, 213.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_out_L"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 896.0, 101.0, 196.0, 22.0 ],
                    "text": "send~ AMXD_HarmonicFilter_send"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7.5, 103.0, 242.0, 21.0 ],
                    "text": "(for testing and building presets only)"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 54.0, 432.0, 21.0 ],
                    "text": "(copy and paste this full panel for full function in a separate patcher)"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 768.0, 259.0, 103.0, 20.0 ],
                    "text": "last loaded preset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.29411764705882354, 0.6313725490196078, 0.5372549019607843, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.29411764705882354, 0.6313725490196078, 0.5372549019607843, 1 ],
                    "bgfillcolor_color1": [ 0.29411764705882354, 0.6313725490196078, 0.5372549019607843, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 9.0,
                    "gradient": 1,
                    "id": "obj-34",
                    "linecount": 7,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 415.0, 167.0, 456.0, 79.0 ],
                    "text": "live.toggle 1, mute5 0, mute4 1, seq11 0, seq22 1, mute1 0, freezeAll 1, \"slew rate\" 330., seq6 1, seq17 0, \"harmonic limit\" 15.52, \"change bug\" 0, \"mult bug\" 1, seq1 0, seq12 1, seq23 0, seq7 1, seq18 0, seq2 1, \"frequency adder\" 64., seq13 1, \"frequency multiplier\" 5.28, seq25 1, seq24 0, level 0., seq8 1, seq19 0, resonance 132., seq3 0, seq14 1, mute2 0, seq9 1, seq20 0, \"diffussion rate\" 3.3, \"damp rate\" 3.3, seq4 1, rnd_range 66., rand_all_period 39601.7, seq15 0, rand_all_switch 1, rand_cell_switch 0, rand_period 39601.7, mute3 0, cell_update 39601.7, cell_update_switch 0, \"base frequency\" 132., seq10 0, seq21 1, seq5 0, \"change rate\" 49.18, seq16 0, Final_Output_Gain -65.",
                    "varname": "last_preset_display"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.6941176470588235, 0.6549019607843137, 1.0 ],
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 56.0, 118.0, 1574.0, 799.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 36.0, 85.0, 29.5, 22.0 ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 81.5, 164.5, 41.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 113.5, 188.0, 39.0, 33.0 ],
                                    "text": "set\nmenu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 71.0, 59.0, 29.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 81.5, 188.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 73.5, 2604.0, 141.0, 20.0 ],
                                    "text": "Preset message to effect"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 456.0, 2604.0, 204.0, 47.0 ],
                                    "text": "LAST PRESET Message formatted \ninto a single message ready to send \ndirectly to the effect out"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 71.0, 85.0, 57.0, 22.0 ],
                                    "text": "split 1 24"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 48.0, 3.0, 716.0, 27.0 ],
                                    "text": "AMXD Presets — empty startup; 150 ms fade-out / recall / 150 ms fade-in"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 334.0, 97.0, 325.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "amxd_preset_collection.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js amxd_preset_collection.js AMXD_HarmonicFilter 150 -80"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 334.0, 41.0, 238.0, 22.0 ],
                                    "text": "route preset /harmonicfilter/preset",
                                    "varname": "preset_osc_route"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Converts either routed preset number into an explicit recall N command.",
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 334.0, 67.0, 70.0, 22.0 ],
                                    "text": "recall $1",
                                    "varname": "preset_osc_recall_message"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 138.0, 68.0, 18.0 ],
                                    "text": "PRESET 1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Preset 1: source AMXD explicit defaults, with recognized overall wet/dry controls forced to their declared maximum (100% wet). Parameters lacking an explicit source initial value are not invented.",
                                    "id": "obj-13",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 138.0, 1342.0, 27.0 ],
                                    "text": "\"base frequency\" 90., cell_update 269., cell_update_switch 1., \"change bug\" 0., \"change rate\" 2., \"damp rate\" 0.24, \"diffussion rate\" 1.34, freezeAll 0., \"frequency adder\" -38., \"frequency multiplier\" 1., \"harmonic limit\" 4., level 0., live.toggle 1., \"mult bug\" 1., mute1 0., mute2 0., mute3 0., mute4 0., mute5 0., rand_all_period 5109.140543, rand_all_switch 1., rand_cell_switch 1., rand_period 181., resonance 46., rnd_range 54.95636, seq1 1., seq10 0., seq11 0., seq12 0., seq13 0., seq14 0., seq15 0., seq16 0., seq17 0., seq18 0., seq19 0., seq2 0., seq20 0., seq21 0., seq22 0., seq23 0., seq24 0., seq25 0., seq3 0., seq4 0., seq5 0., seq6 0., seq7 0., seq8 0., seq9 0., \"slew rate\" 292., Final_Output_Gain -80.",
                                    "varname": "preset_slot_1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 238.0, 68.0, 18.0 ],
                                    "text": "PRESET 2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 2. Click to audition directly.",
                                    "id": "obj-16",
                                    "linecount": 8,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 238.0, 421.0, 84.0 ],
                                    "presentation_linecount": 8,
                                    "text": "\"base frequency\" 178.767, cell_update 2085.848, cell_update_switch 0., \"change bug\" 0., \"change rate\" 51.268, \"damp rate\" 4.84, \"diffussion rate\" 2.394, freezeAll 0., \"frequency adder\" 45.679, \"frequency multiplier\" 2.001, \"harmonic limit\" 7.149, level 0., live.toggle 0., \"mult bug\" 0., mute1 0., mute2 0., mute3 1., mute4 1., mute5 1., rand_all_period 3345.458531, rand_all_switch 1., rand_cell_switch 1., rand_period 11474.288, resonance 122.594, rnd_range 44.459, seq1 1., seq10 1., seq11 1., seq12 0., seq13 0., seq14 0., seq15 0., seq16 0., seq17 1., seq18 0., seq19 0., seq2 1., seq20 1., seq21 1., seq22 1., seq23 0., seq24 0., seq25 0., seq3 1., seq4 1., seq5 0., seq6 1., seq7 0., seq8 1., seq9 1., \"slew rate\" 9.167, Final_Output_Gain -29.512481",
                                    "varname": "preset_slot_2"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 338.0, 68.0, 18.0 ],
                                    "text": "PRESET 3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 3. Click to audition directly.",
                                    "id": "obj-18",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 338.0, 1379.0, 27.0 ],
                                    "text": "live.toggle 1, mute5 0, mute4 1, seq11 0, seq22 1, mute1 0, freezeAll 1, \"slew rate\" 330., seq6 1, seq17 0, \"harmonic limit\" 15.52, \"change bug\" 0, \"mult bug\" 1, seq1 0, seq12 1, seq23 0, seq7 1, seq18 0, seq2 1, \"frequency adder\" 64., seq13 1, \"frequency multiplier\" 5.28, seq25 1, seq24 0, level 0., seq8 1, seq19 0, resonance 132., seq3 0, seq14 1, mute2 0, seq9 1, seq20 0, \"diffussion rate\" 3.3, \"damp rate\" 3.3, seq4 1, rnd_range 66., rand_all_period 39601.7, seq15 0, rand_all_switch 1, rand_cell_switch 0, rand_period 39601.7, mute3 0, cell_update 39601.7, cell_update_switch 0, \"base frequency\" 132., seq10 0, seq21 1, seq5 0, \"change rate\" 49.18, seq16 0, Final_Output_Gain -65.",
                                    "varname": "preset_slot_3"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 438.0, 68.0, 18.0 ],
                                    "text": "PRESET 4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 4. Click to audition directly.",
                                    "id": "obj-21",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 438.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_4"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 538.0, 68.0, 18.0 ],
                                    "text": "PRESET 5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 5. Click to audition directly.",
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 538.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_5"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 638.0, 68.0, 18.0 ],
                                    "text": "PRESET 6"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 6. Click to audition directly.",
                                    "id": "obj-30",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 638.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_6"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 738.0, 68.0, 18.0 ],
                                    "text": "PRESET 7"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 7. Click to audition directly.",
                                    "id": "obj-32",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 738.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_7"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 838.0, 68.0, 18.0 ],
                                    "text": "PRESET 8"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 8. Click to audition directly.",
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 838.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_8"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 938.0, 68.0, 18.0 ],
                                    "text": "PRESET 9"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 9. Click to audition directly.",
                                    "id": "obj-36",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 938.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_9"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1038.0, 68.0, 18.0 ],
                                    "text": "PRESET 10"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 10. Click to audition directly.",
                                    "id": "obj-38",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1038.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_10"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1138.0, 68.0, 18.0 ],
                                    "text": "PRESET 11"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 11. Click to audition directly.",
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1138.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_11"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1238.0, 68.0, 18.0 ],
                                    "text": "PRESET 12"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 12. Click to audition directly.",
                                    "id": "obj-42",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1238.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_12"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1338.0, 68.0, 18.0 ],
                                    "text": "PRESET 13"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 13. Click to audition directly.",
                                    "id": "obj-44",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1338.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_13"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1438.0, 68.0, 18.0 ],
                                    "text": "PRESET 14"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 14. Click to audition directly.",
                                    "id": "obj-46",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1438.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_14"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1538.0, 68.0, 18.0 ],
                                    "text": "PRESET 15"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 15. Click to audition directly.",
                                    "id": "obj-48",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1538.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_15"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1638.0, 68.0, 18.0 ],
                                    "text": "PRESET 16"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 16. Click to audition directly.",
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1638.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_16"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1738.0, 68.0, 18.0 ],
                                    "text": "PRESET 17"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 17. Click to audition directly.",
                                    "id": "obj-52",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1738.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_17"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1838.0, 68.0, 18.0 ],
                                    "text": "PRESET 18"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 18. Click to audition directly.",
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1838.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_18"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 1938.0, 68.0, 18.0 ],
                                    "text": "PRESET 19"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 19. Click to audition directly.",
                                    "id": "obj-56",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 1938.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_19"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 2038.0, 68.0, 18.0 ],
                                    "text": "PRESET 20"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 20. Click to audition directly.",
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 2038.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_20"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 2138.0, 68.0, 18.0 ],
                                    "text": "PRESET 21"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 21. Click to audition directly.",
                                    "id": "obj-60",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 2138.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_21"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 2238.0, 68.0, 18.0 ],
                                    "text": "PRESET 22"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 22. Click to audition directly.",
                                    "id": "obj-62",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 2238.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_22"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-63",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 2338.0, 68.0, 18.0 ],
                                    "text": "PRESET 23"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 23. Click to audition directly.",
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 2338.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_23"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10.0,
                                    "id": "obj-65",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 2438.0, 68.0, 18.0 ],
                                    "text": "PRESET 24"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "hint": "Editable stored AMXD preset slot 24. Click to audition directly.",
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 2438.0, 454.0, 18.0 ],
                                    "varname": "preset_slot_24"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 71.0, 32.0, 209.0, 22.0 ],
                                    "text": "receive AMXD_HarmonicFilter_preset"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.26666666666666666, 0.8901960784313725, 0.25098039215686274, 1 ],
                                    "bgcolor2": [ 0.26666666666666666, 0.8901960784313725, 0.25098039215686274, 1 ],
                                    "bgfillcolor_angle": 270,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.23529411764705882, 0.7215686274509804, 0.1607843137254902, 1 ],
                                    "bgfillcolor_color1": [ 0.26666666666666666, 0.8901960784313725, 0.25098039215686274, 1 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "color",
                                    "gradient": 1,
                                    "id": "obj-6",
                                    "linecount": 5,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 712.0, 2567.0, 831.0, 76.0 ],
                                    "text": "live.toggle 1, mute5 0, mute4 1, seq11 0, seq22 1, mute1 0, freezeAll 1, \"slew rate\" 330., seq6 1, seq17 0, \"harmonic limit\" 15.52, \"change bug\" 0, \"mult bug\" 1, seq1 0, seq12 1, seq23 0, seq7 1, seq18 0, seq2 1, \"frequency adder\" 64., seq13 1, \"frequency multiplier\" 5.28, seq25 1, seq24 0, level 0., seq8 1, seq19 0, resonance 132., seq3 0, seq14 1, mute2 0, seq9 1, seq20 0, \"diffussion rate\" 3.3, \"damp rate\" 3.3, seq4 1, rnd_range 66., rand_all_period 39601.7, seq15 0, rand_all_switch 1, rand_cell_switch 0, rand_period 39601.7, mute3 0, cell_update 39601.7, cell_update_switch 0, \"base frequency\" 132., seq10 0, seq21 1, seq5 0, \"change rate\" 49.18, seq16 0, Final_Output_Gain -65.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "varname": "fx_preset_recall"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 711.0, 2540.0, 498.0, 20.0 ],
                                    "text": "CURRENT/LAST PRESET — cleared at startup and whenever an empty slot is recalled"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 666.0, 2604.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 66.0, 2545.0, 152.0, 20.0 ],
                                    "text": "preset parameters to effect"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 129.0, 85.0, 162.0, 20.0 ],
                                    "text": "external preset number 1–24"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 36.0, 2567.0, 300.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "amxd_parameter_preset_dump.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js amxd_parameter_preset_dump.js",
                                    "varname": "fx_preset_dump_js"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 668.0, 79.0, 34.0, 22.0 ],
                                    "text": "+ 1",
                                    "varname": "preset_slot_plusone"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 708.0, 79.0, 40.0, 22.0 ],
                                    "text": "int 1",
                                    "varname": "preset_store_int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 750.0, 79.0, 40.0, 22.0 ],
                                    "text": "int 1",
                                    "varname": "preset_recall_int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 708.0, 103.0, 86.0, 22.0 ],
                                    "text": "prepend store",
                                    "varname": "preset_store_prepend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 798.0, 103.0, 90.0, 22.0 ],
                                    "text": "prepend recall",
                                    "varname": "preset_recall_prepend"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "id": "obj-108",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 900.0, 5.0, 238.0, 17.0 ],
                                    "text": "double-click to edit 24 stored message presets",
                                    "varname": "preset_collection_note"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.5,
                                    "hint": "Editable OSC-style preset recall. Change 1 to any slot 1–24 and click. For external control send the same message to [s harmonicfilter].",
                                    "id": "obj-111",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 71.0, 114.0, 110.0, 19.0 ],
                                    "text": "/harmonicfilter/preset $1",
                                    "varname": "preset_main_recall_message"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-22",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 631.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 668.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 708.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 36.0, 2599.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-200",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 454.0, 2567.0, 60.0, 22.0 ],
                                    "text": "route set"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-201",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 522.0, 2567.0, 30.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-400",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 748.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-401",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 900.0, 79.0, 65.0, 22.0 ],
                                    "text": "split 0 23"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-402",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 900.0, 105.0, 70.0, 22.0 ],
                                    "text": "no_preset"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-11", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-200", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-401", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-400", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-402", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-401", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-401", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-402", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-200", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-95", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-95", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-95", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-98", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-99", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 403.0, 137.0, 430.0, 22.0 ],
                    "text": "p PRESET STORAGE Dbl Clk to Open"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 530.0, 340.0, 61.0, 22.0 ],
                    "text": "clip -80 0."
                }
            },
            {
                "box": {
                    "color": [ 0.439, 0.596, 0.831, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 609.0, 344.0, 239.0, 22.0 ],
                    "text": "receive AMXD_HarmonicFilter_output_gain"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 66.0, 273.0, 122.0, 20.0 ],
                    "text": "effect output receives"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 66.0, 295.0, 213.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_out_L"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 401.0, 430.0, 200.0, 22.0 ],
                    "text": "send~ AMXD_HarmonicFilter_out_L"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-4",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 10.0, 233.5, 43.0, 81.0 ],
                    "saved_attribute_attributes": {
                        "tribordercolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "trioncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "direct out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "direct out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "tribordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 0.054901960784313725, 0.9450980392156862, 0.0, 1.0 ],
                    "trioncolor": [ 0.055, 0.945, 0.0, 1.0 ],
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "items": [ "MUTED", ",", "noise~", ",", "drumloop.aif", ",", "tone" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 92.0, 128.0, 116.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 119.0, 902.0, 325.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 868.0, 220.0, 29.5, 22.0 ],
                                    "text": "720"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 831.0, 220.0, 29.5, 22.0 ],
                                    "text": "360"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 789.0, 220.0, 29.5, 22.0 ],
                                    "text": "270"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 750.0, 220.0, 29.5, 22.0 ],
                                    "text": "180"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 672.0, 220.0, 29.5, 22.0 ],
                                    "text": "45"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 711.4, 220.0, 29.5, 22.0 ],
                                    "text": "90"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 6,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 672.0, 189.0, 216.0, 22.0 ],
                                    "text": "sel 0 1 2 3 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 672.0, 159.0, 59.0, 22.0 ],
                                    "text": "random 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 708.0, 86.0, 34.0, 22.0 ],
                                    "text": "sel 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 708.0, 126.0, 145.0, 22.0 ],
                                    "text": "0, 1. 20 1. 150 0 30 0 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 657.0, 126.0, 34.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 576.0, 184.0, 34.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 576.0, 126.0, 59.0, 22.0 ],
                                    "text": "tri~ 180 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 275.0, 202.0, 40.0, 22.0 ],
                                    "text": "*~ 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 371.5, 90.0, 34.0, 22.0 ],
                                    "text": "sel 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 379.5, 114.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 379.5, 145.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 411.5, 145.0, 41.0, 22.0 ],
                                    "text": "loop 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 275.83333333333337, 173.0, 51.0, 22.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.5,
                                    "id": "obj-76",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 143.0, 33.0, 17.0 ],
                                    "text": "Noise"
                                }
                            },
                            {
                                "box": {
                                    "channelcount": 1,
                                    "clipheight": 20.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "drumloop_single",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "hint": "Shared demo soundfile: drumLoop.aif",
                                    "id": "obj-77",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 379.5, 174.0, 131.0, 21.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "hint": "Selects Noise (1), drumLoop.aif (2), or the unconnected MUTED input (3).",
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 68.5, 233.0, 433.6666666666667, 22.0 ],
                                    "text": "selector~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 68.5, 178.0, 36.0, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 68.5, 35.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 68.5, 277.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 2 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-13", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-13", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-13", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-13", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "order": 2,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 4 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 3 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 92.0, 157.0, 116.0, 22.0 ],
                    "text": "p audio test sources"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 401.0, 371.0, 109.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "effect output gain",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -80.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "effect output gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "final_output_gain"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 22.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 18.0, 366.0, 31.0 ],
                    "text": "Harmonic Filter.amxd"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 50.0, 320.0, 21.0 ],
                    "text": "Cellular Automata Filter Effect"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 18.0, 768.0, 31.0 ],
                    "text": "A bank of 25 band-pass filters whose cutoff frequencies are continually reorganized by a one-dimensional cellular-automata process. Each filter moves toward a harmonic of its neighbor, producing evolving resonant spectra that can settle into harmonic relationships."
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgcolor": [ 0.611764705882353, 0.011764705882352941, 0.011764705882352941, 1.0 ],
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-10",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 402.0, 310.0, 286.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "amxd~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "amxd~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "patchername": "Harmonic Filter.amxd",
                        "patchername_fallback": "Package:/Max for Live/patchers/Max Audio Effect/Harmonic Filter/Harmonic Filter.amxd"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "max~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "name": "Harmonic Filter.amxd",
                            "origname": "Package:/Max for Live/patchers/Max Audio Effect/Harmonic Filter/Harmonic Filter.amxd",
                            "valuedictionary": {
                                "parameter_values": {
                                    "base frequency": 132.0,
                                    "cell_update": 39601.7,
                                    "cell_update_switch": 0.0,
                                    "change bug": 0.0,
                                    "change rate": 49.18,
                                    "damp rate": 3.3,
                                    "diffussion rate": 3.3,
                                    "freezeAll": 0.0,
                                    "frequency adder": 64.0,
                                    "frequency multiplier": 5.28,
                                    "harmonic limit": 15.52,
                                    "level": 0.0,
                                    "live.toggle": 1.0,
                                    "mult bug": 1.0,
                                    "mute1": 0.0,
                                    "mute2": 0.0,
                                    "mute3": 0.0,
                                    "mute4": 1.0,
                                    "mute5": 0.0,
                                    "rand_all_period": 39601.7,
                                    "rand_all_switch": 1.0,
                                    "rand_cell_switch": 0.0,
                                    "rand_period": 39601.7,
                                    "resonance": 132.0,
                                    "rnd_range": 66.0,
                                    "seq1": 0.0,
                                    "seq10": 0.0,
                                    "seq11": 1.0,
                                    "seq12": 1.0,
                                    "seq13": 1.0,
                                    "seq14": 1.0,
                                    "seq15": 0.0,
                                    "seq16": 0.0,
                                    "seq17": 0.0,
                                    "seq18": 0.0,
                                    "seq19": 0.0,
                                    "seq2": 1.0,
                                    "seq20": 0.0,
                                    "seq21": 1.0,
                                    "seq22": 1.0,
                                    "seq23": 0.0,
                                    "seq24": 0.0,
                                    "seq25": 1.0,
                                    "seq3": 0.0,
                                    "seq4": 1.0,
                                    "seq5": 0.0,
                                    "seq6": 1.0,
                                    "seq7": 1.0,
                                    "seq8": 1.0,
                                    "seq9": 1.0,
                                    "slew rate": 330.0
                                }
                            },
                            "active": 1
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Harmonic Filter.amxd",
                                    "origin": "Harmonic Filter.amxd",
                                    "type": "amxd",
                                    "subtype": "Undefined",
                                    "embed": 0,
                                    "snapshot": {
                                        "name": "Harmonic Filter.amxd",
                                        "origname": "Package:/Max for Live/patchers/Max Audio Effect/Harmonic Filter/Harmonic Filter.amxd",
                                        "valuedictionary": {
                                            "parameter_values": {
                                                "base frequency": 132.0,
                                                "cell_update": 39601.7,
                                                "cell_update_switch": 0.0,
                                                "change bug": 0.0,
                                                "change rate": 49.18,
                                                "damp rate": 3.3,
                                                "diffussion rate": 3.3,
                                                "freezeAll": 0.0,
                                                "frequency adder": 64.0,
                                                "frequency multiplier": 5.28,
                                                "harmonic limit": 15.52,
                                                "level": 0.0,
                                                "live.toggle": 1.0,
                                                "mult bug": 1.0,
                                                "mute1": 0.0,
                                                "mute2": 0.0,
                                                "mute3": 0.0,
                                                "mute4": 1.0,
                                                "mute5": 0.0,
                                                "rand_all_period": 39601.7,
                                                "rand_all_switch": 1.0,
                                                "rand_cell_switch": 0.0,
                                                "rand_period": 39601.7,
                                                "resonance": 132.0,
                                                "rnd_range": 66.0,
                                                "seq1": 0.0,
                                                "seq10": 0.0,
                                                "seq11": 1.0,
                                                "seq12": 1.0,
                                                "seq13": 1.0,
                                                "seq14": 1.0,
                                                "seq15": 0.0,
                                                "seq16": 0.0,
                                                "seq17": 0.0,
                                                "seq18": 0.0,
                                                "seq19": 0.0,
                                                "seq2": 1.0,
                                                "seq20": 0.0,
                                                "seq21": 1.0,
                                                "seq22": 1.0,
                                                "seq23": 0.0,
                                                "seq24": 0.0,
                                                "seq25": 1.0,
                                                "seq3": 0.0,
                                                "seq4": 1.0,
                                                "seq5": 0.0,
                                                "seq6": 1.0,
                                                "seq7": 1.0,
                                                "seq8": 1.0,
                                                "seq9": 1.0,
                                                "slew rate": 330.0
                                            }
                                        },
                                        "active": 1
                                    },
                                    "fileref": {
                                        "name": "Harmonic Filter.amxd",
                                        "filename": "Harmonic Filter.amxd_20261115_2.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "7a2d922f02702e84de49a4e5fd29b0d8"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "amxd~ \"Harmonic Filter\"",
                    "varname": "amxd~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 1, 0.945, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0, 1, 0.945, 1 ],
                    "bgfillcolor_color1": [ 0, 1, 0.945, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 466.0, 267.0, 44.0, 24.0 ],
                    "text": "open",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 426.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgfillcolor_color1": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "hint": "Start DSP for this help patch window",
                    "id": "obj-68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 113.0, 400.0, 78.0, 22.0 ],
                    "text": "startwindow"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgfillcolor_color1": [ 0.9058823529411765, 0.30980392156862746, 0.30980392156862746, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "hint": "Stop MSP audio processing",
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 113.0, 426.0, 42.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.8509803921568627, 0.7803921568627451, 0.6666666666666666, 1 ],
                    "id": "obj-13",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 103.0, 308.0, 352.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-73",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 128.0, 56.0, 29.0 ],
                    "text": "TEST\nSOURCE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-92",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 403.0, 76.0, 57.0, 40.0 ],
                    "text": "CURRENT\nPRESET\nRECALL",
                    "varname": "fx_preset_dump_label"
                }
            },
            {
                "box": {
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [ 0, 1, 0.945, 1 ],
                    "bgfillcolor_color1": [ 0, 1, 0.945, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "hint": "Select and immediately recall preset slot 1–24.",
                    "id": "obj-97",
                    "items": [ "Preset 1", ",", "Preset 2", ",", "Preset 3", ",", "Preset 4", ",", "Preset 5", ",", "Preset 6", ",", "Preset 7", ",", "Preset 8", ",", "Preset 9", ",", "Preset 10", ",", "Preset 11", ",", "Preset 12", ",", "Preset 13", ",", "Preset 14", ",", "Preset 15", ",", "Preset 16", ",", "Preset 17", ",", "Preset 18", ",", "Preset 19", ",", "Preset 20", ",", "Preset 21", ",", "Preset 22", ",", "Preset 23", ",", "Preset 24", ",", "Choose Preset" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 478.5, 86.0, 129.0, 24.0 ],
                    "varname": "preset_slot_menu"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "blinkcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hint": "Store the current editable working preset in the selected slot.",
                    "id": "obj-101",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "outlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "parameter_enable": 0,
                    "patching_rect": [ 814.0, 86.0, 22.0, 22.0 ],
                    "varname": "preset_store_button"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-102",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 612.0, 83.0, 107.0, 29.0 ],
                    "text": "STORE/OVERWRITE\nPRESET <num>",
                    "varname": "preset_store_label"
                }
            },
            {
                "box": {
                    "hint": "Double-click for exact-name AMXD tuning. Visible <parameter> $1 messages are selector-verified before reaching amxd~.",
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 1160.0, 1069.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 18.0, 900.0, 28.0 ],
                                    "text": "Harmonic Filter — Direct_Parameter_Messaging / Dynamic Tuning"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 49.0, 1050.0, 18.0 ],
                                    "text": "Exact AMXD parameter long names are used. Change a number box → <parameter> $1 → exact selector reconstruction → amxd~."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 68.0, 1080.0, 18.0 ],
                                    "text": "The visible $1 message is the documented syntax. Hidden route/prepend objects verify and reconstruct the same selector before the subpatch outlet."
                                }
                            },
                            {
                                "box": {
                                    "comment": "exact parameter messages to parent amxd~",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1110.0, 96.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 9.5,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 99.0, 55.0, 18.0 ],
                                    "text": "QUERY:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 80.0, 96.0, 74.0, 22.0 ],
                                    "text": "getparams"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.5,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 166.0, 99.0, 670.0, 18.0 ],
                                    "text": "getinfo <exact parameter name> / getvalue <exact parameter name> return from amxd~ outlet 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 140.0, 68.0, 22.0 ],
                                    "varname": "random_live_toggle"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: live.toggle <value>",
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 140.0, 205.0, 22.0 ],
                                    "text": "live.toggle $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 164.0, 120.0, 22.0 ],
                                    "text": "route live.toggle"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 164.0, 132.0, 22.0 ],
                                    "text": "prepend live.toggle"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 142.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 174.0, 68.0, 22.0 ],
                                    "varname": "random_mute5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mute5 <value>",
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 174.0, 205.0, 22.0 ],
                                    "text": "mute5 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 198.0, 120.0, 22.0 ],
                                    "text": "route mute5"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 198.0, 132.0, 22.0 ],
                                    "text": "prepend mute5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 176.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 208.0, 68.0, 22.0 ],
                                    "varname": "random_mute4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mute4 <value>",
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 208.0, 205.0, 22.0 ],
                                    "text": "mute4 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 232.0, 120.0, 22.0 ],
                                    "text": "route mute4"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 232.0, 132.0, 22.0 ],
                                    "text": "prepend mute4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 210.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 242.0, 68.0, 22.0 ],
                                    "varname": "random_seq11"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq11 <value>",
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 242.0, 205.0, 22.0 ],
                                    "text": "seq11 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 266.0, 120.0, 22.0 ],
                                    "text": "route seq11"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 266.0, 132.0, 22.0 ],
                                    "text": "prepend seq11"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 244.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 276.0, 68.0, 22.0 ],
                                    "varname": "random_seq22"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq22 <value>",
                                    "id": "obj-29",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 276.0, 205.0, 22.0 ],
                                    "text": "seq22 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 300.0, 120.0, 22.0 ],
                                    "text": "route seq22"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 300.0, 132.0, 22.0 ],
                                    "text": "prepend seq22"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 278.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 310.0, 68.0, 22.0 ],
                                    "varname": "random_mute1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mute1 <value>",
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 310.0, 205.0, 22.0 ],
                                    "text": "mute1 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 334.0, 120.0, 22.0 ],
                                    "text": "route mute1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 334.0, 132.0, 22.0 ],
                                    "text": "prepend mute1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 312.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 344.0, 68.0, 22.0 ],
                                    "varname": "random_freezeAll"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: freezeAll <value>",
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 344.0, 205.0, 22.0 ],
                                    "text": "freezeAll $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 368.0, 120.0, 22.0 ],
                                    "text": "route freezeAll"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 368.0, 132.0, 22.0 ],
                                    "text": "prepend freezeAll"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 346.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=Freeze All Off | 1=Freeze All On"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-43",
                                    "maxclass": "flonum",
                                    "maximum": 500.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 378.0, 76.0, 22.0 ],
                                    "varname": "random_slew_rate"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: slew rate <value>",
                                    "id": "obj-44",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 378.0, 205.0, 22.0 ],
                                    "text": "\"slew rate\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 402.0, 120.0, 22.0 ],
                                    "text": "route \"slew rate\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 402.0, 132.0, 22.0 ],
                                    "text": "prepend \"slew rate\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 380.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 412.0, 68.0, 22.0 ],
                                    "varname": "random_seq6"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq6 <value>",
                                    "id": "obj-49",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 412.0, 205.0, 22.0 ],
                                    "text": "seq6 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 436.0, 120.0, 22.0 ],
                                    "text": "route seq6"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 436.0, 132.0, 22.0 ],
                                    "text": "prepend seq6"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 414.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 446.0, 68.0, 22.0 ],
                                    "varname": "random_seq17"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq17 <value>",
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 446.0, 205.0, 22.0 ],
                                    "text": "seq17 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 470.0, 120.0, 22.0 ],
                                    "text": "route seq17"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 470.0, 132.0, 22.0 ],
                                    "text": "prepend seq17"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 448.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-58",
                                    "maxclass": "flonum",
                                    "maximum": 23.0,
                                    "minimum": 1.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 480.0, 76.0, 22.0 ],
                                    "varname": "random_harmonic_limit"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: harmonic limit <value>",
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 480.0, 205.0, 22.0 ],
                                    "text": "\"harmonic limit\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-60",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 504.0, 120.0, 22.0 ],
                                    "text": "route \"harmonic limit\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-61",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 504.0, 132.0, 22.0 ],
                                    "text": "prepend \"harmonic limit\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-62",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 482.0, 258.0, 18.0 ],
                                    "text": "FLOAT  1 … 23"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 514.0, 68.0, 22.0 ],
                                    "varname": "random_change_bug"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: change bug <value>",
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 514.0, 205.0, 22.0 ],
                                    "text": "\"change bug\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 538.0, 120.0, 22.0 ],
                                    "text": "route \"change bug\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 538.0, 132.0, 22.0 ],
                                    "text": "prepend \"change bug\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 516.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 548.0, 68.0, 22.0 ],
                                    "varname": "random_mult_bug"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mult bug <value>",
                                    "id": "obj-69",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 548.0, 205.0, 22.0 ],
                                    "text": "\"mult bug\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 572.0, 120.0, 22.0 ],
                                    "text": "route \"mult bug\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 572.0, 132.0, 22.0 ],
                                    "text": "prepend \"mult bug\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 550.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 582.0, 68.0, 22.0 ],
                                    "varname": "random_seq1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq1 <value>",
                                    "id": "obj-74",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 582.0, 205.0, 22.0 ],
                                    "text": "seq1 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 606.0, 120.0, 22.0 ],
                                    "text": "route seq1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 606.0, 132.0, 22.0 ],
                                    "text": "prepend seq1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-77",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 584.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 616.0, 68.0, 22.0 ],
                                    "varname": "random_seq12"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq12 <value>",
                                    "id": "obj-79",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 616.0, 205.0, 22.0 ],
                                    "text": "seq12 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 640.0, 120.0, 22.0 ],
                                    "text": "route seq12"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 640.0, 132.0, 22.0 ],
                                    "text": "prepend seq12"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-82",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 618.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 650.0, 68.0, 22.0 ],
                                    "varname": "random_seq23"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq23 <value>",
                                    "id": "obj-84",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 650.0, 205.0, 22.0 ],
                                    "text": "seq23 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 674.0, 120.0, 22.0 ],
                                    "text": "route seq23"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 674.0, 132.0, 22.0 ],
                                    "text": "prepend seq23"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-87",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 652.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 684.0, 68.0, 22.0 ],
                                    "varname": "random_seq7"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq7 <value>",
                                    "id": "obj-89",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 684.0, 205.0, 22.0 ],
                                    "text": "seq7 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 708.0, 120.0, 22.0 ],
                                    "text": "route seq7"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 708.0, 132.0, 22.0 ],
                                    "text": "prepend seq7"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-92",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 686.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 718.0, 68.0, 22.0 ],
                                    "varname": "random_seq18"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq18 <value>",
                                    "id": "obj-94",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 718.0, 205.0, 22.0 ],
                                    "text": "seq18 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 742.0, 120.0, 22.0 ],
                                    "text": "route seq18"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-96",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 742.0, 132.0, 22.0 ],
                                    "text": "prepend seq18"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-97",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 720.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 752.0, 68.0, 22.0 ],
                                    "varname": "random_seq2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq2 <value>",
                                    "id": "obj-99",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 752.0, 205.0, 22.0 ],
                                    "text": "seq2 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 776.0, 120.0, 22.0 ],
                                    "text": "route seq2"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 776.0, 132.0, 22.0 ],
                                    "text": "prepend seq2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-102",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 754.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-103",
                                    "maxclass": "flonum",
                                    "maximum": 200.0,
                                    "minimum": -200.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 786.0, 76.0, 22.0 ],
                                    "varname": "random_frequency_adder"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: frequency adder <value>",
                                    "id": "obj-104",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 786.0, 205.0, 22.0 ],
                                    "text": "\"frequency adder\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-105",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 810.0, 120.0, 22.0 ],
                                    "text": "route \"frequency adder\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-106",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 810.0, 132.0, 22.0 ],
                                    "text": "prepend \"frequency adder\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-107",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 788.0, 258.0, 18.0 ],
                                    "text": "FLOAT  -200 … 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 820.0, 68.0, 22.0 ],
                                    "varname": "random_seq13"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq13 <value>",
                                    "id": "obj-109",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 820.0, 205.0, 22.0 ],
                                    "text": "seq13 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-110",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 844.0, 120.0, 22.0 ],
                                    "text": "route seq13"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 844.0, 132.0, 22.0 ],
                                    "text": "prepend seq13"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-112",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 822.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-113",
                                    "maxclass": "flonum",
                                    "maximum": 8.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 854.0, 76.0, 22.0 ],
                                    "varname": "random_frequency_multiplier"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: frequency multiplier <value>",
                                    "id": "obj-114",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 854.0, 205.0, 22.0 ],
                                    "text": "\"frequency multiplier\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-115",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 878.0, 120.0, 22.0 ],
                                    "text": "route \"frequency multiplier\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-116",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 878.0, 132.0, 22.0 ],
                                    "text": "prepend \"frequency multiplier\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-117",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 856.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 888.0, 68.0, 22.0 ],
                                    "varname": "random_seq25"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq25 <value>",
                                    "id": "obj-119",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 888.0, 205.0, 22.0 ],
                                    "text": "seq25 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-120",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 912.0, 120.0, 22.0 ],
                                    "text": "route seq25"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-121",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 912.0, 132.0, 22.0 ],
                                    "text": "prepend seq25"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-122",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 890.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 922.0, 68.0, 22.0 ],
                                    "varname": "random_seq24"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq24 <value>",
                                    "id": "obj-124",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 922.0, 205.0, 22.0 ],
                                    "text": "seq24 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-125",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 946.0, 120.0, 22.0 ],
                                    "text": "route seq24"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-126",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 946.0, 132.0, 22.0 ],
                                    "text": "prepend seq24"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-127",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 924.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-128",
                                    "maxclass": "flonum",
                                    "maximum": 6.0,
                                    "minimum": -70.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 956.0, 76.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: level <value>",
                                    "id": "obj-129",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 956.0, 205.0, 22.0 ],
                                    "text": "level $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 980.0, 120.0, 22.0 ],
                                    "text": "route level"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 980.0, 132.0, 22.0 ],
                                    "text": "prepend level"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-132",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 958.0, 258.0, 18.0 ],
                                    "text": "FLOAT  -70 … 6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-133",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.0, 990.0, 68.0, 22.0 ],
                                    "varname": "random_seq8"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq8 <value>",
                                    "id": "obj-134",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 106.0, 990.0, 205.0, 22.0 ],
                                    "text": "seq8 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-135",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 106.0, 1014.0, 120.0, 22.0 ],
                                    "text": "route seq8"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 1014.0, 132.0, 22.0 ],
                                    "text": "prepend seq8"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-137",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 318.0, 992.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-138",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 140.0, 68.0, 22.0 ],
                                    "varname": "random_seq19"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq19 <value>",
                                    "id": "obj-139",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 140.0, 205.0, 22.0 ],
                                    "text": "seq19 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-140",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 164.0, 120.0, 22.0 ],
                                    "text": "route seq19"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-141",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 164.0, 132.0, 22.0 ],
                                    "text": "prepend seq19"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-142",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 142.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-143",
                                    "maxclass": "flonum",
                                    "maximum": 200.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 174.0, 76.0, 22.0 ],
                                    "varname": "random_resonance"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: resonance <value>",
                                    "id": "obj-144",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 174.0, 205.0, 22.0 ],
                                    "text": "resonance $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-145",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 198.0, 120.0, 22.0 ],
                                    "text": "route resonance"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-146",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 198.0, 132.0, 22.0 ],
                                    "text": "prepend resonance"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-147",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 176.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-148",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 208.0, 68.0, 22.0 ],
                                    "varname": "random_seq3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq3 <value>",
                                    "id": "obj-149",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 208.0, 205.0, 22.0 ],
                                    "text": "seq3 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-150",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 232.0, 120.0, 22.0 ],
                                    "text": "route seq3"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-151",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 232.0, 132.0, 22.0 ],
                                    "text": "prepend seq3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-152",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 210.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-153",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 242.0, 68.0, 22.0 ],
                                    "varname": "random_seq14"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq14 <value>",
                                    "id": "obj-154",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 242.0, 205.0, 22.0 ],
                                    "text": "seq14 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-155",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 266.0, 120.0, 22.0 ],
                                    "text": "route seq14"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-156",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 266.0, 132.0, 22.0 ],
                                    "text": "prepend seq14"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-157",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 244.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-158",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 276.0, 68.0, 22.0 ],
                                    "varname": "random_mute2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mute2 <value>",
                                    "id": "obj-159",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 276.0, 205.0, 22.0 ],
                                    "text": "mute2 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-160",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 300.0, 120.0, 22.0 ],
                                    "text": "route mute2"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-161",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 300.0, 132.0, 22.0 ],
                                    "text": "prepend mute2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-162",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 278.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-163",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 310.0, 68.0, 22.0 ],
                                    "varname": "random_seq9"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq9 <value>",
                                    "id": "obj-164",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 310.0, 205.0, 22.0 ],
                                    "text": "seq9 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-165",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 334.0, 120.0, 22.0 ],
                                    "text": "route seq9"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-166",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 334.0, 132.0, 22.0 ],
                                    "text": "prepend seq9"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-167",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 312.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-168",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 344.0, 68.0, 22.0 ],
                                    "varname": "random_seq20"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq20 <value>",
                                    "id": "obj-169",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 344.0, 205.0, 22.0 ],
                                    "text": "seq20 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-170",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 368.0, 120.0, 22.0 ],
                                    "text": "route seq20"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-171",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 368.0, 132.0, 22.0 ],
                                    "text": "prepend seq20"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-172",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 346.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-173",
                                    "maxclass": "flonum",
                                    "maximum": 5.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 378.0, 76.0, 22.0 ],
                                    "varname": "random_diffussion_rate"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: diffussion rate <value>",
                                    "id": "obj-174",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 378.0, 205.0, 22.0 ],
                                    "text": "\"diffussion rate\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-175",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 402.0, 120.0, 22.0 ],
                                    "text": "route \"diffussion rate\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-176",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 402.0, 132.0, 22.0 ],
                                    "text": "prepend \"diffussion rate\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-177",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 380.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 5"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-178",
                                    "maxclass": "flonum",
                                    "maximum": 5.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 412.0, 76.0, 22.0 ],
                                    "varname": "random_damp_rate"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: damp rate <value>",
                                    "id": "obj-179",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 412.0, 205.0, 22.0 ],
                                    "text": "\"damp rate\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-180",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 436.0, 120.0, 22.0 ],
                                    "text": "route \"damp rate\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-181",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 436.0, 132.0, 22.0 ],
                                    "text": "prepend \"damp rate\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-182",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 414.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-183",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 446.0, 68.0, 22.0 ],
                                    "varname": "random_seq4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq4 <value>",
                                    "id": "obj-184",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 446.0, 205.0, 22.0 ],
                                    "text": "seq4 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-185",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 470.0, 120.0, 22.0 ],
                                    "text": "route seq4"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-186",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 470.0, 132.0, 22.0 ],
                                    "text": "prepend seq4"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-187",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 448.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-188",
                                    "maxclass": "flonum",
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 480.0, 76.0, 22.0 ],
                                    "varname": "random_rnd_range"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: rnd_range <value>",
                                    "id": "obj-189",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 480.0, 205.0, 22.0 ],
                                    "text": "rnd_range $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-190",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 504.0, 120.0, 22.0 ],
                                    "text": "route rnd_range"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-191",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 504.0, 132.0, 22.0 ],
                                    "text": "prepend rnd_range"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-192",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 482.0, 258.0, 18.0 ],
                                    "text": "FLOAT  — … —"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-193",
                                    "maxclass": "flonum",
                                    "maximum": 60000.0,
                                    "minimum": 5.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 514.0, 76.0, 22.0 ],
                                    "varname": "random_rand_all_period"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: rand_all_period <value>",
                                    "id": "obj-194",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 514.0, 205.0, 22.0 ],
                                    "text": "rand_all_period $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-195",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 538.0, 120.0, 22.0 ],
                                    "text": "route rand_all_period"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-196",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 538.0, 132.0, 22.0 ],
                                    "text": "prepend rand_all_period"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-197",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 516.0, 258.0, 18.0 ],
                                    "text": "FLOAT  5 … 60000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-198",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 548.0, 68.0, 22.0 ],
                                    "varname": "random_seq15"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq15 <value>",
                                    "id": "obj-199",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 548.0, 205.0, 22.0 ],
                                    "text": "seq15 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-200",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 572.0, 120.0, 22.0 ],
                                    "text": "route seq15"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-201",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 572.0, 132.0, 22.0 ],
                                    "text": "prepend seq15"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-202",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 550.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-203",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 582.0, 68.0, 22.0 ],
                                    "varname": "random_rand_all_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: rand_all_switch <value>",
                                    "id": "obj-204",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 582.0, 205.0, 22.0 ],
                                    "text": "rand_all_switch $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-205",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 606.0, 120.0, 22.0 ],
                                    "text": "route rand_all_switch"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-206",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 606.0, 132.0, 22.0 ],
                                    "text": "prepend rand_all_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-207",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 584.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-208",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 616.0, 68.0, 22.0 ],
                                    "varname": "random_rand_cell_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: rand_cell_switch <value>",
                                    "id": "obj-209",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 616.0, 205.0, 22.0 ],
                                    "text": "rand_cell_switch $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-210",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 640.0, 120.0, 22.0 ],
                                    "text": "route rand_cell_switch"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-211",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 640.0, 132.0, 22.0 ],
                                    "text": "prepend rand_cell_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-212",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 618.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-213",
                                    "maxclass": "flonum",
                                    "maximum": 60000.0,
                                    "minimum": 5.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 650.0, 76.0, 22.0 ],
                                    "varname": "random_rand_period"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: rand_period <value>",
                                    "id": "obj-214",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 650.0, 205.0, 22.0 ],
                                    "text": "rand_period $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-215",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 674.0, 120.0, 22.0 ],
                                    "text": "route rand_period"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-216",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 674.0, 132.0, 22.0 ],
                                    "text": "prepend rand_period"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-217",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 652.0, 258.0, 18.0 ],
                                    "text": "FLOAT  5 … 60000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 684.0, 68.0, 22.0 ],
                                    "varname": "random_mute3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: mute3 <value>",
                                    "id": "obj-219",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 684.0, 205.0, 22.0 ],
                                    "text": "mute3 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-220",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 708.0, 120.0, 22.0 ],
                                    "text": "route mute3"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-221",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 708.0, 132.0, 22.0 ],
                                    "text": "prepend mute3"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-222",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 686.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-223",
                                    "maxclass": "flonum",
                                    "maximum": 60000.0,
                                    "minimum": 5.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 718.0, 76.0, 22.0 ],
                                    "varname": "random_cell_update"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: cell_update <value>",
                                    "id": "obj-224",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 718.0, 205.0, 22.0 ],
                                    "text": "cell_update $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-225",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 742.0, 120.0, 22.0 ],
                                    "text": "route cell_update"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-226",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 742.0, 132.0, 22.0 ],
                                    "text": "prepend cell_update"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-227",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 720.0, 258.0, 18.0 ],
                                    "text": "FLOAT  5 … 60000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-228",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 752.0, 68.0, 22.0 ],
                                    "varname": "random_cell_update_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: cell_update_switch <value>",
                                    "id": "obj-229",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 752.0, 205.0, 22.0 ],
                                    "text": "cell_update_switch $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-230",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 776.0, 120.0, 22.0 ],
                                    "text": "route cell_update_switch"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-231",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 776.0, 132.0, 22.0 ],
                                    "text": "prepend cell_update_switch"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-232",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 754.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-233",
                                    "maxclass": "flonum",
                                    "maximum": 200.0,
                                    "minimum": 0.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 786.0, 76.0, 22.0 ],
                                    "varname": "random_base_frequency"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: base frequency <value>",
                                    "id": "obj-234",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 786.0, 205.0, 22.0 ],
                                    "text": "\"base frequency\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-235",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 810.0, 120.0, 22.0 ],
                                    "text": "route \"base frequency\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-236",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 810.0, 132.0, 22.0 ],
                                    "text": "prepend \"base frequency\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-237",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 788.0, 258.0, 18.0 ],
                                    "text": "FLOAT  0 … 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-238",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 820.0, 68.0, 22.0 ],
                                    "varname": "random_seq10"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq10 <value>",
                                    "id": "obj-239",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 820.0, 205.0, 22.0 ],
                                    "text": "seq10 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-240",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 844.0, 120.0, 22.0 ],
                                    "text": "route seq10"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-241",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 844.0, 132.0, 22.0 ],
                                    "text": "prepend seq10"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-242",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 822.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-243",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 854.0, 68.0, 22.0 ],
                                    "varname": "random_seq21"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq21 <value>",
                                    "id": "obj-244",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 854.0, 205.0, 22.0 ],
                                    "text": "seq21 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-245",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 878.0, 120.0, 22.0 ],
                                    "text": "route seq21"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-246",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 878.0, 132.0, 22.0 ],
                                    "text": "prepend seq21"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-247",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 856.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-248",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 888.0, 68.0, 22.0 ],
                                    "varname": "random_seq5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq5 <value>",
                                    "id": "obj-249",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 888.0, 205.0, 22.0 ],
                                    "text": "seq5 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-250",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 912.0, 120.0, 22.0 ],
                                    "text": "route seq5"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-251",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 912.0, 132.0, 22.0 ],
                                    "text": "prepend seq5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-252",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 890.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-253",
                                    "maxclass": "flonum",
                                    "maximum": 74.0,
                                    "minimum": 1.0,
                                    "numdecimalplaces": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 922.0, 76.0, 22.0 ],
                                    "varname": "random_change_rate"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: change rate <value>",
                                    "id": "obj-254",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 922.0, 205.0, 22.0 ],
                                    "text": "\"change rate\" $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-255",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 946.0, 120.0, 22.0 ],
                                    "text": "route \"change rate\""
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-256",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 946.0, 132.0, 22.0 ],
                                    "text": "prepend \"change rate\""
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-257",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 924.0, 258.0, 18.0 ],
                                    "text": "FLOAT  1 … 74"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-258",
                                    "maxclass": "number",
                                    "maximum": 1,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 582.0, 956.0, 68.0, 22.0 ],
                                    "varname": "random_seq16"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hint": "Native amxd~ setter: seq16 <value>",
                                    "id": "obj-259",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 664.0, 956.0, 205.0, 22.0 ],
                                    "text": "seq16 $1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-260",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 664.0, 980.0, 120.0, 22.0 ],
                                    "text": "route seq16"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-261",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 788.0, 980.0, 132.0, 22.0 ],
                                    "text": "prepend seq16"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 8.5,
                                    "id": "obj-262",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 958.0, 258.0, 18.0 ],
                                    "text": "ENUM  0 … 1  0=off | 1=on"
                                }
                            },
                            {
                                "box": {
                                    "comment": "one-bang random set",
                                    "id": "obj-263",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 850.0, 96.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hint": "Randomize this AMXD from inside Direct_Parameter_Messaging.",
                                    "id": "obj-264",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 880.0, 96.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-265",
                                    "linecount": 31,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 910.0, 96.0, 190.0, 156.0 ],
                                    "saved_object_attributes": {
                                        "filename": "amxd_randomize_direct_parameters.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js amxd_randomize_direct_parameters.js live.toggle 0 1 int mute5 0 1 int mute4 0 1 int seq11 0 1 int seq22 0 1 int mute1 0 1 int freezeAll 0 1 int \"slew rate\" 0 500 float seq6 0 1 int seq17 0 1 int \"harmonic limit\" 1 23 float \"change bug\" 0 1 int \"mult bug\" 0 1 int seq1 0 1 int seq12 0 1 int seq23 0 1 int seq7 0 1 int seq18 0 1 int seq2 0 1 int \"frequency adder\" -200 200 float seq13 0 1 int \"frequency multiplier\" 0 8 float seq25 0 1 int seq24 0 1 int seq8 0 1 int seq19 0 1 int resonance 0 200 float seq3 0 1 int seq14 0 1 int mute2 0 1 int seq9 0 1 int seq20 0 1 int \"diffussion rate\" 0 5 float \"damp rate\" 0 5 float seq4 0 1 int rnd_range 0 100 float rand_all_period 5 60000 float seq15 0 1 int rand_all_switch 0 1 int rand_cell_switch 0 1 int rand_period 5 60000 float mute3 0 1 int cell_update 5 60000 float cell_update_switch 0 1 int \"base frequency\" 0 200 float seq10 0 1 int seq21 0 1 int seq5 0 1 int \"change rate\" 1 74 float seq16 0 1 int",
                                    "varname": "random_set_values_js"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "source": [ "obj-103", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-114", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-119", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-121", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-120", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-121", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-124", 0 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-124", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-126", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-129", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-131", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-134", 0 ],
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "source": [ "obj-138", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-140", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-141", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-140", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-141", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-144", 0 ],
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-145", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-144", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-146", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-145", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-149", 0 ],
                                    "source": [ "obj-148", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-150", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-149", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-151", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-150", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-151", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-154", 0 ],
                                    "source": [ "obj-153", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-154", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-156", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-155", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-156", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-159", 0 ],
                                    "source": [ "obj-158", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-160", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-159", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-161", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-160", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-161", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-164", 0 ],
                                    "source": [ "obj-163", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-165", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-164", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-166", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-165", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-166", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-169", 0 ],
                                    "source": [ "obj-168", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-170", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-169", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-171", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-170", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-171", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-174", 0 ],
                                    "source": [ "obj-173", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-175", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-174", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-176", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-176", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-179", 0 ],
                                    "source": [ "obj-178", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-180", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-179", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-181", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-180", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-181", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-184", 0 ],
                                    "source": [ "obj-183", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-185", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-184", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-185", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-186", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-189", 0 ],
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-189", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-191", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-190", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-191", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-194", 0 ],
                                    "source": [ "obj-193", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-194", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-196", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-195", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-196", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-199", 0 ],
                                    "source": [ "obj-198", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-200", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-199", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-200", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-204", 0 ],
                                    "source": [ "obj-203", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-205", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-204", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-206", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-205", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-206", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-209", 0 ],
                                    "source": [ "obj-208", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-210", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-209", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-211", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-210", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-211", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-214", 0 ],
                                    "source": [ "obj-213", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-214", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-216", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-215", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-216", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 0 ],
                                    "source": [ "obj-218", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-220", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-219", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-221", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-220", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-221", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-224", 0 ],
                                    "source": [ "obj-223", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-225", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-224", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-226", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-225", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-226", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-229", 0 ],
                                    "source": [ "obj-228", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-230", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-229", 0 ]
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
                                    "destination": [ "obj-231", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-230", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-231", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-234", 0 ],
                                    "source": [ "obj-233", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-235", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-234", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-236", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-235", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-236", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-239", 0 ],
                                    "source": [ "obj-238", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-240", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-239", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-241", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-240", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-241", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-244", 0 ],
                                    "source": [ "obj-243", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-245", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-244", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-246", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-245", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-246", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-249", 0 ],
                                    "source": [ "obj-248", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-250", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-249", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-251", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-250", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-251", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-254", 0 ],
                                    "source": [ "obj-253", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-255", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-254", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-256", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-255", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-256", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-259", 0 ],
                                    "source": [ "obj-258", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-260", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-259", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-261", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-260", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-261", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-264", 0 ],
                                    "source": [ "obj-263", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-265", 0 ],
                                    "source": [ "obj-264", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-265", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-96", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-95", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-96", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-99", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 696.0, 310.0, 155.0, 22.0 ],
                    "text": "p generate random settings",
                    "varname": "direct_parameter_messaging"
                }
            },
            {
                "box": {
                    "color": [ 0.055, 0.247, 0.702, 1.0 ],
                    "hint": "External signal input: send~ AMXD_HarmonicFilter",
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 536.5, 266.0, 209.0, 22.0 ],
                    "text": "receive~ AMXD_HarmonicFilter_send"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-116",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 415.0, 259.0, 50.0, 40.0 ],
                    "text": "amxd~\ngraphic\ninterface"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "focusbordercolor": [ 0.039216, 0.039216, 0.039216, 1.0 ],
                    "hint": "Final stereo output gain; initializes to -65 dB and remains mouse-adjustable.",
                    "id": "obj-117",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 92.0, 183.0, 60.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": "themecolor.live_arranger_grid_tiles"
                        },
                        "tribordercolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "trioncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ -65 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "dry_output_gain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 2,
                            "parameter_shortname": "dry gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "tribordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "tricolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "trioncolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "varname": "dry_output_gain"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.2901960784313726, 0.8509803921568627, 0.6980392156862745, 1 ],
                    "id": "obj-41",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 393.5, 72.0, 760.0, 377.0 ],
                    "proportion": 0.5
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "blinkcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hint": "Randomize all Direct_Parameter_Messaging values; Input and internal Gain remain fixed at -10 dB.",
                    "id": "obj-119",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "outlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "parameter_enable": 0,
                    "patching_rect": [ 854.0, 310.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-202",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 428.5, 344.0, 54.0, 22.0 ],
                    "text": "line 0.",
                    "varname": "preset_output_gain_line"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-203",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 370.0, 32.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 555.0, 396.0, 46.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-402",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 89.0, 322.0, 80.0, 12.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-400",
                    "maxclass": "number",
                    "maximum": 24,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 716.0, 86.0, 45.0, 22.0 ],
                    "varname": "preset_store_slot_number"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-401",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 819.0, 110.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-403",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.5, 110.0, 100.0, 22.0 ],
                    "text": "loadmess set 24"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 9.0,
                    "id": "obj-406",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 456.0, 722.0, 27.0 ],
                    "text": "CAUTION: Always keep output gains low when testing and building presets. Certain parameter settings such as high feedback, resonance, or high gain values can become loud or unstable.",
                    "textcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "varname": "preset_safety_caution"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-510",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 804.0, 485.0, 45.0, 22.0 ],
                    "text": "active"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-511",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 854.0, 485.0, 42.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-512",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 901.0, 485.0, 58.0, 22.0 ],
                    "text": "onebang"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-513",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 964.0, 485.0, 57.0, 22.0 ],
                    "text": "delay 25"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-514",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 804.0, 511.0, 250.0, 22.0 ],
                    "text": "window size 37 288 1276 880, window exec"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-515",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1059.0, 511.0, 75.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.055, 0.247, 0.702, 1.0 ],
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-500",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 1100.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.055, 0.247, 0.702, 1.0 ],
                                    "fontface": 1,
                                    "fontsize": 24.0,
                                    "id": "guide-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 18.0, 1050.0, 38.0 ],
                                    "text": "HARMONIC FILTER — PARAMETER GUIDE",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-intro",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 62.0, 1050.0, 34.0 ],
                                    "text": "Each entry gives the exact AMXD selector, value type, range, applicable unit, audible function, and the typical effect of moving from lower to higher values."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 106.0, 240.0, 22.0 ],
                                    "text": "Stereo Scatter",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-0",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 106.0, 804.0, 35.0 ],
                                    "text": "Selector: live.toggle\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 144.0, 1050.0, 20.0 ],
                                    "text": "Randomizes placement of the 25 filters in the stereo field; off places them left-to-right."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 167.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 208.0, 240.0, 22.0 ],
                                    "text": "Mutes",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-1",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 208.0, 804.0, 35.0 ],
                                    "text": "Selector: mute5\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 246.0, 1050.0, 20.0 ],
                                    "text": "Five switches mute the filters in groups of five; this also reduces CPU use."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 269.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 310.0, 240.0, 22.0 ],
                                    "text": "Mutes",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 310.0, 804.0, 35.0 ],
                                    "text": "Selector: mute4\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 348.0, 1050.0, 20.0 ],
                                    "text": "Five switches mute the filters in groups of five; this also reduces CPU use."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 371.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 412.0, 240.0, 22.0 ],
                                    "text": "Seq11",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 412.0, 804.0, 35.0 ],
                                    "text": "Selector: seq11\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 450.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 473.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 514.0, 240.0, 22.0 ],
                                    "text": "Seq22",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-4",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 514.0, 804.0, 35.0 ],
                                    "text": "Selector: seq22\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 552.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 575.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 616.0, 240.0, 22.0 ],
                                    "text": "Mutes",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-5",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 616.0, 804.0, 35.0 ],
                                    "text": "Selector: mute1\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 654.0, 1050.0, 20.0 ],
                                    "text": "Five switches mute the filters in groups of five; this also reduces CPU use."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 677.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 718.0, 240.0, 22.0 ],
                                    "text": "Freeze All",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-6",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 718.0, 804.0, 35.0 ],
                                    "text": "Selector: freezeAll\nEnum · 0–1 · 0=Freeze All Off | 1=Freeze All On",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 756.0, 1050.0, 20.0 ],
                                    "text": "Freezes all 25 filter frequencies at their current positions."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 779.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 820.0, 240.0, 22.0 ],
                                    "text": "Slew Rate",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 820.0, 804.0, 35.0 ],
                                    "text": "Selector: slew rate\nFloat · 0–500",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 858.0, 1050.0, 20.0 ],
                                    "text": "Limits how quickly internal filter frequencies can change."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 881.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values produce slower motion or repetition; higher values produce faster motion or repetition."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 922.0, 240.0, 22.0 ],
                                    "text": "Seq6",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-8",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 922.0, 804.0, 35.0 ],
                                    "text": "Selector: seq6\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 960.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 983.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1024.0, 240.0, 22.0 ],
                                    "text": "Seq17",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1024.0, 804.0, 35.0 ],
                                    "text": "Selector: seq17\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1062.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1085.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1126.0, 240.0, 22.0 ],
                                    "text": "Harmonic Limit",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-10",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1126.0, 804.0, 35.0 ],
                                    "text": "Selector: harmonic limit\nFloat · 1–23",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1164.0, 1050.0, 20.0 ],
                                    "text": "Number of harmonics the CA may target; each cell moves toward the nearest allowed harmonic of its neighbor."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1187.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values reduce or scale down this control; higher values increase or intensify its contribution."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1228.0, 240.0, 22.0 ],
                                    "text": "Mult Bug / Change Bug",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-11",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1228.0, 804.0, 35.0 ],
                                    "text": "Selector: change bug\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1266.0, 1050.0, 20.0 ],
                                    "text": "Legacy experimental switches; the original annotations describe their behavior as subtle or 'mysterious'."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1289.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1330.0, 240.0, 22.0 ],
                                    "text": "Mult Bug / Change Bug",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-12",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1330.0, 804.0, 35.0 ],
                                    "text": "Selector: mult bug\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1368.0, 1050.0, 20.0 ],
                                    "text": "Legacy experimental switches; the original annotations describe their behavior as subtle or 'mysterious'."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1391.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1432.0, 240.0, 22.0 ],
                                    "text": "Seq1",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-13",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1432.0, 804.0, 35.0 ],
                                    "text": "Selector: seq1\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1470.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1493.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1534.0, 240.0, 22.0 ],
                                    "text": "Seq12",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-14",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1534.0, 804.0, 35.0 ],
                                    "text": "Selector: seq12\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1572.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1595.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1636.0, 240.0, 22.0 ],
                                    "text": "Seq23",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-15",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1636.0, 804.0, 35.0 ],
                                    "text": "Selector: seq23\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1674.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1697.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1738.0, 240.0, 22.0 ],
                                    "text": "Seq7",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-16",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1738.0, 804.0, 35.0 ],
                                    "text": "Selector: seq7\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1776.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1799.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1840.0, 240.0, 22.0 ],
                                    "text": "Seq18",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1840.0, 804.0, 35.0 ],
                                    "text": "Selector: seq18\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1878.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1901.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1942.0, 240.0, 22.0 ],
                                    "text": "Seq2",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-18",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 1942.0, 804.0, 35.0 ],
                                    "text": "Selector: seq2\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 1980.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2003.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2044.0, 240.0, 22.0 ],
                                    "text": "Freq Mult",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2044.0, 804.0, 35.0 ],
                                    "text": "Selector: frequency adder\nFloat · -200–200 Hz",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2082.0, 1050.0, 20.0 ],
                                    "text": "Scales all filter cutoff frequencies globally; 1 leaves the tuning unchanged."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2105.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values emphasize or target lower frequencies; higher values move the operation upward in frequency."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2146.0, 240.0, 22.0 ],
                                    "text": "Seq13",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2146.0, 804.0, 35.0 ],
                                    "text": "Selector: seq13\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2184.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2207.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2248.0, 240.0, 22.0 ],
                                    "text": "Freq Mult",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-21",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2248.0, 804.0, 35.0 ],
                                    "text": "Selector: frequency multiplier\nFloat · 0–8",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2286.0, 1050.0, 20.0 ],
                                    "text": "Scales all filter cutoff frequencies globally; 1 leaves the tuning unchanged."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2309.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values reduce or scale down this control; higher values increase or intensify its contribution."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2350.0, 240.0, 22.0 ],
                                    "text": "Seq25",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-22",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2350.0, 804.0, 35.0 ],
                                    "text": "Selector: seq25\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2388.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2411.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2452.0, 240.0, 22.0 ],
                                    "text": "Seq24",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-23",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2452.0, 804.0, 35.0 ],
                                    "text": "Selector: seq24\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2490.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2513.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2554.0, 240.0, 22.0 ],
                                    "text": "Level",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-24",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2554.0, 804.0, 35.0 ],
                                    "text": "Selector: level\nFloat · -70–6 dB",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2592.0, 1050.0, 20.0 ],
                                    "text": "Controls the output level of the filtered signal."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2615.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values reduce level; higher values increase level. Raise cautiously to avoid clipping."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2656.0, 240.0, 22.0 ],
                                    "text": "Seq8",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-25",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2656.0, 804.0, 35.0 ],
                                    "text": "Selector: seq8\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2694.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2717.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2758.0, 240.0, 22.0 ],
                                    "text": "Seq19",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-26",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2758.0, 804.0, 35.0 ],
                                    "text": "Selector: seq19\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2796.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2819.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2860.0, 240.0, 22.0 ],
                                    "text": "Resonance",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-27",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2860.0, 804.0, 35.0 ],
                                    "text": "Selector: resonance\nFloat · 0–200",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2898.0, 1050.0, 20.0 ],
                                    "text": "Sets the resonance characteristic for all 25 band-pass filters."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2921.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values are broader and gentler; higher values are narrower, more pronounced, and may ring."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 2962.0, 240.0, 22.0 ],
                                    "text": "Seq3",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-28",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 2962.0, 804.0, 35.0 ],
                                    "text": "Selector: seq3\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3000.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3023.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3064.0, 240.0, 22.0 ],
                                    "text": "Seq14",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-29",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3064.0, 804.0, 35.0 ],
                                    "text": "Selector: seq14\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3102.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3125.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3166.0, 240.0, 22.0 ],
                                    "text": "Mutes",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-30",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3166.0, 804.0, 35.0 ],
                                    "text": "Selector: mute2\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3204.0, 1050.0, 20.0 ],
                                    "text": "Five switches mute the filters in groups of five; this also reduces CPU use."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3227.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3268.0, 240.0, 22.0 ],
                                    "text": "Seq9",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-31",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3268.0, 804.0, 35.0 ],
                                    "text": "Selector: seq9\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3306.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3329.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3370.0, 240.0, 22.0 ],
                                    "text": "Seq20",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-32",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3370.0, 804.0, 35.0 ],
                                    "text": "Selector: seq20\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3408.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3431.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3472.0, 240.0, 22.0 ],
                                    "text": "Change Rate",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-33",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3472.0, 804.0, 35.0 ],
                                    "text": "Selector: diffussion rate\nFloat · 0–5",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3510.0, 1050.0, 20.0 ],
                                    "text": "Sets how quickly cell frequencies move toward new values."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3533.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values produce slower motion or repetition; higher values produce faster motion or repetition."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3574.0, 240.0, 22.0 ],
                                    "text": "Damp Rate",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-34",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3574.0, 804.0, 35.0 ],
                                    "text": "Selector: damp rate\nFloat · 0–5",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3612.0, 1050.0, 20.0 ],
                                    "text": "Adjusts decay of output volumes in the cell network."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3635.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values produce slower motion or repetition; higher values produce faster motion or repetition."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3676.0, 240.0, 22.0 ],
                                    "text": "Seq4",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-35",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3676.0, 804.0, 35.0 ],
                                    "text": "Selector: seq4\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3714.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3737.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3778.0, 240.0, 22.0 ],
                                    "text": "Random Base",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-36",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3778.0, 804.0, 35.0 ],
                                    "text": "Selector: rnd_range\nFloat · device-defined range",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3816.0, 1050.0, 20.0 ],
                                    "text": "Sets the center frequency used by Randomize All."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3839.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values emphasize or target lower frequencies; higher values move the operation upward in frequency."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3880.0, 240.0, 22.0 ],
                                    "text": "Freeze All",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-37",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3880.0, 804.0, 35.0 ],
                                    "text": "Selector: rand_all_period\nFloat · 5–60000 ms",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3918.0, 1050.0, 20.0 ],
                                    "text": "Freezes all 25 filter frequencies at their current positions."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3941.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values make the interval or transition shorter; higher values make it longer."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 3982.0, 240.0, 22.0 ],
                                    "text": "Seq15",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-38",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 3982.0, 804.0, 35.0 ],
                                    "text": "Selector: seq15\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4020.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4043.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4084.0, 240.0, 22.0 ],
                                    "text": "Freeze All",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-39",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4084.0, 804.0, 35.0 ],
                                    "text": "Selector: rand_all_switch\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4122.0, 1050.0, 20.0 ],
                                    "text": "Freezes all 25 filter frequencies at their current positions."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4145.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4186.0, 240.0, 22.0 ],
                                    "text": "Cell Update",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-40",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4186.0, 804.0, 35.0 ],
                                    "text": "Selector: rand_cell_switch\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4224.0, 1050.0, 20.0 ],
                                    "text": "Enables the CA process; its period sets the time between CA iterations."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4247.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4288.0, 240.0, 22.0 ],
                                    "text": "Random Base",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-41",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4288.0, 804.0, 35.0 ],
                                    "text": "Selector: rand_period\nFloat · 5–60000 cents",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4326.0, 1050.0, 20.0 ],
                                    "text": "Sets the center frequency used by Randomize All."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4349.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values emphasize or target lower frequencies; higher values move the operation upward in frequency."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4390.0, 240.0, 22.0 ],
                                    "text": "Mutes",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-42",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4390.0, 804.0, 35.0 ],
                                    "text": "Selector: mute3\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4428.0, 1050.0, 20.0 ],
                                    "text": "Five switches mute the filters in groups of five; this also reduces CPU use."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4451.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4492.0, 240.0, 22.0 ],
                                    "text": "Cell Update",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-43",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4492.0, 804.0, 35.0 ],
                                    "text": "Selector: cell_update\nFloat · 5–60000 ms",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4530.0, 1050.0, 20.0 ],
                                    "text": "Enables the CA process; its period sets the time between CA iterations."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4553.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values give gentler processing; higher values create a stronger ratio or more pronounced effect."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4594.0, 240.0, 22.0 ],
                                    "text": "Cell Update",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-44",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4594.0, 804.0, 35.0 ],
                                    "text": "Selector: cell_update_switch\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4632.0, 1050.0, 20.0 ],
                                    "text": "Enables the CA process; its period sets the time between CA iterations."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4655.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4696.0, 240.0, 22.0 ],
                                    "text": "Freq Mult",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-45",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4696.0, 804.0, 35.0 ],
                                    "text": "Selector: base frequency\nFloat · 0–200 Hz",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4734.0, 1050.0, 20.0 ],
                                    "text": "Scales all filter cutoff frequencies globally; 1 leaves the tuning unchanged."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4757.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values emphasize or target lower frequencies; higher values move the operation upward in frequency."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4798.0, 240.0, 22.0 ],
                                    "text": "Seq10",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-46",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4798.0, 804.0, 35.0 ],
                                    "text": "Selector: seq10\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4836.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4859.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4900.0, 240.0, 22.0 ],
                                    "text": "Seq21",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-47",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 4900.0, 804.0, 35.0 ],
                                    "text": "Selector: seq21\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4938.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 4961.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5002.0, 240.0, 22.0 ],
                                    "text": "Seq5",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-48",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 5002.0, 804.0, 35.0 ],
                                    "text": "Selector: seq5\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5040.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5063.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5104.0, 240.0, 22.0 ],
                                    "text": "Change Rate",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-49",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 5104.0, 804.0, 35.0 ],
                                    "text": "Selector: change rate\nFloat · 1–74",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5142.0, 1050.0, 20.0 ],
                                    "text": "Sets how quickly cell frequencies move toward new values."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5165.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower values produce slower motion or repetition; higher values produce faster motion or repetition."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "guide-name-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5206.0, 240.0, 22.0 ],
                                    "text": "Seq16",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 10.0,
                                    "id": "guide-meta-50",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 5206.0, 804.0, 35.0 ],
                                    "text": "Selector: seq16\nEnum · 0–1 · 0=off | 1=on",
                                    "textcolor": [ 0.055, 0.247, 0.702, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "guide-desc-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5244.0, 1050.0, 20.0 ],
                                    "text": "Selects an operating state or mode for this part of the effect."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.94, 0.985, 1.0 ],
                                    "fontsize": 11.0,
                                    "id": "guide-effect-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5267.0, 1050.0, 32.0 ],
                                    "text": "LOW / HIGH — Lower numbers select the first listed state or mode; higher numbers select later listed choices."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 11.0,
                                    "id": "guide-footer",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 5312.0, 1050.0, 34.0 ],
                                    "text": "Listening note: raise output gain gradually. High feedback, resonance, drive, or gain values can become loud or unstable.",
                                    "textcolor": [ 0.55, 0.08, 0.08, 1.0 ]
                                }
                            }
                        ],
                        "lines": [],
                        "bgcolor": [ 0.965, 0.965, 0.965, 1.0 ]
                    },
                    "patching_rect": [ 24.0, 463.0, 265.0, 35.0 ],
                    "saved_object_attributes": {
                        "locked_bgcolor": [ 0.965, 0.965, 0.965, 1.0 ]
                    },
                    "text": "p Parameter Guide",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "parameter_guide"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "midpoints": [ 678.5, 338.40625, 400.3515625, 338.40625, 400.3515625, 132.96484375, 412.5, 132.96484375 ],
                    "source": [ "obj-10", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 3 ],
                    "hidden": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 705.5, 339.69921875, 690.2734375, 339.69921875, 690.2734375, 307.25390625, 411.5, 307.25390625 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "order": 1,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 2,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 0,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 863.5, 342.0, 850.48828125, 342.0, 850.48828125, 306.984375, 705.5, 306.984375 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 618.5, 364.23828125, 520.109375, 364.23828125, 520.109375, 338.34375, 539.5, 338.34375 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 0 ],
                    "hidden": 1,
                    "midpoints": [ 539.5, 372.0, 488.75, 372.0, 488.75, 341.9140625, 438.0, 341.9140625 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "hidden": 1,
                    "source": [ "obj-202", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "hidden": 1,
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "hidden": 1,
                    "midpoints": [ 564.5, 420.45703125, 606.46484375, 420.45703125, 606.46484375, 394.0, 622.5, 394.0 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "hidden": 1,
                    "midpoints": [ 403.0546875, 163.734375, 403.0546875, 82.1953125, 488.0, 82.1953125 ],
                    "order": 1,
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 2 ],
                    "hidden": 1,
                    "source": [ "obj-400", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-400", 0 ],
                    "hidden": 1,
                    "source": [ "obj-401", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "hidden": 1,
                    "source": [ "obj-403", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 433.0, 428.21875, 622.5, 428.21875 ],
                    "order": 0,
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 1 ],
                    "hidden": 1,
                    "midpoints": [ 433.0, 428.0, 546.25, 428.0, 546.25, 365.9296875, 577.5, 365.9296875 ],
                    "order": 1,
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "hidden": 1,
                    "midpoints": [ 410.5, 428.0, 535.8203125, 428.0, 535.8203125, 367.8984375, 564.5, 367.8984375 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-511", 0 ],
                    "hidden": 1,
                    "source": [ "obj-510", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-512", 0 ],
                    "hidden": 1,
                    "source": [ "obj-511", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-513", 0 ],
                    "hidden": 1,
                    "source": [ "obj-512", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-514", 0 ],
                    "hidden": 1,
                    "source": [ "obj-513", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-515", 0 ],
                    "hidden": 1,
                    "source": [ "obj-514", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-400", 0 ],
                    "hidden": 1,
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "hidden": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "hidden": 1,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "hidden": 1,
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-402", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "hidden": 1,
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10": [ "amxd~", "amxd~", 0 ],
            "obj-117": [ "dry_output_gain", "dry gain", 0 ],
            "obj-4": [ "direct out", "direct out", 0 ],
            "obj-5": [ "effect output gain", "effect output gain", 0 ],
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