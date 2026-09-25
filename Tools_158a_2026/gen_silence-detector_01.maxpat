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
        "rect": [ 176.0, 100.0, 1227.0, 886.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 148.0, 601.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-30",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 274.0, 174.0, 50.0, 64.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "channels": 4,
                    "id": "obj-29",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 4,
                    "numoutlets": 7,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 144.0, 670.0, 138.0, 70.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -50 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 144.0, 779.0, 153.0, 22.0 ],
                    "text": "dac~ 1 2 3 4"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 268.0, 42.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 143.0, 632.0, 139.0, 22.0 ],
                    "text": "gate~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 274.0, 141.0, 45.0, 22.0 ],
                    "text": "adc~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 189,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 772.0, 21.0, 451.0, 2540.0 ],
                    "text": "silence_detector~ / gen~ silence detector\n\nPurpose:\nDetects when an incoming audio signal has fallen below a defined noise floor for a specified amount of time.\n\nThis is a detector, not an audio gate. It reports a silence state. It does not modify or pass the audio signal unless an additional audio passthrough outlet is added.\n\nBasic meaning:\nout1 = official silence state\nout2 = measured envelope level in dBFS\nout3 = immediate below-threshold state\n\nRecommended parent-patch monitoring:\ngen~ outlet 1 -> snapshot~ 10 -> change -> sel 1 0\ngen~ outlet 2 -> snapshot~ 50 -> flonum\ngen~ outlet 3 -> snapshot~ 50 -> number\n\nOutlet 1:\nsilence state\n0 = audible / not silent\n1 = silent\n\nOutlet 2:\nmeasured envelope level in dBFS\nUse this outlet to calibrate floor_db.\nTypical values:\n0 dBFS = full scale\n-20 dBFS = strong signal\n-40 dBFS = moderate-to-quiet signal\n-60 dBFS = quiet signal\n-390 dBFS or lower = effectively zero input\n\nOutlet 3:\nraw below-threshold state\n0 = current envelope is above the floor\n1 = current envelope is below the floor\n\nImportant difference between out1 and out3:\nout3 changes immediately when the signal crosses the floor.\nout1 changes only after the signal has remained below the floor for hold_ms.\n\nParameter: floor_db\nThe silence threshold in dBFS.\nIf the measured envelope falls below this value, the detector begins counting toward silence.\nExample:\nfloor_db -40\nmeans the signal is considered potentially silent when the envelope is below -40 dBFS.\n\nParameter: hold_ms\nThe amount of time, in milliseconds, that the signal must remain below floor_db before silence is officially declared.\nExample:\nhold_ms 250\nmeans the signal must stay below the floor for 250 ms before out1 becomes 1.\n\nParameter: hysteresis_db\nThe extra number of dB above floor_db that the signal must reach before leaving the silent state.\nExample:\nfloor_db -40\nhysteresis_db 3\nenter silence below -40 dBFS\nexit silence above -37 dBFS\nThis prevents rapid flickering when the signal hovers near the threshold.\n\nParameter: attack_ms\nHow quickly the envelope follower rises when the incoming signal gets louder.\nSmaller values make the detector respond faster to new sound.\n\nParameter: release_ms\nHow quickly the envelope follower falls when the incoming signal gets quieter.\nLarger values make the envelope decay more slowly and can prevent false silence detection during short dips.\n\nInternal variable: env\nThe smoothed amplitude envelope of the input signal before conversion to dBFS.\n\nInternal variable: silent\nThe current silence state.\n0 = not silent\n1 = silent\nThis value is sent to out1.\n\nInternal variable: below_count\nCounts how many consecutive samples the envelope has remained below floor_db.\nWhen below_count reaches the sample equivalent of hold_ms, silent becomes 1.\n\nInternal variable: x\nThe incoming audio signal from inlet 1 of the parent gen~ object.\n\nInternal variable: xabs\nThe rectified positive-only amplitude of the signal.\nA tiny value is added to prevent log10(0).\n\nInternal variable: attack_samps\nattack_ms converted into samples.\n\nInternal variable: release_samps\nrelease_ms converted into samples.\n\nInternal variable: a_att\nThe smoothing coefficient used when the envelope is rising.\n\nInternal variable: a_rel\nThe smoothing coefficient used when the envelope is falling.\n\nInternal variable: env_db\nThe smoothed envelope converted to dBFS.\nThis value is sent to out2.\n\nInternal variable: entry_threshold\nThe threshold for entering silence.\nNormally this is the same as floor_db.\n\nInternal variable: exit_threshold\nThe threshold for leaving silence.\nexit_threshold = floor_db + hysteresis_db\n\nInternal variable: hold_samps\nhold_ms converted into samples.\n\nInternal variable: below\nReports whether the current envelope is below floor_db.\n0 = envelope is not below the floor\n1 = envelope is below the floor\nThis value is sent to out3.\n\nInternal variable: above_exit\nReports whether the envelope has risen high enough to leave the silent state.\n\nState-machine behavior:\nIf the detector is not silent and the envelope falls below floor_db, below_count begins increasing.\nIf the envelope rises above floor_db before hold_ms is reached, below_count resets to 0.\nIf below_count reaches hold_ms, the detector declares silence and out1 becomes 1.\nOnce silent, the detector remains silent until the envelope rises above floor_db + hysteresis_db.\nWhen that happens, out1 returns to 0.\n\nSuggested general settings:\nfloor_db -60\nhold_ms 250\nhysteresis_db 3\nattack_ms 5\nrelease_ms 100\n\nSuggested fast testing settings:\nfloor_db -40\nhold_ms 10\nhysteresis_db 3\nattack_ms 5\nrelease_ms 50\n\nCalibration procedure:\n1. Feed the normal audible signal into gen~.\n2. Watch outlet 2.\n3. Note the measured dBFS level.\n4. Set floor_db lower than that value.\nExample:\nIf normal signal reads around -28 dBFS, try floor_db -38 or -40.\n\nTesting with noise~:\nnoise~ -> *~ 0.1 -> gen~\nWith floor_db around -40, the detector should usually report audible:\nout1 = 0\nout3 = 0\nWhen the multiplier is set to 0., the detector should report silence after hold_ms:\nout1 = 1\nout3 = 1\n\nTroubleshooting:\nIf outlet 2 is stuck around -390 dBFS, gen~ is receiving silence or zero input.\nCheck that the audio signal is connected to the gen~ inlet.\nCheck that [in 1] is connected to the codebox inside gen~.\nCheck that the codebox outlets are connected to [out 1], [out 2], and [out 3].\nCheck that DSP is on.\n\nGen~ note:\nAfter editing codebox contents, click Compile.\nIf behavior seems stale, toggle DSP off and on.\nIf the patch structure is correct but behavior remains impossible, quit and restart Max."
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 143.0, 553.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-43",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 400.0, 365.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-42",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 271.0, 365.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-41",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 168.0, 365.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 684.0, 75.0, 29.5, 22.0 ],
                    "text": "0.1"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 661.0, 134.0, 80.0, 13.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 725.0, 83.0, 29.5, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 661.0, 102.0, 34.0, 22.0 ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 661.0, 42.0, 44.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 126.0, 105.5, 80.0, 13.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 258.0, 484.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 258.0, 524.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 738.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 156.0, 525.0, 74.0, 22.0 ],
                    "text": "print audible"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 553.0, 63.0, 22.0 ],
                    "text": "print silent"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 143.0, 489.0, 44.0, 22.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 143.0, 389.0, 81.0, 22.0 ],
                    "text": "snapshot~ 10"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 143.0, 438.0, 48.0, 22.0 ],
                    "text": "change"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 258.0, 398.0, 81.0, 22.0 ],
                    "text": "snapshot~ 50"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-14",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 258.0, 438.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 345.0, 438.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 345.0, 398.0, 81.0, 22.0 ],
                    "text": "snapshot~ 50"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "rightlefttest.wav",
                                "filename": "rightlefttest.wav",
                                "filekind": "audiofile",
                                "id": "u521005673",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-7",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 40.0, 56.0, 150.0, 30.0 ],
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
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 268.0, 74.0, 389.0, 22.0 ],
                    "text": "floor_db -30, hold_ms 10, hysteresis_db 3, attack_ms 5, release_ms 20"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 109.0, 169.0, 698.0, 484.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 537.0, 310.0, 35.0, 22.0 ],
                                    "text": "out 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 372.0, 306.0, 35.0, 22.0 ],
                                    "text": "out 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.0, 306.0, 35.0, 22.0 ],
                                    "text": "out 2"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param floor_db(-65);\nParam hold_ms(250);\nParam hysteresis_db(3);\nParam attack_ms(5);\nParam release_ms(100);\n\nHistory env(0);\nHistory silent(0);\nHistory below_count(0);\n\nx = in1;\n\n// rectified input amplitude\nxabs = abs(x) + 1e-20;\n\n// envelope follower\nattack_samps = max(1, attack_ms * 0.001 * samplerate);\nrelease_samps = max(1, release_ms * 0.001 * samplerate);\n\na_att = exp(-1 / attack_samps);\na_rel = exp(-1 / release_samps);\n\nenv_next = (xabs > env)\n    ? (a_att * env + (1 - a_att) * xabs)\n    : (a_rel * env + (1 - a_rel) * xabs);\n\nenv = env_next;\n\n// convert envelope to dBFS\nenv_db = 20 * log10(env + 1e-20);\n\n// threshold logic\nentry_threshold = floor_db;\nexit_threshold = floor_db + hysteresis_db;\n\n// hold time in samples\nhold_samps = max(1, hold_ms * 0.001 * samplerate);\n\n// current comparisons\nbelow = env_db < entry_threshold;\nabove_exit = env_db > exit_threshold;\n\n// state machine\nif (silent == 0) {\n    if (below) {\n        below_count += 1;\n\n        if (below_count >= hold_samps) {\n            silent = 1;\n        }\n    } else {\n        below_count = 0;\n    }\n} else {\n    if (above_exit) {\n        silent = 0;\n        below_count = 0;\n    }\n}\n\n// outputs\nout1 = silent;   // silence state: 0 = audible, 1 = silent\nout2 = env_db;   // measured envelope in dBFS\nout3 = below;    // immediate below-threshold state\nout4 = x;        // original audio thru-put",
                                    "fontface": 0,
                                    "fontname": "Menlo",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 50.0, 52.0, 569.0, 227.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 51.0, 306.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 151.0, 330.0, 402.0, 22.0 ],
                    "text": "gen~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 3 ],
                    "source": [ "obj-28", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 2 ],
                    "source": [ "obj-28", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-28", 1 ]
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
                    "destination": [ "obj-4", 3 ],
                    "source": [ "obj-29", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
                    "source": [ "obj-29", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-29": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "obj-30": [ "live.gain~[2]", "live.gain~", 0 ],
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