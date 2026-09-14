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
        "rect": [ 1794.0, 154.0, 805.0, 610.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 854.0, 221.0, 48.0, 22.0 ],
                    "text": "del 200"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 821.0, 253.0, 29.5, 22.0 ],
                    "text": "45"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 243.0, 91.0, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 241.0, 90.5, 51.0, 47.0 ],
                    "text": "set\ninteger\nrange"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 49.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 241.0, 56.0, 63.0, 33.0 ],
                    "text": "set gain\nenv-range"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 279.0, 229.0, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 294.0, 92.0, 45.0, 22.0 ],
                    "text": "0. 127."
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 258.0, 268.0, 74.0, 22.0 ],
                    "text": "unpack 0. 0."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.5019607843137255, 0.8823529411764706, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 200.0, 32.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 303.0, 67.0, 32.0, 22.0 ],
                    "text": "0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 795.0, 117.0, 22.0 ],
                    "text": "vexpr int(round($f1))"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.043137254901960784, 0.26666666666666666, 0.796078431372549, 1.0 ],
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 555.0, 763.0, 175.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 627.0, 450.0, 129.0, 22.0 ],
                    "text": "send rounded-integers"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.043137254901960784, 0.26666666666666666, 0.796078431372549, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 354.0, 759.0, 113.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 507.0, 450.0, 113.0, 22.0 ],
                    "text": "send gain-envelope"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 201.0, 357.0, 29.5, 22.0 ],
                    "text": "+ 3"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 77.0, 81.0, 727.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 30.0, 11.0, 727.0, 27.0 ],
                    "text": "BUILD A FUNCTION suitable for line or line~ or other time-based number transitions",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 77.0, 297.5, 139.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 89.0, 47.0, 139.0, 20.0 ],
                    "text": "number of breakpoints",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "maximum": 200,
                    "minimum": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 149.0, 370.5, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 103.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
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
                                    "id": "obj-plus3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 100.0, 32.0, 22.0 ],
                                    "text": "+ 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-count-number",
                                    "maxclass": "number",
                                    "maximum": 48,
                                    "minimum": 3,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 126.0, 52.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-count-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 156.0, 63.0, 22.0 ],
                                    "text": "clip 3 48"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-count-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 50.0, 187.0, 40.0, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-minus3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 100.0, 187.0, 32.0, 22.0 ],
                                    "text": "- 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-slider-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 100.0, 215.0, 48.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-size-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 50.0, 221.0, 40.0, 22.0 ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-size-message",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 71.0, 254.0, 52.0, 22.0 ],
                                    "text": "size $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
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
                                    "patching_rect": [ 54.5, 336.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 336.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-plus3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-count-t", 0 ],
                                    "source": [ "obj-count-clip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-count-clip", 0 ],
                                    "source": [ "obj-count-number", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-minus3", 0 ],
                                    "source": [ "obj-count-t", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-size-t", 0 ],
                                    "source": [ "obj-count-t", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-slider-set", 0 ],
                                    "source": [ "obj-minus3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-count-number", 0 ],
                                    "source": [ "obj-plus3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-size-message", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-size-t", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-size-message", 0 ],
                                    "source": [ "obj-size-t", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-slider-set", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 64.0, 357.0, 67.0, 22.0 ],
                    "text": "p wrapping"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5.0, 634.0, 56.0, 60.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 17.0, 336.0, 56.0, 60.0 ],
                    "text": "function\nvalue +\nduration\npairs",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
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
                    "patching_rect": [ 45.0, 25.0, 520.0, 29.0 ],
                    "text": "MULTISLIDER → FUNCTION LIBRARY BUILDER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.729, 1.0, 1.0 ],
                    "elementcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hint": "Number of elements 3-48",
                    "id": "obj-count-slider",
                    "knobcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "knobshape": 3,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 319.5, 163.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 69.0, 163.0, 30.0 ],
                    "size": 46.0,
                    "valuepopuplabel": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-range-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 249.0, 297.5, 210.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 46.5, 155.0, 20.0 ],
                    "text": "VALUE RANGE  0.0–127.0",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-min-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.0, 325.5, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 344.0, 68.0, 70.0, 20.0 ],
                    "text": "minimum"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-range-min",
                    "maxclass": "flonum",
                    "maximum": 127.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 318.0, 323.5, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 414.0, 68.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-min-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 503.0, 112.0, 78.0, 22.0 ],
                    "text": "clip 0. 127."
                }
            },
            {
                "box": {
                    "id": "obj-max-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.0, 354.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 343.0, 93.0, 70.0, 20.0 ],
                    "text": "maximum"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-range-max",
                    "maxclass": "flonum",
                    "maximum": 127.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 318.0, 352.0, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 413.0, 93.0, 72.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-max-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 588.0, 112.0, 78.0, 22.0 ],
                    "text": "clip 0. 127."
                }
            },
            {
                "box": {
                    "id": "obj-range-pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 503.0, 155.0, 76.0, 22.0 ],
                    "text": "pak 0. 127."
                }
            },
            {
                "box": {
                    "id": "obj-range-sort",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 497.5, 185.0, 45.0, 22.0 ],
                    "text": "zl sort"
                }
            },
            {
                "box": {
                    "id": "obj-range-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "", "" ],
                    "patching_rect": [ 497.5, 222.0, 58.0, 22.0 ],
                    "text": "t b l l"
                }
            },
            {
                "box": {
                    "id": "obj-setminmax",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 507.0, 258.0, 112.0, 22.0 ],
                    "text": "setminmax $1 $2"
                }
            },
            {
                "box": {
                    "id": "obj-setrange",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 635.0, 258.0, 100.0, 22.0 ],
                    "text": "setrange $1 $2"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-duration-heading",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 475.0, 298.5, 148.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 495.0, 40.0, 106.0, 33.0 ],
                    "text": "TOTAL \nDURATION in MS",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-duration",
                    "maxclass": "flonum",
                    "maximum": 3600000.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 475.0, 323.5, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 495.0, 73.0, 73.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-duration-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 475.0, 347.5, 106.0, 22.0 ],
                    "text": "clip 1. 3600000."
                }
            },
            {
                "box": {
                    "id": "obj-duration-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 475.0, 370.5, 40.0, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-multislider-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 403.0, 50.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 209.5, 50.0, 20.0 ],
                    "text": "SHAPE",
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
                    "id": "obj-multislider",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 403.0, 711.0, 157.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 139.5, 711.0, 157.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "size": 48,
                    "slidercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "spacing": 6,
                    "thickness": 6
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "list" ],
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
                        "rect": [ 84.0, 144.0, 760.0, 540.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "multislider value list",
                                    "id": "sub-in-list",
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
                                    "comment": "duration in milliseconds",
                                    "id": "sub-in-duration",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 310.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "", "", "bang" ],
                                    "patching_rect": [ 50.0, 100.0, 72.0, 22.0 ],
                                    "text": "t b l l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-clear",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 140.0, 39.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-zllen",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 205.0, 140.0, 43.0, 22.0 ],
                                    "text": "zl.len"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-minus-one",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 205.0, 180.0, 31.0, 22.0 ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-domain-n",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 205.0, 220.0, 88.0, 22.0 ],
                                    "text": "setdomain $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-listfunnel",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 50.0, 180.0, 76.0, 22.0 ],
                                    "text": "listfunnel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-duration-store",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 310.0, 100.0, 53.0, 22.0 ],
                                    "text": "f 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-final-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 310.0, 180.0, 40.0, 22.0 ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-domain-duration",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 220.0, 88.0, 22.0 ],
                                    "text": "setdomain $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "clear, X/Y pairs, setdomain duration, then bang",
                                    "id": "sub-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 190.0, 330.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "sub-comment",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 395.0, 382.0, 47.0 ],
                                    "text": "Order: clear → temporary domain N−1 → index/value pairs → duration domain → bang. The final bang requests one complete function list.",
                                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "sub-out", 0 ],
                                    "source": [ "sub-clear", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-out", 0 ],
                                    "source": [ "sub-domain-duration", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-out", 0 ],
                                    "source": [ "sub-domain-n", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-final-trigger", 0 ],
                                    "source": [ "sub-duration-store", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-domain-duration", 0 ],
                                    "source": [ "sub-final-trigger", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-out", 0 ],
                                    "source": [ "sub-final-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-duration-store", 1 ],
                                    "source": [ "sub-in-duration", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-trigger", 0 ],
                                    "source": [ "sub-in-list", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-out", 0 ],
                                    "source": [ "sub-listfunnel", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-domain-n", 0 ],
                                    "source": [ "sub-minus-one", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-clear", 0 ],
                                    "source": [ "sub-trigger", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-duration-store", 0 ],
                                    "source": [ "sub-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-listfunnel", 0 ],
                                    "source": [ "sub-trigger", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-zllen", 0 ],
                                    "source": [ "sub-trigger", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sub-minus-one", 0 ],
                                    "source": [ "sub-zllen", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 64.0, 569.0, 69.0, 22.0 ],
                    "text": "p translator"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-function-label",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 174.0, 799.0, 220.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 78.0, 451.0, 422.0, 20.0 ],
                    "text": "DURATION-SCALED FUNCTION (value + time/interpolation to next value ",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "addpoints": [ 0.0, 0.0, 0, 21.27659574468085, 0.0, 0, 42.5531914893617, 0.0, 0, 63.829787234042556, 0.0, 0, 85.1063829787234, 0.0, 0, 106.38297872340425, 0.0, 0, 127.65957446808511, 0.0, 0, 148.93617021276594, 0.0, 0, 170.2127659574468, 0.0, 0, 191.48936170212767, 0.0, 0, 212.7659574468085, 0.0, 0, 234.04255319148936, 0.0, 0, 255.31914893617022, 0.0, 0, 276.59574468085106, 0.0, 0, 297.8723404255319, 0.0, 0, 319.1489361702128, 0.0, 0, 340.4255319148936, 0.0, 0, 361.70212765957444, 0.0, 0, 382.97872340425533, 0.0, 0, 404.25531914893617, 0.0, 0, 425.531914893617, 0.0, 0, 446.8085106382979, 0.0, 0, 468.0851063829787, 0.0, 0, 489.36170212765956, 0.0, 0, 510.63829787234044, 0.0, 0, 531.9148936170212, 0.0, 0, 553.1914893617021, 0.0, 0, 574.468085106383, 0.0, 0, 595.7446808510638, 0.0, 0, 617.0212765957447, 0.0, 0, 638.2978723404256, 0.0, 0, 659.5744680851063, 0.0, 0, 680.8510638297872, 0.0, 0, 702.1276595744681, 0.0, 0, 723.4042553191489, 0.0, 0, 744.6808510638298, 0.0, 0, 765.9574468085107, 0.0, 0, 787.2340425531914, 0.0, 0, 808.5106382978723, 0.0, 0, 829.7872340425532, 0.0, 0, 851.063829787234, 0.0, 0, 872.3404255319149, 0.0, 0, 893.6170212765958, 0.0, 0, 914.8936170212766, 0.0, 0, 936.1702127659574, 0.0, 0, 957.4468085106383, 0.0, 0, 978.7234042553191, 0.0, 0, 1000.0, 0.0, 0 ],
                    "bgcolor": [ 0.6388385052447552, 0.5481945727244106, 0.13014206719178864, 1.0 ],
                    "classic_curve": 1,
                    "grid": 3,
                    "gridstep_y": 10.0,
                    "id": "obj-function",
                    "maxclass": "function",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "float", "", "", "bang" ],
                    "outputmode": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 64.0, 598.0, 711.0, 147.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 300.0, 711.0, 147.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-round-output",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 156.5, 759.0, 74.0, 22.0 ],
                    "text": "round 0.01"
                }
            },
            {
                "box": {
                    "id": "obj-output-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 288.0, 759.0, 40.0, 22.0 ],
                    "text": "t l l l"
                }
            },
            {
                "box": {
                    "id": "obj-output-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 417.0, 795.0, 77.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.611764705882353, 0.0, 0.027471133935787612, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.611764705882353, 0.0, 0.027471133935787612, 1.0 ],
                    "bgfillcolor_color1": [ 0.611764705882353, 0.0, 0.027471133935787612, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-output-message",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.0, 872.0, 690.0, 62.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 78.0, 473.0, 709.0, 62.0 ],
                    "text": "0. 0. 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28 0. 21.28"
                }
            },
            {
                "box": {
                    "comment": "complete line~ format function list",
                    "id": "obj-output",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 609.0, 840.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-coll-heading",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 958.0, 234.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 74.0, 549.0, 234.0, 20.0 ],
                    "text": "EMBEDDED COLL FUNCTION LIBRARY",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-coll-index-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 988.0, 96.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 78.0, 578.0, 85.0, 20.0 ],
                    "text": "selected index"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
                    "id": "obj-coll-index",
                    "maxclass": "number",
                    "maximum": 9999,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 986.0, 58.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.0, 577.0, 58.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_modulation"
                        }
                    }
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
                    "id": "obj-coll-store-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 220.0, 986.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 273.0, 576.0, 24.0, 24.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_modulation"
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-coll-store-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 251.0, 988.0, 180.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 300.0, 578.0, 195.0, 20.0 ],
                    "text": "STORE CURRENT FUNCTION -->"
                }
            },
            {
                "box": {
                    "id": "obj-coll-index-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 140.0, 1025.0, 29.0, 22.0 ],
                    "text": "i 1"
                }
            },
            {
                "box": {
                    "id": "obj-coll-join",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 220.0, 1025.0, 43.0, 22.0 ],
                    "text": "zl join"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.549019607843137, 0.67843137254902, 1.0 ],
                    "coll_data": {
                        "count": 0,
                        "data": []
                    },
                    "id": "obj-coll",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 300.0, 1025.0, 89.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 498.0, 577.0, 89.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_modulation"
                        }
                    },
                    "saved_newobj_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_modulation"
                        }
                    },
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-coll-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 1026.0, 330.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 589.0, 578.0, 223.0, 20.0 ],
                    "text": "double-click coll to inspect saved entries",
                    "textcolor": [ 0.35, 0.35, 0.35, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-coll-init-index",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.0, 1025.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-shape-heading-norm",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 912.0, 230.0, 252.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 603.5, 40.0, 194.0, 18.0 ],
                    "text": "48-POINT PRE-MADE SHAPES  0.0–1.0",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_color": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "id": "obj-shape-menu-norm",
                    "items": [ "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 912.0, 253.0, 300.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 603.5, 56.0, 182.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_value_bar2"
                        }
                    }
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-shape-heading-127",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 1062.0, 252.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 603.5, 86.0, 187.0, 18.0 ],
                    "text": "48-POINT PRE-MADE SHAPES  0–127",
                    "textcolor": [ 0.16, 0.29, 0.45, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_color": [ 0.972549, 0.462745, 0.501961, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "id": "obj-shape-menu-127",
                    "items": [ "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 400.0, 1085.0, 300.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 603.5, 108.0, 183.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_value_bar2"
                        }
                    }
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 23,
                        "data": [
                            {
                                "key": 0,
                                "value": [ 0.0, 0.021277, 0.042553, 0.06383, 0.085106, 0.106383, 0.12766, 0.148936, 0.170213, 0.191489, 0.212766, 0.234043, 0.255319, 0.276596, 0.297872, 0.319149, 0.340426, 0.361702, 0.382979, 0.404255, 0.425532, 0.446809, 0.468085, 0.489362, 0.510638, 0.531915, 0.553191, 0.574468, 0.595745, 0.617021, 0.638298, 0.659574, 0.680851, 0.702128, 0.723404, 0.744681, 0.765957, 0.787234, 0.808511, 0.829787, 0.851064, 0.87234, 0.893617, 0.914894, 0.93617, 0.957447, 0.978723, 1.0 ]
                            },
                            {
                                "key": 1,
                                "value": [ 0.0, 0.001657, 0.003462, 0.005427, 0.007566, 0.009896, 0.012432, 0.015194, 0.018201, 0.021476, 0.025041, 0.028923, 0.033149, 0.037751, 0.042762, 0.048218, 0.054159, 0.060628, 0.067671, 0.07534, 0.08369, 0.092781, 0.102681, 0.11346, 0.125196, 0.137975, 0.151889, 0.167039, 0.183535, 0.201496, 0.221053, 0.242347, 0.265533, 0.290779, 0.318267, 0.348197, 0.380785, 0.416269, 0.454905, 0.496973, 0.542778, 0.592652, 0.646956, 0.706084, 0.770465, 0.840565, 0.916892, 1.0 ]
                            },
                            {
                                "key": 2,
                                "value": [ 1.0, 0.978723, 0.957447, 0.93617, 0.914894, 0.893617, 0.87234, 0.851064, 0.829787, 0.808511, 0.787234, 0.765957, 0.744681, 0.723404, 0.702128, 0.680851, 0.659574, 0.638298, 0.617021, 0.595745, 0.574468, 0.553191, 0.531915, 0.510638, 0.489362, 0.468085, 0.446809, 0.425532, 0.404255, 0.382979, 0.361702, 0.340426, 0.319149, 0.297872, 0.276596, 0.255319, 0.234043, 0.212766, 0.191489, 0.170213, 0.148936, 0.12766, 0.106383, 0.085106, 0.06383, 0.042553, 0.021277, 0.0 ]
                            },
                            {
                                "key": 3,
                                "value": [ 1.0, 0.916892, 0.840565, 0.770465, 0.706084, 0.646956, 0.592652, 0.542778, 0.496973, 0.454905, 0.416269, 0.380785, 0.348197, 0.318267, 0.290779, 0.265533, 0.242347, 0.221053, 0.201496, 0.183535, 0.167039, 0.151889, 0.137975, 0.125196, 0.11346, 0.102681, 0.092781, 0.08369, 0.07534, 0.067671, 0.060628, 0.054159, 0.048218, 0.042762, 0.037751, 0.033149, 0.028923, 0.025041, 0.021476, 0.018201, 0.015194, 0.012432, 0.009896, 0.007566, 0.005427, 0.003462, 0.001657, 0.0 ]
                            },
                            {
                                "key": 4,
                                "value": [ 0.0, 0.042553, 0.085106, 0.12766, 0.170213, 0.212766, 0.255319, 0.297872, 0.340426, 0.382979, 0.425532, 0.468085, 0.510638, 0.553191, 0.595745, 0.638298, 0.680851, 0.723404, 0.765957, 0.808511, 0.851064, 0.893617, 0.93617, 0.978723, 0.978723, 0.93617, 0.893617, 0.851064, 0.808511, 0.765957, 0.723404, 0.680851, 0.638298, 0.595745, 0.553191, 0.510638, 0.468085, 0.425532, 0.382979, 0.340426, 0.297872, 0.255319, 0.212766, 0.170213, 0.12766, 0.085106, 0.042553, 0.0 ]
                            },
                            {
                                "key": 5,
                                "value": [ 0.0, 0.003544, 0.007761, 0.012779, 0.018751, 0.025857, 0.034312, 0.044374, 0.056347, 0.070594, 0.087548, 0.107721, 0.131727, 0.160293, 0.194285, 0.234734, 0.282867, 0.340142, 0.408296, 0.489397, 0.585903, 0.700741, 0.837392, 1.0, 1.0, 0.837392, 0.700741, 0.585903, 0.489397, 0.408296, 0.340142, 0.282867, 0.234734, 0.194285, 0.160293, 0.131727, 0.107721, 0.087548, 0.070594, 0.056347, 0.044374, 0.034312, 0.025857, 0.018751, 0.012779, 0.007761, 0.003544, 0.0 ]
                            },
                            {
                                "key": 6,
                                "value": [ 0.0, 0.00384, 0.009304, 0.016928, 0.027356, 0.041335, 0.059694, 0.083312, 0.113058, 0.149724, 0.193931, 0.24603, 0.305999, 0.373347, 0.447044, 0.525485, 0.606502, 0.687429, 0.765232, 0.836679, 0.898565, 0.947937, 0.982338, 1.0, 1.0, 0.982338, 0.947937, 0.898565, 0.836679, 0.765232, 0.687429, 0.606502, 0.525485, 0.447044, 0.373347, 0.305999, 0.24603, 0.193931, 0.149724, 0.113058, 0.083312, 0.059694, 0.041335, 0.027356, 0.016928, 0.009304, 0.00384, 0.0 ]
                            },
                            {
                                "key": 7,
                                "value": [ 0.0, 1e-06, 8e-06, 3.7e-05, 0.000124, 0.000347, 0.000871, 0.002003, 0.004298, 0.008674, 0.016562, 0.030024, 0.051796, 0.085169, 0.133621, 0.200171, 0.286471, 0.391805, 0.512251, 0.64032, 0.765374, 0.87488, 0.956428, 1.0, 1.0, 0.956428, 0.87488, 0.765374, 0.64032, 0.512251, 0.391805, 0.286471, 0.200171, 0.133621, 0.085169, 0.051796, 0.030024, 0.016562, 0.008674, 0.004298, 0.002003, 0.000871, 0.000347, 0.000124, 3.7e-05, 8e-06, 1e-06, 0.0 ]
                            },
                            {
                                "key": 8,
                                "value": [ 1.0, 0.99616, 0.990696, 0.983072, 0.972644, 0.958665, 0.940306, 0.916688, 0.886942, 0.850276, 0.806069, 0.75397, 0.694001, 0.626653, 0.552956, 0.474515, 0.393498, 0.312571, 0.234768, 0.163321, 0.101435, 0.052063, 0.017662, 0.0, 0.0, 0.017662, 0.052063, 0.101435, 0.163321, 0.234768, 0.312571, 0.393498, 0.474515, 0.552956, 0.626653, 0.694001, 0.75397, 0.806069, 0.850276, 0.886942, 0.916688, 0.940306, 0.958665, 0.972644, 0.983072, 0.990696, 0.99616, 1.0 ]
                            },
                            {
                                "key": 9,
                                "value": [ 1.0, 0.999999, 0.999992, 0.999963, 0.999876, 0.999653, 0.999129, 0.997997, 0.995702, 0.991326, 0.983438, 0.969976, 0.948204, 0.914831, 0.866379, 0.799829, 0.713529, 0.608195, 0.487749, 0.35968, 0.234626, 0.12512, 0.043572, 0.0, 0.0, 0.043572, 0.12512, 0.234626, 0.35968, 0.487749, 0.608195, 0.713529, 0.799829, 0.866379, 0.914831, 0.948204, 0.969976, 0.983438, 0.991326, 0.995702, 0.997997, 0.999129, 0.999653, 0.999876, 0.999963, 0.999992, 0.999999, 1.0 ]
                            },
                            {
                                "key": 10,
                                "value": [ 0.0, 0.020055, 0.050435, 0.094286, 0.154508, 0.233047, 0.330056, 0.443115, 0.566743, 0.69246, 0.809525, 0.90636, 0.9724, 1.0, 0.985911, 0.931958, 0.844743, 0.734461, 0.613188, 0.493074, 0.384866, 0.297035, 0.235518, 0.203925, 0.203925, 0.235518, 0.297035, 0.384866, 0.493074, 0.613188, 0.734461, 0.844743, 0.931958, 0.985911, 1.0, 0.9724, 0.90636, 0.809525, 0.69246, 0.566743, 0.443115, 0.330056, 0.233047, 0.154508, 0.094286, 0.050435, 0.020055, 0.0 ]
                            },
                            {
                                "key": 11,
                                "value": [ 0.0, 5.7e-05, 0.000571, 0.00273, 0.009384, 0.026219, 0.062585, 0.130705, 0.241805, 0.399013, 0.589625, 0.782081, 0.932422, 1.0, 0.965149, 0.838476, 0.655861, 0.462298, 0.294431, 0.170718, 0.091891, 0.048086, 0.026919, 0.018779, 0.018779, 0.026919, 0.048086, 0.091891, 0.170718, 0.294431, 0.462298, 0.655861, 0.838476, 0.965149, 1.0, 0.932422, 0.782081, 0.589625, 0.399013, 0.241805, 0.130705, 0.062585, 0.026219, 0.009384, 0.00273, 0.000571, 5.7e-05, 0.0 ]
                            },
                            {
                                "key": 12,
                                "value": [ 1.0, 0.979945, 0.949565, 0.905714, 0.845492, 0.766953, 0.669944, 0.556885, 0.433257, 0.30754, 0.190475, 0.09364, 0.0276, 0.0, 0.014089, 0.068042, 0.155257, 0.265539, 0.386812, 0.506926, 0.615134, 0.702965, 0.764482, 0.796075, 0.796075, 0.764482, 0.702965, 0.615134, 0.506926, 0.386812, 0.265539, 0.155257, 0.068042, 0.014089, 0.0, 0.0276, 0.09364, 0.190475, 0.30754, 0.433257, 0.556885, 0.669944, 0.766953, 0.845492, 0.905714, 0.949565, 0.979945, 1.0 ]
                            },
                            {
                                "key": 13,
                                "value": [ 1.0, 0.999943, 0.999429, 0.99727, 0.990616, 0.973781, 0.937415, 0.869295, 0.758195, 0.600987, 0.410375, 0.217919, 0.067578, 0.0, 0.034851, 0.161524, 0.344139, 0.537702, 0.705569, 0.829282, 0.908109, 0.951914, 0.973081, 0.981221, 0.981221, 0.973081, 0.951914, 0.908109, 0.829282, 0.705569, 0.537702, 0.344139, 0.161524, 0.034851, 0.0, 0.067578, 0.217919, 0.410375, 0.600987, 0.758195, 0.869295, 0.937415, 0.973781, 0.990616, 0.99727, 0.999429, 0.999943, 1.0 ]
                            },
                            {
                                "key": 14,
                                "value": [ 0.0, 0.068636, 0.172626, 0.314625, 0.487685, 0.672741, 0.840424, 0.958077, 1.0, 0.956614, 0.838159, 0.671113, 0.489312, 0.324258, 0.198838, 0.126089, 0.111549, 0.15613, 0.256827, 0.404683, 0.581768, 0.760331, 0.90661, 0.989258, 0.989258, 0.90661, 0.760331, 0.581768, 0.404683, 0.256827, 0.15613, 0.111549, 0.126089, 0.198838, 0.324258, 0.489312, 0.671113, 0.838159, 0.956614, 1.0, 0.958077, 0.840424, 0.672741, 0.487685, 0.314625, 0.172626, 0.068636, 0.0 ]
                            },
                            {
                                "key": 15,
                                "value": [ 0.0, 0.001234, 0.012381, 0.055524, 0.166092, 0.37121, 0.647509, 0.898465, 1.0, 0.895039, 0.643156, 0.368968, 0.167481, 0.059872, 0.01763, 0.005645, 0.004156, 0.009632, 0.033427, 0.104181, 0.258151, 0.504088, 0.782621, 0.973361, 0.973361, 0.782621, 0.504088, 0.258151, 0.104181, 0.033427, 0.009632, 0.004156, 0.005645, 0.01763, 0.059872, 0.167481, 0.368968, 0.643156, 0.895039, 1.0, 0.898465, 0.647509, 0.37121, 0.166092, 0.055524, 0.012381, 0.001234, 0.0 ]
                            },
                            {
                                "key": 16,
                                "value": [ 1.0, 0.931364, 0.827374, 0.685375, 0.512315, 0.327259, 0.159576, 0.041923, 0.0, 0.043386, 0.161841, 0.328887, 0.510688, 0.675742, 0.801162, 0.873911, 0.888451, 0.84387, 0.743173, 0.595317, 0.418232, 0.239669, 0.09339, 0.010742, 0.010742, 0.09339, 0.239669, 0.418232, 0.595317, 0.743173, 0.84387, 0.888451, 0.873911, 0.801162, 0.675742, 0.510688, 0.328887, 0.161841, 0.043386, 0.0, 0.041923, 0.159576, 0.327259, 0.512315, 0.685375, 0.827374, 0.931364, 1.0 ]
                            },
                            {
                                "key": 17,
                                "value": [ 1.0, 0.998766, 0.987619, 0.944476, 0.833908, 0.62879, 0.352491, 0.101535, 0.0, 0.104961, 0.356844, 0.631032, 0.832519, 0.940128, 0.98237, 0.994355, 0.995844, 0.990368, 0.966573, 0.895819, 0.741849, 0.495912, 0.217379, 0.026639, 0.026639, 0.217379, 0.495912, 0.741849, 0.895819, 0.966573, 0.990368, 0.995844, 0.994355, 0.98237, 0.940128, 0.832519, 0.631032, 0.356844, 0.104961, 0.0, 0.101535, 0.352491, 0.62879, 0.833908, 0.944476, 0.987619, 0.998766, 1.0 ]
                            },
                            {
                                "key": 18,
                                "value": [ 0.096133, 0.284366, 0.532159, 0.786056, 0.964102, 0.997023, 0.871173, 0.637723, 0.380293, 0.16969, 0.040715, 0.0, 0.046557, 0.181381, 0.396603, 0.654977, 0.883756, 1.0, 0.956242, 0.770731, 0.515534, 0.273192, 0.098522, 0.010821, 0.010821, 0.098522, 0.273192, 0.515534, 0.770731, 0.956242, 1.0, 0.883756, 0.654977, 0.396603, 0.181381, 0.046557, 0.0, 0.040715, 0.16969, 0.380293, 0.637723, 0.871173, 0.997023, 0.964102, 0.786056, 0.532159, 0.284366, 0.096133 ]
                            },
                            {
                                "key": 19,
                                "value": [ 0.002865, 0.043122, 0.206587, 0.547815, 0.912657, 0.992574, 0.708371, 0.324773, 0.089186, 0.011862, 0.000334, 0.0, 0.000468, 0.014011, 0.099058, 0.347188, 0.734228, 1.0, 0.894169, 0.521503, 0.190829, 0.039009, 0.003047, 1.2e-05, 1.2e-05, 0.003047, 0.039009, 0.190829, 0.521503, 0.894169, 1.0, 0.734228, 0.347188, 0.099058, 0.014011, 0.000468, 0.0, 0.000334, 0.011862, 0.089186, 0.324773, 0.708371, 0.992574, 0.912657, 0.547815, 0.206587, 0.043122, 0.002865 ]
                            },
                            {
                                "key": 20,
                                "value": [ 0.903867, 0.715634, 0.467841, 0.213944, 0.035898, 0.002977, 0.128827, 0.362277, 0.619707, 0.83031, 0.959285, 1.0, 0.953443, 0.818619, 0.603397, 0.345023, 0.116244, 0.0, 0.043758, 0.229269, 0.484466, 0.726808, 0.901478, 0.989179, 0.989179, 0.901478, 0.726808, 0.484466, 0.229269, 0.043758, 0.0, 0.116244, 0.345023, 0.603397, 0.818619, 0.953443, 1.0, 0.959285, 0.83031, 0.619707, 0.362277, 0.128827, 0.002977, 0.035898, 0.213944, 0.467841, 0.715634, 0.903867 ]
                            },
                            {
                                "key": 21,
                                "value": [ 0.997135, 0.956878, 0.793413, 0.452185, 0.087343, 0.007426, 0.291629, 0.675227, 0.910814, 0.988138, 0.999666, 1.0, 0.999532, 0.985989, 0.900942, 0.652812, 0.265772, 0.0, 0.105831, 0.478497, 0.809171, 0.960991, 0.996953, 0.999988, 0.999988, 0.996953, 0.960991, 0.809171, 0.478497, 0.105831, 0.0, 0.265772, 0.652812, 0.900942, 0.985989, 0.999532, 1.0, 0.999666, 0.988138, 0.910814, 0.675227, 0.291629, 0.007426, 0.087343, 0.452185, 0.793413, 0.956878, 0.997135 ]
                            },
                            {
                                "key": 22,
                                "value": [ 0.684252, 0.995491, 0.934361, 0.10241, 0.418453, 0.770951, 0.329513, 0.632919, 0.640483, 0.06445, 0.113825, 0.557088, 0.046934, 0.081483, 0.603648, 0.713657, 0.532517, 0.032737, 0.631007, 0.055018, 0.657812, 0.087056, 0.315027, 0.794472, 0.115627, 0.879021, 0.083101, 0.943951, 0.140064, 0.592541, 0.773648, 0.878784, 0.702661, 0.522066, 0.325899, 0.553865, 0.892673, 0.310473, 0.257807, 0.693359, 0.882688, 0.514288, 0.704867, 0.156758, 0.680873, 0.357273, 0.740705, 0.453477 ]
                            }
                        ]
                    },
                    "id": "obj-shape-coll-norm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 912.0, 293.0, 89.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-shape-trigger-norm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "bang", "bang", "bang" ],
                    "patching_rect": [ 1022.0, 293.0, 68.0, 22.0 ],
                    "text": "t l b b b"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 23,
                        "data": [
                            {
                                "key": 0,
                                "value": [ 0.0, 2.702179, 5.404231, 8.10641, 10.808462, 13.510641, 16.21282, 18.914872, 21.617051, 24.319103, 27.021282, 29.723461, 32.425513, 35.127692, 37.829744, 40.531923, 43.234102, 45.936154, 48.638333, 51.340385, 54.042564, 56.744743, 59.446795, 62.148974, 64.851026, 67.553205, 70.255257, 72.957436, 75.659615, 78.361667, 81.063846, 83.765898, 86.468077, 89.170256, 91.872308, 94.574487, 97.276539, 99.978718, 102.680897, 105.382949, 108.085128, 110.78718, 113.489359, 116.191538, 118.89359, 121.595769, 124.297821, 127.0 ]
                            },
                            {
                                "key": 1,
                                "value": [ 0.0, 0.210439, 0.439674, 0.689229, 0.960882, 1.256792, 1.578864, 1.929638, 2.311527, 2.727452, 3.180207, 3.673221, 4.209923, 4.794377, 5.430774, 6.123686, 6.878193, 7.699756, 8.594217, 9.56818, 10.62863, 11.783187, 13.040487, 14.40942, 15.899892, 17.522825, 19.289903, 21.213953, 23.308945, 25.589992, 28.073731, 30.778069, 33.722691, 36.928933, 40.419909, 44.221019, 48.359695, 52.866163, 57.772935, 63.115571, 68.932806, 75.266804, 82.163412, 89.672668, 97.849055, 106.751755, 116.445284, 127.0 ]
                            },
                            {
                                "key": 2,
                                "value": [ 127.0, 124.297821, 121.595769, 118.89359, 116.191538, 113.489359, 110.78718, 108.085128, 105.382949, 102.680897, 99.978718, 97.276539, 94.574487, 91.872308, 89.170256, 86.468077, 83.765898, 81.063846, 78.361667, 75.659615, 72.957436, 70.255257, 67.553205, 64.851026, 62.148974, 59.446795, 56.744743, 54.042564, 51.340385, 48.638333, 45.936154, 43.234102, 40.531923, 37.829744, 35.127692, 32.425513, 29.723461, 27.021282, 24.319103, 21.617051, 18.914872, 16.21282, 13.510641, 10.808462, 8.10641, 5.404231, 2.702179, 0.0 ]
                            },
                            {
                                "key": 3,
                                "value": [ 127.0, 116.445284, 106.751755, 97.849055, 89.672668, 82.163412, 75.266804, 68.932806, 63.115571, 57.772935, 52.866163, 48.359695, 44.221019, 40.419909, 36.928933, 33.722691, 30.778069, 28.073731, 25.589992, 23.308945, 21.213953, 19.289903, 17.522825, 15.899892, 14.40942, 13.040487, 11.783187, 10.62863, 9.56818, 8.594217, 7.699756, 6.878193, 6.123686, 5.430774, 4.794377, 4.209923, 3.673221, 3.180207, 2.727452, 2.311527, 1.929638, 1.578864, 1.256792, 0.960882, 0.689229, 0.439674, 0.210439, 0.0 ]
                            },
                            {
                                "key": 4,
                                "value": [ 0.0, 5.404231, 10.808462, 16.21282, 21.617051, 27.021282, 32.425513, 37.829744, 43.234102, 48.638333, 54.042564, 59.446795, 64.851026, 70.255257, 75.659615, 81.063846, 86.468077, 91.872308, 97.276539, 102.680897, 108.085128, 113.489359, 118.89359, 124.297821, 124.297821, 118.89359, 113.489359, 108.085128, 102.680897, 97.276539, 91.872308, 86.468077, 81.063846, 75.659615, 70.255257, 64.851026, 59.446795, 54.042564, 48.638333, 43.234102, 37.829744, 32.425513, 27.021282, 21.617051, 16.21282, 10.808462, 5.404231, 0.0 ]
                            },
                            {
                                "key": 5,
                                "value": [ 0.0, 0.450088, 0.985647, 1.622933, 2.381377, 3.283839, 4.357624, 5.635498, 7.156069, 8.965438, 11.118596, 13.680567, 16.729329, 20.357211, 24.674195, 29.811218, 35.924109, 43.198034, 51.853592, 62.153419, 74.409681, 88.994107, 106.348784, 127.0, 127.0, 106.348784, 88.994107, 74.409681, 62.153419, 51.853592, 43.198034, 35.924109, 29.811218, 24.674195, 20.357211, 16.729329, 13.680567, 11.118596, 8.965438, 7.156069, 5.635498, 4.357624, 3.283839, 2.381377, 1.622933, 0.985647, 0.450088, 0.0 ]
                            },
                            {
                                "key": 6,
                                "value": [ 0.0, 0.48768, 1.181608, 2.149856, 3.474212, 5.249545, 7.581138, 10.580624, 14.358366, 19.014948, 24.629237, 31.24581, 38.861873, 47.415069, 56.774588, 66.736595, 77.025754, 87.303483, 97.184464, 106.258233, 114.117755, 120.387999, 124.756926, 127.0, 127.0, 124.756926, 120.387999, 114.117755, 106.258233, 97.184464, 87.303483, 77.025754, 66.736595, 56.774588, 47.415069, 38.861873, 31.24581, 24.629237, 19.014948, 14.358366, 10.580624, 7.581138, 5.249545, 3.474212, 2.149856, 1.181608, 0.48768, 0.0 ]
                            },
                            {
                                "key": 7,
                                "value": [ 0.0, 0.000127, 0.001016, 0.004699, 0.015748, 0.044069, 0.110617, 0.254381, 0.545846, 1.101598, 2.103374, 3.813048, 6.578092, 10.816463, 16.969867, 25.421717, 36.381817, 49.759235, 65.055877, 81.32064, 97.202498, 111.10976, 121.466356, 127.0, 127.0, 121.466356, 111.10976, 97.202498, 81.32064, 65.055877, 49.759235, 36.381817, 25.421717, 16.969867, 10.816463, 6.578092, 3.813048, 2.103374, 1.101598, 0.545846, 0.254381, 0.110617, 0.044069, 0.015748, 0.004699, 0.001016, 0.000127, 0.0 ]
                            },
                            {
                                "key": 8,
                                "value": [ 127.0, 126.51232, 125.818392, 124.850144, 123.525788, 121.750455, 119.418862, 116.419376, 112.641634, 107.985052, 102.370763, 95.75419, 88.138127, 79.584931, 70.225412, 60.263405, 49.974246, 39.696517, 29.815536, 20.741767, 12.882245, 6.612001, 2.243074, 0.0, 0.0, 2.243074, 6.612001, 12.882245, 20.741767, 29.815536, 39.696517, 49.974246, 60.263405, 70.225412, 79.584931, 88.138127, 95.75419, 102.370763, 107.985052, 112.641634, 116.419376, 119.418862, 121.750455, 123.525788, 124.850144, 125.818392, 126.51232, 127.0 ]
                            },
                            {
                                "key": 9,
                                "value": [ 127.0, 126.999873, 126.998984, 126.995301, 126.984252, 126.955931, 126.889383, 126.745619, 126.454154, 125.898402, 124.896626, 123.186952, 120.421908, 116.183537, 110.030133, 101.578283, 90.618183, 77.240765, 61.944123, 45.67936, 29.797502, 15.89024, 5.533644, 0.0, 0.0, 5.533644, 15.89024, 29.797502, 45.67936, 61.944123, 77.240765, 90.618183, 101.578283, 110.030133, 116.183537, 120.421908, 123.186952, 124.896626, 125.898402, 126.454154, 126.745619, 126.889383, 126.955931, 126.984252, 126.995301, 126.998984, 126.999873, 127.0 ]
                            },
                            {
                                "key": 10,
                                "value": [ 0.0, 2.546985, 6.405245, 11.974322, 19.622516, 29.596969, 41.917112, 56.275605, 71.976361, 87.94242, 102.809675, 115.10772, 123.4948, 127.0, 125.210697, 118.358666, 107.282361, 93.276547, 77.874876, 62.620398, 48.877982, 37.723445, 29.910786, 25.898475, 25.898475, 29.910786, 37.723445, 48.877982, 62.620398, 77.874876, 93.276547, 107.282361, 118.358666, 125.210697, 127.0, 123.4948, 115.10772, 102.809675, 87.94242, 71.976361, 56.275605, 41.917112, 29.596969, 19.622516, 11.974322, 6.405245, 2.546985, 0.0 ]
                            },
                            {
                                "key": 11,
                                "value": [ 0.0, 0.007239, 0.072517, 0.34671, 1.191768, 3.329813, 7.948295, 16.599535, 30.709235, 50.674651, 74.882375, 99.324287, 118.417594, 127.0, 122.573923, 106.486452, 83.294347, 58.711846, 37.392737, 21.681186, 11.670157, 6.106922, 3.418713, 2.384933, 2.384933, 3.418713, 6.106922, 11.670157, 21.681186, 37.392737, 58.711846, 83.294347, 106.486452, 122.573923, 127.0, 118.417594, 99.324287, 74.882375, 50.674651, 30.709235, 16.599535, 7.948295, 3.329813, 1.191768, 0.34671, 0.072517, 0.007239, 0.0 ]
                            },
                            {
                                "key": 12,
                                "value": [ 127.0, 124.453015, 120.594755, 115.025678, 107.377484, 97.403031, 85.082888, 70.724395, 55.023639, 39.05758, 24.190325, 11.89228, 3.5052, 0.0, 1.789303, 8.641334, 19.717639, 33.723453, 49.125124, 64.379602, 78.122018, 89.276555, 97.089214, 101.101525, 101.101525, 97.089214, 89.276555, 78.122018, 64.379602, 49.125124, 33.723453, 19.717639, 8.641334, 1.789303, 0.0, 3.5052, 11.89228, 24.190325, 39.05758, 55.023639, 70.724395, 85.082888, 97.403031, 107.377484, 115.025678, 120.594755, 124.453015, 127.0 ]
                            },
                            {
                                "key": 13,
                                "value": [ 127.0, 126.992761, 126.927483, 126.65329, 125.808232, 123.670187, 119.051705, 110.400465, 96.290765, 76.325349, 52.117625, 27.675713, 8.582406, 0.0, 4.426077, 20.513548, 43.705653, 68.288154, 89.607263, 105.318814, 115.329843, 120.893078, 123.581287, 124.615067, 124.615067, 123.581287, 120.893078, 115.329843, 105.318814, 89.607263, 68.288154, 43.705653, 20.513548, 4.426077, 0.0, 8.582406, 27.675713, 52.117625, 76.325349, 96.290765, 110.400465, 119.051705, 123.670187, 125.808232, 126.65329, 126.927483, 126.992761, 127.0 ]
                            },
                            {
                                "key": 14,
                                "value": [ 0.0, 8.716772, 21.923502, 39.957375, 61.935995, 85.438107, 106.733848, 121.675779, 127.0, 121.489978, 106.446193, 85.231351, 62.142624, 41.180766, 25.252426, 16.013303, 14.166723, 19.82851, 32.617029, 51.394741, 73.884536, 96.562037, 115.13947, 125.635766, 125.635766, 115.13947, 96.562037, 73.884536, 51.394741, 32.617029, 19.82851, 14.166723, 16.013303, 25.252426, 41.180766, 62.142624, 85.231351, 106.446193, 121.489978, 127.0, 121.675779, 106.733848, 85.438107, 61.935995, 39.957375, 21.923502, 8.716772, 0.0 ]
                            },
                            {
                                "key": 15,
                                "value": [ 0.0, 0.156718, 1.572387, 7.051548, 21.093684, 47.14367, 82.233643, 114.105055, 127.0, 113.669953, 81.680812, 46.858936, 21.270087, 7.603744, 2.23901, 0.716915, 0.527812, 1.223264, 4.245229, 13.230987, 32.785177, 64.019176, 99.392867, 123.616847, 123.616847, 99.392867, 64.019176, 32.785177, 13.230987, 4.245229, 1.223264, 0.527812, 0.716915, 2.23901, 7.603744, 21.270087, 46.858936, 81.680812, 113.669953, 127.0, 114.105055, 82.233643, 47.14367, 21.093684, 7.051548, 1.572387, 0.156718, 0.0 ]
                            },
                            {
                                "key": 16,
                                "value": [ 127.0, 118.283228, 105.076498, 87.042625, 65.064005, 41.561893, 20.266152, 5.324221, 0.0, 5.510022, 20.553807, 41.768649, 64.857376, 85.819234, 101.747574, 110.986697, 112.833277, 107.17149, 94.382971, 75.605259, 53.115464, 30.437963, 11.86053, 1.364234, 1.364234, 11.86053, 30.437963, 53.115464, 75.605259, 94.382971, 107.17149, 112.833277, 110.986697, 101.747574, 85.819234, 64.857376, 41.768649, 20.553807, 5.510022, 0.0, 5.324221, 20.266152, 41.561893, 65.064005, 87.042625, 105.076498, 118.283228, 127.0 ]
                            },
                            {
                                "key": 17,
                                "value": [ 127.0, 126.843282, 125.427613, 119.948452, 105.906316, 79.85633, 44.766357, 12.894945, 0.0, 13.330047, 45.319188, 80.141064, 105.729913, 119.396256, 124.76099, 126.283085, 126.472188, 125.776736, 122.754771, 113.769013, 94.214823, 62.980824, 27.607133, 3.383153, 3.383153, 27.607133, 62.980824, 94.214823, 113.769013, 122.754771, 125.776736, 126.472188, 126.283085, 124.76099, 119.396256, 105.729913, 80.141064, 45.319188, 13.330047, 0.0, 12.894945, 44.766357, 79.85633, 105.906316, 119.948452, 125.427613, 126.843282, 127.0 ]
                            },
                            {
                                "key": 18,
                                "value": [ 12.208891, 36.114482, 67.584193, 99.829112, 122.440954, 126.621921, 110.638971, 80.990821, 48.297211, 21.55063, 5.170805, 0.0, 5.912739, 23.035387, 50.368581, 83.182079, 112.237012, 127.0, 121.442734, 97.882837, 65.472818, 34.695384, 12.512294, 1.374267, 1.374267, 12.512294, 34.695384, 65.472818, 97.882837, 121.442734, 127.0, 112.237012, 83.182079, 50.368581, 23.035387, 5.912739, 0.0, 5.170805, 21.55063, 48.297211, 80.990821, 110.638971, 126.621921, 122.440954, 99.829112, 67.584193, 36.114482, 12.208891 ]
                            },
                            {
                                "key": 19,
                                "value": [ 0.363855, 5.476494, 26.236549, 69.572505, 115.907439, 126.056898, 89.963117, 41.246171, 11.326622, 1.506474, 0.042418, 0.0, 0.059436, 1.779397, 12.580366, 44.092876, 93.246956, 127.0, 113.559463, 66.230881, 24.235283, 4.954143, 0.386969, 0.001524, 0.001524, 0.386969, 4.954143, 24.235283, 66.230881, 113.559463, 127.0, 93.246956, 44.092876, 12.580366, 1.779397, 0.059436, 0.0, 0.042418, 1.506474, 11.326622, 41.246171, 89.963117, 126.056898, 115.907439, 69.572505, 26.236549, 5.476494, 0.363855 ]
                            },
                            {
                                "key": 20,
                                "value": [ 114.791109, 90.885518, 59.415807, 27.170888, 4.559046, 0.378079, 16.361029, 46.009179, 78.702789, 105.44937, 121.829195, 127.0, 121.087261, 103.964613, 76.631419, 43.817921, 14.762988, 0.0, 5.557266, 29.117163, 61.527182, 92.304616, 114.487706, 125.625733, 125.625733, 114.487706, 92.304616, 61.527182, 29.117163, 5.557266, 0.0, 14.762988, 43.817921, 76.631419, 103.964613, 121.087261, 127.0, 121.829195, 105.44937, 78.702789, 46.009179, 16.361029, 0.378079, 4.559046, 27.170888, 59.415807, 90.885518, 114.791109 ]
                            },
                            {
                                "key": 21,
                                "value": [ 126.636145, 121.523506, 100.763451, 57.427495, 11.092561, 0.943102, 37.036883, 85.753829, 115.673378, 125.493526, 126.957582, 127.0, 126.940564, 125.220603, 114.419634, 82.907124, 33.753044, 0.0, 13.440537, 60.769119, 102.764717, 122.045857, 126.613031, 126.998476, 126.998476, 126.613031, 122.045857, 102.764717, 60.769119, 13.440537, 0.0, 33.753044, 82.907124, 114.419634, 125.220603, 126.940564, 127.0, 126.957582, 125.493526, 115.673378, 85.753829, 37.036883, 0.943102, 11.092561, 57.427495, 100.763451, 121.523506, 126.636145 ]
                            },
                            {
                                "key": 22,
                                "value": [ 86.900004, 126.427357, 118.663847, 13.00607, 53.143531, 97.910777, 41.848151, 80.380713, 81.341341, 8.18515, 14.455775, 70.750176, 5.960618, 10.348341, 76.663296, 90.634439, 67.629659, 4.157599, 80.137889, 6.987286, 83.542124, 11.056112, 40.008429, 100.897944, 14.684629, 111.635667, 10.553827, 119.881777, 17.788128, 75.252707, 98.253296, 111.605568, 89.237947, 66.302382, 41.389173, 70.340855, 113.369471, 39.430071, 32.741489, 88.056593, 112.101376, 65.314576, 89.518109, 19.908266, 86.470871, 45.373671, 94.069535, 57.591579 ]
                            }
                        ]
                    },
                    "id": "obj-shape-coll-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 400.0, 1125.0, 89.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-shape-trigger-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "bang", "bang", "bang" ],
                    "patching_rect": [ 510.0, 1125.0, 68.0, 22.0 ],
                    "text": "t l b b b"
                }
            },
            {
                "box": {
                    "id": "obj-shape-range-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 912.0, 330.0, 30.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-shape-range-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 962.0, 330.0, 30.0, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "id": "obj-shape-range-127",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 1162.0, 39.0, 22.0 ],
                    "text": "127."
                }
            },
            {
                "box": {
                    "id": "obj-shape-count-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1029.0, 323.5, 30.0, 22.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "id": "obj-loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 778.0, 153.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-load-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 778.0, 186.0, 62.0, 22.0 ],
                    "text": "t b b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-init-max",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 690.0, 195.0, 29.5, 22.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "id": "obj-init-min",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.0, 253.0, 30.0, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "obj-init-duration",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.0, 283.0, 46.0, 22.0 ],
                    "text": "1000."
                }
            },
            {
                "box": {
                    "id": "obj-init-count",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 778.0, 313.0, 29.5, 22.0 ],
                    "text": "0"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-11", 0 ]
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
                    "destination": [ "obj-range-max", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-min", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-count-slider", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-function", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-count-slider", 0 ],
                    "midpoints": [ 121.5, 389.19921875, 56.21484375, 389.19921875, 56.21484375, 309.5, 73.5, 309.5 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll-index-store", 1 ],
                    "source": [ "obj-coll-index", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll-join", 0 ],
                    "source": [ "obj-coll-index-store", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll-index", 0 ],
                    "source": [ "obj-coll-init-index", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll", 0 ],
                    "source": [ "obj-coll-join", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll-index-store", 0 ],
                    "source": [ "obj-coll-store-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-count-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-count-slider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-duration-clip", 0 ],
                    "source": [ "obj-duration", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-duration-t", 0 ],
                    "source": [ "obj-duration-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-duration-t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-duration-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-round-output", 0 ],
                    "source": [ "obj-function", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-count-slider", 0 ],
                    "source": [ "obj-init-count", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-duration", 0 ],
                    "source": [ "obj-init-duration", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-max", 0 ],
                    "source": [ "obj-init-max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-min", 0 ],
                    "source": [ "obj-init-min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-load-trigger", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-count", 0 ],
                    "source": [ "obj-load-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-duration", 0 ],
                    "source": [ "obj-load-trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-max", 0 ],
                    "source": [ "obj-load-trigger", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-init-min", 0 ],
                    "source": [ "obj-load-trigger", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-load-trigger", 0 ],
                    "source": [ "obj-loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-pak", 1 ],
                    "source": [ "obj-max-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-pak", 0 ],
                    "source": [ "obj-min-clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 1,
                    "source": [ "obj-multislider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 0,
                    "source": [ "obj-multislider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-output-message", 0 ],
                    "source": [ "obj-output-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-output-t", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-output", 0 ],
                    "source": [ "obj-output-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-output-set", 0 ],
                    "source": [ "obj-output-t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-max-clip", 0 ],
                    "source": [ "obj-range-max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-min-clip", 0 ],
                    "source": [ "obj-range-min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-sort", 0 ],
                    "source": [ "obj-range-pak", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-t", 0 ],
                    "source": [ "obj-range-sort", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-range-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-setminmax", 0 ],
                    "source": [ "obj-range-t", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-setrange", 0 ],
                    "source": [ "obj-range-t", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-coll-join", 1 ],
                    "order": 1,
                    "source": [ "obj-round-output", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-output-t", 0 ],
                    "order": 0,
                    "source": [ "obj-round-output", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-setminmax", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-function", 0 ],
                    "source": [ "obj-setrange", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-trigger-127", 0 ],
                    "source": [ "obj-shape-coll-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-trigger-norm", 0 ],
                    "source": [ "obj-shape-coll-norm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-count-slider", 0 ],
                    "source": [ "obj-shape-count-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-coll-127", 0 ],
                    "source": [ "obj-shape-menu-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-coll-norm", 0 ],
                    "source": [ "obj-shape-menu-norm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-max", 0 ],
                    "source": [ "obj-shape-range-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-max", 0 ],
                    "source": [ "obj-shape-range-one", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-range-min", 0 ],
                    "source": [ "obj-shape-range-zero", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-shape-trigger-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-count-48", 0 ],
                    "source": [ "obj-shape-trigger-127", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-range-127", 0 ],
                    "source": [ "obj-shape-trigger-127", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-range-zero", 0 ],
                    "source": [ "obj-shape-trigger-127", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider", 0 ],
                    "source": [ "obj-shape-trigger-norm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-count-48", 0 ],
                    "source": [ "obj-shape-trigger-norm", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-range-one", 0 ],
                    "source": [ "obj-shape-trigger-norm", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-shape-range-zero", 0 ],
                    "source": [ "obj-shape-trigger-norm", 3 ]
                }
            }
        ],
        "autosave": 0
    }
}