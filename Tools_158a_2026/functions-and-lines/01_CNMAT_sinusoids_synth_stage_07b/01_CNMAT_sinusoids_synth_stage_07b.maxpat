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
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 96.0, 504.0, 42.0, 22.0 ],
                    "text": "t b b b"
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
                                    "linecount": 465,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 195.0, 102.0, 88.0, 1322.0 ],
                                    "text": "110 1 220 0.981752 227.601995 0.803181 307.607817 0.922109 330 0.966369 440 0.932956 452.785589 0.986545 523.046825 0.963187 550 0.870494 660 0.808032 693.21 0.939828 725.263307 0.690863 770 0.693541 880 0.563153 910.397692 0.372963 957.961946 0.120396 990 0.431422 1100 0.29201 1103.163341 0.241161 1165.454302 0.361925 1210 0.152599 1320 0.0711 1347.3 0.490099 1366.270732 0.624793 1430 0.040562 1540 0.010025 1606.313107 0.759488 1630.003578 0.616627 1650 0.106782 1760 0.215379 1799.127938 0.364047 1831.2901 0.447948 1870 0.335291 1980 0.481869 2024.016887 0.595918 2083.634517 0.479983 2090 0.628447 2181.984146 0.637777 2200 0.736518 2295.677147 0.634887 2310 0.826539 2420 0.9127 2496.33667 0.406323 2530 0.942247 2532.036625 0.626433 2605.629126 0.07288 2640 0.971793 2664.621139 0.186213 2750 0.990106 2860 0.994511 2946.447495 0.110614 2970 0.998916 2973.57243 0.091747 3080 0.999772 3090.9045 0.423749 3169.340174 0.254372 3190 0.9999 3253.227613 0.320675 3300 0.999962 3410 0.999783 3425.203688 0.515612 3520 0.999604 3561.209043 0.054799 3630 0.996449 3642.762499 0.125738 3740 0.991274 3840.581188 0.081202 3846.10622 0.476291 3850 0.986099 3881.881028 0.068 3960 0.954183 4070 0.921685 4098.60756 0.276764 4180 0.866648 4219.145112 0.618852 4242.893278 0.660888 4290 0.771834 4400 0.67702 4487.876135 0.662113 4502.465698 0.702924 4510 0.542679 4512.987109 0.508137 4620 0.394785 4730 0.252808 4762.904191 0.126192 4769.605298 0.592897 4840 0.151252 4950 0.049697 5055.019757 0.317165 5060 0.02065 5137.020442 0.37808 5170 0.061089 5212.030613 0.434328 5248.2845 0.149473 5280 0.101529 5390 0.233083 5486.13114 0.606687 5500 0.375484 5560.26573 0.118728 5610 0.513446 5720 0.639801 5768.271069 0.5794 5789.244323 0.214234 5830 0.766156 5832.392791 0.295869 5856.028664 0.349064 5940 0.847435 5965.810308 0.513963 6050 0.905447 6160 0.961576 6194.017357 0.177874 6237.734782 0.392986 6270 0.975317 6380 0.989059 6443.443204 0.090763 6490 0.997446 6499.279034 0.264985 6600 0.998606 6621.61317 0.576188 6642.016305 0.759391 6710 0.999766 6791.425907 0.325351 6820 0.999988 6836.37 0.584748 6930 0.999988 6986.935177 0.463188 7040 0.999766 7150 0.998606 7150.893497 0.704307 7260 0.997446 7352.080109 0.754892 7370 0.989059 7389.3566 0.171485 7455.186729 0.096043 7480 0.975317 7590 0.961576 7700 0.905447 7776.347418 0.726989 7809.129467 0.400175 7810 0.847435 7920 0.766156 7949.57 0.398046 7966.959318 0.532204 8030 0.639801 8093.514626 0.265139 8140 0.513446 8143.47373 0.225028 8236.490742 0.73831 8250 0.375484 8273.336588 0.83938 8360 0.233083 8374.660633 0.599903 8470 0.101529 8580 0.061089 8583.735375 0.438037 8690 0.02065 8702.653442 0.669107 8770.181377 0.820076 8800 0.049697 8850.759063 0.833481 8910 0.151252 8983.757821 0.685042 9020 0.252808 9125.956846 0.547026 9130 0.394785 9131.142826 0.873655 9205.344712 0.793308 9240 0.542679 9350 0.67702 9460 0.771834 9493.750512 0.414861 9570 0.866648 9601.475272 0.752777 9679.496432 0.399262 9680 0.921685 9790 0.954183 9865.568132 0.616034 9900 0.986099 9989.465825 0.606201 9989.709318 0.327752 10010 0.991274 10093.278213 0.47422 10120 0.996449 10176.05 0.495073 10230 0.999604 10241.0851 0.865128 10340 0.999783 10450 0.999962 10518.633995 0.50197 10560 0.9999 10573.616529 0.735664 10582.487103 0.286923 10612.610818 0.71754 10670 0.999772 10780 0.998916 10838.156229 0.682736 10890 0.994511 10931.763272 0.307048 11000 0.990106 11047.618312 0.349875 11110 0.971793 11203.673787 0.833432 11220 0.942247 11330 0.9127 11440 0.826539 11546.932934 0.266799 11550 0.736518 11660 0.628447 11671.712042 0.687042 11703.942075 0.516305 11745.543833 0.69699 11770 0.481869 11831.792057 0.565419 11860.535556 0.761086 11880 0.335291 11929.078978 0.268162 11990 0.215379 12100 0.106782 12210 0.010025 12254.475573 0.55622 12260.620459 0.837761 12320 0.040562 12353.534244 0.477602 12422.316816 0.391564 12430 0.0711 12474.263449 0.450774 12540 0.152599 12650 0.29201 12657.926584 0.638242 12673.71033 0.575637 12760 0.431422 12870 0.563153 12980 0.693541 13012.363161 0.684593 13019.403404 0.451985 13090 0.808032 13200 0.870494 13216.464812 0.250502 13223.86069 0.563231 13310 0.932956 13418.806313 0.538078 13420 0.966369 13420.942128 0.651045 13530 0.981752 13640 0.997135 13752.504687 0.672985 14159.68461 0.453477",
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
                    "patching_rect": [ 35.0, 765.0, 350.0, 20.0 ],
                    "text": "INHARMONICITY PER PARTIAL  0.0–1.0",
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
                    "size": 124,
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
                    "patching_rect": [ 35.0, 924.0, 260.0, 20.0 ],
                    "text": "AMPLITUDE PER PARTIAL  0.0–1.0",
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
                    "size": 124,
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
                        "filename": "cnmat_sinusoid_model_generator_07b.js",
                        "parameter_enable": 0
                    },
                    "text": "js cnmat_sinusoid_model_generator_07b.js"
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
                    "text": "124 247 124 1 0 23000",
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
                    "text": "CNMAT SINUSOIDS~ SYNTHESIZER — STAGE 7B",
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
                    "text": "0. 0. 0. 4.15 0.01 4.15 0.01 4.15 0.02 4.15 0.03 4.15 0.03 4.15 0.04 4.15 0.06 4.15 0.07 4.15 0.09 4.15 0.11 4.15 0.13 4.15 0.16 4.15 0.19 4.15 0.23 4.15 0.28 4.15 0.34 4.15 0.41 4.15 0.49 4.15 0.59 4.15 0.7 4.15 0.84 4.15 1. 4.15 1. 4.15 0.84 4.15 0.7 4.15 0.59 4.15 0.49 4.15 0.41 4.15 0.34 4.15 0.28 4.15 0.23 4.15 0.19 4.15 0.16 4.15 0.13 4.15 0.11 4.15 0.09 4.15 0.07 4.15 0.06 4.15 0.04 4.15 0.03 4.15 0.03 4.15 0.02 4.15 0.01 4.15 0.01 4.15 0. 4.15 0. 4.15",
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
                    "text": "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
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
                    "patching_rect": [ 309.0, 1274.0, 183.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dynamic_shape_library_07b.js",
                        "parameter_enable": 0
                    },
                    "text": "js dynamic_shape_library_07b.js"
                }
            },
            {
                "box": {
                    "id": "syn-dynamic-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 1275.0, 430.0, 20.0 ],
                    "text": "48-point templates resampled to the exact component count",
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
                    "patching_rect": [ 36.0, 1120.0, 332.0, 20.0 ],
                    "text": "HARMONIC ANCHOR AMPLITUDE PER PARTIAL  0.0–1.0",
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
                    "size": 124,
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
                    "patching_rect": [ 565.0, 1118.0, 221.0, 22.0 ]
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
                        "filename": "random_multislider_values_07b.js",
                        "parameter_enable": 0
                    },
                    "text": "js random_multislider_values_07b.js"
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
                    "destination": [ "obj-envelope-message", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-random-freq-button", 0 ],
                    "source": [ "obj-3", 1 ]
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
                    "destination": [ "obj-3", 0 ],
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
                    "destination": [ "syn-dynamic-shapes", 2 ],
                    "source": [ "syn-amp-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-amp-list", 0 ],
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
                    "destination": [ "syn-amp-slider", 0 ],
                    "source": [ "syn-dynamic-shapes", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-slider", 0 ],
                    "source": [ "syn-dynamic-shapes", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-amp-slider", 0 ],
                    "source": [ "syn-dynamic-shapes", 2 ]
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
                    "destination": [ "syn-dynamic-shapes", 1 ],
                    "source": [ "syn-freq-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-freq-list", 0 ],
                    "source": [ "syn-freq-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-filter-anchor-list", 0 ],
                    "source": [ "syn-harmonic-amp-slider", 0 ]
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
                    "destination": [ "syn-amp-slider", 0 ],
                    "source": [ "syn-random-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-freq-slider", 0 ],
                    "source": [ "syn-random-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-harmonic-amp-slider", 0 ],
                    "source": [ "syn-random-js", 2 ]
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