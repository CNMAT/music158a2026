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
        "rect": [ 2734.0, 124.0, 1275.0, 951.0 ],
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
                                    "linecount": 228,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 195.0, 102.0, 88.0, 1322.0 ],
                                    "text": "27.5 1 55 1 82.5 1 110 0 137.5 0 165 0 192.5 0 220 1 247.5 1 275 0 302.5 0 330 1 357.5 0 385 0 412.5 0 440 1 467.5 0 495 0 522.5 0 550 0 577.5 0 605 1 632.5 1 660 0 687.5 1 715 1 742.5 0 770 1 797.5 0 825 0 852.5 1 880 1 907.5 1 935 0 962.5 0 990 0 1017.5 0 1045 0 1072.5 0 1100 1 1127.5 1 1155 0 1182.5 0 1210 1 1237.5 0 1265 0 1292.5 0 1320 0 1347.5 0 1375 1 1402.5 0 1430 0 1457.5 0 1485 0 1512.5 0 1540 1 1567.5 0 1595 0 1622.5 1 1650 1 1677.5 0 1705 1 1732.5 0.992459 1760 0.981948 1787.5 0 1815 0.960922 1842.5 0.95041 1870 0.940184 1897.5 0.930138 1925 0.920091 1952.5 0 1980 0 2007.5 0.89046 2035 0.88084 2062.5 0.871222 2090 0 2117.5 0.852283 2145 0 2172.5 0.83383 2200 0.824603 2227.5 0.815498 2255 0 2282.5 0 2310 0.788901 2337.5 0 2365 0.771471 2392.5 0.762936 2420 0.754401 2447.5 0 2475 0.737479 2502.5 0.729247 2530 0 2557.5 0.712786 2585 0 2612.5 0 2640 0.688669 2667.5 0.680717 2695 0.672766 2722.5 0.664978 2750 0 2777.5 0.649588 2805 0.641892 2832.5 0.634247 2860 0.626788 2887.5 0.619328 2915 0.611868 2942.5 0.604409 2970 0.59712 2997.5 0.589876 3025 0.582633 3052.5 0.57539 3080 0.568218 3107.5 0.561174 3135 0.554129 3162.5 0 3190 0.54004 3217.5 0.533166 3245 0.526304 3272.5 0 3300 0.51258 3327.5 0.505804 3355 0.499109 3382.5 0 3410 0.48572 3437.5 0.479039 3465 0 3492.5 0 3520 0.459417 3547.5 0.452877 3575 0.446429 3602.5 0.44003 3630 0 3657.5 0 3685 0.420863 3712.5 0.414593 3740 0.408324 3767.5 0.402055 3795 0 3822.5 0 3850 0.383462 3877.5 0.377312 3905 0.371162 3932.5 0 3960 0.359013 3987.5 0.352972 4015 0 4042.5 0 4070 0.334947 4097.5 0 4125 0.323067 4152.5 0 4180 0.311237 4207.5 0.305389 4235 0.299541 4262.5 0.293693 4290 0.287855 4317.5 0 4345 0.27633 4372.5 0.270568 4400 0.264805 4427.5 0.259096 4455 0 4482.5 0.247725 4510 0.24204 4537.5 0 4565 0.230761 4592.5 0 4620 0 4647.5 0.21392 4675 0.208362 4702.5 0 4730 0.197267 4757.5 0 4785 0.186195 4812.5 0 4840 0.175221 4867.5 0.169734 4895 0.164246 4922.5 0 4950 0 4977.5 0 5005 0 5032.5 0.137115 5060 0.131735 5087.5 0.126354 5115 0 5142.5 0.115598 5170 0 5197.5 0.10493 5225 0 5252.5 0.094261 5280 0 5307.5 0.083666 5335 0 5362.5 0.073085 5390 0 5417.5 0 5445 0 5472.5 0.052049 5500 0 5527.5 0 5555 0.036361 5582.5 0.031145 5610 0.02593 5637.5 0.020729 5665 0.015546 5692.5 0 5720 0 5747.5 0",
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
                    "patching_rect": [ 35.0, 1301.0, 70.0, 22.0 ],
                    "text": "p model_11"
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
                            "parameter_initial": [ -65 ],
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
                    "patching_rect": [ 35.0, 720.0, 210.0, 30.0 ],
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
                    "cantchange": 1,
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
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 720.0, 62.0, 20.0 ],
                    "text": "MEMORY",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
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
                    "size": 209,
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
                    "size": 209,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "syn-js",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 35.0, 1275.0, 269.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "cnmat_sinusoid_model_generator_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js cnmat_sinusoid_model_generator_11.js",
                    "varname": "cnmat_sinusoid_model_generator_11"
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
                    "text": "327 209 118 0 0 12000",
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
                    "patching_rect": [ 45.0, 204.0, 62.0, 22.0 ],
                    "text": "p prep_11"
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
                    "text": "CNMAT SINUSOIDS~ SYNTHESIZER — STAGE 11",
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
                    "items": [ "Flat zero (default)", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
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
                    "items": [ "Flat zero", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
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
                    "patching_rect": [ 309.0, 1274.0, 175.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_11.js",
                    "varname": "dynamic_shape_library_11"
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 735.0, 1275.0, 175.0, 20.0 ],
                    "text": "MORPH / 255-SLOT MEMORY",
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
                    "size": 209,
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
                        "filename": "random_multislider_values_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js random_multislider_values_11.js",
                    "varname": "random_multislider_values_11"
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
                    "numinlets": 11,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 480.0, 1274.0, 250.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "multislider_interpolation_engine_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js multislider_interpolation_engine_11.js",
                    "varname": "multislider_interpolation_engine_11"
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
                    "id": "rt11-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1490.0, 875.0, 20.0 ],
                    "text": "GLOBAL MODEL RETUNING / TRANSFORMS — STAGE 11",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt11-note",
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
                    "id": "rt11-mode-label",
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
                    "id": "rt11-mode",
                    "items": [ "Rebuild base / ERB drift", ",", "Ratio transpose / fixed spectrum", ",", "Additive Hz shift" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1580.0, 240.0, 22.0 ],
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt11-mode-load",
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
                    "id": "rt11-target-label",
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
                    "id": "rt11-target",
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
                    "id": "rt11-target-load",
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
                    "id": "rt11-glide-label",
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
                    "id": "rt11-glide",
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
                    "id": "rt11-glide-load",
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
                    "id": "rt11-current-label",
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
                    "id": "rt11-current",
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
                    "id": "rt11-current-set",
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
                    "id": "rt11-bypass",
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
                    "id": "rt11-bypass-label",
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
                    "id": "rt11-bypass-command",
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
                    "id": "rt11-bypass-load",
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
                    "id": "rt11-semitones-label",
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
                    "id": "rt11-semitones",
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
                    "id": "rt11-semitones-load",
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
                    "id": "rt11-semitones-command",
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
                    "id": "rt11-cents-label",
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
                    "id": "rt11-cents",
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
                    "id": "rt11-cents-load",
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
                    "id": "rt11-cents-command",
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
                    "id": "rt11-offset-label",
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
                    "id": "rt11-offset",
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
                    "id": "rt11-offset-load",
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
                    "id": "rt11-offset-command",
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
                    "id": "rt11-gain-label",
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
                    "id": "rt11-gain",
                    "maxclass": "flonum",
                    "maximum": 2.0,
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
                    "id": "rt11-gain-load",
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
                    "id": "rt11-gain-command",
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
                    "id": "rt11-low-label",
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
                    "id": "rt11-low",
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
                    "id": "rt11-low-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt11-low-command",
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
                    "id": "rt11-high-label",
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
                    "id": "rt11-high",
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
                    "id": "rt11-high-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 1655.0, 100.0, 22.0 ],
                    "text": "loadmess 12000"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rt11-high-command",
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
                    "id": "rt11-cluster-label",
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
                    "id": "rt11-cluster",
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
                    "id": "rt11-cluster-load",
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
                    "id": "rt11-cluster-command",
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
                    "id": "rt11-retuning",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 35.0, 1700.0, 290.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "global_retuning_controller_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js global_retuning_controller_11.js",
                    "varname": "global_retuning_controller_11"
                }
            },
            {
                "box": {
                    "id": "rt11-transform",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 350.0, 1700.0, 285.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "sinusoid_model_transform_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js sinusoid_model_transform_11.js",
                    "varname": "sinusoid_model_transform_11"
                }
            },
            {
                "box": {
                    "id": "rt11-safe-note",
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
                    "id": "rt11-sr-command",
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
                    "id": "rt11-source-label",
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
                    "id": "rt11-source-prepend",
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
                    "id": "rt11-source-message",
                    "linecount": 28,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1323.0, 1659.0, 875.0, 384.0 ],
                    "text": "55 1 55 1 110 0.995192 110 0.981221 165 0.990384 165 0.962442 220 0 275 0 330 0 385 0 440 0.966346 440 0.87249 495 0.961539 495 0.855243 550 0 605 0 660 0.947115 660 0.806526 715 0 770 0 825 0 880 0.927885 880 0.745394 935 0 990 0 1045 0 1100 0 1155 0 1210 0.899039 1210 0.662022 1265 0.894231 1265 0.648662 1320 0 1375 0.884615 1375 0.623981 1430 0.879807 1430 0.611711 1485 0 1540 0.870192 1540 0.587617 1595 0 1650 0 1705 0.855769 1705 0.553808 1760 0.850962 1760 0.542558 1815 0.846154 1815 0.532208 1870 0 1925 0 1980 0 2035 0 2090 0 2145 0 2200 0.8125 2200 0.462793 2255 0.807693 2255 0.453419 2310 0 2365 0 2420 0.793269 2420 0.427228 2475 0 2530 0 2585 0 2640 0 2695 0 2750 0.764423 2750 0.378435 2805 0 2860 0 2915 0 2970 0 3025 0 3080 0.735577 3080 0.33539 3135 0 3190 0 3245 0.721154 3245 0.31536 3300 0.716346 3300 0.309148 3355 0 3410 0.706731 3410 0.296726 3465 0.701923 3465 0.290536 3520 0.697116 3520 0.284832 3575 0 3630 0.6875 3630 0.273422 3685 0.682692 3685 0.267718 3740 0.677884 3740 0.2623 3795 0.673077 3795 0.257061 3850 0.668269 3850 0.251822 3905 0 3960 0 4015 0.653846 4015 0.236614 4070 0.649038 4070 0.231802 4125 0.644231 4125 0.226991 4180 0 4235 0.634615 4235 0.217668 4290 0 4345 0.625 4345 0.20883 4400 0.620192 4400 0.204411 4455 0.615384 4455 0.200114 4510 0 4565 0 4620 0.600962 4620 0.187939 4675 0 4730 0.591346 4730 0.180125 4785 0.586539 4785 0.176397 4840 0.581731 4840 0.17267 4895 0 4950 0.572115 4950 0.165364 5005 0.567307 5005 0.16194 5060 0 5115 0.557692 5115 0.155094 5170 0 5225 0 5280 0.543269 5280 0.1454 5335 0.538461 5335 0.142256 5390 0.533654 5390 0.139112 5445 0.528846 5445 0.136132 5500 0 5555 0.519231 5555 0.130357 5610 0.514423 5610 0.127469 5665 0.509615 5665 0.124632 5720 0.504808 5720 0.12198 5775 0.5 5775 0.119328 5830 0.495192 5830 0.116676 5885 0.490385 5885 0.114024 5940 0.485577 5940 0.111543 5995 0.480769 5995 0.109107 6050 0.475962 6050 0.106671 6105 0.471154 6105 0.104236 6160 0.466346 6160 0.101872 6215 0.461539 6215 0.099635 6270 0.456731 6270 0.097398 6325 0 6380 0.447116 6380 0.092924 6435 0.442308 6435 0.090858 6490 0.4375 6490 0.088804 6545 0 6600 0.427885 6600 0.084695 6655 0.423077 6655 0.082727 6710 0.418269 6710 0.08084 6765 0 6820 0.408654 6820 0.077066 6875 0.403846 6875 0.075193 6930 0 6985 0 7040 0.389423 7040 0.069994 7095 0.384616 7095 0.068261 7150 0.379808 7150 0.066621 7205 0.375 7205 0.06503 7260 0 7315 0 7370 0.360577 7370 0.060286 7425 0.355769 7425 0.058824 7480 0.350962 7480 0.057362 7535 0.346154 7535 0.055901 7590 0 7645 0 7700 0.331731 7700 0.051731 7755 0.326923 7755 0.050389 7810 0.322116 7810 0.049046 7865 0 7920 0.3125 7920 0.046513 7975 0.307692 7975 0.04528 8030 0 8085 0 8140 0.293269 8140 0.041678 8195 0 8250 0.283654 8250 0.039413 8305 0 8360 0.274039 8360 0.037198 8415 0.269231 8415 0.036158 8470 0.264423 8470 0.035118 8525 0.259615 8525 0.034078 8580 0.254808 8580 0.033047 8635 0 8690 0.245192 8690 0.031138 8745 0.240385 8745 0.030183 8800 0.235577 8800 0.029228 8855 0.23077 8855 0.028326 8910 0 8965 0.221154 8965 0.026571 9020 0.216346 9020 0.025694 9075 0 9130 0.206731 9130 0.02403 9185 0 9240 0 9295 0.192307 9295 0.021613 9350 0.1875 9350 0.020862 9405 0 9460 0.177885 9460 0.019382 9515 0 9570 0.168269 9570 0.017926 9625 0 9680 0.158654 9680 0.016567 9735 0.153846 9735 0.015888 9790 0.149038 9790 0.015208 9845 0 9900 0 9955 0 10010 0 10065 0.125 10065 0.012115 10120 0.120193 10120 0.011542 10175 0.115385 10175 0.010969 10230 0 10285 0.105769 10285 0.009829 10340 0 10395 0.096154 10395 0.008776 10450 0 10505 0.086538 10505 0.007723 10560 0 10615 0.076923 10615 0.006743 10670 0 10725 0.067308 10725 0.005777 10780 0 10835 0 10890 0 10945 0.048077 10945 0.003972 11000 0 11055 0 11110 0.033654 11110 0.002707 11165 0.028846 11165 0.002299 11220 0.024039 11220 0.001891 11275 0.019231 11275 0.001498 11330 0.014423 11330 0.001123 11385 0 11440 0 11495 0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rt11-study",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1880.0, 875.0, 20.0 ],
                    "text": "Try ratio mode: 110 → 220 Hz. Try shift mode: 110 → 220 Hz adds 110 Hz to every partial. Rebuild mode recalculates ERB drift.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "stage11-output-gain-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1260.0, 455.0, 110.0, 22.0 ],
                    "text": "loadmess -65."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "stage11-amp-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1260.0, 921.0, 90.0, 22.0 ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "filename": "component_index_ruler_11.js",
                    "id": "stage11-freq-indices",
                    "ignoreclick": 1,
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 789.0, 875.0, 12.0 ],
                    "varname": "component_indices_freq_11"
                }
            },
            {
                "box": {
                    "filename": "component_index_ruler_11.js",
                    "id": "stage11-amp-indices",
                    "ignoreclick": 1,
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 948.0, 875.0, 12.0 ],
                    "varname": "component_indices_amp_11"
                }
            },
            {
                "box": {
                    "filename": "component_index_ruler_11.js",
                    "id": "stage11-harmonic-indices",
                    "ignoreclick": 1,
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 1147.0, 875.0, 12.0 ],
                    "varname": "component_indices_harmonic_11"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "rm11-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1940.0, 875.0, 20.0 ],
                    "text": "WEIGHTED PARTIAL REMOVAL — INDEPENDENT DISTRIBUTION LIBRARY",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 1970.0, 875.0, 20.0 ],
                    "text": "Selecting a distribution changes probabilities only. REMOVE zeros the chosen visible indices across all three memory layers.",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-menu-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 2000.0, 345.0, 20.0 ],
                    "text": "REMOVAL DISTRIBUTION",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1 ],
                    "bgfillcolor_color": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "id": "rm11-shape-menu",
                    "items": [ "Flat zero", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 2025.0, 345.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-count-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 410.0, 2000.0, 107.0, 20.0 ],
                    "text": "REMOVE COUNT",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-count",
                    "maxclass": "number",
                    "maximum": 255,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 410.0, 2025.0, 85.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-go",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 510.0, 2022.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-go-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 548.0, 2025.0, 75.0, 20.0 ],
                    "text": "REMOVE",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "rm11-example",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 635.0, 2025.0, 275.0, 22.0 ],
                    "text": "remove X partials 10"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-count-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 940.0, 2025.0, 40.0, 22.0 ],
                    "text": "i 10"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-count-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 990.0, 2025.0, 80.0, 22.0 ],
                    "text": "loadmess 10"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1080.0, 2025.0, 100.0, 22.0 ],
                    "text": "prepend remove"
                }
            },
            {
                "box": {
                    "id": "rm11-indices-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 2070.0, 875.0, 20.0 ],
                    "text": "REMOVED COMPONENT NUMBERS — 1 = FUNDAMENTAL",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "rm11-indices",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 2095.0, 875.0, 22.0 ],
                    "text": "7 19 46 72 92 143 157 165 192 200",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-indices-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 2095.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rm11-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 2145.0, 875.0, 20.0 ],
                    "text": "REQUESTED   REMOVED   SOUNDING REMAINING   UNIFORM FALLBACK DRAWS   VISIBLE COUNT",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "rm11-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 2170.0, 875.0, 22.0 ],
                    "text": "10 10 118 0 209",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-status-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 2170.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rm11-weight-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 2205.0, 875.0, 20.0 ],
                    "text": "CURRENT WEIGHTS — RESAMPLED TO VISIBLE COUNT; THESE DO NOT SET THE SOUND SLIDERS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0, 0.7294117647, 1, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0, 0.7294117647, 1, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "rm11-weights-preview",
                    "linecount": 13,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 2230.0, 875.0, 183.0 ],
                    "text": "1 1 1 0.999999 0.999999 0.999998 0.999997 0.999995 0.999993 0.999991 0.999984 0.999978 0.999971 0.999965 0.999949 0.999929 0.999909 0.99989 0.999861 0.999811 0.99976 0.99971 0.999659 0.99955 0.999431 0.999313 0.999195 0.999015 0.998759 0.998503 0.998247 0.997986 0.997467 0.996949 0.99643 0.995912 0.995113 0.994124 0.993135 0.992147 0.991023 0.98924 0.987458 0.985675 0.983893 0.981173 0.978131 0.975089 0.972047 0.968406 0.963486 0.958567 0.953647 0.948727 0.941465 0.933924 0.926383 0.918842 0.909706 0.898758 0.88781 0.876861 0.865739 0.850701 0.835664 0.820626 0.805588 0.787797 0.768296 0.748796 0.729295 0.708971 0.68517 0.661368 0.637567 0.613766 0.587349 0.560132 0.532916 0.5057 0.477898 0.448959 0.42002 0.391082 0.362143 0.333827 0.30557 0.277313 0.249055 0.222517 0.197773 0.173029 0.148285 0.123944 0.105517 0.08709 0.068664 0.050237 0.037288 0.027442 0.017596 0.007751 0 0 0 0 0 0.007751 0.017596 0.027442 0.037288 0.050237 0.068664 0.08709 0.105517 0.123944 0.148285 0.173029 0.197773 0.222517 0.249055 0.277313 0.30557 0.333827 0.362143 0.391082 0.42002 0.448959 0.477898 0.5057 0.532916 0.560132 0.587349 0.613766 0.637567 0.661368 0.68517 0.708971 0.729295 0.748796 0.768296 0.787797 0.805588 0.820626 0.835664 0.850701 0.865739 0.876861 0.88781 0.898758 0.909706 0.918842 0.926383 0.933924 0.941465 0.948727 0.953647 0.958567 0.963486 0.968406 0.972047 0.975089 0.978131 0.981173 0.983893 0.985675 0.987458 0.98924 0.991023 0.992147 0.993135 0.994124 0.995113 0.995912 0.99643 0.996949 0.997467 0.997986 0.998247 0.998503 0.998759 0.999015 0.999195 0.999313 0.999431 0.99955 0.999659 0.99971 0.99976 0.999811 0.999861 0.99989 0.999909 0.999929 0.999949 0.999965 0.999971 0.999978 0.999984 0.999991 0.999993 0.999995 0.999997 0.999998 0.999999 0.999999 1 1 1",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-weights-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 2230.0, 80.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rm11-weight-library",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 35.0, 2320.0, 305.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_weights_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_weights_11.js",
                    "varname": "dynamic_shape_library_weights_11"
                }
            },
            {
                "box": {
                    "id": "rm11-engine",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 360.0, 2320.0, 285.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "weighted_partial_removal_11.js",
                        "parameter_enable": 0
                    },
                    "text": "js weighted_partial_removal_11.js",
                    "varname": "weighted_partial_removal_11"
                }
            },
            {
                "box": {
                    "id": "rm11-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 35.0, 2360.0, 270.0, 22.0 ],
                    "text": "receive remove-partials-stage-11"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-shape-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 940.0, 2320.0, 80.0, 22.0 ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "rm11-size-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 940.0, 2360.0, 45.0, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "rm11-policy",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 2400.0, 875.0, 20.0 ],
                    "text": "Already-silent components are excluded. Zero weights use uniform fallback only when positive weights are exhausted. Hidden slots survive.",
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
                    "destination": [ "rm11-engine", 0 ],
                    "source": [ "rm11-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-count-store", 1 ],
                    "source": [ "rm11-count", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-count", 0 ],
                    "source": [ "rm11-count-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-command", 0 ],
                    "source": [ "rm11-count-store", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-indices-set", 0 ],
                    "source": [ "rm11-engine", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-status-set", 0 ],
                    "source": [ "rm11-engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-interpolation-js", 10 ],
                    "source": [ "rm11-engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-engine", 0 ],
                    "source": [ "rm11-example", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-count-store", 0 ],
                    "source": [ "rm11-go", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-indices", 0 ],
                    "source": [ "rm11-indices-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-engine", 0 ],
                    "source": [ "rm11-receive", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-shape-menu", 0 ],
                    "source": [ "rm11-shape-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-weight-library", 1 ],
                    "source": [ "rm11-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-weight-library", 0 ],
                    "source": [ "rm11-size-trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-weight-library", 0 ],
                    "source": [ "rm11-size-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-status", 0 ],
                    "source": [ "rm11-status-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-engine", 1 ],
                    "order": 1,
                    "source": [ "rm11-weight-library", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-weights-set", 0 ],
                    "order": 0,
                    "source": [ "rm11-weight-library", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-weights-preview", 0 ],
                    "source": [ "rm11-weights-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-bypass-command", 0 ],
                    "source": [ "rt11-bypass", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-bypass-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-bypass", 0 ],
                    "source": [ "rt11-bypass-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-cents-command", 0 ],
                    "source": [ "rt11-cents", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-cents-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-cents", 0 ],
                    "source": [ "rt11-cents-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-cluster-command", 0 ],
                    "source": [ "rt11-cluster", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-cluster-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-cluster", 0 ],
                    "source": [ "rt11-cluster-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-current", 0 ],
                    "source": [ "rt11-current-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-gain-command", 0 ],
                    "source": [ "rt11-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-gain-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-gain", 0 ],
                    "source": [ "rt11-gain-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-retuning", 3 ],
                    "source": [ "rt11-glide", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-glide", 0 ],
                    "source": [ "rt11-glide-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-high-command", 0 ],
                    "source": [ "rt11-high", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-high-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-high", 0 ],
                    "source": [ "rt11-high-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-low-command", 0 ],
                    "source": [ "rt11-low", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-low-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-low", 0 ],
                    "source": [ "rt11-low-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-retuning", 2 ],
                    "source": [ "rt11-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-mode", 0 ],
                    "source": [ "rt11-mode-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-offset-command", 0 ],
                    "source": [ "rt11-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-offset-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-offset", 0 ],
                    "source": [ "rt11-offset-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-current-set", 0 ],
                    "source": [ "rt11-retuning", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-target", 0 ],
                    "source": [ "rt11-retuning", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-retuning", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-base-number", 0 ],
                    "source": [ "rt11-retuning", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-semitones-command", 0 ],
                    "source": [ "rt11-semitones", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-semitones-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-semitones", 0 ],
                    "source": [ "rt11-semitones-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-source-message", 0 ],
                    "source": [ "rt11-source-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 1 ],
                    "source": [ "rt11-sr-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-retuning", 1 ],
                    "source": [ "rt11-target", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-target", 0 ],
                    "source": [ "rt11-target-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "rt11-transform", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-source-prepend", 0 ],
                    "source": [ "rt11-transform", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-alias-toggle", 0 ],
                    "source": [ "rt11-transform", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filtered-prepend", 0 ],
                    "source": [ "rt11-transform", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-status-prepend", 0 ],
                    "source": [ "rt11-transform", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-shape-menu", 0 ],
                    "source": [ "stage11-amp-default", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "stage11-output-gain-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-sr-command", 0 ],
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
                    "destination": [ "rm11-engine", 3 ],
                    "order": 2,
                    "source": [ "syn-amp-slider", 0 ]
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
                    "destination": [ "rt11-retuning", 0 ],
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
                    "destination": [ "rm11-engine", 5 ],
                    "order": 2,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rm11-size-trigger", 0 ],
                    "order": 0,
                    "source": [ "syn-count-update", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stage11-amp-indices", 0 ],
                    "order": 4,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stage11-freq-indices", 0 ],
                    "order": 5,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "stage11-harmonic-indices", 0 ],
                    "order": 3,
                    "source": [ "syn-count-update", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-dynamic-shapes", 0 ],
                    "order": 1,
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
                    "destination": [ "syn-interpolation-js", 9 ],
                    "source": [ "syn-count-update", 1 ]
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
                    "destination": [ "rm11-engine", 2 ],
                    "order": 2,
                    "source": [ "syn-freq-slider", 0 ]
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
                    "destination": [ "rm11-engine", 4 ],
                    "order": 2,
                    "source": [ "syn-harmonic-amp-slider", 0 ]
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
                    "destination": [ "syn-js", 7 ],
                    "source": [ "syn-interpolation-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt11-transform", 0 ],
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
                    "destination": [ "syn-freq-shape-menu", 0 ],
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