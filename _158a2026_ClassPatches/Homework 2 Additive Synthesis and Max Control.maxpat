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
        "rect": [ 45.0, 65.0, 1218.0, 801.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-42",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 262.0, 311.0, 150.0, 47.0 ],
                    "text": "just messages that are being sent to the synthesizer"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 648.0, 549.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.122, 1.0, 1.0 ],
                    "id": "obj-39",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "outlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "parameter_enable": 0,
                    "patching_rect": [ 599.0, 352.5, 43.0, 43.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "int" ],
                    "patching_rect": [ 599.0, 404.0, 42.0, 22.0 ],
                    "text": "t b b 0"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 70.0, 1151.0, 20.0 ],
                    "text": "MY INITIALIZATION__________________________________________________________________________________________________________________________________________________________"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 823.0, 559.0, 350.0, 33.0 ],
                    "text": "this is a list where each element is separated out and sent to 12 independent envelope shapes"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 952.0, 654.0, 153.0, 60.0 ],
                    "text": "hold \"control\" mouse over left inlet to see the messages that objects accept"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 788.0, 654.0, 153.0, 47.0 ],
                    "text": "delays will continue unless they receive a \"stop\" message"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 310.0, 57.0, 20.0 ],
                    "text": "STOP!!!"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 311.0, 57.0, 20.0 ],
                    "text": "START!!!"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color1": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 597.0, 396.0, 22.0 ],
                    "text": "2000 2000 2000 2000 2000 2000 2000 2000 2000 2000 2000 2000 2000"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 606.0, 549.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 606.0, 592.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 412.0, 767.0, 74.0, 22.0 ],
                    "text": "delay 10000"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 412.0, 656.0, 74.0, 22.0 ],
                    "text": "delay 10000"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 226.0, 656.0, 74.0, 22.0 ],
                    "text": "delay 10000"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1.0 ],
                    "id": "obj-90",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 412.0, 696.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1.0 ],
                    "id": "obj-86",
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
                        "rect": [ 100.0, 80.0, 980.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 900.0, 28.0 ],
                                    "text": "Randomize amplitude — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 30.0, 110.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 155.0, 95.0, 22.0 ],
                                    "text": "route stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 900.0, 35.0 ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 165.0, 205.0, 100.0, 22.0 ],
                                    "text": "route bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 165.0, 250.0, 45.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 570.0, 350.0, 22.0 ],
                                    "text": "prepend Random_Amplitude_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 30.0, 606.0, 80.0, 22.0 ],
                                    "text": "t l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 606.0, 90.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 645.0, 480.0, 22.0 ],
                                    "text": "Random_Amplitude_v19 bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 645.0, 350.0, 22.0 ],
                                    "text": "route Random_Amplitude_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 684.0, 370.0, 22.0 ],
                                    "text": "forward Random_Amplitude_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Named outgoing message, for optional logging. No connection required.",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 695.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 780.0, 900.0, 22.0 ],
                                    "text": "Destination in synthesis engine: receive Random_Amplitude_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 725.0, 490.0, 35.0 ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 205.0, 460.0, 90.0 ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "name", 0 ],
                                    "source": [ "bang", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang", 0 ],
                                    "source": [ "bang-only", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display", 0 ],
                                    "source": [ "display-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display-set", 0 ],
                                    "source": [ "fan", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip-name", 0 ],
                                    "source": [ "fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route-stop", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fan", 0 ],
                                    "source": [ "name", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang-only", 0 ],
                                    "source": [ "route-stop", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "send", 0 ],
                                    "source": [ "strip-name", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 412.0, 730.0, 179.0, 22.0 ],
                    "text": "p Cue_Random_Amplitude_v19"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.973, 0.463, 0.502, 1.0 ],
                    "id": "obj-93",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.0, 698.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.973, 0.463, 0.502, 1.0 ],
                    "id": "obj-88",
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
                        "rect": [ 134.0, 172.0, 980.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 900.0, 20.0 ],
                                    "text": "Randomize anchor — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 30.0, 110.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 155.0, 95.0, 22.0 ],
                                    "text": "route stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 900.0, 20.0 ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 165.0, 205.0, 100.0, 22.0 ],
                                    "text": "route bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 165.0, 250.0, 45.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 570.0, 350.0, 22.0 ],
                                    "text": "prepend Random_Anchor_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 30.0, 606.0, 80.0, 22.0 ],
                                    "text": "t l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 606.0, 90.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 645.0, 480.0, 22.0 ],
                                    "text": "Random_Anchor_v19 bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 645.0, 350.0, 22.0 ],
                                    "text": "route Random_Anchor_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 684.0, 370.0, 22.0 ],
                                    "text": "forward Random_Anchor_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Named outgoing message, for optional logging. No connection required.",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 695.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 780.0, 900.0, 20.0 ],
                                    "text": "Destination in synthesis engine: receive Random_Anchor_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 725.0, 490.0, 20.0 ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 205.0, 460.0, 20.0 ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "name", 0 ],
                                    "source": [ "bang", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang", 0 ],
                                    "source": [ "bang-only", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display", 0 ],
                                    "source": [ "display-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display-set", 0 ],
                                    "source": [ "fan", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip-name", 0 ],
                                    "source": [ "fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route-stop", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fan", 0 ],
                                    "source": [ "name", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang-only", 0 ],
                                    "source": [ "route-stop", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "send", 0 ],
                                    "source": [ "strip-name", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 226.0, 730.0, 163.0, 22.0 ],
                    "text": "p Cue_Random_Anchor_v19"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.729, 1.0, 1.0 ],
                    "id": "obj-92",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 36.0, 660.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.729, 1.0, 1.0 ],
                    "id": "obj-84",
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
                        "rect": [ 100.0, 80.0, 980.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 900.0, 28.0 ],
                                    "text": "Randomize detune ± — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 30.0, 110.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 155.0, 95.0, 22.0 ],
                                    "text": "route stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 900.0, 35.0 ],
                                    "text": "Input: bang to execute once. stop is ignored. No action is sent merely by opening or copying this module."
                                }
                            },
                            {
                                "box": {
                                    "id": "bang-only",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 165.0, 205.0, 100.0, 22.0 ],
                                    "text": "route bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "bang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 165.0, 250.0, 45.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 570.0, 350.0, 22.0 ],
                                    "text": "prepend Random_Drift_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 30.0, 606.0, 80.0, 22.0 ],
                                    "text": "t l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 606.0, 90.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 645.0, 480.0, 22.0 ],
                                    "text": "Random_Drift_v19 bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 645.0, 350.0, 22.0 ],
                                    "text": "route Random_Drift_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 684.0, 370.0, 22.0 ],
                                    "text": "forward Random_Drift_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Named outgoing message, for optional logging. No connection required.",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 695.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 780.0, 900.0, 22.0 ],
                                    "text": "Destination in synthesis engine: receive Random_Drift_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 725.0, 490.0, 35.0 ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 205.0, 460.0, 90.0 ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "name", 0 ],
                                    "source": [ "bang", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang", 0 ],
                                    "source": [ "bang-only", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display", 0 ],
                                    "source": [ "display-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display-set", 0 ],
                                    "source": [ "fan", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip-name", 0 ],
                                    "source": [ "fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route-stop", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fan", 0 ],
                                    "source": [ "name", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "bang-only", 0 ],
                                    "source": [ "route-stop", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "send", 0 ],
                                    "source": [ "strip-name", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 36.0, 692.0, 147.0, 22.0 ],
                    "text": "p Cue_Random_Drift_v19"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 792.0, 334.0, 48.0, 22.0 ],
                    "text": "del 100"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 692.0, 430.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color1": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 692.0, 480.0, 481.0, 22.0 ],
                    "text": "11000 13000 17000 19000 23000 29000 31000 37000 41000 43000 47000 53000 59000"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
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
                        "rect": [ 84.0, 144.0, 737.0, 537.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 12,
                                    "outlettype": [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
                                    "patching_rect": [ 46.0, 54.0, 598.0, 22.0 ],
                                    "text": "unpack 0 0 0 0 0 0 0 0 0 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 199.0, 29.0, 200.0, 20.0 ],
                                    "text": "ADSR_Lane_NN_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-01",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 288.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_01_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-02",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 319.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_02_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-03",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 350.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_03_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-04",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 381.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_04_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-05",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 412.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_05_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-06",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 443.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_06_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-07",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 288.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_07_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-08",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 319.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_08_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-09",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 350.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_09_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 381.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_10_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 412.0, 224.0, 22.0 ],
                                    "text": "send ADSR_Lane_11_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 336.0, 443.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_12_Duration_ms_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 46.0, 9.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-01", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-02", 0 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-03", 0 ],
                                    "source": [ "obj-2", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-04", 0 ],
                                    "source": [ "obj-2", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-05", 0 ],
                                    "source": [ "obj-2", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-06", 0 ],
                                    "source": [ "obj-2", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-07", 0 ],
                                    "source": [ "obj-2", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-08", 0 ],
                                    "source": [ "obj-2", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-09", 0 ],
                                    "source": [ "obj-2", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-10", 0 ],
                                    "source": [ "obj-2", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-11", 0 ],
                                    "source": [ "obj-2", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-12", 0 ],
                                    "source": [ "obj-2", 11 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 836.0, 523.0, 278.0, 22.0 ],
                    "text": "p ADSR_12_LANES_duration_of_envelope_in_ms"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color1": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 792.0, 363.0, 29.5, 22.0 ],
                    "text": "9"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-99",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 105.0, 563.0, 195.0, 33.0 ],
                    "text": "GLOBAL SHAPE ADSR 12 LANES\nTrigger 12 ADSR"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.122, 1.0, 1.0 ],
                    "id": "obj-97",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "outlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "parameter_enable": 0,
                    "patching_rect": [ 36.0, 367.0, 47.0, 47.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
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
                        "rect": [ 84.0, 144.0, 401.0, 506.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 46.0, 74.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-01",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 288.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_01_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-02",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 319.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_02_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-03",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 350.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_03_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-04",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 381.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_04_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-05",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 412.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_05_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-06",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 443.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_06_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-07",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 90.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_07_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-08",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 121.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_08_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-09",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 152.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_09_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 183.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_10_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 214.0, 193.0, 22.0 ],
                                    "text": "send ADSR_Lane_11_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 245.0, 194.0, 22.0 ],
                                    "text": "send ADSR_Lane_12_Trigger_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 46.0, 9.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-01", 0 ],
                                    "order": 11,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-02", 0 ],
                                    "order": 10,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-03", 0 ],
                                    "order": 9,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-04", 0 ],
                                    "order": 8,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-05", 0 ],
                                    "order": 7,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-06", 0 ],
                                    "order": 6,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-07", 0 ],
                                    "order": 5,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-08", 0 ],
                                    "order": 4,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-09", 0 ],
                                    "order": 3,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-10", 0 ],
                                    "order": 2,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 76.0, 603.0, 233.0, 22.0 ],
                    "text": "p ADSR_12_LANES_GLOBAL_TRIGGER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-17",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1027.0, 420.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.6666666666666666, 0.011764705882352941, 0.011764705882352941, 1.0 ],
                    "fontsize": 18.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 34.0, 119.0, 1372.0, 660.0 ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 18.0,
                                    "id": "obj-4",
                                    "linecount": 28,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 31.0, 1399.0, 590.0 ],
                                    "text": "ONLY Use the Classroom Additive Synthesizer found at:                                     (student must turn in a separate max patch that sends messages and\nGitHub/music158a2026/Tools_158a_2026/ec_sinusoids_synth_v19                    controls/automates the main synthesizer patch.                            \n                                                                                                                                   \nOpen the main patch called:  _ec_sinusoids_synth_v19-5.maxpat.                 \nFind the internal patcher called:  Send_Message_Space_v19                             \n                                                                                                                                 \nASSIGNMENT:  \n\n1) Explore the functionality of the Additive Synthesizer including the  INDEPENDENT_ADSR_12_VOICES and the OUTPUT GAIN CONTROLS.\n\n2) Take a look at the  SEND_MESSAGE_SPACE_V19 -- where there are CUE messages that can be sent directly into the ADDITIVE SYNTHESIZER.\n\n3) Open a new separate patcher window and using  SEND_MESSAGE_SPACE_V19 CUE MODELS to create a layered autonomous sound generating space with a start and stop function. Separate your work into two areas: 1) the initialization (everything that must be set before you press start), and 2) the operations and timing and line messages etc.. that will happen when you \"START\" your sound generator.  The \"STOP\" should result in the sound ending with automated elements also ceasing to loop or generate (i.e. metros \"stop\", other cyclical bangs \"gated\" etc..)\n\n4) Use the CUE controls in SEND_MESSAGE_SPACE_V19 to control the synthesizer. Create autonomous lines or random controls for individual parameters, as demonstrated in Homework #1. Use delay objects to create a timed musical form by turning processes on and off over time.  Try to build up layers one by one in your generator rather than a larger complicated patch.\n\nBuild your system from the ground up and invent a continuously evolving, morphing sound space, as demonstrated in class, but yours and yours alone. Perform the instrument using only the controls provided in Max.\n\nThe performance may be either:\n\nInfinite in duration, with manual on/off control; or\nA composed 2–4-minute form with a patch-defined ending.\n"
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 67.0, 37.0, 239.0, 29.0 ],
                    "text": "p ASSIGNMENT_READ_ME"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color1": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 757.0, 349.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
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
                                    "id": "global-loop-send-01",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 117.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_01_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-01",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 117.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_01_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-02",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 148.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_02_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-02",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 148.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_02_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-03",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 179.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_03_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-03",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 179.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_03_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-04",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 210.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_04_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-04",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 210.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_04_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-05",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 241.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_05_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-05",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 241.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_05_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-06",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 272.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_06_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-06",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 272.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_06_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-07",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 117.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_07_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-07",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 117.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_07_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-08",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 148.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_08_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-08",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 148.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_08_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-09",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 179.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_09_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-09",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 179.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_09_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 210.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_10_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 210.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_10_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 241.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_11_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 241.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_11_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-loop-send-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 272.0, 225.0, 22.0 ],
                                    "text": "send ADSR_Lane_12_Loop_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "global-shape-send-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 705.0, 272.0, 230.0, 22.0 ],
                                    "text": "send ADSR_Lane_12_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 112.0, 57.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 582.0, 57.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-01", 0 ],
                                    "order": 11,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-02", 0 ],
                                    "order": 10,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-03", 0 ],
                                    "order": 9,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-04", 0 ],
                                    "order": 8,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-05", 0 ],
                                    "order": 7,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-06", 0 ],
                                    "order": 6,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-07", 0 ],
                                    "order": 5,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-08", 0 ],
                                    "order": 4,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-09", 0 ],
                                    "order": 3,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-10", 0 ],
                                    "order": 2,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-loop-send-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-01", 0 ],
                                    "order": 11,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-02", 0 ],
                                    "order": 10,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-03", 0 ],
                                    "order": 9,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-04", 0 ],
                                    "order": 8,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-05", 0 ],
                                    "order": 7,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-06", 0 ],
                                    "order": 6,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-07", 0 ],
                                    "order": 5,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-08", 0 ],
                                    "order": 4,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-09", 0 ],
                                    "order": 3,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-10", 0 ],
                                    "order": 2,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "global-shape-send-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 757.0, 446.0, 289.0, 22.0 ],
                    "text": "p ADSR_12_LANES_GLOBAL_SHAPES_LOOPING"
                }
            },
            {
                "box": {
                    "id": "global-loop-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 683.0, 338.0, 70.0, 33.0 ],
                    "text": "ALL LANE \nLOOPS 0/1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945, 0.431, 0.157, 1.0 ],
                    "id": "global-loop-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 757.0, 410.0, 24.0, 24.0 ],
                    "uncheckedcolor": [ 0.945, 0.431, 0.157, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "global-shape-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 840.0, 373.0, 195.0, 20.0 ],
                    "text": "GLOBAL SHAPE ADSR 12 LANES"
                }
            },
            {
                "box": {
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color1": [ 0.945, 0.431, 0.157, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "id": "global-shape-menu",
                    "items": [ "Flat Zero", ",", "All on full", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 792.0, 397.0, 233.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "adsr-12-lanes-messaging-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 856.0, 350.0, 238.0, 20.0 ],
                    "text": "12 lane-specific ADSR send/receive panels"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 332.0, 87.0, 20.0 ],
                    "text": "end processes"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 333.0, 96.0, 20.0 ],
                    "text": "begin process"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 757.0, 299.0, 66.0, 22.0 ],
                    "text": "receive init"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.0, 108.0, 66.0, 22.0 ],
                    "text": "receive init"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 198.0, 108.0, 66.0, 22.0 ],
                    "text": "receive init"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.12156862745098039, 1.0, 1.0 ],
                    "id": "obj-11",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "outlinecolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "parameter_enable": 0,
                    "patching_rect": [ 16.0, 110.0, 49.0, 49.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 167.0, 53.0, 22.0 ],
                    "text": "send init"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 267.0, 1151.0, 33.0 ],
                    "text": "MY SOUND GENERATOR__________________________________________________________________________________________________________________________________________________________"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 81.0, 109.0, 109.0, 87.0 ],
                    "text": "INITIALIZATION!!!!\n(all the elements\nin the patch that\nneed to be pre-set\nbefore I start \"play\")"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 139.0, 218.0, 20.0 ],
                    "text": "choose amplitude shape for the partials"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.548, 0.13, 1.0 ],
                    "id": "obj-29",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 407.0, 213.0, 50.0, 22.0 ]
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
                    "items": [ "Flat Zero", ",", "All on full", ",", "Linear: low to high", ",", "Exponential: low to high", ",", "Linear: high to low", ",", "Exponential: high to low", ",", "Triangle: center peak", ",", "Exponential triangle: center peak", ",", "Gaussian", ",", "Steep Gaussian", ",", "Inverted Gaussian", ",", "Steep Inverted Gaussian", ",", "Double Gaussian", ",", "Steep Double Gaussian", ",", "Inverted Double Gaussian", ",", "Steep Inverted Double Gaussian", ",", "Triple Gaussian", ",", "Steep Triple Gaussian", ",", "Inverted Triple Gaussian", ",", "Steep Inverted Triple Gaussian", ",", "Quadruple Gaussian", ",", "Steep Quadruple Gaussian", ",", "Inverted Quadruple Gaussian", ",", "Steep Inverted Quadruple Gaussian", ",", "Random (fixed)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 459.0, 213.0, 144.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 467.0, 203.0, 235.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.548, 0.13, 1.0 ],
                    "id": "obj-30",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 176.0, 196.0, 33.0 ],
                    "text": "HARMONIC PARTIALS Amplitude \nshape index 0–23 | INTEGER 0–23"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.548, 0.13, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.639, 0.548, 0.13, 1 ],
                    "bgfillcolor_color1": [ 0.639, 0.548, 0.13, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.0, 181.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.548, 0.13, 1.0 ],
                    "id": "obj-32",
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
                        "rect": [ 100.0, 80.0, 980.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 900.0, 28.0 ],
                                    "text": "Amplitude shape index 0–23 — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 110.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 155.0, 95.0, 22.0 ],
                                    "text": "route stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 900.0, 35.0 ],
                                    "text": "Input: one integer, 0–23. Immediate; no intermediate menu/count/seed values. stop is ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 165.0, 205.0, 200.0, 22.0 ],
                                    "text": "clip 0 23"
                                }
                            },
                            {
                                "box": {
                                    "id": "integer",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 165.0, 250.0, 45.0, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 570.0, 350.0, 22.0 ],
                                    "text": "prepend Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 30.0, 606.0, 80.0, 22.0 ],
                                    "text": "t l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 606.0, 90.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 645.0, 480.0, 22.0 ],
                                    "text": "Amplitude_Shape_v19 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 645.0, 350.0, 22.0 ],
                                    "text": "route Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 684.0, 370.0, 22.0 ],
                                    "text": "forward Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Named outgoing message, for optional logging. No connection required.",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 695.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 780.0, 900.0, 22.0 ],
                                    "text": "Destination in synthesis engine: receive Amplitude_Shape_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 725.0, 490.0, 35.0 ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 205.0, 460.0, 90.0 ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "display", 0 ],
                                    "source": [ "display-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display-set", 0 ],
                                    "source": [ "fan", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip-name", 0 ],
                                    "source": [ "fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route-stop", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "name", 0 ],
                                    "source": [ "integer", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "integer", 0 ],
                                    "source": [ "limit", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fan", 0 ],
                                    "source": [ "name", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "limit", 0 ],
                                    "source": [ "route-stop", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "send", 0 ],
                                    "source": [ "strip-name", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 407.0, 243.0, 168.0, 22.0 ],
                    "text": "p Cue_Amplitude_Shape_v19"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.0, 139.0, 150.0, 20.0 ],
                    "text": "choose number of partials"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "number",
                    "maximum": 256,
                    "minimum": 3,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 291.0, 207.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1.0 ],
                    "id": "label0",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.0, 167.0, 132.0, 33.0 ],
                    "text": "Harmonic partial count \n| INTEGER 2–256"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.639, 0.549, 0.129, 1 ],
                    "bgfillcolor_color1": [ 0.639, 0.549, 0.129, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "example0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 198.0, 202.0, 29.5, 22.0 ],
                    "text": "256"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.639, 0.549, 0.129, 1.0 ],
                    "id": "model0",
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
                        "rect": [ 100.0, 80.0, 980.0, 820.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 900.0, 28.0 ],
                                    "text": "Harmonic partial count — SCORE CUE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Cue input; see the protocol above. stop cancels this module’s active ramp.",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 110.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "route-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 155.0, 95.0, 22.0 ],
                                    "text": "route stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "protocol",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 50.0, 900.0, 35.0 ],
                                    "text": "Input: one integer, 2–256. Immediate; no intermediate menu/count/seed values. stop is ignored."
                                }
                            },
                            {
                                "box": {
                                    "id": "limit",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 165.0, 205.0, 200.0, 22.0 ],
                                    "text": "clip 2 256"
                                }
                            },
                            {
                                "box": {
                                    "id": "integer",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 165.0, 250.0, 45.0, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "name",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 570.0, 350.0, 22.0 ],
                                    "text": "prepend Partial_Count_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "fan",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 30.0, 606.0, 80.0, 22.0 ],
                                    "text": "t l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 606.0, 90.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "display",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 645.0, 480.0, 22.0 ],
                                    "text": "Partial_Count_v19 256"
                                }
                            },
                            {
                                "box": {
                                    "id": "strip-name",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 645.0, 350.0, 22.0 ],
                                    "text": "route Partial_Count_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 684.0, 370.0, 22.0 ],
                                    "text": "forward Partial_Count_v19"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Named outgoing message, for optional logging. No connection required.",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 695.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "receiver-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 780.0, 900.0, 22.0 ],
                                    "text": "Destination in synthesis engine: receive Partial_Count_v19"
                                }
                            },
                            {
                                "box": {
                                    "id": "display-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 725.0, 490.0, 35.0 ],
                                    "text": "Display only. The outlet reports the named message; the internal forward already sends it."
                                }
                            },
                            {
                                "box": {
                                    "id": "details",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 205.0, 460.0, 90.0 ],
                                    "text": "Copy this entire p object; its receive destination is already built in."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "display", 0 ],
                                    "source": [ "display-set", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "display-set", 0 ],
                                    "source": [ "fan", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "fan", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "strip-name", 0 ],
                                    "source": [ "fan", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route-stop", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "name", 0 ],
                                    "source": [ "integer", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "integer", 0 ],
                                    "source": [ "limit", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "fan", 0 ],
                                    "source": [ "name", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "limit", 0 ],
                                    "source": [ "route-stop", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "send", 0 ],
                                    "source": [ "strip-name", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 216.0, 240.0, 146.0, 22.0 ],
                    "text": "p Cue_Partial_Count_v19"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 11.0, 605.0, 22.0 ],
                    "text": "Homework #2:  Additive Synthesis with Max Signal Processing (Max MSP) and Control with Max"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "model0", 0 ],
                    "source": [ "example0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "global-loop-toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "global-shape-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "global-loop-toggle", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "example0", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 1 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "global-shape-menu", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 2,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "order": 2,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "syn-amp-shape-menu", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "global-loop-toggle", 0 ],
                    "source": [ "obj-38", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-38", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model0", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "order": 0,
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "order": 1,
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "order": 1,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "syn-amp-shape-menu", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}