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
        "rect": [ 2022.0, 135.0, 1064.0, 820.0 ],
        "boxes": [
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 718.0, 134.0, 151.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "/source/1/vumeter/visible 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792, 0.416, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 562.0, 134.0, 151.0, 22.0 ],
                    "text": "/source/1/vumeter/visible 1"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 102.0, 296.0, 33.0 ],
                    "presentation_linecount": 3,
                    "text": "OSC name-spaces are usually built from \"addresses\" \nthat are common-sense:"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 53.0, 276.0, 47.0 ],
                    "text": "an OSC message consists of a made up name(s) followed by the forward slash (e.g. /status, or /help, but also /source/number <int value>). "
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.0, 118.0, 163.0, 100.0 ],
                    "presentation_linecount": 7,
                    "text": "spat5 understands (expects) \nOpen Sound Control OSC\nThe objects in spat5\nhave a custom OSC\n\"name-space\"\nto address all\nparameters"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 651.0, 231.0, 220.0, 33.0 ],
                    "presentation_linecount": 2,
                    "text": "opens the message decription window\ndescribing what each address does."
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 197.0, 6.0, 259.0, 20.0 ],
                    "text": "double-click the spat5.viewer to see the display"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 236.0, 274.0, 492.0, 60.0 ],
                    "text": "spat5.oper is a key component in the spat5 system.  \nIt addresses the low level controls in spat5.spat~ (reverb and spatial module)\nspat5.oper uses higher-level perception-based control for parametric control of spat5.spat~\nIt has a built in spat-viewer as well.  DOUBLE-CLICK TO ENTER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.03529411764705882, 0.00392156862745098, 0.00392156862745098, 1.0 ],
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 218.0, 341.0, 329.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.oper @initwith \"/source/number 1, /speaker/number 4\"",
                    "varname": "spat5.viewer[2]"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 424.0, 540.0, 145.0, 60.0 ],
                    "text": "spat5.spat~\nreverb (room simlulation) \nwith source position\npanning"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.0, 382.0, 150.0, 20.0 ],
                    "text": "This is the audio source"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 494.0, 512.0, 83.0, 22.0 ],
                    "text": "/dsp/bypass 0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 405.0, 512.0, 83.0, 22.0 ],
                    "text": "/dsp/bypass 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 24.0,
                    "gradient": 1,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 459.0, 79.0, 35.0 ],
                    "text": "/status"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 24.0,
                    "gradient": 1,
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 343.0, 463.0, 61.0, 35.0 ],
                    "text": "/help"
                }
            },
            {
                "box": {
                    "clipheight": 28.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "metal_900ms.wav",
                                "filename": "metal_900ms.wav",
                                "filekind": "audiofile",
                                "id": "u465015507",
                                "selection": [ 0.3368421052631579, 0.0 ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-34",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 404.0, 232.0, 29.0 ],
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
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 170.0, 759.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 170.0, 601.0, 136.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
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
                    "bgcolor": [ 0.03529411764705882, 0.00392156862745098, 0.00392156862745098, 1.0 ],
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 170.0, 540.0, 252.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.spat~ @inputs 1 @outputs 2 @rooms 1",
                    "varname": "spat5.viewer[1]"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 902.0, 129.0, 150.0, 47.0 ],
                    "text": "automate the motion around the 360 degrees by changing the \"azimuth\""
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 187.0, 220.0, 33.0 ],
                    "text": "opens the status window to show current settings for the spat5.viewer"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "obj-133",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 902.0, 308.0, 97.0, 21.0 ],
                    "text": "/source/1/azim $1"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-132",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "spat5.around.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 902.0, 189.0, 134.0, 110.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "id": "obj-17",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ -0.5, 48.0, 188.0, 33.0 ],
                    "text": "look at spat5.viewer-> \nnotice @initwith \"<messages>\""
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 21.0, 559.0, 107.0, 47.0 ],
                    "text": "bang the message\nto reset\nDSP defaults"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "spat5.osc.view",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 206.5, 118.0, 305.0, 135.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.4235294117647059, 0.42745098039215684, 0.8901960784313725, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.4235294117647059, 0.42745098039215684, 0.8901960784313725, 1.0 ],
                    "bgfillcolor_color1": [ 0.4235294117647059, 0.42745098039215684, 0.8901960784313725, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-1",
                    "linecount": 6,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 27.0, 466.0, 95.0, 89.0 ],
                    "text": ";\rdsp iovs 512,;\rdsp sigvs 512,;\rdsp sr 48000,;\rmax preempt 1,;\rdsp takeover 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.424, 0.427, 0.89, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 27.0, 421.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 24.0,
                    "gradient": 1,
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 588.0, 230.0, 61.0, 35.0 ],
                    "text": "/help"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.792156862745098, 0.415686274509804, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 24.0,
                    "gradient": 1,
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 186.0, 79.0, 35.0 ],
                    "text": "/status"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.03529411764705882, 0.00392156862745098, 0.00392156862745098, 1.0 ],
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 189.0, 59.0, 340.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.viewer @initwith \"/source/number 1, /speaker/number 4\"",
                    "varname": "spat5.viewer"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 198.5, 284.984375, 227.5, 284.984375 ],
                    "order": 0,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 1,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 911.5, 339.0, 883.05078125, 339.0, 883.05078125, 30.1953125, 198.5, 30.1953125 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 571.5, 166.0, 551.69140625, 166.0, 551.69140625, 38.60546875, 198.5, 38.60546875 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 727.5, 172.5625, 544.52734375, 172.5625, 544.52734375, 45.56640625, 198.5, 45.56640625 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 597.5, 273.26171875, 532.0546875, 273.26171875, 532.0546875, 56.24609375, 198.5, 56.24609375 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 569.5, 228.453125, 538.91015625, 228.453125, 538.91015625, 52.29296875, 198.5, 52.29296875 ],
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-132::obj-10": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-132::obj-15": [ "live.numbox[7]", "live.numbox", 0 ],
            "obj-132::obj-19": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-132::obj-3": [ "live.tab[3]", "live.tab", 0 ],
            "obj-132::obj-7": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-29": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-132::obj-10": {
                    "parameter_longname": "live.numbox[5]"
                },
                "obj-132::obj-15": {
                    "parameter_longname": "live.numbox[7]"
                },
                "obj-132::obj-19": {
                    "parameter_longname": "live.numbox[6]"
                },
                "obj-132::obj-3": {
                    "parameter_longname": "live.tab[3]"
                },
                "obj-132::obj-7": {
                    "parameter_longname": "live.numbox[4]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}