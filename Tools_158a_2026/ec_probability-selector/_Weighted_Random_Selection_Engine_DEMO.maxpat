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
        "rect": [ 34.0, 159.0, 1448.0, 884.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 468.0, 115.0, 371.0, 35.0 ],
                    "text": "0 0 0 0.143792 0.262938 0.098121 0 0 0.06184 0 0 0 0 0.211785 0"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 173.0, 103.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 415.5, 43.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-bang-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 278.0, 45.0, 131.0, 20.0 ],
                    "text": "bang restarts all voices"
                }
            },
            {
                "box": {
                    "id": "obj-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 6.0, 42.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "obj-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 493.0, 6.0, 39.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-restart",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 542.0, 6.0, 51.0, 22.0 ],
                    "text": "restart"
                }
            },
            {
                "box": {
                    "id": "obj-range",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 600.0, 6.0, 107.0, 22.0 ],
                    "text": "range 250 1200"
                }
            },
            {
                "box": {
                    "id": "obj-range-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 445.5, 69.5, 348.0, 33.0 ],
                    "text": "agruments to automatic_lines\n1) number of voices (creates outlets with last outlet being full list"
                }
            },
            {
                "box": {
                    "id": "obj-waittime",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 710.0, 6.0, 90.0, 22.0 ],
                    "text": "waittime 1000"
                }
            },
            {
                "box": {
                    "id": "obj-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 16,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 441.0, 45.0, 235.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "automatic_lines_v5.js",
                        "parameter_enable": 0
                    },
                    "text": "js automatic_lines_v5.js 15 500 5000 4000"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 334.0, 176.0, 169.0, 22.0 ],
                    "text": "receive weights_to_multislider"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1112.0, 595.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1027.0, 630.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 959.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 872.0, 633.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 801.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 715.0, 630.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 647.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 566.0, 629.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 492.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 422.0, 624.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 358.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 267.0, 624.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 193.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 114.0, 620.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 84.0, 334.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-133",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 640.0, 334.0, 381.0, 38.0 ],
                    "text": "duplicate a setting/message and connect to send --for preset"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.08627450980392157, 0.08627450980392157, 1.0 ],
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 885.5, 249.0, 156.0, 22.0 ],
                    "text": "send weights_to_multislider"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 261.0, 419.0, 120.0, 33.0 ],
                    "text": "Number of elements \nto choose from"
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold Italic",
                    "fontsize": 24.0,
                    "id": "obj-130",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 7.0, 419.0, 33.0 ],
                    "text": "Weighted Random Selection Engine"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 103.0, 149.0, 47.0 ],
                    "text": "Click on the message box \nto set the number of \nelements in the multislider"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 290.0, 133.0, 155.0, 22.0 ],
                    "text": "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 264.0, 132.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 276.0, 96.0, 85.0, 22.0 ],
                    "text": "1 1 1 1 1 1 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 250.0, 95.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1156.0, 328.0, 159.0, 20.0 ],
                    "text": "Control Output Gain/Volume"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1056.0, 370.0, 96.0, 47.0 ],
                    "text": "turn\nAUDIO ENGINE\nON/OFF"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                    "id": "obj-163",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1303.0, 296.0, 114.0, 22.0 ],
                    "text": "receive~ soundright"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1131.0, 296.0, 106.0, 22.0 ],
                    "text": "receive~ soundleft"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1342.0, 344.0, 77.0, 47.0 ],
                    "text": "Verify your \naudio engine\n is running"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1348.0, 400.0, 53.0, 22.0 ],
                    "text": "cycle~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1348.0, 434.0, 53.0, 55.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1131.0, 350.0, 191.0, 134.0 ],
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
                    "id": "obj-68",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1102.0, 434.0, 39.0, 39.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1102.0, 495.0, 62.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.6862745098039216, 0.09019607843137255, 0.3058823529411765, 1.0 ],
                    "id": "obj-5",
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
                        "rect": [ 134.0, 172.0, 942.0, 746.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 688.0, 688.0, 104.0, 22.0 ],
                                    "text": "abl.dsp.shimmer~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 530.0, 442.0, 100.0, 22.0 ],
                                    "text": "abl.dsp.darkhall~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 361.0, 659.2135850191116, 107.0, 22.0 ],
                                    "text": "abl.device.reverb~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 189.0, 448.21358501911163, 107.0, 22.0 ],
                                    "text": "abl.device.reverb~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 493.0, 702.0, 98.0, 22.0 ],
                                    "text": "abl.dsp.doubler~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 530.0, 203.0, 98.0, 22.0 ],
                                    "text": "abl.dsp.doubler~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 29.12621319293976, 189.32038575410843, 98.0, 22.0 ],
                                    "text": "abl.dsp.doubler~"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 131.0679593682289, 698.0582428574562, 94.0, 22.0 ],
                                    "text": "send~ soundleft"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "15_1tom1.aif",
                                                "filename": "15_1tom1.aif",
                                                "filekind": "audiofile",
                                                "id": "u675004927",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "15_2tom1.aif",
                                                "filename": "15_2tom1.aif",
                                                "filekind": "audiofile",
                                                "id": "u392004932",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "15_3tom1.aif",
                                                "filename": "15_3tom1.aif",
                                                "filekind": "audiofile",
                                                "id": "u876004937",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "15_4tom1.aif",
                                                "filename": "15_4tom1.aif",
                                                "filekind": "audiofile",
                                                "id": "u273004942",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-45",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 696.0, 530.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "14_1snare.aif",
                                                "filename": "14_1snare.aif",
                                                "filekind": "audiofile",
                                                "id": "u663004890",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "14_2snare.aif",
                                                "filename": "14_2snare.aif",
                                                "filekind": "audiofile",
                                                "id": "u420004895",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "14_3snare.aif",
                                                "filename": "14_3snare.aif",
                                                "filekind": "audiofile",
                                                "id": "u450004900",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "14_4snare.aif",
                                                "filename": "14_4snare.aif",
                                                "filekind": "audiofile",
                                                "id": "u509004905",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-43",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 526.0, 530.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "13_1rimshot.aif",
                                                "filename": "13_1rimshot.aif",
                                                "filekind": "audiofile",
                                                "id": "u535004853",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "13_2rimshot.aif",
                                                "filename": "13_2rimshot.aif",
                                                "filekind": "audiofile",
                                                "id": "u616004858",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "13_3rimshot.aif",
                                                "filename": "13_3rimshot.aif",
                                                "filekind": "audiofile",
                                                "id": "u856004863",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "13_4rimshot.aif",
                                                "filename": "13_4rimshot.aif",
                                                "filekind": "audiofile",
                                                "id": "u221004868",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-41",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 361.0, 526.2135850191116, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "12_1open_hh.aif",
                                                "filename": "12_1open_hh.aif",
                                                "filekind": "audiofile",
                                                "id": "u989004713",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "12_2open_hh.aif",
                                                "filename": "12_2open_hh.aif",
                                                "filekind": "audiofile",
                                                "id": "u284004718",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "12_3open_hh.aif",
                                                "filename": "12_3open_hh.aif",
                                                "filekind": "audiofile",
                                                "id": "u193004723",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "12_4open_hh.aif",
                                                "filename": "12_4open_hh.aif",
                                                "filekind": "audiofile",
                                                "id": "u425004728",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-39",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 189.0, 526.2135850191116, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "11_1maracas.aif",
                                                "filename": "11_1maracas.aif",
                                                "filekind": "audiofile",
                                                "id": "u697004676",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "11_2maracas.aif",
                                                "filename": "11_2maracas.aif",
                                                "filekind": "audiofile",
                                                "id": "u944004681",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "11_3maracas.aif",
                                                "filename": "11_3maracas.aif",
                                                "filekind": "audiofile",
                                                "id": "u980004686",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "11_4maracas.aif",
                                                "filename": "11_4maracas.aif",
                                                "filekind": "audiofile",
                                                "id": "u017004691",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-37",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 24.2718443274498, 526.2135850191116, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "10_1kick2.aif",
                                                "filename": "10_1kick2.aif",
                                                "filekind": "audiofile",
                                                "id": "u950004611",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "10_2kick2.aif",
                                                "filename": "10_2kick2.aif",
                                                "filekind": "audiofile",
                                                "id": "u636004616",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "10_3kick2.aif",
                                                "filename": "10_3kick2.aif",
                                                "filekind": "audiofile",
                                                "id": "u421004621",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "10_4kick2.aif",
                                                "filename": "10_4kick2.aif",
                                                "filekind": "audiofile",
                                                "id": "u687004626",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-35",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 700.0, 306.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "09_1kick1.aif",
                                                "filename": "09_1kick1.aif",
                                                "filekind": "audiofile",
                                                "id": "u259004516",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "09_2kick1.aif",
                                                "filename": "09_2kick1.aif",
                                                "filekind": "audiofile",
                                                "id": "u815004521",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "09_3kick1.aif",
                                                "filename": "09_3kick1.aif",
                                                "filekind": "audiofile",
                                                "id": "u270004526",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "09_4kick1.aif",
                                                "filename": "09_4kick1.aif",
                                                "filekind": "audiofile",
                                                "id": "u536004531",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-33",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 530.0, 306.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "08_1hightom.aif",
                                                "filename": "08_1hightom.aif",
                                                "filekind": "audiofile",
                                                "id": "u396004193",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "08_2hightom.aif",
                                                "filename": "08_2hightom.aif",
                                                "filekind": "audiofile",
                                                "id": "u085004198",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "08_3hightom.aif",
                                                "filename": "08_3hightom.aif",
                                                "filekind": "audiofile",
                                                "id": "u112004203",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "08_4hightom.aif",
                                                "filename": "08_4hightom.aif",
                                                "filekind": "audiofile",
                                                "id": "u413004208",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-31",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 365.0, 302.21358501911163, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "07_1hi_conga.aif",
                                                "filename": "07_1hi_conga.aif",
                                                "filekind": "audiofile",
                                                "id": "u196004156",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "07_2hi_conga.aif",
                                                "filename": "07_2hi_conga.aif",
                                                "filekind": "audiofile",
                                                "id": "u969004161",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "07_3hi_conga.aif",
                                                "filename": "07_3hi_conga.aif",
                                                "filekind": "audiofile",
                                                "id": "u077004166",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "07_4hi_conga.aif",
                                                "filename": "07_4hi_conga.aif",
                                                "filekind": "audiofile",
                                                "id": "u498004171",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-28",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 302.21358501911163, 150.0, 120.0 ],
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
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 28.155339419841766, 266.9902876019478, 80.0, 22.0 ],
                                    "text": "receive sf_06"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "06_1handclap.aif",
                                                "filename": "06_1handclap.aif",
                                                "filekind": "audiofile",
                                                "id": "u073003834",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "06_2handclap.aif",
                                                "filename": "06_2handclap.aif",
                                                "filekind": "audiofile",
                                                "id": "u407003839",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "06_3handclap.aif",
                                                "filename": "06_3handclap.aif",
                                                "filekind": "audiofile",
                                                "id": "u919003844",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "06_4handclap.aif",
                                                "filename": "06_4handclap.aif",
                                                "filekind": "audiofile",
                                                "id": "u718003849",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-22",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 28.155339419841766, 301.9417434334755, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "05_1crashcym.aif",
                                                "filename": "05_1crashcym.aif",
                                                "filekind": "audiofile",
                                                "id": "u876003783",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "05_2crashcym.aif",
                                                "filename": "05_2crashcym.aif",
                                                "filekind": "audiofile",
                                                "id": "u392003788",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "05_3crashcym.aif",
                                                "filename": "05_3crashcym.aif",
                                                "filekind": "audiofile",
                                                "id": "u250003793",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "05_4crashcym.aif",
                                                "filename": "05_4crashcym.aif",
                                                "filekind": "audiofile",
                                                "id": "u580003798",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-18",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 700.0, 66.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "04_1cowbell.aif",
                                                "filename": "04_1cowbell.aif",
                                                "filekind": "audiofile",
                                                "id": "u516003738",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 1.5
                                                }
                                            },
                                            {
                                                "absolutepath": "04_2cowbell.aif",
                                                "filename": "04_2cowbell.aif",
                                                "filekind": "audiofile",
                                                "id": "u191003743",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "04_3cowbell.aif",
                                                "filename": "04_3cowbell.aif",
                                                "filekind": "audiofile",
                                                "id": "u684003748",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "04_4cowbell.aif",
                                                "filename": "04_4cowbell.aif",
                                                "filekind": "audiofile",
                                                "id": "u182003753",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-16",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 530.0, 66.0, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "03_1conga1.aif",
                                                "filename": "03_1conga1.aif",
                                                "filekind": "audiofile",
                                                "id": "u583003693",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 2.0
                                                }
                                            },
                                            {
                                                "absolutepath": "03_2conga1.aif",
                                                "filename": "03_2conga1.aif",
                                                "filekind": "audiofile",
                                                "id": "u930003698",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "03_3conga1.aif",
                                                "filename": "03_3conga1.aif",
                                                "filekind": "audiofile",
                                                "id": "u497003703",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "03_4conga1.aif",
                                                "filename": "03_4conga1.aif",
                                                "filekind": "audiofile",
                                                "id": "u858003708",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-14",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 365.0, 62.21358501911163, 150.0, 120.0 ],
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
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "02_1claves.aif",
                                                "filename": "02_1claves.aif",
                                                "filekind": "audiofile",
                                                "id": "u347003600",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.5
                                                }
                                            },
                                            {
                                                "absolutepath": "02_2claves.aif",
                                                "filename": "02_2claves.aif",
                                                "filekind": "audiofile",
                                                "id": "u398003605",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "02_3claves.aif",
                                                "filename": "02_3claves.aif",
                                                "filekind": "audiofile",
                                                "id": "u383003610",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "02_4claves.aif",
                                                "filename": "02_4claves.aif",
                                                "filekind": "audiofile",
                                                "id": "u549003615",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-3",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 62.21358501911163, 150.0, 120.0 ],
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
                                    "id": "obj-29",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 696.0, 996.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 871.0, 1157.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 814.0, 1085.0, 35.0, 22.0 ],
                                    "text": "clear"
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
                                    "patching_rect": [ 771.0, 1036.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 771.0, 1190.0, 32.0, 22.0 ],
                                    "text": "print"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 771.0, 1114.0, 36.0, 22.0 ],
                                    "text": "urn 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 688.0, 1026.0, 63.0, 22.0 ],
                                    "text": "metro 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 164.07766765356064, 34.95145583152771, 29.5, 22.0 ],
                                    "text": "4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 122.33009541034698, 34.95145583152771, 29.5, 22.0 ],
                                    "text": "3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 79.61164939403534, 34.95145583152771, 29.5, 22.0 ],
                                    "text": "2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 28.155339419841766, 34.95145583152771, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "01_1cl_hihat.aif",
                                                "filename": "01_1cl_hihat.aif",
                                                "filekind": "audiofile",
                                                "id": "u530003568",
                                                "loop": 0,
                                                "content_state": {
                                                    "speed": 0.25
                                                }
                                            },
                                            {
                                                "absolutepath": "01_2_cl_hihat.aif",
                                                "filename": "01_2_cl_hihat.aif",
                                                "filekind": "audiofile",
                                                "id": "u107003573",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "01_3cl_hihat.aif",
                                                "filename": "01_3cl_hihat.aif",
                                                "filekind": "audiofile",
                                                "id": "u411003578",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            },
                                            {
                                                "absolutepath": "01_4cl_hihat.aif",
                                                "filename": "01_4cl_hihat.aif",
                                                "filekind": "audiofile",
                                                "id": "u759003583",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-2",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 28.155339419841766, 62.135921478271484, 150.0, 120.0 ],
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
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 707.0, 968.0, 94.0, 22.0 ],
                                    "text": "send~ soundleft"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 579.0, 965.0, 101.0, 22.0 ],
                                    "text": "send~ soundright"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 28.155339419841766, 453.39805203676224, 94.0, 22.0 ],
                                    "text": "send~ soundleft"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.2718443274498, 698.0582428574562, 101.0, 22.0 ],
                                    "text": "send~ soundright"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-181",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 696.0, 493.0, 80.0, 22.0 ],
                                    "text": "receive sf_15"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-182",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 526.0, 493.0, 80.0, 22.0 ],
                                    "text": "receive sf_14"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-183",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 361.0, 489.21358501911163, 80.0, 22.0 ],
                                    "text": "receive sf_13"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-184",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 189.0, 494.21358501911163, 80.0, 22.0 ],
                                    "text": "receive sf_12"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.13725490196078433, 0.7098039215686275, 0.7215686274509804, 1.0 ],
                                    "id": "obj-185",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.2718443274498, 494.1747505068779, 79.0, 22.0 ],
                                    "text": "receive sf_11"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-176",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 701.0, 271.0, 80.0, 22.0 ],
                                    "text": "receive sf_10"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-177",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 530.0, 271.0, 80.0, 22.0 ],
                                    "text": "receive sf_09"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-178",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 365.0, 267.21358501911163, 80.0, 22.0 ],
                                    "text": "receive sf_08"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-179",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 194.0, 263.21358501911163, 80.0, 22.0 ],
                                    "text": "receive sf_07"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-175",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 700.0, 16.0, 80.0, 22.0 ],
                                    "text": "receive sf_05"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-174",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 529.0, 16.0, 80.0, 22.0 ],
                                    "text": "receive sf_04"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-173",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 364.0, 12.213585019111633, 80.0, 22.0 ],
                                    "text": "receive sf_03"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                                    "id": "obj-172",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 193.0, 13.213585019111633, 80.0, 22.0 ],
                                    "text": "receive sf_02"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.054901960784313725, 0.24705882352941178, 0.7019607843137254, 1.0 ],
                                    "id": "obj-167",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 28.155339419841766, 221.35922026634216, 101.0, 22.0 ],
                                    "text": "send~ soundright"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.13725490196078433, 0.7098039215686275, 0.7215686274509804, 1.0 ],
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 28.0, 4.0, 80.0, 22.0 ],
                                    "text": "receive sf_01"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-172", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-173", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-174", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-176", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-177", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-178", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-179", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-181", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-182", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-183", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-184", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-185", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-20", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "order": 0,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "order": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "order": 0,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 2,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "order": 0,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "order": 0,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 0,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 15.0, 161.0, 179.0, 22.0 ],
                    "text": "p polyphonic_soundfiles-players"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 16.0, 596.0, 81.0, 22.0 ],
                    "text": "probLR 60 40"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 197.0, 534.0, 35.0 ],
                    "text": "0.141667 0.141667 0.125 0.116667 0.116667 0.125 0.133333 0.133333 0.133333 0.133333 0.125 0.125 0.125 0.108333 0.2 0.008333 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 167.0, 532.0, 22.0 ],
                    "text": "0. 0. 0.039 0.025 0. 0.055 0. 0. 0.072 0. 0. 0. 0.041667 0. 0.221 0.098 0.097 0.097 0.097 0.097"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 136.0, 532.0, 22.0 ],
                    "text": "0. 0. 0.05 0. 0. 0.071 0. 0. 0.092 0. 0. 0. 0.163 0. 0.283333 0.125 0.125 0.125 0.125 0.124"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 104.0, 532.0, 22.0 ],
                    "text": "0. 0. 0.058333 0. 0. 0.083333 0. 0. 0.108333 0. 0. 0. 0.191667 0. 0. 0.146 0.146 0.146 0.146 0.146"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 75.0, 412.0, 22.0 ],
                    "text": "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.308333 0. 0. 0.167 0.167 0.167 0.166 0.166"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.5, 105.0, 43.0, 20.0 ],
                    "text": "claves"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.5, 76.0, 37.0, 20.0 ],
                    "text": "kicks"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.5, 50.0, 37.0, 20.0 ],
                    "text": "all off"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 885.5, 49.0, 272.0, 22.0 ],
                    "text": "0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 40.0, 336.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 40.0, 369.0, 56.0, 22.0 ],
                    "text": "metro 70"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1126.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1139.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1048.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1061.0, 708.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 970.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 983.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 892.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 905.0, 708.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 814.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 827.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 736.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 749.0, 708.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 658.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 580.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 593.0, 708.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 502.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 515.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 426.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.0, 708.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.0, 64.0, 55.0, 22.0 ],
                    "text": "1 1 1 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 204.0, 63.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 358.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 271.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 193.0, 556.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 117.0, 551.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 41.0, 555.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 54.0, 675.0, 115.0, 22.0 ],
                    "text": "setclip 1 speed 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 130.0, 708.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 206.0, 675.0, 102.0, 22.0 ],
                    "text": "setclip 1 speed 2."
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 708.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 1.5"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 363.0, 675.0, 109.0, 22.0 ],
                    "text": "setclip 1 speed 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 16,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 40.0, 525.0, 1178.0, 22.0 ],
                    "text": "sel 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 247.0, 334.0, 394.0, 35.0 ],
                    "text": "0. 0. 0. 0.143792 0.262938 0.098121 0. 0. 0.06184 0. 0. 0. 0. 0.211785 0."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.047058823529411764, 1.0, 1.0 ],
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 59.0, 119.0, 794.0, 465.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 56.0, 150.0, 150.0, 87.0 ],
                                    "text": "probability-selector knows how to choose one element with each bang based on the weights assigned to each element in the multislider."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 359.0, 324.0, 50.0, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 259.0, 256.0, 29.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 317.0, 300.0, 40.0, 22.0 ],
                                    "text": "peak"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 304.0, 54.0, 22.0 ],
                                    "text": "pack 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 342.0, 58.0, 22.0 ],
                                    "text": "set $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 422.5, 190.0, 47.0, 22.0 ],
                                    "text": "size $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 424.0, 150.0, 37.0, 22.0 ],
                                    "text": "zl len"
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
                                    "patching_rect": [ 503.0, 124.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 503.0, 218.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 503.0, 164.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 564.0, 160.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 44.0, 110.0, 133.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "probability-selector.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js probability-selector.js"
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
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 44.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 317.0, 355.0, 64.0, 22.0 ],
                                    "text": "setmax $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "bang", "clear", "int" ],
                                    "patching_rect": [ 293.0, 54.0, 73.0, 22.0 ],
                                    "text": "t l l b clear 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 517.0, 190.0, 40.0, 22.0 ],
                                    "text": "size 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "selector",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 118.0, 133.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "probability-selector.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js probability-selector.js"
                                }
                            },
                            {
                                "box": {
                                    "id": "run-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "clear", "int" ],
                                    "patching_rect": [ 687.0, 99.0, 71.0, 22.0 ],
                                    "text": "t b b clear 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "uzi",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "int" ],
                                    "patching_rect": [ 690.0, 207.0, 54.0, 22.0 ],
                                    "text": "uzi 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "trial-comment",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 591.0, 208.0, 87.0, 20.0 ],
                                    "text": "1000 bangs →"
                                }
                            },
                            {
                                "box": {
                                    "id": "sel-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 224.0, 146.0, 175.0, 22.0 ],
                                    "text": "t i i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "histo",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 224.0, 211.0, 45.0, 22.0 ],
                                    "text": "histo"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 289.0, 18.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 546.0, 38.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-32",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 687.0, 46.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-33",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 36.0, 367.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-34",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 575.0, 426.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "histo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "histo", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "histo", 0 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "source": [ "obj-1", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "selector", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "uzi", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-21", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
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
                                    "destination": [ "obj-33", 0 ],
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
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "selector", 1 ],
                                    "order": 0,
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "run-trigger", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 1,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 1 ],
                                    "order": 0,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 1 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-48", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "histo", 0 ],
                                    "source": [ "run-trigger", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "source": [ "run-trigger", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "uzi", 0 ],
                                    "source": [ "run-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "histo", 0 ],
                                    "source": [ "sel-trigger", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sel-trigger", 0 ],
                                    "source": [ "selector", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "selector", 0 ],
                                    "midpoints": [ 699.5, 244.04296875, 211.0, 244.04296875, 211.0, 108.0, 233.5, 108.0 ],
                                    "source": [ "uzi", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 40.0, 454.0, 584.0, 22.0 ],
                    "text": "p PROBABILITY_SELECTOR_GUTS"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 384.0, 430.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "run",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 605.0, 390.0, 34.0, 34.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "run-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 645.0, 396.0, 401.0, 22.0 ],
                    "text": "RUN 1000 TRIALS to see probabilities recreate the distribution."
                }
            },
            {
                "box": {
                    "candycane": 23,
                    "id": "hist-bars",
                    "listresize": 0,
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 633.0, 427.0, 410.0, 52.0 ],
                    "setminmax": [ 0.0, 0.0 ],
                    "setstyle": 1,
                    "settype": 0,
                    "size": 15,
                    "spacing": 2
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 228.0, 369.0, 175.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 384.0, 396.0, 37.0, 22.0 ],
                    "text": "zl len"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 204.0, 216.0, 87.0 ],
                    "text": "multislider object resizes automatically to the number of elements received.\nThe range is from 0.0 to 1.0 --\n\nSet probabilistic weights with visual tuning with audible feedback."
                }
            },
            {
                "box": {
                    "candycane": 15,
                    "contdata": 1,
                    "id": "obj-multislider1",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 227.0, 204.0, 410.0, 120.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 15,
                    "spacing": 2,
                    "thickness": 12
                }
            },
            {
                "box": {
                    "id": "obj-range1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 765.5, 257.0, 86.0, 20.0 ],
                    "text": "range: 0.0–1.0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.776470588235294, 0.066666666666667, 0.066666666666667, 1.0 ],
                    "id": "obj-button1",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 40.0, 416.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-bangcomment1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 399.0, 175.0, 47.0 ],
                    "text": "bang: choose one element based on probabilistic weights \ndisplayed in multislider above"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.945098039215686, 0.211764705882353, 0.211764705882353, 1.0 ],
                    "fontsize": 24.0,
                    "id": "obj-number1",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 40.0, 484.0, 84.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-outcomment1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 124.0, 488.0, 252.0, 20.0 ],
                    "text": "selected index with leftmost slider equal to \"1\""
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 320.0, 744.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 8.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 848.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 769.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1077.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_15"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1077.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 1077.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1001.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_14"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1001.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 1001.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 924.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_13"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 924.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 924.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 848.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_12"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 848.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 770.0, 824.0, 66.0, 22.0 ],
                    "text": "send sf_11"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 770.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 694.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_10"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 694.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 694.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 619.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_09"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 619.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 619.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 544.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_08"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 544.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 544.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 470.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_07"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 470.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 470.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 394.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_06"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 394.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 394.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 321.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_05"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 321.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 242.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_04"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 242.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 242.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_03"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 164.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 164.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_02"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 742.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 87.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.137, 0.71, 0.722, 1.0 ],
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 824.0, 67.0, 22.0 ],
                    "text": "send sf_01"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 10.0, 772.0, 69.0, 22.0 ],
                    "text": "counter 1 4"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "grad1": [ 0.0, 0.9647058823529412, 0.2196078431372549, 1.0 ],
                    "grad2": [ 0.10196078431372549, 0.9058823529411765, 0.807843137254902, 1.0 ],
                    "id": "obj-70",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1048.0, 328.0, 378.0, 189.0 ],
                    "proportion": 0.5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 2 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "midpoints": [ 237.5, 401.8203125, 237.83333333333334, 401.8203125 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 1 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-21", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-21", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-21", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-21", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-21", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-21", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-21", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-21", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-21", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-21", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-21", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-21", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-34", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "hist-bars", 0 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-number1", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-42", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-44", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-button1", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 1 ],
                    "source": [ "obj-67", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-button1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "order": 0,
                    "source": [ "obj-js", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-multislider1", 0 ],
                    "order": 1,
                    "source": [ "obj-js", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 1,
                    "source": [ "obj-multislider1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "order": 0,
                    "source": [ "obj-multislider1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-number1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-range", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-restart", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-js", 0 ],
                    "source": [ "obj-waittime", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 3 ],
                    "source": [ "run", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-67": [ "live.gain~", "live.gain~", 0 ],
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