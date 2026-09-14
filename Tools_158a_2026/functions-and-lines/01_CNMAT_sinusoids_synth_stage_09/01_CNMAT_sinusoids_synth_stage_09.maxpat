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
        "rect": [ 2925.0, 124.0, 960.0, 959.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 0.0, 0.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "syn-model-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 109.0, 36.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "syn-model-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 107.0, 109.0, 76.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "gradient": 1,
                                    "id": "syn-model-message",
                                    "linecount": 48,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 195.0, 102.0, 88.0, 1322.0 ],
                                    "text": "27.5 1 55.015282 0.958334 82.4557 0.916667 110.090625 0.875 137.341327 0.833333 165.253883 0.791667 192.11705 0.75 220.554124 0.708334 246.72247 0.666666 276.06554 0.625 301.066668 0.583333 331.9 0.541666 355.013461 0.5 388.222226 0.458334 408.36 0.416667 445.28138 0.375 460.804342 0.333334 503.443572 0.291667 511.901327 0.25 560.993732 0.166667 563.250168 0.208333 607.115885 0.083333 625.498029 0.125 648.852219 0 691.356619 0.041667",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 1484.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "syn-model-trigger", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "syn-model-message", 0 ],
                                    "source": [ "syn-model-prepend", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "syn-model-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "syn-model-prepend", 0 ],
                                    "source": [ "syn-model-trigger", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 35.0, 1301.0, 71.0, 22.0 ],
                    "text": "p model_09"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 583.0, 597.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
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
                    "patching_rect": [ 583.0, 455.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -75 ],
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
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "syn-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 615.0, 700.0, 24.0 ],
                    "text": "SINUSOID MODEL GENERATOR — CNMAT sinusoids~",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-method",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 642.0, 699.0, 33.0 ],
                    "text": "Drift model: fn = n·f0 ± drift[n]·max-drift·ERB(n·f0). Partial 1 remains f0. Frequencies ≥ min(23 kHz, 0.499·sample rate) are filtered.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-count-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 107.0, 691.0, 160.0, 20.0 ],
                    "text": "COMPONENTS 2–255",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.729, 1.0, 1.0 ],
                    "elementcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hint": "Number of sinusoidal components 2-255",
                    "id": "syn-count-slider",
                    "knobcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "knobshape": 3,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 716.0, 210.0, 30.0 ],
                    "size": 254.0,
                    "valuepopuplabel": 1
                }
            },
            {
                "box": {
                    "id": "syn-plus2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 255.0, 720.0, 32.0, 22.0 ],
                    "text": "+ 2"
                }
            },
            {
                "box": {
                    "id": "syn-count-split",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 297.0, 720.0, 37.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "syn-count-display",
                    "maxclass": "number",
                    "maximum": 255,
                    "minimum": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 344.0, 720.0, 58.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-count-update",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 412.0, 720.0, 50.0, 22.0 ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "syn-size-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 472.0, 720.0, 52.0, 22.0 ],
                    "text": "size $1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-base-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 555.0, 692.0, 115.0, 20.0 ],
                    "text": "SOURCE BASE Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-base",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 555.0, 720.0, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-drift-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 721.0, 170.0, 20.0 ],
                    "text": "MAX DRIFT (ERB units)",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-drift",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 675.0, 720.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-freq-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 765.0, 215.0, 20.0 ],
                    "text": "INHARMONICITY  0.0–1.0",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.7294117647058823, 1.0, 1.0 ],
                    "candicane2": [ 0.0, 0.0, 0.0, 1.0 ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-freq-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 789.0, 875.0, 120.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "size": 25,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-amp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 924.0, 215.0, 20.0 ],
                    "text": "AMPLITUDE  0.0–1.0",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1.0 ],
                    "candicane2": [ 0.0, 0.0, 0.0, 1.0 ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-amp-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 948.0, 875.0, 120.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "size": 25,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "syn-js",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 35.0, 1275.0, 269.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "cnmat_sinusoid_model_generator_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js cnmat_sinusoid_model_generator_09.js",
                    "varname": "cnmat_sinusoid_model_generator_09"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-model-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 1330.0, 460.0, 20.0 ],
                    "text": "FINAL TRANSFORMED MODEL — AUTO-LOADED INTO sinusoids~",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-status-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 118.33333333333333, 1302.0, 76.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "syn-status-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.5, 1355.0, 335.0, 22.0 ],
                    "text": "25 25 0 0 0 23000",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 123.0, 1391.0, 435.0, 20.0 ],
                    "text": "SOURCE  OUTPUT  MERGED  REJECTED  INVALID  LIMIT Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-adstatus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 490.0, 1367.0, 70.0, 22.0 ],
                    "text": "adstatus sr"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-sr-display",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 570.0, 1367.0, 88.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-sr-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 570.0, 1391.0, 100.0, 20.0 ],
                    "text": "SAMPLE RATE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "checkedcolor": [ 0.611764705882353, 0.0, 0.027471133949191, 1.0 ],
                    "id": "syn-alias-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 696.0, 1364.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-alias-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 732.0, 1369.0, 178.0, 20.0 ],
                    "text": "FINAL FILTER ACTIVE",
                    "textcolor": [ 0.611764705882353, 0.0, 0.027471133949191, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-filtered-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 201.66666666666666, 1301.0, 76.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "syn-filtered-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 291.0, 1301.0, 35.0, 22.0 ],
                    "text": "none",
                    "textcolor": [ 0.611764705882353, 0.0, 0.027471133949191, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-filtered-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 373.0, 1302.0, 292.0, 20.0 ],
                    "text": "REJECTED: source-pair index / transformed Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 490.0, 1341.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "syn-delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 56.0, 1390.0, 62.0, 22.0 ],
                    "text": "delay 100"
                }
            },
            {
                "box": {
                    "id": "syn-init-bangs",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 21.0, 1448.0, 50.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "syn-load-count",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 22.0, 690.0, 77.0, 22.0 ],
                    "text": "loadmess 30"
                }
            },
            {
                "box": {
                    "id": "syn-load-base",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 461.0, 689.0, 89.0, 22.0 ],
                    "text": "loadmess 110."
                }
            },
            {
                "box": {
                    "id": "syn-load-drift",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 675.0, 689.0, 85.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 266.0, 150.0, 429.0, 20.0 ],
                    "text": "Rounded to integers — STORED, NOT TRIGGERED",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
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
                        "rect": [ 59.0, 119.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-analysis-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "", "bang", "" ],
                                    "patching_rect": [ 50.0, 100.0, 72.0, 22.0 ],
                                    "text": "t b l b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-store-normalized",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 57.0, 434.0, 50.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-store-127",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 337.0, 465.0, 50.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-reset-group",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 285.0, 150.0, 47.0, 22.0 ],
                                    "text": "zlclear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-reset-maximum",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 305.0, 190.0, 30.0, 22.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-iter-pairs",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 370.0, 150.0, 55.0, 22.0 ],
                                    "text": "zl.iter 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-unpack-pair",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 370.0, 190.0, 70.0, 22.0 ],
                                    "text": "unpack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-value-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.0, 191.0, 215.0, 20.0 ],
                                    "text": "value     duration ignored",
                                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-group-values",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 370.0, 230.0, 72.0, 22.0 ],
                                    "text": "zl.group 48"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-maximum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 370.0, 270.0, 74.0, 22.0 ],
                                    "text": "maximum 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-max-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 370.0, 310.0, 40.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-max-display",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 460.0, 295.0, 90.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-filter-max-display",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 555.0, 295.0, 112.0, 22.0 ],
                                    "text": "routepass int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-classify",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 370.0, 350.0, 66.0, 22.0 ],
                                    "text": "<= 1.0001"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-select-type",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 370.0, 390.0, 56.0, 22.0 ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-class-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.0, 344.0, 360.0, 33.0 ],
                                    "text": "Classification: maximum value ≤ 1.0001 = normalized envelope; otherwise = 0–127 control data.",
                                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-norm",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 455.0, 480.0, 169.0, 22.0 ],
                                    "text": "0-1 ENVELOPE STORED"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-127",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 480.0, 250.0, 22.0 ],
                                    "text": "RAW 0-127 FLOAT CONTROL STORED"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 455.0, 515.0, 77.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-envelope-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 490.0, 77.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-control-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 117.0, 691.0, 77.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 460.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 822.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 85.0, 822.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.0, 822.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-analysis-trigger", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-status-prepend", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-group-values", 0 ],
                                    "source": [ "obj-analysis-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-iter-pairs", 0 ],
                                    "source": [ "obj-analysis-trigger", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-reset-group", 0 ],
                                    "order": 1,
                                    "source": [ "obj-analysis-trigger", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-reset-maximum", 0 ],
                                    "order": 0,
                                    "source": [ "obj-analysis-trigger", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-store-127", 1 ],
                                    "order": 0,
                                    "source": [ "obj-analysis-trigger", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-store-normalized", 1 ],
                                    "order": 1,
                                    "source": [ "obj-analysis-trigger", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-select-type", 0 ],
                                    "source": [ "obj-classify", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-control-prepend", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-envelope-prepend", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-max-display", 0 ],
                                    "source": [ "obj-filter-max-display", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-maximum", 0 ],
                                    "source": [ "obj-group-values", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-unpack-pair", 0 ],
                                    "source": [ "obj-iter-pairs", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-classify", 0 ],
                                    "source": [ "obj-max-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-filter-max-display", 0 ],
                                    "source": [ "obj-max-trigger", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-max-trigger", 0 ],
                                    "source": [ "obj-maximum", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-group-values", 0 ],
                                    "source": [ "obj-reset-group", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-maximum", 1 ],
                                    "source": [ "obj-reset-maximum", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-status-127", 0 ],
                                    "order": 0,
                                    "source": [ "obj-select-type", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-status-norm", 0 ],
                                    "order": 0,
                                    "source": [ "obj-select-type", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-store-127", 0 ],
                                    "order": 1,
                                    "source": [ "obj-select-type", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-store-normalized", 0 ],
                                    "order": 1,
                                    "source": [ "obj-select-type", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-status-prepend", 0 ],
                                    "source": [ "obj-status-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-status-prepend", 0 ],
                                    "source": [ "obj-status-norm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-status-prepend", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-control-prepend", 0 ],
                                    "source": [ "obj-store-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-envelope-prepend", 0 ],
                                    "source": [ "obj-store-normalized", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-group-values", 0 ],
                                    "source": [ "obj-unpack-pair", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 45.0, 204.0, 63.0, 22.0 ],
                    "text": "p prep_09"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 25.0, 870.0, 29.0 ],
                    "text": "CNMAT SINUSOIDS~ SYNTHESIZER — STAGE 09",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 60.0, 870.0, 20.0 ],
                    "text": "receive function → normalized envelope or raw float control; receive function-rounded-integers → rounded MIDI control",
                    "textcolor": [ 0.3, 0.3, 0.3, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-receive-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.5, 104.0, 165.0, 20.0 ],
                    "text": "FUNCTION-LIST RECEIVER",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 130.0, 126.0, 22.0 ],
                    "text": "receive gain-envelope"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-envelope-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 85.0, 355.0, 429.0, 20.0 ],
                    "text": "NORMALIZED 0–1 AMPLITUDE ENVELOPE — STORED, NOT TRIGGERED",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-envelope-message",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 379.0, 760.0, 62.0 ],
                    "text": "0. 0. 0. 21.28 0. 21.28 0.01 21.28 0.01 21.28 0.01 21.28 0.01 21.28 0.02 21.28 0.02 21.28 0.02 21.28 0.03 21.28 0.03 21.28 0.03 21.28 0.04 21.28 0.04 21.28 0.05 21.28 0.05 21.28 0.06 21.28 0.07 21.28 0.08 21.28 0.08 21.28 0.09 21.28 0.1 21.28 0.11 21.28 0.13 21.28 0.14 21.28 0.15 21.28 0.17 21.28 0.18 21.28 0.2 21.28 0.22 21.28 0.24 21.28 0.27 21.28 0.29 21.28 0.32 21.28 0.35 21.28 0.38 21.28 0.42 21.28 0.45 21.28 0.5 21.28 0.54 21.28 0.59 21.28 0.65 21.28 0.71 21.28 0.77 21.28 0.84 21.28 0.92 21.28 1. 21.28",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
                    "id": "obj-trigger-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 14.0, 343.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-trigger-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 321.0, 185.0, 20.0 ],
                    "text": "TRIGGER STORED ENVELOPE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 426.0, 471.0, 73.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-signal-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 465.0, 505.0, 480.0, 20.0 ],
                    "text": "AMPLITUDE MULTIPLIER — CNMAT SINUSOIDS~ OUTPUT",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-signal-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 294.0, 481.0, 70.0, 22.0 ],
                    "text": "sinusoids~"
                }
            },
            {
                "box": {
                    "id": "obj-multiply",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 409.0, 504.0, 36.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "comment": "envelope-controlled synthesis output",
                    "id": "obj-signal-out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 409.0, 550.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-signal-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 525.0, 230.0, 20.0 ],
                    "text": "CNMAT sinusoidal oscillator bank",
                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-control-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0, 218.0, 411.0, 20.0 ],
                    "text": "RAW 0–127 FLOAT CONTROL LIST — STORED FOR THE NEXT STAGE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.6388385052447552, 0.5481945727244106, 0.13014206719178864, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.6388385052447552, 0.5481945727244106, 0.13014206719178864, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-control-message",
                    "linecount": 5,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 57.0, 240.0, 760.0, 76.0 ],
                    "text": "0. 0. 5.4 21.28 10.81 21.28 16.21 21.28 21.62 21.28 27.02 21.28 32.43 21.28 37.83 21.28 43.23 21.28 48.64 21.28 54.04 21.28 59.45 21.28 64.85 21.28 70.26 21.28 75.66 21.28 81.06 21.28 86.47 21.28 91.87 21.28 97.28 21.28 102.68 21.28 108.09 21.28 113.49 21.28 118.89 21.28 124.3 21.28 124.3 21.28 118.89 21.28 113.49 21.28 108.09 21.28 102.68 21.28 97.28 21.28 91.87 21.28 86.47 21.28 81.06 21.28 75.66 21.28 70.26 21.28 64.85 21.28 59.45 21.28 54.04 21.28 48.64 21.28 43.23 21.28 37.83 21.28 32.43 21.28 27.02 21.28 21.62 21.28 16.21 21.28 10.81 21.28 5.4 21.28 0. 21.28",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-receive-rounded",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 104.0, 141.0, 22.0 ],
                    "text": "receive rounded-integers"
                }
            },
            {
                "box": {
                    "id": "obj-rounded-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 147.0, 77.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-rounded-message",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 177.0, 482.0, 35.0 ],
                    "text": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgfillcolor_color": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "id": "syn-freq-shape-menu",
                    "items": [ "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 762.0, 345.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1 ],
                    "bgfillcolor_color": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "id": "syn-amp-shape-menu",
                    "items": [ "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 921.0, 345.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-shapes",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 373.0, 1355.0, 176.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_09.js",
                    "varname": "dynamic_shape_library_09"
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 735.0, 1275.0, 181.0, 20.0 ],
                    "text": "A→B LINEAR MORPH ENGINE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-load-shape-menus",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 487.0, 762.0, 76.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-harmonic-amp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 36.0, 1120.0, 214.0, 20.0 ],
                    "text": "HARMONIC ANCHOR AMP  0.0–1.0",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-harmonic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 565.0, 1083.0, 345.0, 20.0 ],
                    "text": "Exact n × base frequency; default amplitudes = 0.0",
                    "textcolor": [ 0.611764705882353, 0.0, 0.027471133949191, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "candicane2": [ 0.0, 0.0, 0.0, 1.0 ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-harmonic-amp-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1147.0, 875.0, 120.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "size": 25,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
                    "id": "syn-random-freq-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.0, 762.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-freq-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 765.0, 62.0, 20.0 ],
                    "text": "RANDOM",
                    "textcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1.0 ],
                    "id": "syn-random-amp-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.0, 921.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-amp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 924.0, 62.0, 20.0 ],
                    "text": "RANDOM",
                    "textcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "id": "syn-random-harmonic-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.0, 1117.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-harmonic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 423.0, 1120.0, 62.0, 20.0 ],
                    "text": "RANDOM",
                    "textcolor": [ 0.611764705882353, 0.0, 0.027471133949191, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1 ],
                    "bgfillcolor_color": [ 0.972549, 0.462745, 0.501961, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "id": "syn-harmonic-shape-menu",
                    "items": [ "Flat zero (default)", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 565.0, 1118.0, 345.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "syn-load-harmonic-menu",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 487.0, 1118.0, 76.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "syn-random-js",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 669.0, 1301.0, 230.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "random_multislider_values_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js random_multislider_values_09.js",
                    "varname": "random_multislider_values_09"
                }
            },
            {
                "box": {
                    "id": "obj-function-list-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 45.0, 166.0, 58.0, 22.0 ],
                    "text": "route list"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-freq-interp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 765.0, 74.0, 20.0 ],
                    "text": "MORPH MS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-freq-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 315.0, 762.0, 68.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-amp-interp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 924.0, 74.0, 20.0 ],
                    "text": "MORPH MS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-amp-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 315.0, 921.0, 68.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-harmonic-interp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 1120.0, 74.0, 20.0 ],
                    "text": "MORPH MS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-harmonic-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 315.0, 1117.0, 68.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-load-freq-interp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1400.0, 95.0, 22.0 ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-load-amp-interp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1425.0, 95.0, 22.0 ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-load-harmonic-interp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1450.0, 95.0, 22.0 ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "id": "syn-interpolation-js",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 480.0, 1274.0, 250.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "multislider_interpolation_engine_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js multislider_interpolation_engine_09.js",
                    "varname": "multislider_interpolation_engine_09"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-freq-list",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 920.0, 1275.0, 82.0, 22.0 ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-amp-list",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 920.0, 1300.0, 82.0, 22.0 ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-anchor-list",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 920.0, 1325.0, 82.0, 22.0 ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-count-number",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1007.0, 1275.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-base-number",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1007.0, 1300.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-drift-number",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1007.0, 1325.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-sr-number",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1007.0, 1350.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-sr-display",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1125.0, 1275.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-count-display",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1125.0, 1300.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-base-display",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1125.0, 1325.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-drift-display",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1125.0, 1350.0, 112.0, 22.0 ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "rt09-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1490.0, 875.0, 20.0 ],
                    "text": "GLOBAL MODEL RETUNING / TRANSFORMS — STAGE 09",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt09-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1520.0, 875.0, 20.0 ],
                    "text": "Source sliders remain untouched. Target changes glide automatically; post transforms are always recalculated from the stored source.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt09-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1555.0, 240.0, 20.0 ],
                    "text": "RETUNING MODE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt09-mode",
                    "items": [ "Rebuild base / ERB drift", ",", "Ratio transpose / fixed spectrum", ",", "Additive Hz shift" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1580.0, 240.0, 22.0 ],
                    "textcolor": [ 0.1607843137254902, 0.45098039215686275, 0.26666666666666666, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-mode-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1580.0, 80.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt09-target-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 1555.0, 109.0, 20.0 ],
                    "text": "TARGET BASE Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-target",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 290.0, 1580.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-target-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1580.0, 100.0, 22.0 ],
                    "text": "loadmess 110"
                }
            },
            {
                "box": {
                    "id": "rt09-glide-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 395.0, 1555.0, 100.0, 20.0 ],
                    "text": "RETUNE MS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-glide",
                    "maxclass": "flonum",
                    "maximum": 600000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 395.0, 1580.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-glide-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1580.0, 100.0, 22.0 ],
                    "text": "loadmess 1000"
                }
            },
            {
                "box": {
                    "id": "rt09-current-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 1555.0, 120.0, 20.0 ],
                    "text": "CURRENT BASE Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-current",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 500.0, 1580.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-current-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1060.0, 1580.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rt09-bypass",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 625.0, 1577.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "id": "rt09-bypass-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 1580.0, 230.0, 20.0 ],
                    "text": "POST TRANSFORM BYPASS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-bypass-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1608.0, 100.0, 22.0 ],
                    "text": "prepend bypass"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-bypass-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1608.0, 80.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt09-semitones-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1630.0, 125.0, 20.0 ],
                    "text": "SEMITONES",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-semitones",
                    "maxclass": "flonum",
                    "maximum": 120.0,
                    "minimum": -120.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-semitones-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-semitones-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend semitones"
                }
            },
            {
                "box": {
                    "id": "rt09-cents-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 1630.0, 125.0, 20.0 ],
                    "text": "CENTS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-cents",
                    "maxclass": "flonum",
                    "maximum": 12000.0,
                    "minimum": -12000.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 160.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-cents-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-cents-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend cents"
                }
            },
            {
                "box": {
                    "id": "rt09-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 1630.0, 125.0, 20.0 ],
                    "text": "EXTRA SHIFT Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-offset",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": -23000.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 285.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-offset-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-offset-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend offset"
                }
            },
            {
                "box": {
                    "id": "rt09-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 410.0, 1630.0, 125.0, 20.0 ],
                    "text": "MODEL AMP GAIN",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-gain",
                    "maxclass": "flonum",
                    "maximum": 16.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 410.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-gain-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-gain-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend gain"
                }
            },
            {
                "box": {
                    "id": "rt09-low-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 535.0, 1630.0, 125.0, 20.0 ],
                    "text": "MINIMUM Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-low",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 535.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-low-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-low-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend low"
                }
            },
            {
                "box": {
                    "id": "rt09-high-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 660.0, 1630.0, 125.0, 20.0 ],
                    "text": "MAXIMUM Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-high",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 660.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-high-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 23000"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-high-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend high"
                }
            },
            {
                "box": {
                    "id": "rt09-cluster-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785.0, 1630.0, 125.0, 20.0 ],
                    "text": "CLUSTER SPAN Hz",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "rt09-cluster",
                    "maxclass": "flonum",
                    "maximum": 23000.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 785.0, 1655.0, 95.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-cluster-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-cluster-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1655.0, 120.0, 22.0 ],
                    "text": "prepend cluster"
                }
            },
            {
                "box": {
                    "id": "rt09-retuning",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 35.0, 1700.0, 290.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "global_retuning_controller_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js global_retuning_controller_09.js",
                    "varname": "global_retuning_controller_09"
                }
            },
            {
                "box": {
                    "id": "rt09-transform",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 350.0, 1700.0, 285.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sinusoid_model_transform_09.js",
                        "parameter_enable": 0
                    },
                    "text": "js sinusoid_model_transform_09.js",
                    "varname": "sinusoid_model_transform_09"
                }
            },
            {
                "box": {
                    "id": "rt09-safe-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1735.0, 875.0, 20.0 ],
                    "text": "Bypass skips post tuning/gain/clusters, NOT base rebuilding or safety filtering. Clusters OFF (0 Hz) preserve beating.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-sr-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1050.0, 1735.0, 115.0, 22.0 ],
                    "text": "prepend samplerate"
                }
            },
            {
                "box": {
                    "id": "rt09-source-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1775.0, 875.0, 20.0 ],
                    "text": "FULL SOURCE MODEL — STORED BEFORE POST TRANSFORMS / ALIAS FILTER (clicking does not send)",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt09-source-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1775.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647058823, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "rt09-source-message",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 1800.0, 875.0, 62.0 ],
                    "text": "220 1 440.122259 0.958334 659.645599 0.916667 880.725 0.875 1098.730619 0.833333 1322.031064 0.791667 1536.9364 0.75 1764.43299 0.708334 1973.779762 0.666666 2208.524321 0.625 2408.533341 0.583333 2655.195584 0.541666 2840.107692 0.5 3105.777811 0.458334 3266.878573 0.416667 3562.251037 0.375 3686.434739 0.333334 4027.548579 0.291667 4095.210614 0.25 4506.001341 0.208333 4487.95 0.166667 5003.984233 0.125 4856.927078 0.083333 5530.852948 0.041667 5190.81775 0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt09-study",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1880.0, 875.0, 20.0 ],
                    "text": "Try ratio mode: 110 → 220 Hz. Try shift mode: 110 → 220 Hz adds 110 Hz to every partial. Rebuild mode recalculates ERB drift.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-control-message", 0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-envelope-message", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-signal-in", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-line", 0 ],
                    "source": [ "obj-envelope-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-function-list-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multiply", 1 ],
                    "source": [ "obj-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-multiply", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-signal-out", 0 ],
                    "order": 1,
                    "source": [ "obj-multiply", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-function-list-gate", 0 ],
                    "source": [ "obj-receive", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-rounded-prepend", 0 ],
                    "source": [ "obj-receive-rounded", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-rounded-message", 0 ],
                    "source": [ "obj-rounded-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multiply", 0 ],
                    "source": [ "obj-signal-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-envelope-message", 0 ],
                    "source": [ "obj-trigger-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-bypass-command", 0 ],
                    "source": [ "rt09-bypass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-bypass-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-bypass", 0 ],
                    "source": [ "rt09-bypass-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-cents-command", 0 ],
                    "source": [ "rt09-cents", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-cents-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-cents", 0 ],
                    "source": [ "rt09-cents-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-cluster-command", 0 ],
                    "source": [ "rt09-cluster", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-cluster-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-cluster", 0 ],
                    "source": [ "rt09-cluster-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-current", 0 ],
                    "source": [ "rt09-current-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-gain-command", 0 ],
                    "source": [ "rt09-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-gain-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-gain", 0 ],
                    "source": [ "rt09-gain-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-retuning", 3 ],
                    "source": [ "rt09-glide", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-glide", 0 ],
                    "source": [ "rt09-glide-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-high-command", 0 ],
                    "source": [ "rt09-high", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-high-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-high", 0 ],
                    "source": [ "rt09-high-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-low-command", 0 ],
                    "source": [ "rt09-low", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-low-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-low", 0 ],
                    "source": [ "rt09-low-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-retuning", 2 ],
                    "source": [ "rt09-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-mode", 0 ],
                    "source": [ "rt09-mode-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-offset-command", 0 ],
                    "source": [ "rt09-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-offset-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-offset", 0 ],
                    "source": [ "rt09-offset-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-current-set", 0 ],
                    "source": [ "rt09-retuning", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-target", 0 ],
                    "source": [ "rt09-retuning", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-retuning", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-base-number", 0 ],
                    "source": [ "rt09-retuning", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-semitones-command", 0 ],
                    "source": [ "rt09-semitones", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-semitones-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-semitones", 0 ],
                    "source": [ "rt09-semitones-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-source-message", 0 ],
                    "source": [ "rt09-source-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 1 ],
                    "source": [ "rt09-sr-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-retuning", 1 ],
                    "source": [ "rt09-target", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-target", 0 ],
                    "source": [ "rt09-target-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "rt09-transform", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-source-prepend", 0 ],
                    "source": [ "rt09-transform", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-alias-toggle", 0 ],
                    "source": [ "rt09-transform", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filtered-prepend", 0 ],
                    "source": [ "rt09-transform", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-status-prepend", 0 ],
                    "source": [ "rt09-transform", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-sr-command", 0 ],
                    "order": 1,
                    "source": [ "syn-adstatus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-sr-display", 0 ],
                    "order": 0,
                    "source": [ "syn-adstatus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-sr-number", 0 ],
                    "order": 2,
                    "source": [ "syn-adstatus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 7 ],
                    "source": [ "syn-amp-interp-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-dynamic-shapes", 2 ],
                    "source": [ "syn-amp-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-amp-list", 0 ],
                    "order": 0,
                    "source": [ "syn-amp-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 4 ],
                    "order": 1,
                    "source": [ "syn-amp-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-retuning", 0 ],
                    "source": [ "syn-base", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-plus2", 0 ],
                    "source": [ "syn-count-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-count-update", 0 ],
                    "source": [ "syn-count-split", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-count-display", 0 ],
                    "source": [ "syn-count-split", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-dynamic-shapes", 0 ],
                    "source": [ "syn-count-update", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-count-number", 0 ],
                    "order": 0,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-random-js", 0 ],
                    "order": 1,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-size-message", 0 ],
                    "source": [ "syn-count-update", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-init-bangs", 0 ],
                    "source": [ "syn-delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-drift-number", 0 ],
                    "source": [ "syn-drift", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 2 ],
                    "source": [ "syn-dynamic-shapes", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 1 ],
                    "source": [ "syn-dynamic-shapes", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 0 ],
                    "source": [ "syn-dynamic-shapes", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 1 ],
                    "source": [ "syn-filter-amp-list", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 2 ],
                    "source": [ "syn-filter-anchor-list", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-base", 0 ],
                    "source": [ "syn-filter-base-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 4 ],
                    "source": [ "syn-filter-base-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-count-display", 0 ],
                    "source": [ "syn-filter-count-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 3 ],
                    "source": [ "syn-filter-count-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-drift", 0 ],
                    "source": [ "syn-filter-drift-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 5 ],
                    "source": [ "syn-filter-drift-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 0 ],
                    "source": [ "syn-filter-freq-list", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-sr-display", 0 ],
                    "source": [ "syn-filter-sr-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-js", 6 ],
                    "source": [ "syn-filter-sr-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filtered-message", 0 ],
                    "source": [ "syn-filtered-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 6 ],
                    "source": [ "syn-freq-interp-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-dynamic-shapes", 1 ],
                    "source": [ "syn-freq-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-freq-list", 0 ],
                    "order": 0,
                    "source": [ "syn-freq-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 3 ],
                    "order": 1,
                    "source": [ "syn-freq-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-anchor-list", 0 ],
                    "order": 0,
                    "source": [ "syn-harmonic-amp-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 5 ],
                    "order": 1,
                    "source": [ "syn-harmonic-amp-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 8 ],
                    "source": [ "syn-harmonic-interp-ms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-dynamic-shapes", 3 ],
                    "source": [ "syn-harmonic-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-slider", 0 ],
                    "source": [ "syn-init-bangs", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-slider", 0 ],
                    "source": [ "syn-init-bangs", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-amp-slider", 0 ],
                    "source": [ "syn-init-bangs", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-slider", 0 ],
                    "source": [ "syn-interpolation-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-slider", 0 ],
                    "source": [ "syn-interpolation-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-amp-slider", 0 ],
                    "source": [ "syn-interpolation-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt09-transform", 0 ],
                    "source": [ "syn-js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-interp-ms", 0 ],
                    "source": [ "syn-load-amp-interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-base-display", 0 ],
                    "source": [ "syn-load-base", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-count-slider", 0 ],
                    "source": [ "syn-load-count", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-drift-display", 0 ],
                    "source": [ "syn-load-drift", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-interp-ms", 0 ],
                    "source": [ "syn-load-freq-interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-interp-ms", 0 ],
                    "source": [ "syn-load-harmonic-interp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-shape-menu", 0 ],
                    "source": [ "syn-load-harmonic-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-shape-menu", 0 ],
                    "order": 0,
                    "source": [ "syn-load-shape-menus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-shape-menu", 0 ],
                    "order": 1,
                    "source": [ "syn-load-shape-menus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-adstatus", 0 ],
                    "order": 0,
                    "source": [ "syn-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-delay", 0 ],
                    "order": 1,
                    "source": [ "syn-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-count-split", 0 ],
                    "source": [ "syn-plus2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-random-js", 2 ],
                    "source": [ "syn-random-amp-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-random-js", 1 ],
                    "source": [ "syn-random-freq-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-random-js", 3 ],
                    "source": [ "syn-random-harmonic-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 2 ],
                    "source": [ "syn-random-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 1 ],
                    "source": [ "syn-random-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 0 ],
                    "source": [ "syn-random-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-slider", 0 ],
                    "order": 1,
                    "source": [ "syn-size-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-slider", 0 ],
                    "order": 2,
                    "source": [ "syn-size-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-amp-slider", 0 ],
                    "order": 0,
                    "source": [ "syn-size-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-status-message", 0 ],
                    "source": [ "syn-status-prepend", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.gain~", "live.gain~", 0 ],
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