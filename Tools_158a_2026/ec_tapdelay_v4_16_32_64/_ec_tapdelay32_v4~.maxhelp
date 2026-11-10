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
        "rect": [ 75.0, 100.0, 1218.0, 901.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 899.0, 680.0, 223.0, 20.0 ],
                    "text": "Other Example patches"
                }
            },
            {
                "box": {
                    "fontsize": 23.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 12.0, 657.0, 32.0 ],
                    "text": "ec_tapdelay32_v4~ — up to 32 sources, taps and timing curves"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "syntax",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 46.0, 1107.0, 69.0 ],
                    "text": "NAMED ATTRIBUTE SETTINGS(named settings may be in any order): @sources = number of input sources   @spacing = number of ms delay between sources @curve linear  \nOPTIONAL: @taps 16; omitted taps follows sources. Extra taps repeat the input sources.\n@delaydrift = amount of delay offset plus or minus from the target (e.g. delaydrift 20 will randomly add a number between -20 and 20 to the target delay). \nOUTLETS: 1 MC taps   2 mono sum   3 cycle-done bang   4 settings/status"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-7",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 331.0, 173.0, 65.0, 69.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "gain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "jongly.aif",
                                "filename": "jongly.aif",
                                "filekind": "audiofile",
                                "id": "u239001359",
                                "selection": [ 0.0, 0.0 ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-6",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 331.0, 132.0, 150.0, 30.0 ],
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
                    "bgcolor": [ 0.8313725490196079, 0.08235294117647059, 0.08235294117647059, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 894.0, 645.0, 145.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 884.0, 850.0, 145.0, 22.0 ],
                    "text": "s #0_v4_control"
                }
            },
            {
                "box": {
                    "channels": 12,
                    "id": "obj-3",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 12,
                    "numoutlets": 15,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 25.0, 768.0, 510.0, 86.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "master out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "master out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 867.0, 404.7857142857142, 22.0 ],
                    "text": "dac~ 1 2 3 4 5 6 7 8 9 10 11 12"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-1",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 244.0, 433.0, 65.0, 69.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "mono sum",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mono sum",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "intro",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 311.0, 510.0, 22.0 ],
                    "text": "Tap 1 = 0 ms. Omitted @taps follows @sources."
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "audition",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 132.0, 254.0, 24.0 ],
                    "text": "AUDITION — 12 sources / 12 taps"
                }
            },
            {
                "box": {
                    "id": "impulse",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 173.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "impulse_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 176.0, 160.0, 20.0 ],
                    "text": "Impulse + virtual cycle timer."
                }
            },
            {
                "box": {
                    "id": "click",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 215.0, 65.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 12,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 25.0, 268.0, 510.0, 22.0 ],
                    "text": "mc.pack~ 12"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "packnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 289.0, 510.0, 20.0 ],
                    "text": "Twelve copies let every delayed tap be heard. Independent-input examples are below."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8313725490196079, 0.08235294117647059, 0.08235294117647059, 1.0 ],
                    "id": "receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 385.0, 344.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 385.0, 344.0, 150.0, 22.0 ],
                    "text": "r #0_v4_control"
                }
            },
            {
                "box": {
                    "id": "delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "", "" ],
                    "patching_rect": [ 25.0, 385.0, 426.0, 22.0 ],
                    "text": "ec_tapdelay32_v4~ @sources 12 @spacing 250 @curve linear @delaydrift 20"
                }
            },
            {
                "box": {
                    "id": "breakout",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 12,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 25.0, 639.0, 510.0, 22.0 ],
                    "text": "mc.unpack~ 12 @replicate 0"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 13.0, 664.0, 19.0, 20.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "meter0",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 50.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 664.0, 19.0, 20.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 94.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 664.0, 19.0, 20.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 138.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 145.0, 664.0, 19.0, 20.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 182.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 189.0, 664.0, 19.0, 20.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 226.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 233.0, 664.0, 19.0, 20.0 ],
                    "text": "6"
                }
            },
            {
                "box": {
                    "id": "meter5",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 270.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 277.0, 664.0, 19.0, 20.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "meter6",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 314.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 321.0, 664.0, 19.0, 20.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "meter7",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 358.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 365.0, 664.0, 19.0, 20.0 ],
                    "text": "9"
                }
            },
            {
                "box": {
                    "id": "meter8",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 402.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 409.0, 664.0, 22.0, 20.0 ],
                    "text": "10"
                }
            },
            {
                "box": {
                    "id": "meter9",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 446.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 453.0, 664.0, 21.0, 20.0 ],
                    "text": "11"
                }
            },
            {
                "box": {
                    "id": "meter10",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 490.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taplabel11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 497.0, 664.0, 22.0, 20.0 ],
                    "text": "12"
                }
            },
            {
                "box": {
                    "id": "meter11",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 534.0, 699.0, 26.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "busnote",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 444.0, 199.0, 47.0 ],
                    "text": "MC bus: 32 channels.\nmc.unpack~ 12 exposes taps 1–12.\nFixed outlets; no startup rewiring."
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 237.0, 524.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 392.0, 409.0, 143.0, 22.0 ],
                    "text": "print ec_tapdelay32_v4"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "status_route",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 313.0, 469.0, 222.0, 22.0 ],
                    "text": "route base_times taps curve taps_mode"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "times_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 50.0, 570.0, 381.0, 21.0 ],
                    "text": "CURRENT BASE DELAYS (ms) — dump also prints target times"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "settimes",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 546.0, 90.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "times",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 591.0, 510.0, 22.0 ],
                    "text": "0 250 500 750 1000 1250 1500 1750 2000 2250 2500 2750"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "current_taps_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 344.0, 524.0, 34.0, 20.0 ],
                    "text": "Taps"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "current_curve_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 419.0, 524.0, 41.0, 20.0 ],
                    "text": "Curve"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "current_mode_label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 490.0, 505.0, 95.0, 33.0 ],
                    "text": "Tap-count \nmode"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "set_n",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 500.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "value_n",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 546.0, 29.5, 22.0 ],
                    "text": "12"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "set_c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 403.0, 500.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "value_c",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 403.0, 546.0, 72.0, 22.0 ],
                    "text": "linear"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "set_m",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 500.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "value_m",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 546.0, 32.0, 22.0 ],
                    "text": "auto"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8313725490196079, 0.06666666666666667, 0.06666666666666667, 1.0 ],
                    "id": "send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 569.0, 846.0, 145.0, 22.0 ],
                    "text": "s #0_v4_control"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "control_title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 570.0, 132.0, 172.0, 24.0 ],
                    "text": "SETTING MESSAGES"
                }
            },
            {
                "box": {
                    "id": "sources12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 163.0, 85.0, 22.0 ],
                    "text": "sources 12"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "sources12_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 162.0, 161.0, 20.0 ],
                    "text": "Input count; auto taps follow."
                }
            },
            {
                "box": {
                    "id": "taps24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 204.0, 85.0, 22.0 ],
                    "text": "taps 24"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "taps24_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 203.0, 157.0, 20.0 ],
                    "text": "Independent count: 24 taps."
                }
            },
            {
                "box": {
                    "id": "auto",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 245.0, 85.0, 22.0 ],
                    "text": "taps auto"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "auto_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 244.0, 136.0, 20.0 ],
                    "text": "Restore taps = sources."
                }
            },
            {
                "box": {
                    "id": "spacing250",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 286.0, 85.0, 22.0 ],
                    "text": "spacing 250"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "spacing250_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 285.0, 74.0, 20.0 ],
                    "text": "Baseline ms"
                }
            },
            {
                "box": {
                    "id": "pair",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 327.0, 85.0, 22.0 ],
                    "text": "250 12"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "pair_desc",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 326.0, 155.0, 33.0 ],
                    "text": "Legacy pair: spacing, taps. \nMakes taps explicit."
                }
            },
            {
                "box": {
                    "id": "pattern",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 380.0, 138.0, 22.0 ],
                    "text": "tap 100 24 expand"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "pattern_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 720.0, 379.0, 117.0, 20.0 ],
                    "text": "Set pattern together."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgcolor2": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.392156862745098, 0.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 569.0, 444.0, 60.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_key_assignment"
                        }
                    },
                    "text": "stop"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgcolor2": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.392156862745098, 0.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 568.0, 419.0, 60.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_key_assignment"
                        }
                    },
                    "text": "start"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "stopnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 720.0, 428.0, 128.0, 20.0 ],
                    "text": "Mute + clear / resume."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgcolor2": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "drifton",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 474.0, 104.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "delaydrift 100 250"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "drifton_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 694.0, 475.0, 186.0, 20.0 ],
                    "text": "±100 ms, one tap every ≥250 ms."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgcolor2": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "driftoff",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 569.0, 500.0, 125.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "delaydrift 0 250"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "driftoff_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 707.0, 499.0, 145.0, 20.0 ],
                    "text": "Drift OFF; return to curve."
                }
            },
            {
                "box": {
                    "id": "smooth",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 574.0, 85.0, 22.0 ],
                    "text": "smooth 50"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "smooth_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 573.0, 145.0, 20.0 ],
                    "text": "Crossfade ms; default 50."
                }
            },
            {
                "box": {
                    "id": "master",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 615.0, 85.0, 22.0 ],
                    "text": "master 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "master_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 614.0, 127.0, 20.0 ],
                    "text": "Master gain; default 1."
                }
            },
            {
                "box": {
                    "id": "norm",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 656.0, 85.0, 22.0 ],
                    "text": "normalize 1"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "norm_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 655.0, 141.0, 20.0 ],
                    "text": "Mono compensation ON."
                }
            },
            {
                "box": {
                    "id": "defaults",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 701.0, 85.0, 22.0 ],
                    "text": "defaults"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "defaults_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 657.0, 692.0, 223.0, 20.0 ],
                    "text": "Restore this instance’s opening settings."
                }
            },
            {
                "box": {
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 570.0, 755.0, 85.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "dump_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 754.0, 145.0, 20.0 ],
                    "text": "Print settings and routing."
                }
            },
            {
                "box": {
                    "id": "reference",
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
                        "rect": [ 70.0, 70.0, 1110.0, 896.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 20.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 15.0, 1060.0, 30.0 ],
                                    "text": "ec_tapdelay32_v4~ — arguments, defaults and messages"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 15.0,
                                    "id": "head0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 65.0, 1050.0, 24.0 ],
                                    "text": "CREATION SETTINGS"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 95.0, 1060.0, 20.0 ],
                                    "text": "Positional: ec_tapdelay32_v4~ [sources] [spacing_ms] [curve]"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 117.0, 1060.0, 20.0 ],
                                    "text": "Named: @sources 12 @spacing 250 @curve linear; optional @taps 24 or @taps auto."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 139.0, 1060.0, 20.0 ],
                                    "text": "Named settings override positional values. Named settings may appear in any order."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 161.0, 1060.0, 20.0 ],
                                    "text": "sources: integer 1–32 = input count for round robin. 0 / omitted = automatic one-to-one."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 183.0, 1060.0, 20.0 ],
                                    "text": "taps: integer 1–32 or auto (default). Auto follows sources; with sources 0 it follows the connected MC input count."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 205.0, 1060.0, 20.0 ],
                                    "text": "spacing: >0 through 10000 ms (decimals allowed); default 250. curve: default linear."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 227.0, 1060.0, 20.0 ],
                                    "text": "No arguments: automatic inputs, taps auto, 250 ms, linear. Before channels are reported, there is one undelayed tap."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row0_7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 249.0, 1060.0, 20.0 ],
                                    "text": "@delaydrift <0–10000 ms>: opening ± drift, default 0. Attribute-style settings; not Inspector/attrui attributes."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 15.0,
                                    "id": "head1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 283.0, 1050.0, 24.0 ],
                                    "text": "TIMING / ROUTING MESSAGES"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 313.0, 1060.0, 20.0 ],
                                    "text": "sources <0–32>   Change input mapping; auto tap count follows. Source changes clear stored audio."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 335.0, 1060.0, 20.0 ],
                                    "text": "taps <1–32>   Set an independent tap count.     taps auto   Restore source-following."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 357.0, 1060.0, 20.0 ],
                                    "text": "spacing <ms>   Change baseline.     curve <name>   Recompute using the selected curve."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 379.0, 1060.0, 20.0 ],
                                    "text": "tap <spacing_ms> <tap_count> [curve]   Set a complete timing pattern in one message."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 401.0, 1060.0, 20.0 ],
                                    "text": "<spacing_ms> <tap_count>   Legacy pair remains supported; uses the current curve and sets explicit tap count."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 423.0, 1060.0, 20.0 ],
                                    "text": "delays <t1> <t2> ...   Explicit absolute times (0–10000 ms), 1–32 entries; t1 is forced to 0. Rounded to nearest ms."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 445.0, 1060.0, 20.0 ],
                                    "text": "Explicit delays select custom mode / explicit tap count. spacing, curve, taps, or tap returns to generated timing."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 467.0, 1060.0, 20.0 ],
                                    "text": "Runtime patterns beyond 10000 ms are rejected atomically; no truncation or hidden rescaling."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 489.0, 1060.0, 20.0 ],
                                    "text": "With sources 0 / taps auto, an oversized input bus leaves the last valid times active; auto_pending 1 warns."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 511.0, 1060.0, 20.0 ],
                                    "text": "Reduce spacing or set fewer taps to resolve it. At startup, the fallback is one tap at 0 ms."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row1_10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 533.0, 1060.0, 20.0 ],
                                    "text": "Valid generated timing commands resume stopped audio. Routing-only changes in custom mode retain stop state."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 15.0,
                                    "id": "head2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 567.0, 1050.0, 24.0 ],
                                    "text": "AUDIO / LIFECYCLE MESSAGES"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 597.0, 1060.0, 20.0 ],
                                    "text": "stop   Immediately mute all taps and clear history.     start   Resume the current pattern with drift offsets reset."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 619.0, 1060.0, 20.0 ],
                                    "text": "delaydrift <amount_ms> [interval_ms]   Integer amount 0–10000; interval 1–2147483647. Default: 0 250."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 641.0, 1060.0, 20.0 ],
                                    "text": "Drift selects one tap from 2..N without repeats, then reshuffles. Offsets are relative to the curved base times."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 663.0, 1060.0, 20.0 ],
                                    "text": "delaydrift 0   Disable drift and crossfade to base times. Drift may reorder taps; it clamps to 0–10000 ms."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 685.0, 1060.0, 20.0 ],
                                    "text": "smooth <1–5000 ms>   Stationary-head crossfade, default 50. Long crossfades can lengthen drift intervals."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 707.0, 1060.0, 20.0 ],
                                    "text": "gains <g1> <g2> ...   0–1 per tap; omitted gains reset to 1. Default: 1 for every tap."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 729.0, 1060.0, 20.0 ],
                                    "text": "master <0–1>   Both audio outputs; default 1.     normalize <0|1>   Mono sum only; default 1."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 751.0, 1060.0, 20.0 ],
                                    "text": "dump   Report settings / times / mapping.     curves   List the nine curve names."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 773.0, 1060.0, 20.0 ],
                                    "text": "defaults   Restore opening sources / taps / spacing / curve / delaydrift; reset other audio defaults and resume."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "row2_9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 795.0, 1060.0, 20.0 ],
                                    "text": "MC output: 32 slots. This help uses mc.unpack~ 12 for taps 1–12; inactive taps are silent. Outlets 3/4: cycle bang / status."
                                }
                            },
                            {
                                "box": {
                                    "id": "cycle_ref",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 831.0, 1060.0, 40.0 ],
                                    "text": "bang / cycle starts a virtual timer equal to the final base_times value. cyclecancel cancels it. Outlet 3 bangs when the wait completes."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 569.0, 787.0, 212.0, 22.0 ],
                    "text": "p ALL_CONTROLS_AND_DEFAULTS"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "refnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 569.0, 820.0, 279.0, 20.0 ],
                    "text": "Double-click for every message, range and default."
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "curve_title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 894.0, 128.0, 137.0, 24.0 ],
                    "text": "CURVE LIBRARY"
                }
            },
            {
                "box": {
                    "id": "curve_linear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 171.0, 135.0, 22.0 ],
                    "text": "curve linear"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_linear_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 170.0, 135.0, 20.0 ],
                    "text": "Equal spacing (default)."
                }
            },
            {
                "box": {
                    "id": "curve_expand",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 215.0, 135.0, 22.0 ],
                    "text": "curve expand"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_expand_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 214.0, 110.0, 20.0 ],
                    "text": "Gaps widen gently."
                }
            },
            {
                "box": {
                    "id": "curve_contract",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 259.0, 135.0, 22.0 ],
                    "text": "curve contract"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_contract_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 258.0, 115.0, 20.0 ],
                    "text": "Gaps narrow gently."
                }
            },
            {
                "box": {
                    "id": "curve_exponential",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 303.0, 135.0, 22.0 ],
                    "text": "curve exponential"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_exponential_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 302.0, 148.0, 20.0 ],
                    "text": "Gaps widen exponentially."
                }
            },
            {
                "box": {
                    "id": "curve_logarithmic",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 347.0, 135.0, 22.0 ],
                    "text": "curve logarithmic"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_logarithmic_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 346.0, 159.0, 20.0 ],
                    "text": "Gaps narrow logarithmically."
                }
            },
            {
                "box": {
                    "id": "curve_s_curve",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 391.0, 135.0, 22.0 ],
                    "text": "curve s_curve"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_s_curve_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 390.0, 159.0, 20.0 ],
                    "text": "Close at ends; wider middle."
                }
            },
            {
                "box": {
                    "id": "curve_reverse_s",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 435.0, 135.0, 22.0 ],
                    "text": "curve reverse_s"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_reverse_s_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 434.0, 159.0, 20.0 ],
                    "text": "Wide at ends; closer middle."
                }
            },
            {
                "box": {
                    "id": "curve_stretch",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 479.0, 135.0, 22.0 ],
                    "text": "curve stretch"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_stretch_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 478.0, 109.0, 20.0 ],
                    "text": "Equal gaps × 1.25."
                }
            },
            {
                "box": {
                    "id": "curve_compress",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 894.0, 523.0, 135.0, 22.0 ],
                    "text": "curve compress"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curve_compress_desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1039.0, 522.0, 109.0, 20.0 ],
                    "text": "Equal gaps × 0.75."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "curvenote",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 894.0, 558.0, 263.0, 74.0 ],
                    "text": "Shapes preserve total duration before rounding.\nStretch / compress scale the duration.\nAll base times round to nearest ms.\nVery small spacings may give coincident taps.\nDrift offsets can reorder taps."
                }
            },
            {
                "box": {
                    "id": "demo3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 899.0, 725.0, 315.0, 22.0 ],
                    "text": "loadunique ec_tapdelay32_v4_example_3_inputs.maxpat"
                }
            },
            {
                "box": {
                    "id": "demo8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 899.0, 701.0, 299.0, 22.0 ],
                    "text": "loadunique ec_tapdelay32_v4_example_auto8.maxpat"
                }
            },
            {
                "box": {
                    "id": "loader",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 899.0, 752.0, 80.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "curve_menu_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 336.0, 100.0, 20.0 ],
                    "text": "SELECT CURVE"
                }
            },
            {
                "box": {
                    "allowdrag": 0,
                    "id": "curve_menu",
                    "items": [ "linear", ",", "expand", ",", "contract", ",", "exponential", ",", "logarithmic", ",", "s_curve", ",", "reverse_s", ",", "stretch", ",", "compress" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 144.5, 335.0, 189.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "curve_menu_prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 142.5, 359.0, 85.0, 22.0 ],
                    "text": "prepend curve"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "curve_menu_sync",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 244.0, 359.0, 140.0, 22.0 ],
                    "text": "prepend setsymbol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "cycle_trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 95.0, 215.0, 50.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "cycle_done_light",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 352.3333333333333, 409.0, 21.666666666666686, 21.666666666666686 ]
                }
            },
            {
                "box": {
                    "id": "cycle_done_caption",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.33333333333326, 409.83333333333337, 102.0, 20.0 ],
                    "text": "LAST TAP DONE"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "auto", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter0", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "breakout", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter1", 0 ],
                    "order": 0,
                    "source": [ "breakout", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter10", 0 ],
                    "order": 0,
                    "source": [ "breakout", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter11", 0 ],
                    "order": 0,
                    "source": [ "breakout", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter2", 0 ],
                    "order": 0,
                    "source": [ "breakout", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter3", 0 ],
                    "order": 0,
                    "source": [ "breakout", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter4", 0 ],
                    "order": 0,
                    "source": [ "breakout", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter5", 0 ],
                    "order": 0,
                    "source": [ "breakout", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter6", 0 ],
                    "order": 0,
                    "source": [ "breakout", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter7", 0 ],
                    "order": 0,
                    "source": [ "breakout", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter8", 0 ],
                    "order": 0,
                    "source": [ "breakout", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter9", 0 ],
                    "order": 0,
                    "source": [ "breakout", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 11 ],
                    "order": 1,
                    "source": [ "breakout", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 10 ],
                    "order": 1,
                    "source": [ "breakout", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 9 ],
                    "order": 1,
                    "source": [ "breakout", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 8 ],
                    "order": 1,
                    "source": [ "breakout", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 7 ],
                    "order": 1,
                    "source": [ "breakout", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 6 ],
                    "order": 1,
                    "source": [ "breakout", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 5 ],
                    "order": 1,
                    "source": [ "breakout", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 4 ],
                    "order": 1,
                    "source": [ "breakout", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "order": 1,
                    "source": [ "breakout", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "order": 1,
                    "source": [ "breakout", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "order": 1,
                    "source": [ "breakout", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "breakout", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 11 ],
                    "order": 0,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 10 ],
                    "order": 1,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 9 ],
                    "order": 2,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 8 ],
                    "order": 3,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 7 ],
                    "order": 4,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 6 ],
                    "order": 5,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 5 ],
                    "order": 6,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 4 ],
                    "order": 7,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 3 ],
                    "order": 8,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 2 ],
                    "order": 9,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "order": 10,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "order": 11,
                    "source": [ "click", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_compress", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_contract", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_expand", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_exponential", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_linear", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_logarithmic", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve_menu_prepend", 0 ],
                    "source": [ "curve_menu", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "source": [ "curve_menu_prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve_menu", 0 ],
                    "hidden": 1,
                    "source": [ "curve_menu_sync", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_reverse_s", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_s_curve", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "curve_stretch", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click", 0 ],
                    "hidden": 1,
                    "source": [ "cycle_trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "hidden": 1,
                    "source": [ "cycle_trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "defaults", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "breakout", 0 ],
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cycle_done_light", 0 ],
                    "hidden": 1,
                    "source": [ "delay", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "delay", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status_route", 0 ],
                    "hidden": 1,
                    "source": [ "delay", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loader", 0 ],
                    "hidden": 1,
                    "source": [ "demo3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loader", 0 ],
                    "hidden": 1,
                    "source": [ "demo8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "driftoff", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "drifton", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "dump", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "cycle_trigger", 0 ],
                    "hidden": 1,
                    "source": [ "impulse", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "norm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 11 ],
                    "source": [ "obj-3", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 10 ],
                    "source": [ "obj-3", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 9 ],
                    "source": [ "obj-3", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 8 ],
                    "source": [ "obj-3", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 7 ],
                    "source": [ "obj-3", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 6 ],
                    "source": [ "obj-3", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 5 ],
                    "source": [ "obj-3", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 4 ],
                    "source": [ "obj-3", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 2 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 11 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 10 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 9 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 8 ],
                    "order": 3,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 7 ],
                    "order": 4,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 6 ],
                    "order": 5,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 5 ],
                    "order": 6,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 4 ],
                    "order": 7,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 3 ],
                    "order": 8,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 2 ],
                    "order": 9,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "order": 10,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "order": 11,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 0 ],
                    "source": [ "pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "pair", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "pattern", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay", 1 ],
                    "source": [ "receive", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value_c", 0 ],
                    "hidden": 1,
                    "source": [ "set_c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value_m", 0 ],
                    "hidden": 1,
                    "source": [ "set_m", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value_n", 0 ],
                    "hidden": 1,
                    "source": [ "set_n", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "times", 0 ],
                    "hidden": 1,
                    "source": [ "settimes", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "sources12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "spacing250", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve_menu_sync", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "status_route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set_c", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "status_route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set_m", 0 ],
                    "hidden": 1,
                    "source": [ "status_route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set_n", 0 ],
                    "hidden": 1,
                    "source": [ "status_route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "settimes", 0 ],
                    "hidden": 1,
                    "midpoints": [ 322.5, 518.5, 59.5, 518.5 ],
                    "source": [ "status_route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send", 0 ],
                    "hidden": 1,
                    "source": [ "taps24", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "mono sum", "mono sum", 0 ],
            "obj-3": [ "master out", "master out", 0 ],
            "obj-7": [ "gain", "gain", 0 ],
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