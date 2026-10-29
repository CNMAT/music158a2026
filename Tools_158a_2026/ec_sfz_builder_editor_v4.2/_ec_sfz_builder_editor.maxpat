{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 74.0, 100.0, 1483.0, 926.0 ],
        "openinpresentation": 1,
        "description": "SFZ builder with opcode row selection, copying group opcodes to regions, immediate opcode deletion, and undoable group tools.",
        "boxes": [
            {
                "box": {
                    "id": "obj-180",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 304.0, 882.0, 151.0, 74.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.9707943925233, 818.0, 597.0, 20.0 ],
                    "text": "SCALA = library of scales/tuning for sfizz~ place  scale name minus .SCL  in the filed that says 'none' "
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "int" ],
                    "patching_rect": [ 392.0, 956.0, 100.0, 49.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 696.0, 797.0, 190.0, 22.0 ],
                    "text": "text SCALA_scale-list_for_SFZ.txt"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 819.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 284.9707943925233, 786.0, 150.0, 33.0 ],
                    "text": "Check performs analysis\nreports error in code"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 466.0, 482.0, 152.0, 60.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0, 432.0, 424.0, 20.0 ],
                    "text": "Alter values in 2 and 3, add new values in 3, then Compile tables to write SFZ."
                }
            },
            {
                "box": {
                    "id": "obj-170",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 805.0, 1880.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 989.5, 859.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-172",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 0,
                    "patching_rect": [ 842.0857142857143, 1918.0, 156.33333333333326, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 993.0, 887.0, 134.5, 22.0 ],
                    "text": "dac~ 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-169",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 397.0, 1665.0, 71.0, 22.0 ],
                    "text": "go demo2"
                }
            },
            {
                "box": {
                    "annotation": "Load the first single-sample tutorial lesson. Use Single-sample tutorial… for all lessons.",
                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Load the first single-sample tutorial lesson. Use Single-sample tutorial… for all lessons.",
                    "id": "obj-166",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 219.0, 77.0, 122.0, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 905.0, 39.0, 148.0, 25.0 ],
                    "text": "Load tutorial lesson 01",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Load tutorial lesson 01",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.8, 0.0, 0.0, 1.0 ],
                    "fontsize": 18.0,
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 35.0, 527.0, 267.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.107476635514018, 527.0, 267.0, 29.0 ],
                    "text": "sfizz~_Opcode_Browser.maxpat"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.776, 0.478, 0.016, 1.0 ],
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "obj-164",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 240.0, 900.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 419.0, 250.0, 564.0, 22.0 ],
                    "text": "Place a ? in an empty cell and select \"Check SFZ inst\" below to see opcode value options",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1142.0, 880.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1144.3224299065423, 804.0, 22.0, 20.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 507.0, 505.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 484.0, 90.0, 20.0 ],
                    "text": "choose opcode"
                }
            },
            {
                "box": {
                    "channels": 8,
                    "id": "obj-160",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 8,
                    "numoutlets": 11,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 835.0, 1741.0, 227.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 864.0, 842.0, 136.0, 74.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "GAIN OUT",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "GAIN OUT",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textcolor": [ 0.8705882352941177, 0.050980392156862744, 0.050980392156862744, 1.0 ],
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1287.0, 905.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1190.3224299065423, 804.0, 22.0, 20.0 ],
                    "text": "60"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1283.0, 1009.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 150.0, 20.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 256.0, 150.0, 87.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 0.8574766355140184, 280.0, 271.0, 47.0 ],
                    "text": "once folder with samples are loaded\nselect a sample from the menu below and create a new region for that sample."
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 144.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.107476635514018, 136.0, 150.0, 20.0 ],
                    "text": "sound folder path to disk"
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 144.0, 89.0, 150.0, 60.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 125.0, 72.0, 168.0, 33.0 ],
                    "text": "all samples live in one folder.\nSFZ Inst lives in same folder"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.0, 77.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1208.8971962616824, 30.738317757009344, 179.0, 20.0 ],
                    "text": "CAREFUL, no UNDO for UNDO"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1295.0, 52.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1288.3971962616824, 6.238317757009344, 142.0, 20.0 ],
                    "text": "multiple UNDO clicks OK"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1283.0, 2.0, 320.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1208.8971962616824, 50.73831775700935, 264.0, 22.0 ],
                    "text": "Use the Graphic Mapper for convenience"
                }
            },
            {
                "box": {
                    "annotation": "The opcode selected in section 3. Click any cell in its row. Copy requires a group scope; Delete removes the local assignment from the current scope.",
                    "fontface": 0,
                    "fontsize": 10.0,
                    "hint": "The opcode selected in section 3. Click any cell in its row. Copy requires a group scope; Delete removes the local assignment from the current scope.",
                    "id": "obj-157",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 375.0, 449.0, 1275.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 950.0, 531.0, 230.0, 18.0 ],
                    "text": "Selected opcode: ampeg_release",
                    "varname": "selected_opcode_label"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.7058823529411765, 0.0, 1.0, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-156",
                    "linecount": 6,
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 389.0, 211.0, 1179.0, 864.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Menlo",
                                    "fontsize": 17.0,
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 507.0, 145.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 39.0, 311.0, 145.0, 26.0 ],
                                    "text": "<effect>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "obj-6",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 507.0, 436.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 5,
                                    "presentation_rect": [ 195.0, 311.0, 324.0, 85.0 ],
                                    "text": "<effect> defines one shared audio processor. Place all <effect> blocks at the top of the SFZ instrument, before <control> and <global>. This placement is optional; bus routing (sends) determines which regions feed each effect."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 646.5, 504.0, 429.0, 65.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 8,
                                    "presentation_rect": [ 665.0, 311.0, 254.0, 123.0 ],
                                    "text": "fx1, fx2 are predefined identifiers meaning \"effect bus 1\", “effect bus 2.”\nopcode bus=fx2 places the processor on effect bus 2\neffect2=30 sends a region’s audio to it at 30%.\nfx2tomain=100 returns that bus to the output at 100%."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "obj-2",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 497.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 560.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Menlo",
                                    "fontsize": 17.0,
                                    "id": "name-control",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 236.0, 145.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 378.0, 145.0, 26.0 ],
                                    "text": "<control>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "meaning-control",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 236.0, 300.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 180.0, 378.0, 300.0, 53.0 ],
                                    "text": "Special setup directives, such as sample-folder\npaths, initial MIDI-controller values and labels.\nUsually placed before the global header."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "example-control",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 647.0, 236.0, 257.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 650.0, 378.0, 257.0, 50.0 ],
                                    "text": "Where samples are found; controller setup.\ndefault_path=samples/\nset_cc1=0"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "rule-control",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 224.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 448.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "obj-4",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 11.0, 1091.0, 67.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 18.0, 26.0, 894.0, 87.0 ],
                                    "text": "An OPCODE is a named instruction written into an SFZ INSTRUMENT file and loaded into the MaxMSP sampler object sfizz~.  OPCODES describe what sample to play, when to playit, or how to play it. \nOPCODES are written as a single string with no spaces. (e.g. pitch_keycenter=60 where 60 is the value (midi key 60)). "
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 395.0, 583.0, 100.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 393.0, 569.0, 560.0, 21.0 ],
                                    "text": "RESULT"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 135.0, 966.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 52.0, 104.0, 1050.0, 27.0 ],
                                    "text": "<control> is for special set-up directives that remain fixed for the SFZ INSTRUMENT  (e.g. path to sample folder)"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial Bold",
                                    "fontsize": 18.0,
                                    "id": "intro",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 32.0, 83.0, 877.0, 47.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 58.0, 1454.0, 47.0 ],
                                    "text": "Opcodes are assigned to one or more HEADERS: <global>, <group>, <region>, <control>, or <effect>.\nEach HEADER has a SCOPE defining how the opcodes will apply within the SFZ INSTRUMENT."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "h1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 201.0, 63.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 96.0, 130.0, 21.0 ],
                                    "text": "HEADER"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "h2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 201.0, 102.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 180.0, 96.0, 442.0, 21.0 ],
                                    "text": "WHAT IT DOES"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "h3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 650.0, 201.0, 94.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 650.0, 96.0, 422.0, 21.0 ],
                                    "text": "TYPICAL USE"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "top-rule",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 303.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 120.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Menlo",
                                    "fontsize": 17.0,
                                    "id": "name-global",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 315.0, 145.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 132.0, 145.0, 26.0 ],
                                    "text": "<global>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "meaning-global",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 315.0, 342.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 180.0, 132.0, 312.0, 38.0 ],
                                    "text": "Shared playback defaults for <groups> and <regions>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "example-global",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.0, 315.0, 520.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 5,
                                    "presentation_rect": [ 650.0, 132.0, 289.0, 79.0 ],
                                    "text": "Common <global> opcode is volume=-6 (overall volume on output)\nCommon <global> opcode is ampeg_release=0.4 (for release time of sample in seconds)"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "rule-global",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 359.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 202.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Menlo",
                                    "fontsize": 17.0,
                                    "id": "name-group",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 370.0, 145.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 214.0, 145.0, 26.0 ],
                                    "text": "<group>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "meaning-group",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 370.0, 435.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 180.0, 214.0, 328.0, 69.0 ],
                                    "text": "A <group> is a collection of <regions>.\nA new group begins a different collection.\n<group> opcodes apply to all the regions and will override <global> "
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "example-group",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 650.0, 370.0, 435.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 6,
                                    "presentation_rect": [ 650.0, 214.0, 199.0, 94.0 ],
                                    "text": "Common <group> opcode is: lovel=1, hivel=45 (sample selection range)\n(i.e. all samples in this group will only trigger when velocity is in the range)"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "rule-group",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 427.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 284.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Menlo",
                                    "fontsize": 17.0,
                                    "id": "name-region",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 439.0, 145.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 296.0, 145.0, 26.0 ],
                                    "text": "<region>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "meaning-region",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 439.0, 419.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 180.0, 296.0, 324.0, 69.0 ],
                                    "text": "A <region> is one playable sample mapping: what plays, when\nit triggers, and how it behaves. The same soundfile\ncan be mapped in more than one region."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "example-region",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 646.5, 439.0, 429.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 5,
                                    "presentation_rect": [ 650.0, 296.0, 253.0, 79.0 ],
                                    "text": "<region> assigns a sample to a note or key range.\nCommon <region> includes sample name and key range: sample=piano_C4.wav key=60 lovel=1 hivel=127"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "rule-region",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 574.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 366.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "override",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 546.0, 168.0, 580.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 462.0, 1050.0, 27.0 ],
                                    "text": "<GROUP> overrides <GLOBAL>  •  <REGION> overrides <GROUP>"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial Bold",
                                    "fontsize": 18.0,
                                    "id": "override-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 168.0, 477.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 492.0, 1441.0, 27.0 ],
                                    "text": "<global>, <group>, <region> can override one another:"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "example-heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 579.0, 100.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 532.0, 560.0, 21.0 ],
                                    "text": "EXAMPLE SFZ"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Menlo",
                                    "fontsize": 13.0,
                                    "id": "sfz-example",
                                    "linecount": 10,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 609.0, 369.0, 158.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 10,
                                    "presentation_rect": [ 24.0, 562.0, 369.0, 158.0 ],
                                    "text": "<control> default_path=samples/\n\n<global> volume=-6 ampeg_release=0.4\n\n<group> pan=-30\n<region> sample=piano_C4.wav key=60\n<region> sample=piano_D4.wav key=62 volume=-12\n\n<group> pan=64\n<region> sample=piano_E4.wav key=64"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "interpretation",
                                    "linecount": 10,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 397.0, 609.0, 455.0, 163.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 11,
                                    "presentation_rect": [ 650.0, 562.0, 284.0, 179.0 ],
                                    "text": "All three samples come from samples/.\n\nAll three have the same volume output and inherit a 0.4-second release.\n\nC4 and D4 share pan=-30 from their group.\n\nD4 overrides its volume to -12 dB.\n\nE4 uses pan=64 from the second group.\nC4 and E4 retain the global volume of -6 dB."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.55, 0.55, 0.55, 1.0 ],
                                    "id": "bottom-rule",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 774.0, 1048.0, 4.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 760.0, 1048.0, 4.0 ],
                                    "rounded": 0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "builder",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 784.0, 678.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 775.0, 678.0, 36.0 ],
                                    "text": "IN THE BUILDER: Region Table shows fixed common columns. Opcodes for Scope edits the selected block.\nBlank region cells inherit settings or use sampler defaults. <group> is distinct from the group= voice-choking opcode."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "sources",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 824.0, 393.0, 31.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 24.0, 831.0, 393.0, 31.0 ],
                                    "text": "SFZ reference: sfzformat.com/headers/global/  |  sfzformat.com/headers/group/\nsfzformat.com/headers/region/  |  sfzformat.com/headers/control/"
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 1400.0, 920.0, 100.0, 102.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 712.0, 7.738317757009344, 450.0, 24.0 ],
                    "text": "p READ_ME_opcodes_global_group_region_control_effects_explained"
                }
            },
            {
                "box": {
                    "annotation": "Play the current instrument across MIDI 0–127. Add all samples starts at the far left (MIDI 0). Enable Audio. The Note box follows your key; releasing sends note-off.",
                    "hint": "Play the current instrument across MIDI 0–127. Add all samples starts at the far left (MIDI 0). Enable Audio. The Note box follows your key; releasing sends note-off.",
                    "id": "obj-155",
                    "maxclass": "kslider",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 0,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 808.0, 886.0, 525.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 954.0, 766.0, 525.0, 34.0 ],
                    "range": 128,
                    "varname": "main_keyboard"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 61.0, 1661.0, 215.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "ec_sfz_builder.js",
                        "parameter_enable": 0
                    },
                    "text": "js ec_sfz_builder.js",
                    "varname": "engine"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 23.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 12.0, 390.0, 32.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.607476635514018, 3.7383177570093458, 332.0, 32.0 ],
                    "text": "EC  /  SFZ FILE BUILDER v4.2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 420.0, 20.0, 320.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 8.738317757009344, 360.0, 22.0 ],
                    "text": "Build and Edit SFZ files for use with SFIZZ~ in Max/MSP"
                }
            },
            {
                "box": {
                    "annotation": "Start a blank SFZ instrument and clear the sample lists, region table, mapper and playback. Files on disk are unchanged. Undo restores the previous instrument and sample list.",
                    "bgcolor": [ 0.611764705882353, 0.5490196078431373, 0.058823529411764705, 1.0 ],
                    "fontsize": 14.0,
                    "hint": "Start a blank SFZ instrument and clear the sample lists, region table, mapper and playback. Files on disk are unchanged. Undo restores the previous instrument and sample list.",
                    "id": "obj-5",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 51.0, 58.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.607476635514018, 42.990654205607484, 179.0, 25.0 ],
                    "text": "New blank SFZ file",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "New blank SFZ file",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 960.0, 215.0, 22.0 ],
                    "text": "go new"
                }
            },
            {
                "box": {
                    "annotation": "Choose an SFZ file. Its containing folder becomes the SFZ folder; samples resolve from there.",
                    "bgcolor": [ 0.19215686274509805, 0.611764705882353, 0.058823529411764705, 1.0 ],
                    "fontsize": 14.0,
                    "hint": "Choose an SFZ file. Its containing folder becomes the SFZ folder; samples resolve from there.",
                    "id": "obj-7",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 85.0, 51.0, 105.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 524.0303738317757, 39.0, 182.0, 25.0 ],
                    "text": "Open SFZ file from disk",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Open SFZ file from disk",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 960.0, 215.0, 22.0 ],
                    "text": "go open_dialog"
                }
            },
            {
                "box": {
                    "annotation": "Load the included three-region demonstration instrument.",
                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Load the included three-region demonstration instrument.",
                    "id": "obj-9",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 197.0, 51.0, 66.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1062.0, 39.0, 140.71495327102804, 25.0 ],
                    "text": "Load demo example",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Load demo example",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 1661.0, 64.0, 22.0 ],
                    "text": "go demo"
                }
            },
            {
                "box": {
                    "annotation": "Undo the last applied model change. Apply or revert current table/text drafts first. Disk files are unchanged.",
                    "bgcolor": [ 0.611764705882353, 0.058823529411764705, 0.058823529411764705, 1.0 ],
                    "fontsize": 18.0,
                    "hint": "Undo the last applied model change. Apply or revert current table/text drafts first. Disk files are unchanged.",
                    "id": "obj-11",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 270.0, 51.0, 66.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1208.8971962616824, 3.7383177570093458, 78.24299065420564, 25.0 ],
                    "text": "UNDO",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "UNDO",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 960.0, 215.0, 22.0 ],
                    "text": "go undo"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-13",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 354.0, 55.0, 75.0, 93.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 310.0, 36.0, 210.0, 31.0 ],
                    "text": "Filename: include .sfz suffix.\nSave your instrument in its sample folder."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.212, 0.776, 0.016, 1.0 ],
                    "fontname": "Menlo",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "outputmode": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 423.0, 51.0, 275.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 522.0, 70.0, 274.9439252336448, 25.0 ],
                    "tabmode": 0,
                    "text": "My_Instrument.sfz",
                    "varname": "filename_input",
                    "wordwrap": 0
                }
            },
            {
                "box": {
                    "annotation": "Choose a filename and folder. The current name, including .sfz, is filled in for you.",
                    "bgcolor": [ 0.21176470588235294, 0.7764705882352941, 0.01568627450980392, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Choose a filename and folder. The current name, including .sfz, is filled in for you.",
                    "id": "obj-15",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 708.0, 51.0, 75.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 924.3224299065423, 71.0, 37.0, 25.0 ],
                    "text": "Save",
                    "texton": "Save",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 960.0, 215.0, 22.0 ],
                    "text": "go save"
                }
            },
            {
                "box": {
                    "annotation": "Save under current filename or a new name or in another folder. Must keep .sfz as suffix is required.",
                    "bgcolor": [ 0.21176470588235294, 0.7764705882352941, 0.01568627450980392, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Save under current filename or a new name or in another folder. Must keep .sfz as suffix is required.",
                    "id": "obj-17",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 791.0, 51.0, 96.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 800.3224299065423, 71.0, 116.0, 25.0 ],
                    "text": "Save SFZ inst as…",
                    "texton": "Save SFZ inst as…",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1015.0, 215.0, 22.0 ],
                    "text": "go saveas_dialog"
                }
            },
            {
                "box": {
                    "annotation": "Save your named SFZ file and load that saved version into sfizz~. Basic audition also updates automatically when you add or apply edits.",
                    "bgcolor": [ 0.21176470588235294, 0.7764705882352941, 0.01568627450980392, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Save your named SFZ file and load that saved version into sfizz~. Basic audition also updates automatically when you add or apply edits.",
                    "id": "obj-19",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 895.0, 51.0, 116.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 965.3224299065423, 71.0, 142.5607476635514, 25.0 ],
                    "text": "Save and load for testing",
                    "texton": "Save and load for testing",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1015.0, 215.0, 22.0 ],
                    "text": "go save_load"
                }
            },
            {
                "box": {
                    "annotation": "Load the existing file from the displayed SFZ folder into sfizz~. Unsaved edits are not included.",
                    "bgcolor": [ 0.21176470588235294, 0.7764705882352941, 0.01568627450980392, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Load the existing file from the displayed SFZ folder into sfizz~. Unsaved edits are not included.",
                    "id": "obj-21",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1019.0, 51.0, 110.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1112.3224299065423, 71.0, 72.0, 25.0 ],
                    "text": "Load saved",
                    "texton": "Load saved",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1015.0, 215.0, 22.0 ],
                    "text": "go load_saved"
                }
            },
            {
                "box": {
                    "annotation": "Check the current SFZ for errors, missing samples and shared key ranges within each group. Shared keys may be intentional layers; the checker does not move or remove them.",
                    "bgcolor": [ 0.7764705882352941, 0.47843137254901963, 0.01568627450980392, 1.0 ],
                    "fontsize": 18.0,
                    "hint": "Check the current SFZ for errors, missing samples and shared key ranges within each group. Shared keys may be intentional layers; the checker does not move or remove them.",
                    "id": "obj-23",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1137.0, 51.0, 75.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 285.33411214953276, 762.0, 149.27336448598112, 25.0 ],
                    "text": "Check SFZ inst",
                    "texton": "Check SFZ inst",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1015.0, 215.0, 22.0 ],
                    "text": "go check"
                }
            },
            {
                "box": {
                    "annotation": "Open the larger audition keyboard. Save + load and enable Audio first; release the mouse for note-off.",
                    "bgcolor": [ 0.21176470588235294, 0.7764705882352941, 0.01568627450980392, 1.0 ],
                    "fontsize": 12.0,
                    "hidden": 1,
                    "hint": "Open the larger audition keyboard. Save + load and enable Audio first; release the mouse for note-off.",
                    "id": "obj-25",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1223.0, 51.0, 137.0, 25.0 ],
                    "text": "Keyboard…",
                    "texton": "Keyboard…",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 86.0, 1340.0, 19.0 ],
                    "text": "SFZ folder: Macintosh HD:/Users/edmundcampionm1/Documents/GitHub/music158a2026/Tools_158a_2026/ec_sfz_builder_editor_v4.2/Demo/wood_samples",
                    "varname": "project_path"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 119.0, 255.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.107476635514018, 77.5, 118.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "1  SOUND FILES",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Choose the folder for the Sound Files catalog. Then Add all samples to the selected scope’s group, or Add loaded samples to new group. Loading a folder alone does not create regions.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Choose the folder for the Sound Files catalog. Then Add all samples to the selected scope’s group, or Add loaded samples to new group. Loading a folder alone does not create regions.",
                    "id": "obj-28",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 148.0, 132.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.107476635514018, 110.0, 161.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Load sound folder…",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Load sound folder…",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1015.0, 215.0, 22.0 ],
                    "text": "go choosefolder"
                }
            },
            {
                "box": {
                    "annotation": "Refresh the sample list from the selected folder, including subfolders if enabled.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Refresh the sample list from the selected folder, including subfolders if enabled.",
                    "id": "obj-30",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 160.0, 148.0, 115.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 195.0, 110.0, 62.10747663551402, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Rescan",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Rescan",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1015.0, 215.0, 22.0 ],
                    "text": "rescan"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontname": "Menlo",
                    "fontsize": 10.0,
                    "id": "obj-32",
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "outputmode": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 181.0, 255.0, 39.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.6074766355140184, 157.01869158878503, 255.5, 63.10280373831776 ],
                    "readonly": 1,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "tabmode": 0,
                    "text": "Choose a sound folder",
                    "varname": "folder_path"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "checkedcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-33",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 228.0, 18.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.857476635514018, 261.0, 18.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        },
                        "uncheckedcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "uncheckedcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "varname": "recursive"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1070.0, 215.0, 22.0 ],
                    "text": "prepend recursive_scan"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 227.0, 230.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.85747663551402, 260.0, 98.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Include subfolders",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.6901960784313725, 0.7019607843137254, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.6901960784313725, 0.7019607843137254, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontsize": 12.0,
                    "id": "obj-37",
                    "items": "<empty>",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 288.0, 255.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1.8037383177570092, 342.0, 259.0, 22.0 ],
                    "textcolor": [ 0.0, 0.22745098039215686, 1.0, 1.0 ],
                    "varname": "sample_menu"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1070.0, 215.0, 22.0 ],
                    "text": "prepend sampleindex"
                }
            },
            {
                "box": {
                    "annotation": "Sample paths, one file per line. Scroll vertically for more files and horizontally for long paths; select and copy.",
                    "disablefind": 0,
                    "hint": "Sample paths, one file per line. Scroll vertically for more files and horizontally for long paths; select and copy.",
                    "id": "obj-39",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 319.0, 901.817757009346, 78.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 282.6074766355139, 98.57009345794393, 883.7149532710284, 129.0 ],
                    "rendermode": 0,
                    "url": "file://ec_sfz_textpane.html",
                    "varname": "sample_text"
                }
            },
            {
                "box": {
                    "annotation": "Select all sample paths in the scrolling pane, then press Cmd-C / Ctrl-C.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Select all sample paths in the scrolling pane, then press Cmd-C / Ctrl-C.",
                    "id": "obj-40",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 427.0, 255.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Select all sample= lines for copy",
                    "texton": "Select all sample= lines to copy",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1070.0, 215.0, 22.0 ],
                    "text": "go copy_samples"
                }
            },
            {
                "box": {
                    "annotation": "Add selected, Add all and the mapper sample menu share this rule. Existing key ranges are reserved regardless of velocity; deleted keys are reused. Change ranges or roots after adding in the Region Table or Graphic Mapper.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "Add selected, Add all and the mapper sample menu share this rule. Existing key ranges are reserved regardless of velocity; deleted keys are reused. Change ranges or roots after adding in the Region Table or Graphic Mapper.",
                    "id": "obj-42",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 460.0, 176.0, 43.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 4.803738317757009, 372.0, 176.0, 43.0 ],
                    "text": "Automatic placement\nLowest free MIDI key in the group.\nOne sample per key, starting at 0.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.69, 0.702, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontsize": 12.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-43",
                    "items": [ "Unmapped / edit later", ",", "Single key / one shot", ",", "Pitched splits / full range" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 89.0, 457.0, 186.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "import_mode"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1070.0, 215.0, 22.0 ],
                    "text": "prepend importmode"
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 491.0, 65.0, 19.0 ],
                    "text": "Roots",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.69, 0.702, 1.0 ],
                    "bgfillcolor_color1": [ 0.3764705882352941, 0.3843137254901961, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.2901960784313726, 0.30980392156862746, 0.30196078431372547, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontsize": 12.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-46",
                    "items": [ "Start + step", ",", "Filename suffix (C4 / 60)", ",", "WAV smpl metadata" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 89.0, 488.0, 186.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "root_mode"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1070.0, 215.0, 22.0 ],
                    "text": "prepend rootmode"
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 523.0, 39.0, 19.0 ],
                    "text": "Start",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-49",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 60.0, 518.0, 48.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "start_root"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1070.0, 215.0, 22.0 ],
                    "text": "prepend rootstart"
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 119.0, 523.0, 39.0, 19.0 ],
                    "text": "Step",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Legacy import setting. New sample additions now use the lowest free MIDI key in the destination group. Edit key ranges and roots in the Region Table or Graphic Mapper after adding.",
                    "id": "obj-52",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 160.0, 518.0, 48.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "root_step"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1125.0, 215.0, 22.0 ],
                    "text": "prepend rootstep"
                }
            },
            {
                "box": {
                    "annotation": "Velocity is the softest playing strength that triggers a new sample: 1 is softest, 127 is strongest. Together with “to”, this sets the velocity range for Add selected and Add all.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "Velocity is the softest playing strength that triggers a new sample: 1 is softest, 127 is strongest. Together with “to”, this sets the velocity range for Add selected and Add all.",
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 551.0, 59.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.803738317757009, 456.0, 59.0, 19.0 ],
                    "text": "Velocity",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Velocity is the softest playing strength that triggers a new sample: 1 is softest, 127 is strongest. Together with “to”, this sets the velocity range for Add selected and Add all.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Velocity is the softest playing strength that triggers a new sample: 1 is softest, 127 is strongest. Together with “to”, this sets the velocity range for Add selected and Add all.",
                    "id": "obj-55",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 84.0, 547.0, 48.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 68.80373831775701, 454.0, 48.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "low_velocity"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1125.0, 215.0, 22.0 ],
                    "text": "prepend lovel"
                }
            },
            {
                "box": {
                    "annotation": "“to” is the strongest velocity that triggers a new sample (1–127). Keep it at or above the first Velocity value. Use 1 to 127 for every playing strength.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontface": 0,
                    "fontsize": 11.0,
                    "hint": "“to” is the strongest velocity that triggers a new sample (1–127). Keep it at or above the first Velocity value. Use 1 to 127 for every playing strength.",
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 141.0, 552.0, 22.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 125.80373831775701, 456.0, 22.0, 19.0 ],
                    "text": "to",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "“to” is the strongest velocity that triggers a new sample (1–127). Keep it at or above the first Velocity value. Use 1 to 127 for every playing strength.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "“to” is the strongest velocity that triggers a new sample (1–127). Keep it at or above the first Velocity value. Use 1 to 127 for every playing strength.",
                    "id": "obj-58",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 169.0, 547.0, 48.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 154.803738317757, 454.0, 48.0, 22.0 ],
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "varname": "high_velocity"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1125.0, 215.0, 22.0 ],
                    "text": "prepend hivel"
                }
            },
            {
                "box": {
                    "annotation": "Add the selected sample to the lowest free MIDI key in the selected scope’s group. If the scope is global/control, use the first group; create one if needed. Uses the Velocity range and one-shot playback.",
                    "bgcolor": [ 1.0, 0.69, 0.702, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Add the selected sample to the lowest free MIDI key in the selected scope’s group. If the scope is global/control, use the first group; create one if needed. Uses the Velocity range and one-shot playback.",
                    "id": "obj-60",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 579.0, 123.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.803738317757009, 490.0, 199.10747663551402, 25.0 ],
                    "text": "Add selected sample as new region",
                    "textcolor": [ 0.0, 0.227, 1.0, 1.0 ],
                    "texton": "Add selected sample as new region",
                    "textoncolor": [ 0.0, 0.227, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1125.0, 215.0, 22.0 ],
                    "text": "go import_one"
                }
            },
            {
                "box": {
                    "annotation": "Add all listed samples to the lowest free MIDI keys in the selected scope’s group. Fills holes from 0 upward and skips existing key ranges. Uses the Velocity range and one-shot playback. If the whole batch will not fit, no samples are added.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Add all listed samples to the lowest free MIDI keys in the selected scope’s group. Fills holes from 0 upward and skips existing key ranges. Uses the Velocity range and one-shot playback. If the whole batch will not fit, no samples are added.",
                    "id": "obj-62",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 151.0, 579.0, 124.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0607476635515, 71.0, 100.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Add all samples",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Add all samples",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1125.0, 215.0, 22.0 ],
                    "text": "go import_all"
                }
            },
            {
                "box": {
                    "annotation": "Add loaded samples to new group reuses the loaded folder. Duplicate to new group copies an existing group’s settings and mappings. These buttons are below the scope selector.",
                    "fontface": 0,
                    "fontsize": 10.0,
                    "hint": "Add loaded samples to new group reuses the loaded folder. Duplicate to new group copies an existing group’s settings and mappings. These buttons are below the scope selector.",
                    "id": "obj-64",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 610.0, 185.0, 62.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 4.857476635514018, 222.1214953271028, 264.25, 40.0 ],
                    "text": "Load folder fills the sound catalog.\nAdd all uses the selected scope’s group.\nTo reuse the catalog, use the group buttons below."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 653.0, 255.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.107476635514018, 564.0, 264.0, 20.0 ],
                    "text": "QUICK OPCODE INDEX"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-66",
                    "items": [ "All opcodes", ",", "Headers and paths", ",", "Key and pitch", ",", "Playback and note-off", ",", "Amplitude envelope", ",", "Velocity, gain and pan", ",", "Sequences and voice groups", ",", "Filters and controllers" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 678.0, 255.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.107476635514018, 589.0, 264.0, 22.0 ],
                    "varname": "category_menu"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1125.0, 215.0, 22.0 ],
                    "text": "prepend category"
                }
            },
            {
                "box": {
                    "annotation": "Annotated SFZ opcode index",
                    "disablefind": 0,
                    "hint": "Annotated SFZ opcode index",
                    "id": "obj-68",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 709.0, 255.0, 148.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.107476635514018, 620.0, 253.0, 278.0 ],
                    "rendermode": 0,
                    "url": "file://ec_sfz_textpane.html",
                    "varname": "reference_text"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 119.0, 350.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.74299065420564, 228.0, 133.0, 38.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "2  REGION TABLE\n",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 122.0, 901.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 417.5, 228.0, 703.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "<region> samples with common local opcodes. (Add additional opcodes in section 3.) Blank cell = default values",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Fixed overview of common local opcodes. Other opcodes appear in section 3 and SFZ text. Blank cells inherit group/global settings.",
                    "bordercolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "coldef": [
                        [ 0, 38, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 1 ],
                        [ 1, 48, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 1 ],
                        [ 2, 230, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 3, 116, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 4, 52, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 5, 52, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 6, 50, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 7, 50, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 8, 48, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 9, 53, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 10, 45, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 11, 112, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ]
                    ],
                    "cols": 12,
                    "colwidth": 80,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hint": "Fixed overview of common local opcodes. Other opcodes appear in section 3 and SFZ text. Blank cells inherit group/global settings.",
                    "id": "obj-71",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 295.0, 149.0, 900.3224299065423, 154.0 ],
                    "precision": 4,
                    "presentation": 1,
                    "presentation_rect": [ 284.0, 274.0, 900.3224299065423, 154.0 ],
                    "rowhead": 1,
                    "rowheight": 26,
                    "rows": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "selmode": 5,
                    "varname": "regions"
                }
            },
            {
                "box": {
                    "annotation": "Commit edits from both tables and format each header/opcode on its own line. This does not save to disk.",
                    "bgcolor": [ 0.9058823529411765, 0.03529411764705882, 0.03529411764705882, 1.0 ],
                    "fontsize": 18.0,
                    "hint": "Commit edits from both tables and format each header/opcode on its own line. This does not save to disk.",
                    "id": "obj-72",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 295.0, 346.0, 138.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 282.24299065420564, 454.0, 138.0, 25.0 ],
                    "text": "Compile tables",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Compile tables",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-73",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1180.0, 215.0, 22.0 ],
                    "text": "go compile"
                }
            },
            {
                "box": {
                    "annotation": "Discard uncompiled table edits and restore the current model. Handwritten program drafts are retained.",
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Discard uncompiled table edits and restore the current model. Handwritten program drafts are retained.",
                    "id": "obj-74",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 441.0, 346.0, 119.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1060.857476635514, 432.0, 119.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Revert tables",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Revert tables",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-75",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1180.0, 215.0, 22.0 ],
                    "text": "go revert_tables"
                }
            },
            {
                "box": {
                    "annotation": "Show the selected region’s opcodes in section 3. First click a region row in section 2.",
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Show the selected region’s opcodes in section 3. First click a region row in section 2.",
                    "id": "obj-76",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 568.0, 346.0, 120.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 840.0, 432.0, 93.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Edit selected",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Edit selected",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-77",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1180.0, 215.0, 22.0 ],
                    "text": "go edit_selected"
                }
            },
            {
                "box": {
                    "annotation": "Duplicate into the lowest free range in the same group, preserving its width, velocity range and other opcodes. The root moves with the range. Stops if no suitable space remains.",
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Duplicate into the lowest free range in the same group, preserving its width, velocity range and other opcodes. The root moves with the range. Stops if no suitable space remains.",
                    "id": "obj-78",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 696.0, 346.0, 95.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 948.0, 432.0, 95.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Duplicate",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Duplicate",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1180.0, 215.0, 22.0 ],
                    "text": "go duplicate"
                }
            },
            {
                "box": {
                    "annotation": "Remove the selected region from the program. Undo restores the applied removal.",
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Remove the selected region from the program. Undo restores the applied removal.",
                    "id": "obj-80",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 799.0, 346.0, 117.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 727.0, 432.0, 93.94392523364479, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Delete region",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Delete region",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1180.0, 215.0, 22.0 ],
                    "text": "go delete"
                }
            },
            {
                "box": {
                    "annotation": "Create and select an empty group. Add all samples reuses the current Sound Files catalog and fills this group from MIDI 0 upward. No folder reload is needed.",
                    "bgcolor": [ 0.0392156862745098, 0.6039215686274509, 0.7411764705882353, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Create and select an empty group. Add all samples reuses the current Sound Files catalog and fills this group from MIDI 0 upward. No folder reload is needed.",
                    "id": "obj-82",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 924.0, 346.0, 106.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 818.0, 504.0, 106.0, 25.0 ],
                    "text": "Add new group",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Add new group",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-83",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1180.0, 215.0, 22.0 ],
                    "text": "go newgroup"
                }
            },
            {
                "box": {
                    "annotation": "Select the first global block, or create one. Its settings apply to subsequent groups/regions.",
                    "bgcolor": [ 0.0392156862745098, 0.6039215686274509, 0.7411764705882353, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Select the first global block, or create one. Its settings apply to subsequent groups/regions.",
                    "id": "obj-84",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1038.0, 346.0, 72.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 933.2009345794393, 505.0, 114.30841121495325, 25.0 ],
                    "text": "Add new global",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Add new global",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1235.0, 215.0, 22.0 ],
                    "text": "go addglobal"
                }
            },
            {
                "box": {
                    "annotation": "Select or create the control block for settings such as default_path.",
                    "bgcolor": [ 0.0392156862745098, 0.6039215686274509, 0.7411764705882353, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Select or create the control block for settings such as default_path.",
                    "id": "obj-86",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1118.0, 346.0, 77.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1061.357476635514, 505.0, 118.0, 25.0 ],
                    "text": "Add new control",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Add new control",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1235.0, 215.0, 22.0 ],
                    "text": "go addcontrol"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 382.0, 186.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0607476635515, 484.0, 186.0, 20.0 ],
                    "text": "3  OPCODES FOR SCOPE"
                }
            },
            {
                "box": {
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.050980392156862744, 0.592156862745098, 0.8705882352941177, 1.0 ],
                    "bgfillcolor_color1": [ 0.050980392156862744, 0.592156862745098, 0.8705882352941177, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 12.0,
                    "id": "obj-90",
                    "items": "<global> #1",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 485.0, 378.0, 410.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0607476635515, 502.0, 203.0, 22.0 ],
                    "varname": "scope_menu"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1235.0, 215.0, 22.0 ],
                    "text": "prepend scopeindex"
                }
            },
            {
                "box": {
                    "annotation": "Choose an opcode, then Add opcode + comment. output inserts output=0. With sfizz~ @outputs 8: 0 routes to channels 1/2, 1 to 3/4, 2 to 5/6, 3 to 7/8. Available under All opcodes and Velocity, gain and pan.",
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.051, 0.592, 0.871, 1.0 ],
                    "bgfillcolor_color1": [ 0.051, 0.592, 0.871, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 12.0,
                    "hint": "Choose an opcode, then Add opcode + comment. output inserts output=0. With sfizz~ @outputs 8: 0 routes to channels 1/2, 1 to 3/4, 2 to 5/6, 3 to 7/8. Available under All opcodes and Velocity, gain and pan.",
                    "id": "obj-92",
                    "items": [ "sample", ",", "default_path", ",", "key", ",", "lokey", ",", "hikey", ",", "pitch_keycenter", ",", "pitch_keytrack", ",", "transpose", ",", "tune", ",", "bend_up", ",", "bend_down", ",", "trigger", ",", "loop_mode", ",", "loop_start", ",", "loop_end", ",", "offset", ",", "end", ",", "delay", ",", "count", ",", "ampeg_delay", ",", "ampeg_attack", ",", "ampeg_hold", ",", "ampeg_decay", ",", "ampeg_sustain", ",", "ampeg_release", ",", "lovel", ",", "hivel", ",", "amp_veltrack", ",", "volume", ",", "pan", ",", "output", ",", "seq_length", ",", "seq_position", ",", "group", ",", "off_by", ",", "off_mode", ",", "lorand", ",", "hirand", ",", "fil_type", ",", "cutoff", ",", "resonance", ",", "cutoff_oncc1", ",", "locc64", ",", "hicc64" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 904.0, 378.0, 251.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 496.0, 502.0, 120.0, 22.0 ],
                    "varname": "opcode_menu"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1235.0, 215.0, 22.0 ],
                    "text": "prepend refindex"
                }
            },
            {
                "box": {
                    "annotation": "Add the chosen opcode and an explanatory comment to the selected scope. Edit its Value cell.",
                    "bgcolor": [ 0.027450980392156862, 0.3215686274509804, 0.4745098039215686, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Add the chosen opcode and an explanatory comment to the selected scope. Edit its Value cell.",
                    "id": "obj-94",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1163.0, 378.0, 197.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 625.0, 501.0, 148.0, 25.0 ],
                    "text": "Add opcode + comment",
                    "texton": "Add opcode + comment"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1235.0, 215.0, 22.0 ],
                    "text": "go add_opcode"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-96",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 408.0, 1065.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0607476635515, 531.0, 661.9392523364485, 18.0 ],
                    "text": "<global> #1 | Blank cells inherit. Click an opcode row for Copy/Delete.",
                    "varname": "scope_details"
                }
            },
            {
                "box": {
                    "annotation": "Click an opcode row to select it for Copy/Delete. Double-click a Value and press Return to finish editing. Copy opcode to regions uses the selected group; Delete selected opcode applies immediately. Other table edits can still use Compile tables.",
                    "coldef": [
                        [ 0, 42, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 1, 150, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 1 ],
                        [ 2, 170, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 0 ],
                        [ 3, 514, 1, 0.0, 0.0, 0.0, 1.0, 1, 0.0, 0.0, 0.0, 1.0, 0, -1, 1 ]
                    ],
                    "cols": 4,
                    "colwidth": 110,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hint": "Click an opcode row to select it for Copy/Delete. Double-click a Value and press Return to finish editing. Copy opcode to regions uses the selected group; Delete selected opcode applies immediately. Other table edits can still use Compile tables.",
                    "id": "obj-97",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "list", "", "", "" ],
                    "patching_rect": [ 295.0, 433.0, 896.3644859813082, 177.0 ],
                    "precision": 4,
                    "presentation": 1,
                    "presentation_rect": [ 285.33411214953276, 584.0, 896.3644859813082, 177.0 ],
                    "rowhead": 1,
                    "rowheight": 26,
                    "rows": 3,
                    "selmode": 5,
                    "varname": "opcodes"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-99",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 607.0, 190.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1186.0, 98.57009345794393, 131.77570093457942, 22.0 ],
                    "text": "4  SFZ PROGRAM"
                }
            },
            {
                "box": {
                    "annotation": "Apply handwritten SFZ edits and rebuild the tables. Apply or revert table drafts first.",
                    "fontsize": 12.0,
                    "hint": "Apply handwritten SFZ edits and rebuild the tables. Apply or revert table drafts first.",
                    "id": "obj-100",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 491.0, 603.0, 106.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1190.0, 167.0, 75.70093457943925, 25.0 ],
                    "text": "Apply text",
                    "texton": "Apply text"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1235.0, 215.0, 22.0 ],
                    "text": "go apply_text"
                }
            },
            {
                "box": {
                    "annotation": "Discard handwritten program drafts and restore the applied model. Table drafts are retained.",
                    "fontsize": 12.0,
                    "hint": "Discard handwritten program drafts and restore the applied model. Table drafts are retained.",
                    "id": "obj-102",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 605.0, 603.0, 106.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1278.0, 167.0, 82.2429906542056, 25.0 ],
                    "text": "Revert text",
                    "texton": "Revert text"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1290.0, 215.0, 22.0 ],
                    "text": "go revert_text"
                }
            },
            {
                "box": {
                    "annotation": "Select the complete SFZ program, then press Cmd-C / Ctrl-C.",
                    "fontsize": 12.0,
                    "hint": "Select the complete SFZ program, then press Cmd-C / Ctrl-C.",
                    "id": "obj-104",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 719.0, 603.0, 124.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1370.0, 167.0, 106.0, 25.0 ],
                    "text": "Select to copy",
                    "texton": "Select to copy"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-105",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1290.0, 215.0, 22.0 ],
                    "text": "go copy_program"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 11.0,
                    "id": "obj-106",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 855.0, 607.0, 505.0, 31.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 1186.0, 122.57009345794393, 290.0, 43.0 ],
                    "text": "Table edits compile here. Handwritten edits require Apply text. This window post the entire SFZ Instrument being edited."
                }
            },
            {
                "box": {
                    "annotation": "SFZ program — edit, scroll, then Apply text",
                    "disablefind": 0,
                    "hint": "SFZ program — edit, scroll, then Apply text",
                    "id": "obj-107",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 295.0, 636.0, 1065.0, 159.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1190.0, 194.0, 286.0, 567.0 ],
                    "rendermode": 0,
                    "url": "file://ec_sfz_textpane.html",
                    "varname": "editor"
                }
            },
            {
                "box": {
                    "annotation": "Validation results",
                    "disablefind": 0,
                    "hint": "Validation results",
                    "id": "obj-108",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 295.0, 804.0, 635.0, 53.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 436.6074766355139, 763.0, 513.0, 37.0 ],
                    "rendermode": 0,
                    "url": "file://ec_sfz_textpane.html",
                    "varname": "report"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 947.0, 804.0, 95.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 954.0, 804.0, 95.0, 20.0 ],
                    "text": "AUDITION"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-110",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 947.0, 837.0, 33.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1144.3224299065423, 833.0, 33.0, 18.0 ],
                    "text": "Note"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-111",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 981.0, 831.0, 48.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1177.3224299065423, 831.0, 48.0, 22.0 ],
                    "varname": "pitch_num"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1290.0, 215.0, 22.0 ],
                    "text": "prepend pitch"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-113",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1038.0, 837.0, 26.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1234.3224299065423, 833.0, 26.0, 18.0 ],
                    "text": "Vel"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-114",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1065.0, 831.0, 48.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1262.3224299065423, 831.0, 48.0, 22.0 ],
                    "varname": "velocity_num"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1290.0, 215.0, 22.0 ],
                    "text": "prepend velocity"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-116",
                    "maxclass": "number",
                    "maximum": 30000,
                    "minimum": 20,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1123.0, 831.0, 58.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1319.3224299065423, 831.0, 58.0, 22.0 ],
                    "varname": "duration_num"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1290.0, 215.0, 22.0 ],
                    "text": "prepend duration"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-118",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1186.0, 837.0, 22.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1382.3224299065423, 833.0, 22.0, 18.0 ],
                    "text": "ms"
                }
            },
            {
                "box": {
                    "annotation": "Play a timed test note using the displayed pitch, velocity and duration in milliseconds.",
                    "fontsize": 12.0,
                    "hint": "Play a timed test note using the displayed pitch, velocity and duration in milliseconds.",
                    "id": "obj-119",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1215.0, 830.0, 63.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1412.3224299065423, 830.0, 63.0, 25.0 ],
                    "text": "Note",
                    "texton": "Note"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-120",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1290.0, 215.0, 22.0 ],
                    "text": "timed"
                }
            },
            {
                "box": {
                    "annotation": "Stop all voices, release sustain, cancel timed notes and clear both keyboards.",
                    "fontsize": 12.0,
                    "hint": "Stop all voices, release sustain, cancel timed notes and clear both keyboards.",
                    "id": "obj-121",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1287.0, 830.0, 73.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1401.3224299065423, 804.0, 73.0, 25.0 ],
                    "text": "Panic",
                    "texton": "Panic"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1345.0, 215.0, 22.0 ],
                    "text": "panic"
                }
            },
            {
                "box": {
                    "annotation": "Directly enable or disable the external MIDI gate. Choose a device in the menu. Off stops held notes; onscreen keyboards still work. MIDI received flashes before this gate.",
                    "hint": "Directly enable or disable the external MIDI gate. Choose a device in the menu. Off stops held notes; onscreen keyboards still work. MIDI received flashes before this gate.",
                    "id": "obj-123",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1054.0, 806.0, 18.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1215.0, 870.0, 18.0, 18.0 ],
                    "varname": "midi_toggle"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-124",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1345.0, 215.0, 22.0 ],
                    "text": "prepend midienable"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-125",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1079.0, 806.0, 97.0, 40.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 1235.3878504672898, 869.0, 33.0, 40.0 ],
                    "text": "MIDI \ninput\non/off"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-126",
                    "maxclass": "flonum",
                    "maximum": 0.0,
                    "minimum": -70.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1196.0, 802.0, 58.0, 22.0 ],
                    "varname": "output_db"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-127",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1260.0, 806.0, 24.0, 18.0 ],
                    "text": "dB"
                }
            },
            {
                "box": {
                    "annotation": "Add output in section 3. Use a group scope to route all its regions, or a region scope to route one sample. The value is a zero-based stereo-pair index, not an individual channel number.",
                    "fontface": 0,
                    "fontsize": 12.0,
                    "hint": "Add output in section 3. Use a group scope to route all its regions, or a region scope to route one sample. The value is a zero-based stereo-pair index, not an individual channel number.",
                    "id": "obj-129",
                    "linecount": 17,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1340.0, 804.0, 45.0, 234.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 460.9439252336447, 852.5, 360.0, 33.0 ],
                    "text": "@outputs 16 = 8 stereo pairs. output=0 → ch 1/2\noutput=1 → 3/4; output=2 → 5/6; output=3 → 7/8"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 650.0, 180.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "k1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 15.0, 600.0, 23.0 ],
                                    "text": "Keyboard audition — click Save + load in the main window first."
                                }
                            },
                            {
                                "box": {
                                    "hint": "Play the loaded SFZ. Save + load and enable Audio first. Mouse height sets velocity; release sends note-off.",
                                    "id": "k2",
                                    "maxclass": "kslider",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 20.0, 50.0, 600.0, 80.0 ],
                                    "range": 61,
                                    "varname": "popup_keyboard"
                                }
                            },
                            {
                                "box": {
                                    "id": "k3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 140.0, 85.0, 22.0 ],
                                    "text": "pack 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "k4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 140.0, 135.0, 22.0 ],
                                    "text": "s #0-keyboard"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "k3", 1 ],
                                    "source": [ "k2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "k3", 0 ],
                                    "source": [ "k2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "k4", 0 ],
                                    "source": [ "k3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 470.0, 1345.0, 215.0, 22.0 ],
                    "text": "p Keyboard",
                    "varname": "keyboard_window"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-131",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1345.0, 215.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1345.0, 215.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-134",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 902.0, 1340.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 282.2429906542056, 885.0, 592.2570093457944, 18.0 ],
                    "text": "No samples yet. Load a sound folder, then Add samples.",
                    "varname": "loaded_label"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1345.0, 215.0, 22.0 ],
                    "text": "r #0-keyboard"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 1400.0, 215.0, 22.0 ],
                    "text": "prepend keyboard_input"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 245.0, 1400.0, 215.0, 22.0 ],
                    "text": "notein none @matchport 1",
                    "varname": "midi_notein"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1400.0, 215.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "annotation": "Instrument player. Double-click to inspect the SFZ text currently loaded in sfizz~. The L/R meters show its audio output; enable Audio to hear it.",
                    "fontsize": 12.0,
                    "hint": "The shared sfizz~ sampler. Double-click to inspect its current instrument. Applied edits load a private preview automatically; Save keeps your named SFZ.",
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 16,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 835.0, 1612.0, 215.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 282.2429906542056, 858.0, 176.5, 22.0 ],
                    "text": "sfizz~ @outputs 16",
                    "varname": "sampler"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1400.0, 215.0, 22.0 ],
                    "text": "prepend volume"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 20.0, 1455.0, 215.0, 22.0 ],
                    "text": "opendialog fold",
                    "varname": "folder_dialog"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1455.0, 215.0, 22.0 ],
                    "text": "prepend folder"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 470.0, 1455.0, 215.0, 22.0 ],
                    "text": "opendialog .sfz",
                    "varname": "open_dialog"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 1455.0, 215.0, 22.0 ],
                    "text": "prepend opened"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "bang" ],
                    "patching_rect": [ 920.0, 1455.0, 215.0, 22.0 ],
                    "text": "savedialog",
                    "varname": "save_dialog"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1455.0, 215.0, 22.0 ],
                    "text": "prepend saveaspath"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 20.0, 1510.0, 215.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 245.0, 1510.0, 215.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-150",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1510.0, 215.0, 22.0 ],
                    "text": "initialize"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-151",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 306.0, 1549.0, 29.5, 22.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 920.0, 1510.0, 215.0, 22.0 ],
                    "text": "closebang"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-153",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1145.0, 1510.0, 215.0, 22.0 ],
                    "text": "close"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-154",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 930.0, 1340.0, 20.0 ],
                    "text": "Engine and audio routing. Tables, text editor, and graphical mapper share one SFZ model."
                }
            },
            {
                "box": {
                    "id": "web-sample_text",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1400.0, 1140.0, 230.0, 22.0 ],
                    "text": "prepend webpane sample_text"
                }
            },
            {
                "box": {
                    "id": "web-reference_text",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1400.0, 1180.0, 230.0, 22.0 ],
                    "text": "prepend webpane reference_text"
                }
            },
            {
                "box": {
                    "id": "web-editor",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1400.0, 1220.0, 230.0, 22.0 ],
                    "text": "prepend webpane editor"
                }
            },
            {
                "box": {
                    "id": "web-report",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1400.0, 1260.0, 230.0, 22.0 ],
                    "text": "prepend webpane report"
                }
            },
            {
                "box": {
                    "id": "main-key-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 1400.0, 85.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "annotation": "Update the Note integer and stored test pitch first; then send the keyboard note with its velocity.",
                    "id": "main-key-pitch-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 815.0, 1370.0, 45.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "annotation": "Open the SFZ Graphic Keyboard Sample Mapper. Changes update the tables and program automatically.",
                    "bgcolor": [ 0.7764705882352941, 0.01568627450980392, 0.01568627450980392, 1.0 ],
                    "fontsize": 14.0,
                    "hint": "Open the SFZ Graphic Keyboard Sample Mapper. Changes update the tables and program automatically.",
                    "id": "mapper-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1380.0, 51.0, 145.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1208.8971962616824, 70.0, 248.59813084112147, 27.0 ],
                    "text": "Graphic Keyboard Sample Mapper",
                    "texton": "Graphic Keyboard Sample Mapper",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "mapper-open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1380.0, 90.0, 45.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "mapper-pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1380.0, 122.0, 65.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "mapper-window",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 398.0, 134.0, 1192.0, 790.0 ],
                        "openinpresentation": 1,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "map-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 18.0, 810.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "disablefind": 0,
                                    "id": "map-view",
                                    "maxclass": "jweb",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 12.0, 12.0, 1176.0, 770.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 10.0, 12.0, 1176.0, 770.0 ],
                                    "rendermode": 0,
                                    "url": "file://ec_sfz_mapper.html",
                                    "varname": "mapper_view"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "map-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 850.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "map-close",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 200.0, 810.0, 70.0, 22.0 ],
                                    "text": "closebang"
                                }
                            },
                            {
                                "box": {
                                    "id": "map-close-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 810.0, 60.0, 22.0 ],
                                    "text": "closed"
                                }
                            },
                            {
                                "box": {
                                    "id": "map-active",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 500.0, 810.0, 50.0, 22.0 ],
                                    "text": "active"
                                }
                            },
                            {
                                "box": {
                                    "id": "map-focus",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 810.0, 95.0, 22.0 ],
                                    "text": "prepend focus"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "map-focus", 0 ],
                                    "source": [ "map-active", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "map-close-msg", 0 ],
                                    "source": [ "map-close", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "map-out", 0 ],
                                    "source": [ "map-close-msg", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "map-out", 0 ],
                                    "source": [ "map-focus", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "map-out", 0 ],
                                    "source": [ "map-view", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1100.0, 1450.0, 180.0, 22.0 ],
                    "text": "p Graphic_mapper",
                    "varname": "mapper_window"
                }
            },
            {
                "box": {
                    "id": "mapper-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1490.0, 110.0, 22.0 ],
                    "text": "prepend mapper"
                }
            },
            {
                "box": {
                    "id": "save-cancelled",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1150.0, 1455.0, 100.0, 22.0 ],
                    "text": "savecancelled"
                }
            },
            {
                "box": {
                    "annotation": "Clear every sample region, sample list and mapper view, and stop playback. Keep other group/global settings. Files on disk are never deleted. Undo restores the previous samples.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Clear every sample region, sample list and mapper view, and stop playback. Keep other group/global settings. Files on disk are never deleted. Undo restores the previous samples.",
                    "id": "clear-samples-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 151.0, 615.0, 124.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 388.0607476635515, 71.0, 119.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Clear all samples",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Clear all samples",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "clear-samples-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 920.0, 1160.0, 215.0, 22.0 ],
                    "text": "go clear_samples"
                }
            },
            {
                "box": {
                    "annotation": "Select the external MIDI input device, then enable MIDI input. Refresh scans connected inputs. No device is selected automatically.",
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.050980392156862744, 0.592156862745098, 0.8705882352941177, 1.0 ],
                    "bgfillcolor_color1": [ 0.050980392156862744, 0.592156862745098, 0.8705882352941177, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 12.0,
                    "hint": "Select the external MIDI input device, then enable MIDI input. Refresh scans connected inputs. No device is selected automatically.",
                    "id": "midi-device-menu",
                    "items": [ "Choose MIDI device…", ",", "IAC IAC-1", ",", "IAC IAC-2", ",", "IAC IAC-3", ",", "IAC IAC-4", ",", "IAC IAC-5", ",", "to Max 1", ",", "to Max 2" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1100.0, 1535.0, 230.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1266.8971962616824, 868.0, 148.0, 22.0 ],
                    "varname": "midi_device_menu"
                }
            },
            {
                "box": {
                    "annotation": "Refresh available MIDI input devices. The selected device is retained if it is still connected; otherwise MIDI input turns off.",
                    "bgcolor": [ 0.051, 0.592, 0.871, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Refresh available MIDI input devices. The selected device is retained if it is still connected; otherwise MIDI input turns off.",
                    "id": "midi-refresh-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1340.0, 1535.0, 58.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1417.3224299065423, 868.0, 57.0, 22.0 ],
                    "text": "Refresh",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Refresh",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-info",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1600.0, 175.0, 22.0 ],
                    "text": "midiinfo @autopollinput 1"
                }
            },
            {
                "box": {
                    "id": "midi-refresh",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1570.0, 40.0, 22.0 ],
                    "text": "-1",
                    "varname": "midi_refresh"
                }
            },
            {
                "box": {
                    "id": "midi-ports",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1630.0, 150.0, 22.0 ],
                    "text": "prepend midiports"
                }
            },
            {
                "box": {
                    "id": "midi-select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1340.0, 1570.0, 150.0, 22.0 ],
                    "text": "prepend midiportname"
                }
            },
            {
                "box": {
                    "id": "midi-input-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1435.0, 65.0, 22.0 ],
                    "text": "gate 1 0",
                    "varname": "midi_gate"
                }
            },
            {
                "box": {
                    "id": "midi-keyboard-input",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 800.0, 1570.0, 90.0, 22.0 ],
                    "text": "unpack 0 0",
                    "varname": "midi_keyboard"
                }
            },
            {
                "box": {
                    "id": "midi-switch-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 470.0, 1470.0, 150.0, 22.0 ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "midi-switch-off",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 640.0, 1470.0, 150.0, 22.0 ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "id": "midi-stop-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1505.0, 390.0, 22.0 ],
                    "text": "midievent 176 64 0, midievent 176 123 0, midievent 176 120 0"
                }
            },
            {
                "box": {
                    "id": "midi-clear-keys",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 640.0, 1540.0, 50.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "midi-native-port",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1705.0, 150.0, 22.0 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "midi-initial-off",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.0, 1505.0, 150.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "native-key-midi",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0, 1429.0, 150.0, 22.0 ],
                    "text": "prepend midievent 144"
                }
            },
            {
                "box": {
                    "id": "sampler-message-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 20.0, 1710.0, 150.0, 22.0 ],
                    "text": "route midievent"
                }
            },
            {
                "box": {
                    "id": "sampler-midi-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 200.0, 1710.0, 150.0, 22.0 ],
                    "text": "unpack i i i"
                }
            },
            {
                "box": {
                    "id": "sampler-midi-pack",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1710.0, 150.0, 22.0 ],
                    "text": "pack i i i"
                }
            },
            {
                "box": {
                    "id": "sampler-midi-prefix",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 560.0, 1710.0, 150.0, 22.0 ],
                    "text": "prepend midievent"
                }
            },
            {
                "box": {
                    "annotation": "Flashes when the selected MIDI device sends a note, even with MIDI input off. It confirms MIDI arrival, not audio.",
                    "hint": "Flashes when the selected MIDI device sends a note, even with MIDI input off. It confirms MIDI arrival, not audio.",
                    "id": "midi-activity",
                    "ignoreclick": 1,
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 245.0, 1470.0, 16.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1255.3224299065423, 806.0, 16.0, 16.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "midi-activity-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 1470.0, 110.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1277.3224299065423, 806.0, 110.0, 19.0 ],
                    "text": "MIDI received"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "audio-meter-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 704.0, 1694.0, 120.0, 20.0 ],
                    "text": "Audio output"
                }
            },
            {
                "box": {
                    "id": "midi-port-symbol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 1740.0, 150.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "midi-port-placeholder",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1100.0, 1775.0, 190.0, 22.0 ],
                    "text": "sel \"Choose MIDI device…\""
                }
            },
            {
                "box": {
                    "id": "midi-port-none",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1300.0, 1775.0, 80.0, 22.0 ],
                    "text": "port none"
                }
            },
            {
                "box": {
                    "annotation": "Enable Audio, then click for a brief quiet 440 Hz tone through the same L/R meters and audio output. This tests the output path without loading or changing your SFZ.",
                    "fontsize": 12.0,
                    "hint": "Enable Audio, then click for a brief quiet 440 Hz tone through the same L/R meters and audio output. This tests the output path without loading or changing your SFZ.",
                    "id": "audio-test-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 1568.0, 100.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1033.5, 856.0, 94.0, 25.0 ],
                    "text": "Test output",
                    "texton": "Test output"
                }
            },
            {
                "box": {
                    "id": "audio-test-envelope",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 395.0, 1795.0, 215.0, 22.0 ],
                    "text": "0, 0.0316 10 0.0316 250 0 40"
                }
            },
            {
                "box": {
                    "id": "audio-test-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 395.0, 1830.0, 100.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "audio-test-osc",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 430.0, 1603.0, 100.0, 22.0 ],
                    "text": "cycle~ 440"
                }
            },
            {
                "box": {
                    "id": "audio-test-gain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 430.0, 1638.0, 100.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "sampler-note-monitor",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 650.0, 1795.0, 140.0, 22.0 ],
                    "text": "route midievent"
                }
            },
            {
                "box": {
                    "id": "sampler-note-filter",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 650.0, 1830.0, 140.0, 22.0 ],
                    "text": "route 144"
                }
            },
            {
                "box": {
                    "annotation": "Flashes when note messages reach sfizz~. Audio is shown by the L/R meters.",
                    "hint": "Flashes when a note-on or note-off message reaches sfizz~ from either keyboard or the Note button. It does not confirm audio.",
                    "id": "sampler-note-activity",
                    "ignoreclick": 1,
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 650.0, 1865.0, 16.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1050.0, 806.0, 16.0, 16.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "sampler-note-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 675.0, 1865.0, 85.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1072.0, 804.0, 60.0, 20.0 ],
                    "text": "Note sent"
                }
            },
            {
                "box": {
                    "annotation": "Choose and move through numbered tutorial SFZ files.",
                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hint": "Open the numbered single-sample tutorial navigator.",
                    "id": "tutorial-open-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1500.0, 1600.0, 222.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 713.0, 39.0, 186.0, 25.0 ],
                    "text": "LOAD single-sample tutorial…",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "LOAD single-sample tutorial…",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "tutorial-open-order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1500.0, 1640.0, 60.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "tutorial-refresh-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1590.0, 1640.0, 120.0, 22.0 ],
                    "text": "go tutorial_scan"
                }
            },
            {
                "box": {
                    "id": "tutorial-open-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1500.0, 1680.0, 50.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "tutorial-pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1500.0, 1720.0, 75.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "tutorial-window",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 746.0, 521.0, 820.0, 548.0 ],
                        "default_fontsize": 13.0,
                        "enablehscroll": 0,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 24.0,
                                    "id": "heading",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 18.0, 760.0, 33.0 ],
                                    "text": "SINGLE-SAMPLE TUTORIAL",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "intro",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 59.0, 760.0, 22.0 ],
                                    "text": "One shared human-gliss.wav • One SFZ file per lesson",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "menu-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 92.0, 760.0, 20.0 ],
                                    "text": "CHOOSE A LESSON",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.054901960784313725, 0.17254901960784313, 0.8156862745098039, 1.0 ],
                                    "bgfillcolor_color1": [ 0.054901960784313725, 0.17254901960784313, 0.8156862745098039, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "lessons",
                                    "items": [ "Choose a tutorial lesson…", ",", "01 — single-sample-demo.sfz" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 26.0, 118.0, 760.0, 24.0 ],
                                    "varname": "tutorial_menu"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                                    "bgoncolor": [ 0.48, 0.0, 0.69, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "previous",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 26.0, 163.0, 178.0, 32.0 ],
                                    "text": "Previous",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "texton": "Previous",
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "previous-command",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 26.0, 558.0, 178.0, 23.0 ],
                                    "text": "go tutorial_prev"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                                    "bgoncolor": [ 0.48, 0.0, 0.69, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "next",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 220.0, 163.0, 178.0, 32.0 ],
                                    "text": "Next",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "texton": "Next",
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "next-command",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 220.0, 558.0, 178.0, 23.0 ],
                                    "text": "go tutorial_next"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                                    "bgoncolor": [ 0.48, 0.0, 0.69, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "reload",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 414.0, 163.0, 178.0, 32.0 ],
                                    "text": "Reload lesson",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "texton": "Reload lesson",
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "reload-command",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 414.0, 558.0, 178.0, 23.0 ],
                                    "text": "go tutorial_reload"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.706, 0.0, 1.0, 1.0 ],
                                    "bgoncolor": [ 0.48, 0.0, 0.69, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "refresh",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 608.0, 163.0, 178.0, 32.0 ],
                                    "text": "Refresh list",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "texton": "Refresh list",
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "refresh-command",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 608.0, 558.0, 178.0, 23.0 ],
                                    "text": "go tutorial_scan"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 16.0,
                                    "id": "current",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 212.0, 760.0, 24.0 ],
                                    "text": "Last tutorial loaded: 01 — single-sample-demo.sfz",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ],
                                    "varname": "tutorial_current"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.93, 0.96, 1.0 ],
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "status",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 261.0, 760.0, 21.0 ],
                                    "text": "1 tutorial lessons found. Shared sample: human-gliss.wav.",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ],
                                    "varname": "tutorial_status"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "folder",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 327.0, 856.0, 20.0 ],
                                    "text": "Folder: Macintosh HD:/Users/edmundcampionm1/Documents/GitHub/music158a2026/Tools_158a_2026/ec_sfz_builder_editor_v4.2/Demo/single-sample-demo",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ],
                                    "varname": "tutorial_folder"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "naming",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 391.0, 760.0, 20.0 ],
                                    "text": "NAME YOUR LESSONS",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "names",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 416.0, 433.0, 50.0 ],
                                    "text": "single-sample-demo.sfz = lesson 01\nsingle-sample-demo02.sfz, single-sample-demo03.sfz, etc.\nKeep all SFZ files beside human-gliss.wav; use sample=human-gliss.wav.",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "hint",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 487.0, 760.0, 20.0 ],
                                    "text": "Add a file, then Refresh list. Next/Previous skip missing numbers. Apply or revert text drafts before changing lessons; Save keeps your edits.",
                                    "textcolor": [ 0.13, 0.17, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "menu-command",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 26.0, 600.0, 190.0, 23.0 ],
                                    "text": "prepend tutorialindex"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Tutorial commands to ec_sfz_builder.js",
                                    "hidden": 1,
                                    "id": "commands-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 650.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "pcontrol window control",
                                    "hidden": 1,
                                    "id": "control-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.0, 650.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "menu-command", 0 ],
                                    "source": [ "lessons", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands-out", 0 ],
                                    "source": [ "menu-command", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "next-command", 0 ],
                                    "source": [ "next", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands-out", 0 ],
                                    "source": [ "next-command", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "previous-command", 0 ],
                                    "source": [ "previous", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands-out", 0 ],
                                    "source": [ "previous-command", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "refresh-command", 0 ],
                                    "source": [ "refresh", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands-out", 0 ],
                                    "source": [ "refresh-command", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reload-command", 0 ],
                                    "source": [ "reload", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "commands-out", 0 ],
                                    "source": [ "reload-command", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.965, 0.97, 1.0 ],
                        "editing_bgcolor": [ 0.96, 0.965, 0.97, 1.0 ]
                    },
                    "patching_rect": [ 1500.0, 1760.0, 230.0, 22.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.96, 0.965, 0.97, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.965, 0.97, 1.0 ]
                    },
                    "text": "p Single_sample_tutorial",
                    "varname": "tutorial_window"
                }
            },
            {
                "box": {
                    "attr": "scalename",
                    "id": "obj-176",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 590.0, 1588.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 437.0, 797.0, 251.0, 22.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Choose a <group> in Opcodes for Scope, or Edit selected on one of its regions. Copies the whole group, all regions, mappings, local opcodes and comments into a new group beside it. Selects the copy. Both groups can play together. Undo removes the copy.",
                    "bgcolor": [ 0.0392156862745098, 0.6039215686274509, 0.7411764705882353, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Choose a <group> in Opcodes for Scope, or Edit selected on one of its regions. Copies the whole group, all regions, mappings, local opcodes and comments into a new group beside it. Selects the copy. Both groups can play together. Undo removes the copy.",
                    "id": "duplicate-group-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 284.0, 1910.0, 188.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 284.0, 553.0, 188.0, 25.0 ],
                    "text": "Duplicate to new group",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Duplicate to new group",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "duplicate-group-button-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 1950.0, 220.0, 22.0 ],
                    "text": "go duplicate_group"
                }
            },
            {
                "box": {
                    "annotation": "Use the sounds already listed under Sound Files. Creates a new group and adds all of them at MIDI 0 upward, one sample per key. No folder reload is needed. Uses the current velocity range and one-shot playback. Undo removes the new group and its regions.",
                    "bgcolor": [ 1.0, 0.34902, 0.372549, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Use the sounds already listed under Sound Files. Creates a new group and adds all of them at MIDI 0 upward, one sample per key. No folder reload is needed. Uses the current velocity range and one-shot playback. Undo removes the new group and its regions.",
                    "id": "folder-newgroup-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 480.0, 1910.0, 246.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 480.0, 553.0, 246.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_record"
                        }
                    },
                    "text": "Add loaded samples to new group",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Add loaded samples to new group",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "folder-newgroup-button-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.0, 1950.0, 220.0, 22.0 ],
                    "text": "go import_newgroup"
                }
            },
            {
                "box": {
                    "annotation": "Select a <group> scope and click an opcode row below. Copy its value to every region in that group, replacing local values for that opcode. After editing a Value, press Return first. Applies immediately and supports Undo.",
                    "bgcolor": [ 0.027450980392156862, 0.3215686274509804, 0.4745098039215686, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Select a <group> scope and click an opcode row below. Copy its value to every region in that group, replacing local values for that opcode. After editing a Value, press Return first. Applies immediately and supports Undo.",
                    "id": "copy-opcode-regions-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 734.0, 2020.0, 209.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 734.0, 553.0, 209.0, 25.0 ],
                    "text": "Copy opcode to regions",
                    "texton": "Copy opcode to regions"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "copy-opcode-regions-button-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 734.0, 2060.0, 225.0, 22.0 ],
                    "text": "go copy_opcode_regions"
                }
            },
            {
                "box": {
                    "annotation": "Click an opcode row below, then delete its local assignment from the selected scope. Inherited/global values or SFZ defaults can take effect. Applies immediately; no Compile step is needed. Undo restores it.",
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "fontsize": 12.0,
                    "hint": "Click an opcode row below, then delete its local assignment from the selected scope. Inherited/global values or SFZ defaults can take effect. Applies immediately; no Compile step is needed. Undo restores it.",
                    "id": "delete-opcode-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 980.0, 2020.0, 230.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 951.0, 553.0, 230.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "text": "Delete selected opcode",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "texton": "Delete selected opcode",
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "delete-opcode-button-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 980.0, 2060.0, 225.0, 22.0 ],
                    "text": "go delete_opcode"
                }
            },
            {
                "box": {
                    "id": "opcode-selection-events",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1230.0, 2020.0, 190.0, 22.0 ],
                    "text": "prepend opcode_selection"
                }
            },
            {
                "box": {
                    "id": "region-view-events",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1400.0, 1710.0, 165.0, 22.0 ],
                    "text": "prepend table_view regions"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "audio-test-envelope", 0 ],
                    "source": [ "audio-test-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio-test-line", 0 ],
                    "source": [ "audio-test-envelope", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 7 ],
                    "order": 0,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 6 ],
                    "order": 1,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 5 ],
                    "order": 2,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 4 ],
                    "order": 3,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 3 ],
                    "order": 4,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 2 ],
                    "order": 5,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 1 ],
                    "order": 6,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "order": 7,
                    "source": [ "audio-test-gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio-test-gain", 1 ],
                    "source": [ "audio-test-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "audio-test-gain", 0 ],
                    "source": [ "audio-test-osc", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clear-samples-command", 0 ],
                    "source": [ "clear-samples-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "clear-samples-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "copy-opcode-regions-button-command", 0 ],
                    "source": [ "copy-opcode-regions-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "copy-opcode-regions-button-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delete-opcode-button-command", 0 ],
                    "source": [ "delete-opcode-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "delete-opcode-button-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "duplicate-group-button-command", 0 ],
                    "source": [ "duplicate-group-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "duplicate-group-button-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "folder-newgroup-button-command", 0 ],
                    "source": [ "folder-newgroup-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "folder-newgroup-button-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "native-key-midi", 0 ],
                    "order": 0,
                    "source": [ "main-key-pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "order": 1,
                    "source": [ "main-key-pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "main-key-pack", 0 ],
                    "source": [ "main-key-pitch-order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "main-key-pitch-order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mapper-open", 0 ],
                    "source": [ "mapper-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mapper-pcontrol", 0 ],
                    "source": [ "mapper-open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mapper-window", 0 ],
                    "source": [ "mapper-pcontrol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "mapper-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mapper-prepend", 0 ],
                    "source": [ "mapper-window", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "midi-clear-keys", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-port-symbol", 0 ],
                    "source": [ "midi-device-menu", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-ports", 0 ],
                    "source": [ "midi-info", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "midi-initial-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-keyboard-input", 0 ],
                    "source": [ "midi-input-gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 1 ],
                    "source": [ "midi-keyboard-input", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "midi-keyboard-input", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "midi-native-port", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "midi-port-none", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-native-port", 0 ],
                    "source": [ "midi-port-placeholder", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-port-none", 0 ],
                    "source": [ "midi-port-placeholder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-port-placeholder", 0 ],
                    "order": 1,
                    "source": [ "midi-port-symbol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-select", 0 ],
                    "order": 0,
                    "source": [ "midi-port-symbol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "midi-ports", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-info", 1 ],
                    "source": [ "midi-refresh", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-refresh", 0 ],
                    "source": [ "midi-refresh-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "midi-select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "midi-stop-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-clear-keys", 0 ],
                    "order": 0,
                    "source": [ "midi-switch-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-stop-message", 0 ],
                    "order": 1,
                    "source": [ "midi-switch-off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-input-gate", 0 ],
                    "source": [ "midi-switch-order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-switch-off", 0 ],
                    "source": [ "midi-switch-order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "midi-switch-order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "order": 0,
                    "source": [ "native-key-midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-note-monitor", 0 ],
                    "order": 1,
                    "source": [ "native-key-midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-message-route", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-103", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "web-editor", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "web-report", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-switch-order", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "native-key-midi", 0 ],
                    "order": 0,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "order": 1,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-activity", 0 ],
                    "order": 1,
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 1 ],
                    "source": [ "obj-137", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "order": 0,
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-input-gate", 1 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 4 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 7 ],
                    "source": [ "obj-140", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 6 ],
                    "source": [ "obj-140", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 5 ],
                    "source": [ "obj-140", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 4 ],
                    "source": [ "obj-140", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 3 ],
                    "source": [ "obj-140", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 2 ],
                    "source": [ "obj-140", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 1 ],
                    "source": [ "obj-140", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "save-cancelled", 0 ],
                    "source": [ "obj-146", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "order": 1,
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "order": 0,
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "main-key-pack", 1 ],
                    "source": [ "obj-155", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "main-key-pitch-order", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 7 ],
                    "source": [ "obj-160", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 6 ],
                    "source": [ "obj-160", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 5 ],
                    "source": [ "obj-160", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 4 ],
                    "source": [ "obj-160", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 3 ],
                    "source": [ "obj-160", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 2 ],
                    "source": [ "obj-160", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 1 ],
                    "source": [ "obj-160", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-169", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-25", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "web-sample_text", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "web-reference_text", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "region-view-events", 0 ],
                    "source": [ "obj-71", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-73", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-85", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 3 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "opcode-selection-events", 0 ],
                    "source": [ "obj-97", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "opcode-selection-events", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "region-view-events", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "source": [ "sampler-message-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-midi-unpack", 0 ],
                    "source": [ "sampler-message-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-midi-prefix", 0 ],
                    "source": [ "sampler-midi-pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "order": 0,
                    "source": [ "sampler-midi-prefix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-note-monitor", 0 ],
                    "order": 1,
                    "source": [ "sampler-midi-prefix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-midi-pack", 2 ],
                    "source": [ "sampler-midi-unpack", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-midi-pack", 1 ],
                    "source": [ "sampler-midi-unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-midi-pack", 0 ],
                    "source": [ "sampler-midi-unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-note-activity", 0 ],
                    "source": [ "sampler-note-filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sampler-note-filter", 0 ],
                    "source": [ "sampler-note-monitor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "save-cancelled", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-open-order", 0 ],
                    "source": [ "tutorial-open-button", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-pcontrol", 0 ],
                    "source": [ "tutorial-open-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-open-command", 0 ],
                    "source": [ "tutorial-open-order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-refresh-command", 0 ],
                    "source": [ "tutorial-open-order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tutorial-window", 0 ],
                    "source": [ "tutorial-pcontrol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "tutorial-refresh-command", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "tutorial-window", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "web-editor", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "web-reference_text", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "web-report", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "web-sample_text", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-160": [ "GAIN OUT", "GAIN OUT", 0 ],
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