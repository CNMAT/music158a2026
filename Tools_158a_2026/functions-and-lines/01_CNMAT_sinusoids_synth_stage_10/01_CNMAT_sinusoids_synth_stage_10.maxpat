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
            2734,
            124,
            960,
            959
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
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
                            0,
                            0,
                            1000,
                            780
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "syn-model-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50,
                                        109,
                                        36,
                                        22
                                    ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "syn-model-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        107,
                                        109,
                                        76,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        0.301961,
                                        0.301961,
                                        0.301961,
                                        1
                                    ],
                                    "bgcolor2": [
                                        0.2,
                                        0.2,
                                        0.2,
                                        1
                                    ],
                                    "bgfillcolor_autogradient": 0,
                                    "bgfillcolor_color": [
                                        0.2,
                                        0.2,
                                        0.2,
                                        1
                                    ],
                                    "bgfillcolor_color1": [
                                        0.301961,
                                        0.301961,
                                        0.301961,
                                        1
                                    ],
                                    "bgfillcolor_color2": [
                                        0.2,
                                        0.2,
                                        0.2,
                                        1
                                    ],
                                    "bgfillcolor_type": "gradient",
                                    "gradient": 1,
                                    "id": "syn-model-message",
                                    "linecount": 190,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        195,
                                        102,
                                        88,
                                        1322
                                    ],
                                    "text": "110 1 220 1 220.302791 0.0125 329.246002 0.025 330 1 440 1 441.353622 0.0375 547.898339 0.05 550 1 660 1 662.998117 0.0625 765.957011 0.075 770 1 880 1 885.236277 0.0875 983.42202 0.1 990 1 1100 1 1108.068101 0.1125 1200.293363 0.125 1210 1 1320 1 1331.493589 0.1375 1416.571042 0.15 1430 1 1540 1 1555.512742 0.1625 1632.255057 0.175 1650 1 1760 1 1780.12556 0.1875 1847.345407 0.2 1870 1 1980 1 2005.332042 0.2125 2061.842093 0.225 2090 1 2200 1 2231.132189 0.2375 2275.745114 0.25 2310 1 2420 1 2457.526 0.2625 2489.05447 0.275 2530 1 2640 1 2684.513475 0.2875 2701.770162 0.3 2750 1 2860 1 2912.094616 0.3125 2913.89219 0.325 2970 1 3080 1 3125.420553 0.35 3140.26942 0.3375 3190 1 3300 1 3336.355252 0.375 3369.037889 0.3625 3410 1 3520 1 3546.696286 0.4 3598.4 0.3875 3630 1 3740 1 3756.443656 0.425 3828.355821 0.4125 3850 1 3960 1 3965.597361 0.45 4058.905284 0.4375 4070 1 4174.157401 0.475 4180 1 4290 1 4290.048411 0.4625 4382.123777 0.5 4400 1 4510 1 4521.785203 0.4875 4589.496489 0.525 4620 1 4730 1 4754.115659 0.5125 4796.275536 0.55 4840 1 4950 1 4987.039779 0.5375 5002.460919 0.575 5060 1 5170 1 5208.052637 0.6 5220.557564 0.5625 5280 1 5390 1 5413.050691 0.625 5454.669014 0.5875 5500 1 5610 1 5617.45508 0.65 5689.374128 0.6125 5720 1 5821.265804 0.675 5830 1 5924.672907 0.6375 5940 1 6024.482864 0.7 6050 1 6160 1 6160.56535 0.6625 6227.10626 0.725 6270 1 6380 1 6397.051457 0.6875 6429.135991 0.75 6490 1 6600 1 6630.572058 0.775 6634.13123 0.7125 6710 1 6820 1 6831.41446 0.8 6871.804666 0.7375 6930 1 7031.663198 0.825 7040 1 7110.071767 0.7625 7150 1 7231.318271 0.85 7260 1 7348.932533 0.7875 7370 1 7430.379679 0.875 7480 1 7588.386963 0.8125 7590 1 7628.847424 0.9 7700 1 7810 1 7826.721503 0.925 7828.435058 0.8375 7920 1 8024.001918 0.95 8030 1 8069.076817 0.8625 8140 1 8220.688669 0.975 8250 1 8310.31224 0.8875 8360 1 8416.781755 1 8470 1 8552.141329 0.9125 8580 1 8690 1 8794.564081 0.9375 8800 1 8910 1 9037.580498 0.9625 9281.19058 0.9875",
                                    "textcolor": [
                                        0,
                                        0,
                                        0,
                                        1
                                    ]
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50,
                                        40,
                                        30,
                                        30
                                    ]
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
                                    "patching_rect": [
                                        50,
                                        1484,
                                        30,
                                        30
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "syn-model-trigger",
                                        0
                                    ],
                                    "source": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "syn-model-message",
                                        0
                                    ],
                                    "source": [
                                        "syn-model-prepend",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "syn-model-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "syn-model-prepend",
                                        0
                                    ],
                                    "source": [
                                        "syn-model-trigger",
                                        1
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        35,
                        1301,
                        51,
                        22
                    ],
                    "text": "p model_10"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        583,
                        597,
                        55,
                        22
                    ],
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
                    "outlettype": [
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        583,
                        455,
                        48,
                        136
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4,
                            "parameter_initial": [
                                -65
                            ],
                            "parameter_initial_enable": 1
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16,
                    "id": "syn-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        615,
                        700,
                        24
                    ],
                    "text": "SINUSOID MODEL GENERATOR — CNMAT sinusoids~",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-method",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        642,
                        699,
                        33
                    ],
                    "text": "Drift model: fn = n·f0 ± drift[n]·max-drift·ERB(n·f0). Partial 1 remains f0. Frequencies ≥ min(23 kHz, 0.499·sample rate) are filtered.",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-count-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        107,
                        691,
                        160,
                        20
                    ],
                    "text": "COMPONENTS 2–255",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.729,
                        1,
                        1
                    ],
                    "elementcolor": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "hint": "Number of sinusoidal components 2-255",
                    "id": "syn-count-slider",
                    "knobcolor": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "knobshape": 3,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        35,
                        716,
                        210,
                        30
                    ],
                    "size": 254,
                    "valuepopuplabel": 1
                }
            },
            {
                "box": {
                    "id": "syn-plus2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        255,
                        720,
                        32,
                        22
                    ],
                    "text": "+ 2"
                }
            },
            {
                "box": {
                    "id": "syn-count-split",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        297,
                        720,
                        37,
                        22
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        344,
                        720,
                        58,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-count-update",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        412,
                        720,
                        50,
                        22
                    ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "syn-size-message",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        472,
                        720,
                        52,
                        22
                    ],
                    "text": "MEMORY",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-base-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        555,
                        692,
                        115,
                        20
                    ],
                    "text": "SOURCE BASE Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-base",
                    "maxclass": "flonum",
                    "maximum": 23000,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        555,
                        720,
                        90,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-drift-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        760,
                        721,
                        170,
                        20
                    ],
                    "text": "MAX DRIFT (ERB units)",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-drift",
                    "maxclass": "flonum",
                    "maximum": 1,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        675,
                        720,
                        80,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-freq-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        765,
                        215,
                        20
                    ],
                    "text": "INHARMONICITY  0.0–1.0",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "candicane2": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-freq-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        35,
                        789,
                        875,
                        120
                    ],
                    "setminmax": [
                        0,
                        1
                    ],
                    "size": 81,
                    "slidercolor": [
                        0,
                        0,
                        0,
                        1
                    ],
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
                    "patching_rect": [
                        35,
                        924,
                        215,
                        20
                    ],
                    "text": "AMPLITUDE  0.0–1.0",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.638838505167049,
                        0.548194572727919,
                        0.130142067214928,
                        1
                    ],
                    "candicane2": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-amp-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        35,
                        948,
                        875,
                        120
                    ],
                    "setminmax": [
                        0,
                        1
                    ],
                    "size": 81,
                    "slidercolor": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "syn-js",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 5,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        35,
                        1275,
                        269,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "cnmat_sinusoid_model_generator_10.js",
                        "parameter_enable": 0
                    },
                    "text": "js cnmat_sinusoid_model_generator_10.js",
                    "varname": "cnmat_sinusoid_model_generator_10"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-model-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        180,
                        1330,
                        460,
                        20
                    ],
                    "text": "FINAL TRANSFORMED MODEL — AUTO-LOADED INTO sinusoids~",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-status-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        118.33333333333333,
                        1302,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgcolor2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "syn-status-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        34.5,
                        1355,
                        335,
                        22
                    ],
                    "text": "81 161 81 1 0 23000",
                    "textcolor": [
                        0,
                        0,
                        0,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        123,
                        1391,
                        435,
                        20
                    ],
                    "text": "SOURCE  OUTPUT  MERGED  REJECTED  INVALID  LIMIT Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-adstatus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        490,
                        1367,
                        70,
                        22
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        570,
                        1367,
                        88,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-sr-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        570,
                        1391,
                        100,
                        20
                    ],
                    "text": "SAMPLE RATE",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "checkedcolor": [
                        0.611764705882353,
                        0,
                        0.027471133949191,
                        1
                    ],
                    "id": "syn-alias-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        696,
                        1364,
                        28,
                        28
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-alias-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        732,
                        1369,
                        178,
                        20
                    ],
                    "text": "FINAL FILTER ACTIVE",
                    "textcolor": [
                        0.611764705882353,
                        0,
                        0.027471133949191,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-filtered-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        201.66666666666666,
                        1301,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgcolor2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "syn-filtered-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        291,
                        1301,
                        35,
                        22
                    ],
                    "text": "none",
                    "textcolor": [
                        0.611764705882353,
                        0,
                        0.027471133949191,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-filtered-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        373,
                        1302,
                        292,
                        20
                    ],
                    "text": "REJECTED: source-pair index / transformed Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        490,
                        1341,
                        60,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "syn-delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        56,
                        1390,
                        62,
                        22
                    ],
                    "text": "delay 100"
                }
            },
            {
                "box": {
                    "id": "syn-init-bangs",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        21,
                        1448,
                        50,
                        22
                    ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "syn-load-count",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        22,
                        690,
                        77,
                        22
                    ],
                    "text": "loadmess 30"
                }
            },
            {
                "box": {
                    "id": "syn-load-base",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        461,
                        689,
                        89,
                        22
                    ],
                    "text": "loadmess 110."
                }
            },
            {
                "box": {
                    "id": "syn-load-drift",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        675,
                        689,
                        85,
                        22
                    ],
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
                    "patching_rect": [
                        266,
                        150,
                        429,
                        20
                    ],
                    "text": "Rounded to integers — STORED, NOT TRIGGERED",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
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
                            59,
                            119,
                            1000,
                            780
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-analysis-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "bang",
                                        "",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50,
                                        100,
                                        72,
                                        22
                                    ],
                                    "text": "t b l b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-store-normalized",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        57,
                                        434,
                                        50,
                                        22
                                    ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-store-127",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        337,
                                        465,
                                        50,
                                        22
                                    ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-reset-group",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        285,
                                        150,
                                        47,
                                        22
                                    ],
                                    "text": "zlclear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-reset-maximum",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        305,
                                        190,
                                        30,
                                        22
                                    ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-iter-pairs",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        370,
                                        150,
                                        55,
                                        22
                                    ],
                                    "text": "zl.iter 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-unpack-pair",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        370,
                                        190,
                                        70,
                                        22
                                    ],
                                    "text": "unpack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-value-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        448,
                                        191,
                                        215,
                                        20
                                    ],
                                    "text": "value     duration ignored",
                                    "textcolor": [
                                        0.35,
                                        0.35,
                                        0.35,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-group-values",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        370,
                                        230,
                                        72,
                                        22
                                    ],
                                    "text": "zl.group 48"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-maximum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        370,
                                        270,
                                        74,
                                        22
                                    ],
                                    "text": "maximum 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-max-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        370,
                                        310,
                                        40,
                                        22
                                    ],
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
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        460,
                                        295,
                                        90,
                                        22
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-filter-max-display",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        555,
                                        295,
                                        112,
                                        22
                                    ],
                                    "text": "routepass int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-classify",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        370,
                                        350,
                                        66,
                                        22
                                    ],
                                    "text": "<= 1.0001"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-select-type",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        370,
                                        390,
                                        56,
                                        22
                                    ],
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
                                    "patching_rect": [
                                        460,
                                        344,
                                        360,
                                        33
                                    ],
                                    "text": "Classification: maximum value ≤ 1.0001 = normalized envelope; otherwise = 0–127 control data.",
                                    "textcolor": [
                                        0.35,
                                        0.35,
                                        0.35,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-norm",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        455,
                                        480,
                                        169,
                                        22
                                    ],
                                    "text": "0-1 ENVELOPE STORED"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-127",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        640,
                                        480,
                                        250,
                                        22
                                    ],
                                    "text": "RAW 0-127 FLOAT CONTROL STORED"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-status-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        455,
                                        515,
                                        77,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-envelope-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50,
                                        490,
                                        77,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-control-prepend",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        117,
                                        691,
                                        77,
                                        22
                                    ],
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50,
                                        40,
                                        30,
                                        30
                                    ]
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        460,
                                        40,
                                        30,
                                        30
                                    ]
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
                                    "patching_rect": [
                                        50,
                                        822,
                                        30,
                                        30
                                    ]
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
                                    "patching_rect": [
                                        85,
                                        822,
                                        30,
                                        30
                                    ]
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
                                    "patching_rect": [
                                        460,
                                        822,
                                        30,
                                        30
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-analysis-trigger",
                                        0
                                    ],
                                    "source": [
                                        "obj-12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-status-prepend",
                                        0
                                    ],
                                    "source": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-group-values",
                                        0
                                    ],
                                    "source": [
                                        "obj-analysis-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-iter-pairs",
                                        0
                                    ],
                                    "source": [
                                        "obj-analysis-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-reset-group",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-analysis-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-reset-maximum",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-analysis-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-store-127",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-analysis-trigger",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-store-normalized",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-analysis-trigger",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-select-type",
                                        0
                                    ],
                                    "source": [
                                        "obj-classify",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-control-prepend",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-14",
                                        0
                                    ],
                                    "source": [
                                        "obj-envelope-prepend",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-maximum",
                                        0
                                    ],
                                    "source": [
                                        "obj-group-values",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-unpack-pair",
                                        0
                                    ],
                                    "source": [
                                        "obj-iter-pairs",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-classify",
                                        0
                                    ],
                                    "source": [
                                        "obj-max-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-filter-max-display",
                                        0
                                    ],
                                    "source": [
                                        "obj-max-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-max-display",
                                        0
                                    ],
                                    "source": [
                                        "obj-filter-max-display",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-max-trigger",
                                        0
                                    ],
                                    "source": [
                                        "obj-maximum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-group-values",
                                        0
                                    ],
                                    "source": [
                                        "obj-reset-group",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-maximum",
                                        1
                                    ],
                                    "source": [
                                        "obj-reset-maximum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-status-127",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-select-type",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-status-norm",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-select-type",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-store-127",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-select-type",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-store-normalized",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-select-type",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-status-prepend",
                                        0
                                    ],
                                    "source": [
                                        "obj-status-127",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-status-prepend",
                                        0
                                    ],
                                    "source": [
                                        "obj-status-norm",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-16",
                                        0
                                    ],
                                    "source": [
                                        "obj-status-prepend",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-control-prepend",
                                        0
                                    ],
                                    "source": [
                                        "obj-store-127",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-envelope-prepend",
                                        0
                                    ],
                                    "source": [
                                        "obj-store-normalized",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-group-values",
                                        0
                                    ],
                                    "source": [
                                        "obj-unpack-pair",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        45,
                        204,
                        43,
                        22
                    ],
                    "text": "p prep_10"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        45,
                        25,
                        870,
                        29
                    ],
                    "text": "CNMAT SINUSOIDS~ SYNTHESIZER — STAGE 10",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        47,
                        60,
                        870,
                        20
                    ],
                    "text": "receive function → normalized envelope or raw float control; receive function-rounded-integers → rounded MIDI control",
                    "textcolor": [
                        0.3,
                        0.3,
                        0.3,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-receive-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.5,
                        104,
                        165,
                        20
                    ],
                    "text": "FUNCTION-LIST RECEIVER",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        45,
                        130,
                        126,
                        22
                    ],
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
                    "patching_rect": [
                        85,
                        355,
                        429,
                        20
                    ],
                    "text": "NORMALIZED 0–1 AMPLITUDE ENVELOPE — STORED, NOT TRIGGERED",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgcolor2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-envelope-message",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        45,
                        379,
                        760,
                        62
                    ],
                    "text": "0. 0. 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0.01 21.28 0.02 21.28 0.03 21.28 0.05 21.28 0.09 21.28 0.13 21.28 0.2 21.28 0.29 21.28 0.39 21.28 0.51 21.28 0.64 21.28 0.77 21.28 0.87 21.28 0.96 21.28 1. 21.28 1. 21.28 0.96 21.28 0.87 21.28 0.77 21.28 0.64 21.28 0.51 21.28 0.39 21.28 0.29 21.28 0.2 21.28 0.13 21.28 0.09 21.28 0.05 21.28 0.03 21.28 0.02 21.28 0.01 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28",
                    "textcolor": [
                        0,
                        0,
                        0,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.549019607843137,
                        0.67843137254902,
                        1
                    ],
                    "id": "obj-trigger-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        14,
                        343,
                        28,
                        28
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-trigger-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        10,
                        321,
                        185,
                        20
                    ],
                    "text": "TRIGGER STORED ENVELOPE",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        426,
                        471,
                        73,
                        22
                    ],
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
                    "patching_rect": [
                        465,
                        505,
                        480,
                        20
                    ],
                    "text": "AMPLITUDE MULTIPLIER — CNMAT SINUSOIDS~ OUTPUT",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-signal-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        294,
                        481,
                        70,
                        22
                    ],
                    "text": "sinusoids~"
                }
            },
            {
                "box": {
                    "id": "obj-multiply",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        409,
                        504,
                        36,
                        22
                    ],
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
                    "patching_rect": [
                        409,
                        550,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-signal-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        140,
                        525,
                        230,
                        20
                    ],
                    "text": "CNMAT sinusoidal oscillator bank",
                    "textcolor": [
                        0.35,
                        0.35,
                        0.35,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-control-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        115,
                        218,
                        411,
                        20
                    ],
                    "text": "RAW 0–127 FLOAT CONTROL LIST — STORED FOR THE NEXT STAGE",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.6388385052447552,
                        0.5481945727244106,
                        0.13014206719178864,
                        1
                    ],
                    "bgcolor2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.6388385052447552,
                        0.5481945727244106,
                        0.13014206719178864,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-control-message",
                    "linecount": 5,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        57,
                        240,
                        760,
                        76
                    ],
                    "text": "0. 0. 5.4 21.28 10.81 21.28 16.21 21.28 21.62 21.28 27.02 21.28 32.43 21.28 37.83 21.28 43.23 21.28 48.64 21.28 54.04 21.28 59.45 21.28 64.85 21.28 70.26 21.28 75.66 21.28 81.06 21.28 86.47 21.28 91.87 21.28 97.28 21.28 102.68 21.28 108.09 21.28 113.49 21.28 118.89 21.28 124.3 21.28 124.3 21.28 118.89 21.28 113.49 21.28 108.09 21.28 102.68 21.28 97.28 21.28 91.87 21.28 86.47 21.28 81.06 21.28 75.66 21.28 70.26 21.28 64.85 21.28 59.45 21.28 54.04 21.28 48.64 21.28 43.23 21.28 37.83 21.28 32.43 21.28 27.02 21.28 21.62 21.28 16.21 21.28 10.81 21.28 5.4 21.28 0. 21.28",
                    "textcolor": [
                        0,
                        0,
                        0,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-receive-rounded",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        182,
                        104,
                        141,
                        22
                    ],
                    "text": "receive rounded-integers"
                }
            },
            {
                "box": {
                    "id": "obj-rounded-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        182,
                        147,
                        77,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgcolor2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_autogradient": 0,
                    "bgfillcolor_color": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-rounded-message",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        182,
                        177,
                        482,
                        35
                    ],
                    "text": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
                    "textcolor": [
                        0,
                        0,
                        0,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgfillcolor_color": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "color",
                    "id": "syn-freq-shape-menu",
                    "items": [
                        "Flat zero (default)",
                        ",",
                        "Linear: low to high",
                        ",",
                        "Exponential: low to high",
                        ",",
                        "Linear: high to low",
                        ",",
                        "Exponential: high to low",
                        ",",
                        "Triangle: center peak",
                        ",",
                        "Exponential triangle: center peak",
                        ",",
                        "Gaussian",
                        ",",
                        "Steep Gaussian",
                        ",",
                        "Inverted Gaussian",
                        ",",
                        "Steep Inverted Gaussian",
                        ",",
                        "Double Gaussian",
                        ",",
                        "Steep Double Gaussian",
                        ",",
                        "Inverted Double Gaussian",
                        ",",
                        "Steep Inverted Double Gaussian",
                        ",",
                        "Triple Gaussian",
                        ",",
                        "Steep Triple Gaussian",
                        ",",
                        "Inverted Triple Gaussian",
                        ",",
                        "Steep Inverted Triple Gaussian",
                        ",",
                        "Quadruple Gaussian",
                        ",",
                        "Steep Quadruple Gaussian",
                        ",",
                        "Inverted Quadruple Gaussian",
                        ",",
                        "Steep Inverted Quadruple Gaussian",
                        ",",
                        "Random (fixed)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        565,
                        762,
                        345,
                        22
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.638838505167049,
                        0.548194572727919,
                        0.130142067214928,
                        1
                    ],
                    "bgfillcolor_color": [
                        0.638838505167049,
                        0.548194572727919,
                        0.130142067214928,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "color",
                    "id": "syn-amp-shape-menu",
                    "items": [
                        "Flat zero",
                        ",",
                        "Linear: low to high",
                        ",",
                        "Exponential: low to high",
                        ",",
                        "Linear: high to low",
                        ",",
                        "Exponential: high to low",
                        ",",
                        "Triangle: center peak",
                        ",",
                        "Exponential triangle: center peak",
                        ",",
                        "Gaussian",
                        ",",
                        "Steep Gaussian",
                        ",",
                        "Inverted Gaussian",
                        ",",
                        "Steep Inverted Gaussian",
                        ",",
                        "Double Gaussian",
                        ",",
                        "Steep Double Gaussian",
                        ",",
                        "Inverted Double Gaussian",
                        ",",
                        "Steep Inverted Double Gaussian",
                        ",",
                        "Triple Gaussian",
                        ",",
                        "Steep Triple Gaussian",
                        ",",
                        "Inverted Triple Gaussian",
                        ",",
                        "Steep Inverted Triple Gaussian",
                        ",",
                        "Quadruple Gaussian",
                        ",",
                        "Steep Quadruple Gaussian",
                        ",",
                        "Inverted Quadruple Gaussian",
                        ",",
                        "Steep Inverted Quadruple Gaussian",
                        ",",
                        "Random (fixed)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        565,
                        921,
                        345,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-shapes",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        309,
                        1274,
                        167,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_10.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_10.js",
                    "varname": "dynamic_shape_library_10"
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        735,
                        1275,
                        175,
                        20
                    ],
                    "text": "MORPH / 255-SLOT MEMORY",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-load-shape-menus",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        487,
                        762,
                        76,
                        22
                    ],
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
                    "patching_rect": [
                        36,
                        1120,
                        214,
                        20
                    ],
                    "text": "HARMONIC ANCHOR AMP  0.0–1.0",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-harmonic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        565,
                        1083,
                        345,
                        20
                    ],
                    "text": "Exact n × base frequency; default amplitudes = 0.0",
                    "textcolor": [
                        0.611764705882353,
                        0,
                        0.027471133949191,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.972549,
                        0.462745,
                        0.501961,
                        1
                    ],
                    "candicane2": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "candycane": 2,
                    "contdata": 1,
                    "ghostbar": 13,
                    "id": "syn-harmonic-amp-slider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        35,
                        1147,
                        875,
                        120
                    ],
                    "setminmax": [
                        0,
                        1
                    ],
                    "size": 81,
                    "slidercolor": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "bgcolor": [
                        0,
                        0.549019607843137,
                        0.67843137254902,
                        1
                    ],
                    "id": "syn-random-freq-button",
                    "patching_rect": [
                        390,
                        762,
                        28,
                        28
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-freq-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        423,
                        765,
                        62,
                        20
                    ],
                    "text": "RANDOM",
                    "textcolor": [
                        0,
                        0.549019607843137,
                        0.67843137254902,
                        1
                    ]
                }
            },
            {
                "box": {
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "bgcolor": [
                        0.638838505167049,
                        0.548194572727919,
                        0.130142067214928,
                        1
                    ],
                    "id": "syn-random-amp-button",
                    "patching_rect": [
                        390,
                        921,
                        28,
                        28
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-amp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        423,
                        924,
                        62,
                        20
                    ],
                    "text": "RANDOM",
                    "textcolor": [
                        0.638838505167049,
                        0.548194572727919,
                        0.130142067214928,
                        1
                    ]
                }
            },
            {
                "box": {
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "bgcolor": [
                        0.972549,
                        0.462745,
                        0.501961,
                        1
                    ],
                    "id": "syn-random-harmonic-button",
                    "patching_rect": [
                        390,
                        1117,
                        28,
                        28
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-random-harmonic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        423,
                        1120,
                        62,
                        20
                    ],
                    "text": "RANDOM",
                    "textcolor": [
                        0.611764705882353,
                        0,
                        0.027471133949191,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.972549,
                        0.462745,
                        0.501961,
                        1
                    ],
                    "bgfillcolor_color": [
                        0.972549,
                        0.462745,
                        0.501961,
                        1
                    ],
                    "bgfillcolor_color1": [
                        0.301961,
                        0.301961,
                        0.301961,
                        1
                    ],
                    "bgfillcolor_color2": [
                        0.2,
                        0.2,
                        0.2,
                        1
                    ],
                    "bgfillcolor_type": "color",
                    "id": "syn-harmonic-shape-menu",
                    "items": [
                        "Flat zero (default)",
                        ",",
                        "Linear: low to high",
                        ",",
                        "Exponential: low to high",
                        ",",
                        "Linear: high to low",
                        ",",
                        "Exponential: high to low",
                        ",",
                        "Triangle: center peak",
                        ",",
                        "Exponential triangle: center peak",
                        ",",
                        "Gaussian",
                        ",",
                        "Steep Gaussian",
                        ",",
                        "Inverted Gaussian",
                        ",",
                        "Steep Inverted Gaussian",
                        ",",
                        "Double Gaussian",
                        ",",
                        "Steep Double Gaussian",
                        ",",
                        "Inverted Double Gaussian",
                        ",",
                        "Steep Inverted Double Gaussian",
                        ",",
                        "Triple Gaussian",
                        ",",
                        "Steep Triple Gaussian",
                        ",",
                        "Inverted Triple Gaussian",
                        ",",
                        "Steep Inverted Triple Gaussian",
                        ",",
                        "Quadruple Gaussian",
                        ",",
                        "Steep Quadruple Gaussian",
                        ",",
                        "Inverted Quadruple Gaussian",
                        ",",
                        "Steep Inverted Quadruple Gaussian",
                        ",",
                        "Random (fixed)"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        565,
                        1118,
                        345,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "syn-load-harmonic-menu",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        487,
                        1118,
                        76,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "syn-random-js",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        669,
                        1301,
                        230,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "random_multislider_values_10.js",
                        "parameter_enable": 0
                    },
                    "text": "js random_multislider_values_10.js",
                    "varname": "random_multislider_values_10"
                }
            },
            {
                "box": {
                    "id": "obj-function-list-gate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        45,
                        166,
                        58,
                        22
                    ],
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
                    "patching_rect": [
                        250,
                        765,
                        65,
                        20
                    ],
                    "text": "MORPH MS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-freq-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        315,
                        762,
                        68,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-amp-interp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250,
                        924,
                        65,
                        20
                    ],
                    "text": "MORPH MS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-amp-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        315,
                        921,
                        68,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "syn-harmonic-interp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250,
                        1120,
                        65,
                        20
                    ],
                    "text": "MORPH MS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "syn-harmonic-interp-ms",
                    "maxclass": "flonum",
                    "maximum": 600000,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        315,
                        1117,
                        68,
                        22
                    ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-load-freq-interp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1400,
                        95,
                        22
                    ],
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
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1425,
                        95,
                        22
                    ],
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
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1450,
                        95,
                        22
                    ],
                    "text": "loadmess 1000."
                }
            },
            {
                "box": {
                    "id": "syn-interpolation-js",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        480,
                        1274,
                        250,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "multislider_interpolation_engine_10.js",
                        "parameter_enable": 0
                    },
                    "text": "js multislider_interpolation_engine_10.js",
                    "varname": "multislider_interpolation_engine_10"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-freq-list",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1275,
                        82,
                        22
                    ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-amp-list",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1300,
                        82,
                        22
                    ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-anchor-list",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        920,
                        1325,
                        82,
                        22
                    ],
                    "text": "routepass list"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-count-number",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1007,
                        1275,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-base-number",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1007,
                        1300,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-drift-number",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1007,
                        1325,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-sr-number",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1007,
                        1350,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-sr-display",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1125,
                        1275,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-count-display",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1125,
                        1300,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-base-display",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1125,
                        1325,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "syn-filter-drift-display",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1125,
                        1350,
                        112,
                        22
                    ],
                    "text": "routepass int float"
                }
            },
            {
                "box": {
                    "id": "rt10-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1490,
                        875,
                        20
                    ],
                    "text": "GLOBAL MODEL RETUNING / TRANSFORMS — STAGE 10",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ],
                    "fontface": 1
                }
            },
            {
                "box": {
                    "id": "rt10-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1520,
                        875,
                        20
                    ],
                    "text": "Source sliders remain untouched. Target changes glide automatically; post transforms are always recalculated from the stored source.",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1555,
                        240,
                        20
                    ],
                    "text": "RETUNING MODE",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-mode",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        35,
                        1580,
                        240,
                        22
                    ],
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "items": [
                        "Rebuild base / ERB drift",
                        ",",
                        "Ratio transpose / fixed spectrum",
                        ",",
                        "Additive Hz shift"
                    ],
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-mode-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1580,
                        80,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-target-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        290,
                        1555,
                        100,
                        20
                    ],
                    "text": "TARGET BASE Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-target",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        290,
                        1580,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 1,
                    "maximum": 23000
                }
            },
            {
                "box": {
                    "id": "rt10-target-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1580,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 110"
                }
            },
            {
                "box": {
                    "id": "rt10-glide-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        395,
                        1555,
                        100,
                        20
                    ],
                    "text": "RETUNE MS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-glide",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        395,
                        1580,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 600000
                }
            },
            {
                "box": {
                    "id": "rt10-glide-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1580,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 1000"
                }
            },
            {
                "box": {
                    "id": "rt10-current-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500,
                        1555,
                        115,
                        20
                    ],
                    "text": "CURRENT BASE Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-current",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        500,
                        1580,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "ignoreclick": 1
                }
            },
            {
                "box": {
                    "id": "rt10-current-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1060,
                        1580,
                        80,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rt10-bypass",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        625,
                        1577,
                        28,
                        28
                    ],
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "rt10-bypass-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        663,
                        1580,
                        230,
                        20
                    ],
                    "text": "POST TRANSFORM BYPASS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-bypass-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1608,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend bypass"
                }
            },
            {
                "box": {
                    "id": "rt10-bypass-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1608,
                        80,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-semitones-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1630,
                        125,
                        20
                    ],
                    "text": "SEMITONES",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-semitones",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        35,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": -120,
                    "maximum": 120
                }
            },
            {
                "box": {
                    "id": "rt10-semitones-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-semitones-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend semitones"
                }
            },
            {
                "box": {
                    "id": "rt10-cents-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        160,
                        1630,
                        125,
                        20
                    ],
                    "text": "CENTS",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-cents",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        160,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": -12000,
                    "maximum": 12000
                }
            },
            {
                "box": {
                    "id": "rt10-cents-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-cents-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend cents"
                }
            },
            {
                "box": {
                    "id": "rt10-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        285,
                        1630,
                        125,
                        20
                    ],
                    "text": "EXTRA SHIFT Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-offset",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        285,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": -23000,
                    "maximum": 23000
                }
            },
            {
                "box": {
                    "id": "rt10-offset-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-offset-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend offset"
                }
            },
            {
                "box": {
                    "id": "rt10-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        410,
                        1630,
                        125,
                        20
                    ],
                    "text": "MODEL AMP GAIN",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-gain",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        410,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 2
                }
            },
            {
                "box": {
                    "id": "rt10-gain-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "rt10-gain-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend gain"
                }
            },
            {
                "box": {
                    "id": "rt10-low-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        535,
                        1630,
                        125,
                        20
                    ],
                    "text": "MINIMUM Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-low",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        535,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 23000
                }
            },
            {
                "box": {
                    "id": "rt10-low-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "id": "rt10-low-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend low"
                }
            },
            {
                "box": {
                    "id": "rt10-high-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        660,
                        1630,
                        125,
                        20
                    ],
                    "text": "MAXIMUM Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-high",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        660,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 23000
                }
            },
            {
                "box": {
                    "id": "rt10-high-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 12000"
                }
            },
            {
                "box": {
                    "id": "rt10-high-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend high"
                }
            },
            {
                "box": {
                    "id": "rt10-cluster-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        785,
                        1630,
                        125,
                        20
                    ],
                    "text": "CLUSTER SPAN Hz",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-cluster",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        785,
                        1655,
                        95,
                        22
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 23000
                }
            },
            {
                "box": {
                    "id": "rt10-cluster-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1655,
                        100,
                        22
                    ],
                    "hidden": 1,
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "rt10-cluster-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1655,
                        120,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend cluster"
                }
            },
            {
                "box": {
                    "id": "rt10-retuning",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "patching_rect": [
                        35,
                        1700,
                        290,
                        22
                    ],
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "text": "js global_retuning_controller_10.js",
                    "saved_object_attributes": {
                        "filename": "global_retuning_controller_10.js",
                        "parameter_enable": 0
                    },
                    "varname": "global_retuning_controller_10"
                }
            },
            {
                "box": {
                    "id": "rt10-transform",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "patching_rect": [
                        350,
                        1700,
                        285,
                        22
                    ],
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "text": "js sinusoid_model_transform_10.js",
                    "saved_object_attributes": {
                        "filename": "sinusoid_model_transform_10.js",
                        "parameter_enable": 0
                    },
                    "varname": "sinusoid_model_transform_10"
                }
            },
            {
                "box": {
                    "id": "rt10-safe-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1735,
                        875,
                        20
                    ],
                    "text": "Bypass skips post tuning/gain/clusters, NOT base rebuilding or safety filtering. Clusters OFF (0 Hz) preserve beating.",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-sr-command",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1050,
                        1735,
                        115,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend samplerate"
                }
            },
            {
                "box": {
                    "id": "rt10-source-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1775,
                        875,
                        20
                    ],
                    "text": "FULL SOURCE MODEL — STORED BEFORE POST TRANSFORMS / ALIAS FILTER (clicking does not send)",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-source-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        940,
                        1775,
                        80,
                        22
                    ],
                    "hidden": 1,
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "rt10-source-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        35,
                        1800,
                        875,
                        62
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "",
                    "textcolor": [
                        0,
                        0,
                        0,
                        1
                    ],
                    "bgcolor": [
                        0,
                        0.7294117647058823,
                        1,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "rt10-study",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        1880,
                        875,
                        20
                    ],
                    "text": "Try ratio mode: 110 → 220 Hz. Try shift mode: 110 → 220 Hz adds 110 Hz to every partial. Rebuild mode recalculates ERB drift.",
                    "textcolor": [
                        0.16,
                        0.29,
                        0.45,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "stage10-output-gain-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "hidden": 1,
                    "patching_rect": [
                        1260,
                        455,
                        110,
                        22
                    ],
                    "text": "loadmess -65."
                }
            },
            {
                "box": {
                    "id": "stage10-amp-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "hidden": 1,
                    "patching_rect": [
                        1260,
                        921,
                        90,
                        22
                    ],
                    "text": "loadmess 3"
                }
            },
            {
                "box": {
                    "id": "stage10-freq-indices",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "parameter_enable": 0,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "filename": "component_index_ruler_10.js",
                    "jsarguments": [],
                    "patching_rect": [
                        35,
                        789,
                        875,
                        12
                    ],
                    "varname": "component_indices_freq_10"
                }
            },
            {
                "box": {
                    "id": "stage10-amp-indices",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "parameter_enable": 0,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "filename": "component_index_ruler_10.js",
                    "jsarguments": [],
                    "patching_rect": [
                        35,
                        948,
                        875,
                        12
                    ],
                    "varname": "component_indices_amp_10"
                }
            },
            {
                "box": {
                    "id": "stage10-harmonic-indices",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "parameter_enable": 0,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "filename": "component_index_ruler_10.js",
                    "jsarguments": [],
                    "patching_rect": [
                        35,
                        1147,
                        875,
                        12
                    ],
                    "varname": "component_indices_harmonic_10"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        1
                    ],
                    "source": [
                        "obj-1",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-control-message",
                        0
                    ],
                    "source": [
                        "obj-17",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-envelope-message",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-signal-in",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-line",
                        0
                    ],
                    "source": [
                        "obj-envelope-message",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-multiply",
                        1
                    ],
                    "source": [
                        "obj-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-multiply",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-signal-out",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-multiply",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-rounded-prepend",
                        0
                    ],
                    "source": [
                        "obj-receive-rounded",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-rounded-message",
                        0
                    ],
                    "source": [
                        "obj-rounded-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-multiply",
                        0
                    ],
                    "source": [
                        "obj-signal-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-envelope-message",
                        0
                    ],
                    "source": [
                        "obj-trigger-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-sr-number",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "syn-adstatus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-sr-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "syn-adstatus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-dynamic-shapes",
                        2
                    ],
                    "source": [
                        "syn-amp-shape-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-amp-list",
                        0
                    ],
                    "source": [
                        "syn-amp-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "rt10-retuning",
                        0
                    ],
                    "source": [
                        "syn-base",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-plus2",
                        0
                    ],
                    "source": [
                        "syn-count-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-count-display",
                        0
                    ],
                    "source": [
                        "syn-count-split",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-count-update",
                        0
                    ],
                    "source": [
                        "syn-count-split",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-dynamic-shapes",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "syn-count-update",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-count-number",
                        0
                    ],
                    "source": [
                        "syn-count-update",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-init-bangs",
                        0
                    ],
                    "source": [
                        "syn-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-drift-number",
                        0
                    ],
                    "source": [
                        "syn-drift",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        1
                    ],
                    "source": [
                        "syn-dynamic-shapes",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        0
                    ],
                    "source": [
                        "syn-dynamic-shapes",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filtered-message",
                        0
                    ],
                    "source": [
                        "syn-filtered-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-dynamic-shapes",
                        1
                    ],
                    "source": [
                        "syn-freq-shape-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-freq-list",
                        0
                    ],
                    "source": [
                        "syn-freq-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-anchor-list",
                        0
                    ],
                    "source": [
                        "syn-harmonic-amp-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-amp-slider",
                        0
                    ],
                    "source": [
                        "syn-init-bangs",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-freq-slider",
                        0
                    ],
                    "source": [
                        "syn-init-bangs",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-harmonic-amp-slider",
                        0
                    ],
                    "source": [
                        "syn-init-bangs",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-base-display",
                        0
                    ],
                    "source": [
                        "syn-load-base",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-count-slider",
                        0
                    ],
                    "source": [
                        "syn-load-count",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-filter-drift-display",
                        0
                    ],
                    "source": [
                        "syn-load-drift",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-freq-shape-menu",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "syn-load-shape-menus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-adstatus",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "syn-loadbang",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-delay",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "syn-loadbang",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-count-split",
                        0
                    ],
                    "source": [
                        "syn-plus2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-status-message",
                        0
                    ],
                    "source": [
                        "syn-status-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-dynamic-shapes",
                        3
                    ],
                    "source": [
                        "syn-harmonic-shape-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        2
                    ],
                    "source": [
                        "syn-dynamic-shapes",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-harmonic-shape-menu",
                        0
                    ],
                    "source": [
                        "syn-load-harmonic-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-random-js",
                        0
                    ],
                    "source": [
                        "syn-count-update",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-random-js",
                        1
                    ],
                    "source": [
                        "syn-random-freq-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-random-js",
                        2
                    ],
                    "source": [
                        "syn-random-amp-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-random-js",
                        3
                    ],
                    "source": [
                        "syn-random-harmonic-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        0
                    ],
                    "source": [
                        "syn-random-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        1
                    ],
                    "source": [
                        "syn-random-js",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        2
                    ],
                    "source": [
                        "syn-random-js",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-function-list-gate",
                        0
                    ],
                    "source": [
                        "obj-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-function-list-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        0
                    ],
                    "source": [
                        "syn-filter-freq-list",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        1
                    ],
                    "source": [
                        "syn-filter-amp-list",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        2
                    ],
                    "source": [
                        "syn-filter-anchor-list",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        3
                    ],
                    "source": [
                        "syn-filter-count-number",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        4
                    ],
                    "source": [
                        "syn-filter-base-number",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        5
                    ],
                    "source": [
                        "syn-filter-drift-number",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-js",
                        6
                    ],
                    "source": [
                        "syn-filter-sr-number",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-sr-display",
                        0
                    ],
                    "source": [
                        "syn-filter-sr-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-count-display",
                        0
                    ],
                    "source": [
                        "syn-filter-count-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-base",
                        0
                    ],
                    "source": [
                        "syn-filter-base-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-drift",
                        0
                    ],
                    "source": [
                        "syn-filter-drift-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-freq-slider",
                        0
                    ],
                    "source": [
                        "syn-interpolation-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-amp-slider",
                        0
                    ],
                    "source": [
                        "syn-interpolation-js",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-harmonic-amp-slider",
                        0
                    ],
                    "source": [
                        "syn-interpolation-js",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        3
                    ],
                    "source": [
                        "syn-freq-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        4
                    ],
                    "source": [
                        "syn-amp-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        5
                    ],
                    "source": [
                        "syn-harmonic-amp-slider",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        6
                    ],
                    "source": [
                        "syn-freq-interp-ms",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        7
                    ],
                    "source": [
                        "syn-amp-interp-ms",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-interpolation-js",
                        8
                    ],
                    "source": [
                        "syn-harmonic-interp-ms",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-freq-interp-ms",
                        0
                    ],
                    "source": [
                        "syn-load-freq-interp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-amp-interp-ms",
                        0
                    ],
                    "source": [
                        "syn-load-amp-interp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "syn-harmonic-interp-ms",
                        0
                    ],
                    "source": [
                        "syn-load-harmonic-interp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-mode-load",
                        0
                    ],
                    "destination": [
                        "rt10-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-mode",
                        0
                    ],
                    "destination": [
                        "rt10-retuning",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-target-load",
                        0
                    ],
                    "destination": [
                        "rt10-target",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-target",
                        0
                    ],
                    "destination": [
                        "rt10-retuning",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-glide-load",
                        0
                    ],
                    "destination": [
                        "rt10-glide",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-glide",
                        0
                    ],
                    "destination": [
                        "rt10-retuning",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-retuning",
                        2
                    ],
                    "destination": [
                        "rt10-current-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-current-set",
                        0
                    ],
                    "destination": [
                        "rt10-current",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-retuning",
                        3
                    ],
                    "destination": [
                        "rt10-target",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-bypass-load",
                        0
                    ],
                    "destination": [
                        "rt10-bypass",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-bypass",
                        0
                    ],
                    "destination": [
                        "rt10-bypass-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-bypass-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-semitones-load",
                        0
                    ],
                    "destination": [
                        "rt10-semitones",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-semitones",
                        0
                    ],
                    "destination": [
                        "rt10-semitones-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-semitones-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cents-load",
                        0
                    ],
                    "destination": [
                        "rt10-cents",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cents",
                        0
                    ],
                    "destination": [
                        "rt10-cents-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cents-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-offset-load",
                        0
                    ],
                    "destination": [
                        "rt10-offset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-offset",
                        0
                    ],
                    "destination": [
                        "rt10-offset-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-offset-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-gain-load",
                        0
                    ],
                    "destination": [
                        "rt10-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-gain",
                        0
                    ],
                    "destination": [
                        "rt10-gain-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-gain-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-low-load",
                        0
                    ],
                    "destination": [
                        "rt10-low",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-low",
                        0
                    ],
                    "destination": [
                        "rt10-low-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-low-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-high-load",
                        0
                    ],
                    "destination": [
                        "rt10-high",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-high",
                        0
                    ],
                    "destination": [
                        "rt10-high-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-high-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cluster-load",
                        0
                    ],
                    "destination": [
                        "rt10-cluster",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cluster",
                        0
                    ],
                    "destination": [
                        "rt10-cluster-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-cluster-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-retuning",
                        0
                    ],
                    "destination": [
                        "syn-filter-base-number",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-retuning",
                        1
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-js",
                        4
                    ],
                    "destination": [
                        "rt10-transform",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-transform",
                        0
                    ],
                    "destination": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-transform",
                        1
                    ],
                    "destination": [
                        "syn-status-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-transform",
                        2
                    ],
                    "destination": [
                        "syn-filtered-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-transform",
                        3
                    ],
                    "destination": [
                        "syn-alias-toggle",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-adstatus",
                        0
                    ],
                    "destination": [
                        "rt10-sr-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-sr-command",
                        0
                    ],
                    "destination": [
                        "rt10-transform",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-transform",
                        4
                    ],
                    "destination": [
                        "rt10-source-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "rt10-source-prepend",
                        0
                    ],
                    "destination": [
                        "rt10-source-message",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "stage10-output-gain-init",
                        0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-count-update",
                        1
                    ],
                    "destination": [
                        "syn-interpolation-js",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "stage10-amp-default",
                        0
                    ],
                    "destination": [
                        "syn-amp-shape-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-count-update",
                        2
                    ],
                    "destination": [
                        "stage10-freq-indices",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-count-update",
                        2
                    ],
                    "destination": [
                        "stage10-amp-indices",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "syn-count-update",
                        2
                    ],
                    "destination": [
                        "stage10-harmonic-indices",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-1": [
                "live.gain~",
                "live.gain~",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}
