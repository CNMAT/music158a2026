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
        "rect": [ 2734.0, 124.0, 960.0, 959.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 119.0, 455.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 491.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
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
                                    "linecount": 404,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 195.0, 102.0, 88.0, 1322.0 ],
                                    "text": "110 1 220 0.1 244.22329 0.158333 299.84 0.158333 330 0.141667 440 0.1625 476.096472 0.158333 507.967027 0.158333 550 0.183333 660 0.204167 707.969342 0.955357 716.094725 0.946429 770 0.225 880 0.266667 924.224668 0.928571 939.841065 0.9375 990 0.283333 1100 0.283333 1132.36 0.910715 1171.70892 0.016667 1210 0.69447 1320 0.669657 1340.506382 0.892857 1403.567923 0.901786 1430 0.645017 1540 0.622228 1548.681952 0.875 1635.407089 0.883928 1650 0.59944 1756.917334 0.266667 1760 0.577957 1867.20698 0.866071 1870 0.557028 1965.263349 0.839286 1980 0.536643 2090 0.517422 2098.934236 0.266667 2173.804902 0.016667 2200 0.4982 2310 0.480446 2330.527502 0.830357 2382.671284 0.803572 2420 0.462793 2530 0.445936 2561.833555 0.8125 2592.051141 0.785714 2640 0.429723 2750 0.413734 2792.690511 0.794643 2802.336398 0.767857 2860 0.398844 2970 0.383953 3014.04 0.75 3022.839767 0.776785 3080 0.370019 3190 0.356344 3227.648141 0.732143 3251.93 0.758928 3300 0.34312 3410 0.33056 3443.802454 0.075 3479.506702 0.741072 3520 0.318022 3630 0.306486 3663.205843 0.696429 3705.003417 0.723214 3740 0.294951 3850 0.284017 3886.580107 0.678571 3927.15 0.705357 3960 0.273422 4070 0.263049 4114.857697 0.660714 4145.51828 0.6875 4180 0.253319 4290 0.243589 4348.679798 0.1 4359.495977 0.669643 4400 0.234552 4510 0.225616 4568.617921 0.651785 4587.377964 0.1 4620 0.217037 4730 0.20883 4772.685378 0.1 4830.293922 0.091667 4840 0.200694 4950 0.193157 4971.865821 0.1 5060 0.18562 5076.260573 0.589286 5166.908503 0.598215 5170 0.178527 5280 0.171605 5323.594671 0.571428 5360.047167 0.580357 5390 0.164875 5500 0.158517 5553.497496 0.5625 5569.956266 0.553571 5610 0.15216 5720 0.146299 5749.651084 0.544643 5810.990636 0.535714 5830 0.14046 5940 0.134894 5951.009291 0.526786 6044.990552 0.517857 6050 0.129532 6160 0.633181 6270 0.619328 6380 0.214403 6484.639506 0.1 6490 0.109803 6600 0.10528 6612.187168 0.1 6688.229669 0.1 6710 0.100913 6820 0.096759 6855.133873 0.1 6880.903476 0.1 6930 0.092619 7040 0.088804 7062.794377 0.1 7107.87846 0.1 7150 0.084989 7238.062181 0.410714 7260 0.081379 7368.817942 0.419643 7370 0.077875 7409.27167 0.392857 7480 0.07445 7578.793437 0.375 7590 0.071232 7635.826398 0.401785 7700 0.068013 7748.851325 0.357143 7810 0.06503 7906.268796 0.383929 7920 0.062074 7921.374812 0.339286 8030 0.059242 8098.843683 0.321429 8140 0.056527 8176.6 0.366071 8250 0.053841 8281.553294 0.303571 8360 0.051348 8444.857666 0.348215 8469.030337 0.285714 8470 0.048855 8580 0.046513 8661.003316 0.267857 8690 0.044223 8709.675522 0.330357 8800 0.042001 8856.998046 0.25 8910 0.039899 8970.13242 0.3125 9020 0.037796 9056.404057 0.232143 9130 0.035861 9225.754014 0.294643 9240 0.03393 9258.764022 0.214286 9350 0.032092 9460 0.030319 9463.220207 0.196428 9476.426233 0.276786 9570 0.028576 9668.938359 0.178571 9680 0.026947 9721.666034 0.258928 9790 0.025318 9875.555057 0.160714 9900 0.0238 9963.440646 0.241072 10010 0.022304 10082.783619 0.142857 10120 0.020862 10202.382424 0.223215 10230 0.019488 10290.405208 0.125 10340 0.01812 10439.096107 0.205357 10450 0.016859 10498.272829 0.107143 10560 0.015597 10670 0.014405 10674.135272 0.1875 10706.280368 0.089285 10780 0.013246 10890 0.012115 10907.977868 0.169643 10914.345502 0.071429 11000 0.011051 11110 0.009987 11122.443879 0.053571 11140.922881 0.151786 11220 0.009001 11330 0.008024 11330.559652 0.035714 11373.42527 0.133929 11440 0.007089 11538.683076 0.017857 11550 0.006191 11605.659376 0.116072 11660 0.005304 11746.809115 0 11770 0.00448 11837.726521 0.098214 11880 0.003655 11990 0.002882 12069.694955 0.080357 12100 0.002124 12210 0.001391 12301.611913 0.0625 12320 0.000695 12533.5 0.044643 12765.378954 0.026786 12997.25424 0.008929",
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
                    "patching_rect": [ 35.0, 1301.0, 51.0, 22.0 ],
                    "text": "p model"
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
                            "parameter_initial": [ -70 ],
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
                    "text": "BASE FREQ Hz",
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
                    "size": 113,
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
                    "size": 113,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "syn-js",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 35.0, 1275.0, 269.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "cnmat_sinusoid_model_generator_08.js",
                        "parameter_enable": 0
                    },
                    "text": "js cnmat_sinusoid_model_generator_08.js"
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
                    "text": "INTERLEAVED MODEL — AUTO-LOADED INTO sinusoids~",
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
                    "text": "113 221 111 3 0 23000",
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
                    "text": "REQUESTED  PAIRS  HARMONIC  MERGED  FILTERED  LIMIT Hz",
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
                    "text": "ALIAS FILTER ACTIVE",
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
                    "text": "FILTERED: partial-number attempted-frequency pairs",
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
                    "patching_rect": [ 45.0, 204.0, 43.0, 22.0 ],
                    "text": "p prep"
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
                    "text": "CNMAT SINUSOIDS~ SYNTHESIZER — STAGE 8",
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
                    "text": "0. 0. 0. 64.79 0.01 64.79 0.02 64.79 0.03 64.79 0.04 64.79 0.06 64.79 0.08 64.79 0.11 64.79 0.15 64.79 0.19 64.79 0.25 64.79 0.31 64.79 0.37 64.79 0.45 64.79 0.53 64.79 0.61 64.79 0.69 64.79 0.77 64.79 0.84 64.79 0.9 64.79 0.95 64.79 0.98 64.79 1. 64.79 1. 64.79 0.98 64.79 0.95 64.79 0.9 64.79 0.84 64.79 0.77 64.79 0.69 64.79 0.61 64.79 0.53 64.79 0.45 64.79 0.37 64.79 0.31 64.79 0.25 64.79 0.19 64.79 0.15 64.79 0.11 64.79 0.08 64.79 0.06 64.79 0.04 64.79 0.03 64.79 0.02 64.79 0.01 64.79 0. 64.79 0. 64.79",
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
                    "bgcolor": [ 0.0, 0.7294117647058823, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.0, 0.7294117647058823, 1.0, 1.0 ],
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
                    "text": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.7294117647058823, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.0, 0.7294117647058823, 1.0, 1.0 ],
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
                    "bgcolor": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1.0 ],
                    "bgfillcolor_color": [ 0.638838505167049, 0.548194572727919, 0.130142067214928, 1.0 ],
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
                    "patching_rect": [ 309.0, 1274.0, 176.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_08.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_08.js"
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
                    "size": 113,
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
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_color": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
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
                        "filename": "random_multislider_values_08.js",
                        "parameter_enable": 0
                    },
                    "text": "js random_multislider_values_08.js"
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
                    "patching_rect": [ 339.0, 1087.0, 68.0, 22.0 ]
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
                        "filename": "multislider_interpolation_engine_08.js",
                        "parameter_enable": 0
                    },
                    "text": "js multislider_interpolation_engine_08.js"
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
                    "destination": [ "obj-trigger-button", 0 ],
                    "source": [ "obj-3", 0 ]
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-6", 0 ]
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
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-line", 1 ]
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
                    "destination": [ "syn-filter-sr-display", 0 ],
                    "order": 0,
                    "source": [ "syn-adstatus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-sr-number", 0 ],
                    "order": 1,
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
                    "destination": [ "syn-filter-base-number", 0 ],
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "syn-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-alias-toggle", 0 ],
                    "source": [ "syn-js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filtered-prepend", 0 ],
                    "source": [ "syn-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-status-prepend", 0 ],
                    "source": [ "syn-js", 1 ]
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