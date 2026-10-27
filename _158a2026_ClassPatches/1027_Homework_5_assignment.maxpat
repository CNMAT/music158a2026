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
        "rect": [ 200.0, 100.0, 1000.0, 892.0 ],
        "default_fontsize": 18.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 161.0, 506.0, 159.0, 27.0 ],
                    "text": "select midi note 60"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 658.0, 543.0, 50.0, 29.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 512.0, 642.0, 150.0, 107.0 ],
                    "text": "This is the same single-sample-demo from the builder editor.  Test it out!"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 545.0, 489.0, 29.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 438.0, 531.0, 29.0, 27.0 ],
                    "text": "72"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 547.0, 82.0, 27.0 ],
                    "text": "velocity"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 212.0, 543.0, 82.0, 27.0 ],
                    "text": "midi note"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 151.0, 542.0, 50.0, 29.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 152.0, 576.0, 525.0, 29.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 152.0, 615.0, 192.0, 29.0 ],
                    "text": "prepend midievent 144"
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 446.0, 489.0, 29.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1142.0, 867.0, 29.0, 27.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.0, 489.0, 29.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1191.0, 867.0, 29.0, 27.0 ],
                    "text": "60"
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
                    "patching_rect": [ 152.0, 436.0, 750.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 951.0, 837.0, 525.0, 34.0 ],
                    "range": 128,
                    "varname": "main_keyboard"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 79.0, 655.0, 150.0, 107.0 ],
                    "text": "place the name of your sfz instrument inside the sfizz~ as an argument."
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 240.0, 696.0, 48.0, 136.0 ],
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
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 240.0, 659.0, 250.0, 29.0 ],
                    "text": "sfizz~ single-sample-demo.sfz"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 371.0, 828.0, 47.0 ],
                    "text": "Build an .sfz file or even 2 that controls the playback on your sample folder.  Save the SFZ file(s) using the save \"SFZ_inst as is' (green) and save to your sample folder."
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 315.0, 677.0, 47.0 ],
                    "text": "Open a fresh version of the _ec_sfz_builder_editor.maxpat \n(never save that patch when you close it!!!)"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 238.0, 657.0, 67.0 ],
                    "text": "In your Music 158-enabled folder create folder with some samples that you make using 48k and not too long samples.  Minimum is 3 samples but you can use more.  Prepare the samples using your favorite DAW or Adobe Audition. "
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 195.0, 177.0, 416.0, 47.0 ],
                    "text": "Study this patch -- and try out adding opcodes and using the Graphic Keyboard Sampler Mapper "
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 146.0, 146.0, 413.0, 27.0 ],
                    "text": "once loaded -- select 'LOAD single-sample tutorial "
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.0, 82.0, 125.0, 27.0 ],
                    "text": "load this patch"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 512.0, 82.0, 229.0, 24.0 ],
                    "text": "load _ec_sfz_builder_editor.maxpat"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 512.0, 113.0, 58.0, 24.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 134.0, 53.0, 607.0, 27.0 ],
                    "text": "Homework 5 sfizz~ Max/MSP sample player and the  ec_sfz_builder_editor"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 242.0, 846.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 43.0, 6.0, 607.0, 27.0 ],
                    "text": "Homework 5 sfizz~ Max/MSP sample player and the  ec_sfz_builder_editor"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-155", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-27", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12": [ "live.gain~", "live.gain~", 0 ],
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