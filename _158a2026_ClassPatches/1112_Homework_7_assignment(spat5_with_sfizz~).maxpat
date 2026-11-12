{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 89.0, 212.0, 1231.0, 846.0 ],
        "default_fontsize": 18.0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial Bold",
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.17010309278352, 442.0, 249.0, 27.0 ],
                    "text": "Homework 7 ASSIGNMENT: "
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
                    "patching_rect": [ 628.0, 572.0, 252.0, 22.0 ],
                    "presentation_linecount": 3,
                    "text": "load _ec_spat5_rectilinear_trajectory.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 612.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 736.0, 194.0, 22.0 ],
                    "text": "load _ec_tapdelay16_v4~.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 776.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.5, 647.0, 1108.0, 27.0 ],
                    "text": "You have the option to include the ec_tapdelay_v4_16 to create a playback delay structure between your SFZ instrument and the SPAT5"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 363.0, 194.0, 22.0 ],
                    "text": "load _ec_tapdelay16_v4~.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 403.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 202.0, 462.0, 22.0 ],
                    "text": "load _ec_spat5~8-channel-CNMATroom_to_binaural_hphone_with_recording.maxpat"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.17010309278352, 536.0, 1113.0, 27.0 ],
                    "text": "Using the TOOLS_158a_2026/ec_spat5_rectilinear_trajectory_v2 implement an automated trajectory for the 8-channels into the Spat_oper"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 145.0, 242.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 128.0, 82.0, 1068.0, 47.0 ],
                    "text": "You can augment your Homework 5 sfizz~ instrument to have multiple outputs, new samples, or new groups or just use the one you have with duplicates of the same instrument for different inputs to the SPAT5"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.17010309278352, 487.0, 1082.0, 47.0 ],
                    "text": "Create a SPAT5 mix with 8 channels of input and 8 channels of output.  \nAdjust reverb and source settings and save at least 3 presets for the mix."
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 110.5, 303.0, 1108.0, 47.0 ],
                    "text": "Save your own version of this patch and copy in your sfizz~ instrument, or duplicates, or rebuilt sfizz~ instrument.  You also have the option to include the ec_tapdelay_v4_16 to create a delayed playback structure between your SFZ instrument and the SPAT5"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 79.14948453608248, 136.08247422680412, 207.0, 27.0 ],
                    "text": "HOMEWORK 7"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.17010309278352, 169.0721649484536, 854.639175257732, 27.0 ],
                    "text": "Access in TOOLS_158a_2026 the patch 8-channel-spat~_to_binaural_headphone_mix.maxpat"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 50.51546391752577, 1068.0, 27.0 ],
                    "text": "To Begin:  Take your Homework 5 sfizz~ instrument and use it as the basis for a SPAT5 8-channel installation."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 19.0, 607.0, 27.0 ],
                    "text": "Homework 7 SPAT 5 with Homework 5 sfizz~ instrument"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-3", 0 ]
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
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}