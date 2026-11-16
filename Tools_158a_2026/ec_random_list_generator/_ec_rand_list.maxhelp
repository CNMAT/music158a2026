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
        "rect": [ 96.0, 136.0, 1092.0, 859.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-35",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 505.0, 262.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 376.0, 511.0, 383.0, 33.0 ],
                    "text": "rotate1...rotate16: rotate the given list values, not a mutation mask. First bang = original; later bangs rotate right. resetdefaults exits."
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.5, 515.0, 106.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.0, 522.0, 106.0, 22.0 ],
                    "text": "rotate1 1 0 0 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.0, 515.0, 106.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 144.0, 522.0, 106.0, 22.0 ],
                    "text": "rotate2 1 2 0 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 263.0, 515.0, 106.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 263.0, 522.0, 106.0, 22.0 ],
                    "text": "rotate3 1 2 3 0 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 830.0, 192.0, 120.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 754.0, 686.0, 107.0, 22.0 ],
                    "text": "listfeed 3 3 3 3 3 3"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 727.0, 170.0, 199.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 727.0, 85.0, 153.0, 47.0 ],
                    "text": "to execute all functions\n(generate list) and settings output"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 894.0, 103.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 894.0, 66.0, 100.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 135.0, 133.0, 574.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 177.0, 186.0, 574.0, 20.0 ],
                    "text": "resetdefaults: first bang = 1 0 0 0 0 0; later bangs make random 0/1 lists. Cycle OFF."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "m_reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 23.0, 132.0, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 187.0, 100.0, 22.0 ],
                    "text": "resetdefaults"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.545, 0.0, 0.0, 1.0 ],
                    "id": "obj-599",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 609.0, 447.0, 57.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 833.0, 274.0, 57.0, 22.0 ],
                    "text": "s set-inst"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 760.0, 180.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 730.0, 373.0, 20.0 ],
                    "text": "One-click demo to generate a new 6 slot list in range for each \"bang\""
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 26.0, 785.0, 377.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 756.0, 327.0, 22.0 ],
                    "text": "init, length 6, range 1 15, allowrepeats 1, sort none, getstate"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 374.0, 331.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 270.0, 350.0, 331.0, 20.0 ],
                    "text": "reorder generated list ascending/descending or as is <none>"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 205.0, 402.0, 231.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 378.0, 231.0, 20.0 ],
                    "text": "limit mutations to odd or even or clearfilter"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.5, 476.0, 86.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.0, 374.0, 86.0, 20.0 ],
                    "text": "getstate report"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 504.0, 280.0, 62.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 617.0, 432.0, 280.0, 62.0 ],
                    "text": "resetdefaults length 6 range 0 1 allowrepeats 1 sort 0 parity 0 filtermin none filtermax none cycle off cyclesize 1 cyclepos 1 holdfirstbang 1 migrate off"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 96.0, 669.0, 281.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 96.0, 639.0, 281.0, 20.0 ],
                    "text": "sets where next mutate cycle will begin -- no output"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 177.0, 643.0, 243.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 177.0, 613.0, 243.0, 20.0 ],
                    "text": "mutate in groups according to number given"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 103.0, 616.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 103.0, 586.0, 150.0, 20.0 ],
                    "text": "cancel roundrobin mutate"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 169.0, 553.0, 207.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 128.5, 490.0, 207.0, 20.0 ],
                    "text": "n = slots that will be mutated on bang"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 299.0, 433.0, 121.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 299.0, 409.0, 121.0, 20.0 ],
                    "text": "set range boundaries"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 162.0, 476.0, 403.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 162.0, 452.0, 403.0, 20.0 ],
                    "text": "make sets length/range/repeats/sort; generation waits for bang"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 315.0, 161.0, 137.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 306.0, 242.0, 291.0, 20.0 ],
                    "text": "getlast arms an unchanged replay on the NEXT bang"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 255.0, 299.0, 305.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 275.0, 305.0, 20.0 ],
                    "text": "allow number slots to have repeat numbers across list"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 260.0, 232.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.0, 153.0, 232.0, 20.0 ],
                    "text": "range sets inclusive min and max integers"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 229.0, 389.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 135.0, 122.0, 365.0, 20.0 ],
                    "text": "number of slots <int> in the list to be randomly generated in range. "
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 239.0, 192.0, 493.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 189.0, 220.0, 493.0, 20.0 ],
                    "text": "seed assigns a reproducible RNG seed; init reseeds and burns a variable number of draws."
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 104.0, 498.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 96.0, 90.0, 498.0, 20.0 ],
                    "text": "init reseeds the RNG; it does not reset length/range and it stops active cycle/rotation modes."
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 98.0, 161.0, 137.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 98.0, 246.5, 137.0, 20.0 ],
                    "text": "current state of rand_list"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 16.0, 664.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 16.0, 664.0, 20.0 ],
                    "text": "rand_list.js  |  random list generator, deferred mutation, listfeed and fixed-list rotation"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 40.0, 741.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 40.0, 741.0, 20.0 ],
                    "text": "Keep rand_list.js next to this help file. Most operations are ARMED first and executed by bang; see the eight-stage tutorial."
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 662.0, 310.0, 160.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.0, 283.0, 160.0, 20.0 ],
                    "text": "Outlet 1: generated list"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.89, 0.086, 0.29, 1.0 ],
                    "fontsize": 18.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 646.0, 231.5, 180.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 656.0, 133.0, 113.0, 29.0 ],
                    "saved_object_attributes": {
                        "filename": "rand_list.js",
                        "parameter_enable": 0
                    },
                    "text": "js rand_list.js"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 334.0, 73.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.0, 307.0, 73.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 368.0, 214.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.0, 341.0, 280.0, 22.0 ],
                    "text": "1 10 13 15 7 3"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.5, 274.0, 141.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 617.0, 250.0, 141.0, 22.0 ],
                    "text": "print rand_list_generated"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 191.0, 53.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 686.0, 219.0, 53.0, 22.0 ],
                    "text": "init seed"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 76.0, 137.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 21.5, 66.0, 137.0, 20.0 ],
                    "text": "Basic setup / generation"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
                    "bgfillcolor_color1": [ 0.086274509803922, 0.890196078431372, 0.211764705882353, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 26.0, 103.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 21.0, 89.0, 50.0, 22.0 ],
                    "text": "init"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 225.0, 66.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.0, 118.0, 66.0, 22.0 ],
                    "text": "length 6"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 259.0, 66.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.0, 152.0, 59.0, 22.0 ],
                    "text": "range 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 299.0, 106.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 275.0, 106.0, 22.0 ],
                    "text": "allowrepeats 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 183.0, 373.0, 74.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 183.0, 349.0, 74.0, 22.0 ],
                    "text": "sort none"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 23.0, 160.0, 68.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 245.5, 68.0, 22.0 ],
                    "text": "getstate"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 242.0, 160.0, 62.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 242.0, 245.5, 62.0, 22.0 ],
                    "text": "getlast"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 191.0, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 89.0, 214.0, 91.0, 22.0 ],
                    "text": "seed 12345678"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 23.0, 347.0, 180.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 323.0, 180.0, 20.0 ],
                    "text": "Sorting + filters"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 23.0, 373.0, 64.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 349.0, 64.0, 22.0 ],
                    "text": "sort asc"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 97.0, 373.0, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 97.0, 349.0, 72.0, 22.0 ],
                    "text": "sort desc"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 23.0, 406.0, 78.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 382.0, 78.0, 22.0 ],
                    "text": "parity odd"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 111.0, 406.0, 84.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 111.0, 382.0, 84.0, 22.0 ],
                    "text": "parity even"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 21.0, 432.0, 82.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 21.0, 408.0, 82.0, 22.0 ],
                    "text": "filtermin 4"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 113.0, 432.0, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 113.0, 408.0, 90.0, 22.0 ],
                    "text": "filtermax 12"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 213.0, 432.0, 78.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 213.0, 408.0, 78.0, 22.0 ],
                    "text": "clearfilter"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.0, 299.0, 106.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 144.0, 275.0, 106.0, 22.0 ],
                    "text": "allowrepeats 0"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 21.0, 475.0, 126.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 21.0, 451.0, 126.0, 22.0 ],
                    "text": "make 6 1 15 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 552.0, 144.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.0, 489.0, 105.0, 22.0 ],
                    "text": "mutate 0 0 0 0 0 n"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 264.0, 578.0, 159.0, 74.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 264.0, 548.0, 585.0, 33.0 ],
                    "text": "mutate1/2/3: each next bang updates 1/2/3 consecutive slots; cyclepos is 1-based. stopcycle exits this mode."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 585.0, 66.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 555.0, 66.0, 22.0 ],
                    "text": "mutate1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
                    "bgfillcolor_color1": [ 0.890196078431372, 0.086274509803922, 0.290196078431373, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 18.0,
                    "gradient": 1,
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 646.0, 170.0, 73.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 652.0, 85.0, 73.0, 29.0 ],
                    "text": "bang"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 103.0, 585.0, 66.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 103.0, 555.0, 66.0, 22.0 ],
                    "text": "mutate2"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 187.0, 585.0, 66.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 187.0, 555.0, 66.0, 22.0 ],
                    "text": "mutate3"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 615.0, 76.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 585.0, 76.0, 22.0 ],
                    "text": "stopcycle"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 642.0, 96.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 612.0, 96.0, 22.0 ],
                    "text": "mutatecycle 4"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 17.0, 668.0, 72.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 17.0, 638.0, 72.0, 22.0 ],
                    "text": "cyclepos 3"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 718.0, 595.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 250.0, 688.0, 595.0, 20.0 ],
                    "text": "listfeed: stores a new list and length; NEXT bang outputs it unchanged unless another command is armed first."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color1": [ 0.086, 0.89, 0.212, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 16.0, 717.0, 104.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 687.0, 104.0, 22.0 ],
                    "text": "listfeed 0 10 5"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 126.0, 717.0, 120.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 126.0, 687.0, 107.0, 22.0 ],
                    "text": "listfeed 0 0 0 0 0 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.15, 0.42, 0.78, 1.0 ],
                    "fontsize": 14.0,
                    "id": "ec-tutorial-launcher",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 140.0, 100.0, 1190.0, 820.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 24.0,
                                    "id": "box-001",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 18.0, 1060.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 38.0, 18.0, 1060.0, 33.0 ],
                                    "text": "RAND_LIST.JS  |  EIGHT-STAGE INTERACTIVE TUTORIAL",
                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "box-002",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 71.0, 1080.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 71.0, 1080.0, 20.0 ],
                                    "text": "Double-click a lesson (p object) to open it. Each lesson has an independent [js rand_list.js], numbered click-through commands, a BANG button and live list/status monitors.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 12.0,
                                    "id": "box-003",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 114.0, 1060.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 114.0, 1060.0, 20.0 ],
                                    "text": "RECOMMENDED: follow stages 01-08. Return here between lessons; there is no shared mutable state across lessons.",
                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-004",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 175.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.0, 175.0, 495.0, 24.0 ],
                                    "text": "01  RESET + FIRST BANG",
                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.15, 0.42, 0.78, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-005",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1032.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1032.0, 20.0 ],
                                                    "text": "01  RESETDEFAULTS AND BANG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "text": "Reset the generator, hear the exact base list, then generate fresh binary lists. These steps are intentionally separate."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "text": "0 0 1 1 1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "text": "generated length 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "text": "For long state reports, open the Max Console."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "text": "01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "text": "resetdefaults"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "text": "Restore the current script defaults."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "text": "02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "text": "The FIRST bang outputs 1 0 0 0 0 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "text": "03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "text": "The SECOND bang generates six random 0/1 values."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "text": "04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 284.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 284.0, 405.0, 20.0 ],
                                                    "text": "Repeat: each bang gives a new 0/1 list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "text": "05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "text": "getstate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "text": "Read the internal range, length and modes."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "text": "06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "text": "init"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "text": "Reseed; it does NOT restore the default range."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "text": "07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 422.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 422.0, 405.0, 20.0 ],
                                                    "text": "Generate using the settings already active."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "text": "WHAT TO NOTICE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-040",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "text": "CURRENT UPLOAD: resetdefaults sets length 6, range 0..1, repeats allowed, no filters, cycle OFF, and stores [1 0 0 0 0 0]. The first bang echoes that list unchanged."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 54.0, 215.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 215.0, 250.0, 24.0 ],
                                    "text": "p 01_Reset_and_Bang",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-006",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 217.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 324.0, 217.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-007",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 254.0, 576.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 254.0, 576.0, 19.0 ],
                                    "text": "Reset the generator, hear the exact base list, then generate fresh binary lists. These steps are intentionally separate.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-008",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 598.0, 175.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 598.0, 175.0, 495.0, 24.0 ],
                                    "text": "02  LENGTH + RANGE + REPEATS",
                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.1, 0.52, 0.4, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-009",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 24.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1010.0, 33.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1010.0, 33.0 ],
                                                    "text": "02  BUILD A RANDOM LIST"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "text": "Set the number of slots and the inclusive pool of possible integers. Compare sampling with and without repetitions."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 15.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 570.0, 23.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 570.0, 23.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 17.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 27.0 ],
                                                    "saved_object_attributes": {
                                                        "filename": "rand_list.js",
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 335.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 335.0, 22.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 101.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 101.0, 31.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 350.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 350.0, 21.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 19.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 14.0,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 24.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 24.0 ],
                                                    "text": "14 5 9 15 3 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 19.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 21.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 21.0 ],
                                                    "text": "range 1 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 19.0 ],
                                                    "text": "For long state reports, open the Max Console."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 19.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "text": "01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 118.8, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 118.8, 22.0 ],
                                                    "text": "resetdefaults"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 403.2, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 403.2, 20.0 ],
                                                    "text": "Begin from a known state."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "text": "02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "text": "length 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "text": "Set the number of values in the list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "text": "03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "text": "range 1 15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "text": "Allow integers 1 through 15, inclusive."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "text": "04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 126.39999999999999, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 126.39999999999999, 22.0 ],
                                                    "text": "allowrepeats 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 204.39999999999998, 284.0, 395.6, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 204.39999999999998, 284.0, 395.6, 20.0 ],
                                                    "text": "Duplicates are permitted."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "text": "05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "text": "generate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "text": "Arm FULL generation; bypass the held reset output."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "text": "06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "text": "Generate with repetitions permitted."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "text": "07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 126.39999999999999, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 126.39999999999999, 22.0 ],
                                                    "text": "allowrepeats 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 204.39999999999998, 422.0, 395.6, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 204.39999999999998, 422.0, 395.6, 20.0 ],
                                                    "text": "Demand six DIFFERENT numbers."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "text": "08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 468.0, 405.0, 20.0 ],
                                                    "text": "Generate six distinct numbers."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "text": "09"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 512.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 512.0, 117.0, 22.0 ],
                                                    "text": "range 1 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 514.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 514.0, 405.0, 20.0 ],
                                                    "text": "Make the unique pool too small."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "text": "10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-046",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 558.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 558.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 560.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 560.0, 405.0, 20.0 ],
                                                    "text": "Inspect the error/status outlet: 6 unique values are impossible."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-048",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "text": "WHAT TO NOTICE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-049",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "text": "Changing a parameter does not itself output a list. The next bang uses the new settings. With allowrepeats 0, list length cannot exceed the available pool size."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-050",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 19.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-046", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 606.0, 215.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 215.0, 250.0, 24.0 ],
                                    "text": "p 02_Length_Range_Repeats",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-010",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 217.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 876.0, 217.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-011",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 254.0, 566.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 254.0, 566.0, 19.0 ],
                                    "text": "Set the number of slots and the inclusive pool of possible integers. Compare sampling with and without repetitions.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-012",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 310.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.0, 310.0, 495.0, 24.0 ],
                                    "text": "03  SORTING + FILTERS",
                                    "textcolor": [ 0.37, 0.28, 0.62, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.37, 0.28, 0.62, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-013",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1024.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1024.0, 20.0 ],
                                                    "text": "03  SORT, PARITY AND FILTERS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "text": "A filter restricts candidate values; sorting rearranges a newly generated list after selection. The two operations do different jobs."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "text": "11 11 9 7 5 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "text": "generated length 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "text": "For long state reports, open the Max Console."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "text": "01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "text": "resetdefaults"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 405.0, 20.0 ],
                                                    "text": "Clear settings from previous experiments."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 192.9090909090909, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 192.9090909090909, 27.0, 20.0 ],
                                                    "text": "02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 189.9090909090909, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 189.9090909090909, 117.0, 22.0 ],
                                                    "text": "range 1 15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 191.9090909090909, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 191.9090909090909, 405.0, 20.0 ],
                                                    "text": "Use an easy-to-inspect integer pool."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 238.8181818181818, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 238.8181818181818, 27.0, 20.0 ],
                                                    "text": "03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 235.8181818181818, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 235.8181818181818, 117.0, 22.0 ],
                                                    "text": "parity odd"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 237.8181818181818, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 237.8181818181818, 405.0, 20.0 ],
                                                    "text": "Restrict the pool to odd numbers only."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 284.72727272727275, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 284.72727272727275, 27.0, 20.0 ],
                                                    "text": "04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 281.72727272727275, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 281.72727272727275, 117.0, 22.0 ],
                                                    "text": "filtermin 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 283.72727272727275, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 283.72727272727275, 405.0, 20.0 ],
                                                    "text": "Exclude all candidates below 5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 330.6363636363636, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 330.6363636363636, 27.0, 20.0 ],
                                                    "text": "05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 327.6363636363636, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 327.6363636363636, 117.0, 22.0 ],
                                                    "text": "filtermax 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 329.6363636363636, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 329.6363636363636, 405.0, 20.0 ],
                                                    "text": "Exclude all candidates above 11."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 376.5454545454545, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 376.5454545454545, 27.0, 20.0 ],
                                                    "text": "06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 373.5454545454545, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 373.5454545454545, 117.0, 22.0 ],
                                                    "text": "sort asc"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 375.5454545454545, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 375.5454545454545, 405.0, 20.0 ],
                                                    "text": "Sort low to high after generation."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 422.45454545454544, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 422.45454545454544, 27.0, 20.0 ],
                                                    "text": "07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 419.45454545454544, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 419.45454545454544, 117.0, 22.0 ],
                                                    "text": "generate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 421.45454545454544, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 421.45454545454544, 405.0, 20.0 ],
                                                    "text": "Arm fresh generation; bypass held reset output."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 468.3636363636364, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 468.3636363636364, 27.0, 20.0 ],
                                                    "text": "08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 465.3636363636364, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 465.3636363636364, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 467.3636363636364, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 467.3636363636364, 405.0, 20.0 ],
                                                    "text": "Expected values drawn only from 5, 7, 9, 11."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 514.2727272727273, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 514.2727272727273, 27.0, 20.0 ],
                                                    "text": "09"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 511.27272727272725, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 511.27272727272725, 117.0, 22.0 ],
                                                    "text": "sort desc"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 513.2727272727273, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 513.2727272727273, 405.0, 20.0 ],
                                                    "text": "Try descending order."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 560.1818181818181, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 560.1818181818181, 27.0, 20.0 ],
                                                    "text": "10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-046",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 557.1818181818181, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 557.1818181818181, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 559.1818181818181, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 559.1818181818181, 405.0, 20.0 ],
                                                    "text": "Compare the new order."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-048",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 606.090909090909, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 606.090909090909, 27.0, 20.0 ],
                                                    "text": "11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-049",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 603.090909090909, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 603.090909090909, 117.0, 22.0 ],
                                                    "text": "clearfilter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-050",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 605.090909090909, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 605.090909090909, 405.0, 20.0 ],
                                                    "text": "Remove parity and both filter limits; keep the range."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-051",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "text": "WHAT TO NOTICE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-052",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "text": "Try parity even and bang; or send sort none and bang. IMPORTANT: clearfilter also resets parity to any, but does NOT reset range or sort."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-053",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-046", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-049", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 54.0, 350.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 350.0, 250.0, 24.0 ],
                                    "text": "p 03_Sort_and_Filters",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-014",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 352.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 324.0, 352.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-015",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 389.0, 626.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 389.0, 626.0, 19.0 ],
                                    "text": "A filter restricts candidate values; sorting rearranges a newly generated list after selection. The two operations do different jobs.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-016",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 598.0, 310.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 598.0, 310.0, 495.0, 24.0 ],
                                    "text": "04  LISTFEED + GETLAST",
                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.15, 0.42, 0.78, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-017",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1026.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1026.0, 20.0 ],
                                                    "text": "04  SUPPLY AND RETRIEVE A LIST"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "text": "An explicit list becomes internal state. The input commands are deferred: watch when outlet 1 actually changes."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "text": "17 12 0 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "text": "generated length 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "text": "For long state reports, open the Max Console."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "text": "01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "text": "resetdefaults"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "text": "Establish known settings."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "text": "02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 172.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 172.0, 22.0 ],
                                                    "text": "listfeed 10 20 30 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 250.0, 192.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 250.0, 192.0, 350.0, 20.0 ],
                                                    "text": "Store a FOUR-slot base and update listLength to 4."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "text": "03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 117.0, 22.0 ],
                                                    "text": "getstate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 238.0, 405.0, 20.0 ],
                                                    "text": "Look for length 4, lastlength 4, holdfirstbang 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "text": "04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 284.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 284.0, 405.0, 20.0 ],
                                                    "text": "Only NOW is 10 20 30 40 output."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "text": "05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "text": "getlast"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "text": "ARM a replay of the stored list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "text": "06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "text": "Output the same four values, unchanged."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "text": "07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 117.0, 22.0 ],
                                                    "text": "range 0 17"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 422.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 422.0, 405.0, 20.0 ],
                                                    "text": "Update the pool for subsequent random generation."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 20.0 ],
                                                    "text": "08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 406.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 468.0, 406.0, 20.0 ],
                                                    "text": "With no mode armed, this is a fresh four-number list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "text": "WHAT TO NOTICE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-043",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "text": "Neither listfeed nor getlast immediately emits the stored list; each arms an unchanged output for the next bang. Feeding a list changes its length but not the random range."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 606.0, 350.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 350.0, 250.0, 24.0 ],
                                    "text": "p 04_Listfeed_and_Getlast",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-018",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 352.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 876.0, 352.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-019",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 389.0, 552.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 389.0, 552.0, 19.0 ],
                                    "text": "An explicit list becomes internal state. The input commands are deferred: watch when outlet 1 actually changes.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-020",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 445.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.0, 445.0, 495.0, 24.0 ],
                                    "text": "05  EXPLICIT MUTATE MASK",
                                    "textcolor": [ 0.37, 0.28, 0.62, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.37, 0.28, 0.62, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-021",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1023.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1023.0, 20.0 ],
                                                    "text": "05  ONE-SHOT MASKED MUTATION"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 20.0 ],
                                                    "text": "Use 0 to KEEP a slot and n to REPLACE it. The mutation runs on the next bang; the explicit mask is then consumed."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 574.0, 20.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 340.0, 20.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 108.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 354.0, 20.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 22.0 ],
                                                    "text": "2 11 15 12 4 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 22.0 ],
                                                    "text": "generated length 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 20.0 ],
                                                    "text": "For long state reports, open the Max Console."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 20.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 20.0 ],
                                                    "text": "01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 119.0, 22.0 ],
                                                    "text": "resetdefaults"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 404.0, 20.0 ],
                                                    "text": "Start clean."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 20.0 ],
                                                    "text": "02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 117.0, 22.0 ],
                                                    "text": "range 1 15"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 192.0, 405.0, 20.0 ],
                                                    "text": "Choose useful replacement values."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 20.0 ],
                                                    "text": "03"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 172.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 172.0, 22.0 ],
                                                    "text": "listfeed 1 2 3 4 5 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 250.0, 238.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 250.0, 238.0, 350.0, 20.0 ],
                                                    "text": "Store the six-number original list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 20.0 ],
                                                    "text": "04"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 157.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 157.0, 22.0 ],
                                                    "text": "mutate n 0 0 n 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234.79999999999998, 284.0, 366.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 234.79999999999998, 284.0, 366.0, 20.0 ],
                                                    "text": "Arm replacements at positions 1 and 4 only."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 20.0 ],
                                                    "text": "05"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 20.0 ],
                                                    "text": "Positions 2, 3, 5 and 6 remain unchanged."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 20.0 ],
                                                    "text": "06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 376.0, 405.0, 20.0 ],
                                                    "text": "The one-shot mutate has ended: now FULL generation."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 20.0 ],
                                                    "text": "07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 172.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 172.0, 22.0 ],
                                                    "text": "listfeed 1 2 3 4 5 6"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 250.0, 422.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 250.0, 422.0, 350.0, 20.0 ],
                                                    "text": "Restore the original list."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 20.0 ],
                                                    "text": "08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 157.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 157.0, 22.0 ],
                                                    "text": "mutate 0 n 0 0 0 n"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 234.79999999999998, 468.0, 366.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 234.79999999999998, 468.0, 366.0, 20.0 ],
                                                    "text": "Arm a DIFFERENT mask."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 515.0, 27.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 515.0, 27.0, 20.0 ],
                                                    "text": "09"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 512.0, 117.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 512.0, 117.0, 22.0 ],
                                                    "text": "bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 514.0, 406.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 514.0, 406.0, 20.0 ],
                                                    "text": "Only positions 2 and 6 are newly sampled."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 12.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 242.0, 20.0 ],
                                                    "text": "WHAT TO NOTICE"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-046",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 20.0 ],
                                                    "text": "Arming a mutate mask cancels the listfeed held-first-bang. Its first following bang performs the requested mutation, not a replay. Mutations do not sort the resulting slots."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontsize": 12.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 54.0, 485.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 485.0, 250.0, 24.0 ],
                                    "text": "p 05_Explicit_Mutate_Mask",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-022",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 487.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 324.0, 487.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-023",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 524.0, 576.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 524.0, 576.0, 19.0 ],
                                    "text": "Use 0 to KEEP a slot and n to REPLACE it. The mutation runs on the next bang; the explicit mask is then consumed.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-024",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 598.0, 445.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 598.0, 445.0, 495.0, 24.0 ],
                                    "text": "06  ROUND-ROBIN MUTATE",
                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.1, 0.52, 0.4, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-025",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 24.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "text": "06  CYCLIC MUTATION",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "text": "mutate1, mutate2, mutate3 and mutatecycle n arm repeated, positional changes. One bang advances one group.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 15.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.1, 0.52, 0.4, 1.0 ],
                                                    "fontsize": 17.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "saved_object_attributes": {
                                                        "filename": "rand_list.js",
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 14.0,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "text": "(click bang to see a list)",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "text": "init seed 565067905 burn 711",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_06"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "text": "For long state reports, open the Max Console.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "text": "01",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "text": "resetdefaults",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "text": "Start clean with range 0..1.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "text": "02",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 117.0, 27.0 ],
                                                    "text": "range 0 17",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 192.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 192.0, 405.0, 37.0 ],
                                                    "text": "Expand replacement choices.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "text": "03",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 172.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 172.0, 27.0 ],
                                                    "text": "listfeed 1 2 3 4 5 6",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 250.0, 238.0, 350.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 250.0, 238.0, 350.0, 37.0 ],
                                                    "text": "Install a recognizable starting list.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "text": "04",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "text": "mutate2",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "text": "Arm two-slot groups; NO list output yet.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "text": "05",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 37.0 ],
                                                    "text": "Change slots 1 and 2.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "text": "06",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 376.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 376.0, 405.0, 37.0 ],
                                                    "text": "Change slots 3 and 4 (preserve others).",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "text": "07",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "text": "cyclepos 6",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "text": "Set next starting slot to SIX (1-based).",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "text": "08",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "text": "Change slots 6 and 1, wrapping around.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "text": "09",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 512.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 512.0, 117.0, 27.0 ],
                                                    "text": "stopcycle",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 514.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 514.0, 405.0, 37.0 ],
                                                    "text": "Stop the round-robin algorithm.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "text": "10",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-046",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 558.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 558.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 560.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 560.0, 405.0, 37.0 ],
                                                    "text": "Back to full-list generation.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-048",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "text": "WHAT TO NOTICE",
                                                    "textcolor": [ 0.1, 0.52, 0.4, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-049",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "text": "mutate1 advances one slot per bang. mutate2 advances two; mutate3 advances three. mutatecycle 4 is the generic form. This mutation is CUMULATIVE: slots changed earlier remain changed.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-050",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-046", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 606.0, 485.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 485.0, 250.0, 24.0 ],
                                    "text": "p 06_Round_Robin_Mutate",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-026",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 487.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 876.0, 487.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-027",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 524.0, 558.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 524.0, 558.0, 19.0 ],
                                    "text": "mutate1, mutate2, mutate3 and mutatecycle n arm repeated, positional changes. One bang advances one group.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-028",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 580.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 46.0, 580.0, 495.0, 24.0 ],
                                    "text": "07  ROTATE EXISTING VALUES",
                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.85, 0.22, 0.27, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-029",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 24.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "text": "07  ROTATE AN EXISTING LIST",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "text": "rotate1...rotate16 rotate the ACTUAL values of a fixed source list, not a mask, and do not generate random numbers.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 15.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "fontsize": 17.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "saved_object_attributes": {
                                                        "filename": "rand_list.js",
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 14.0,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "text": "(click bang to see a list)",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "text": "init seed 1018971355 burn 119",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_07"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "text": "For long state reports, open the Max Console.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "text": "01",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "text": "resetdefaults",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "text": "Exit any earlier rotation mode.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "text": "02",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 164.4, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 164.4, 27.0 ],
                                                    "text": "rotate1 1 0 0 0 0 0",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 242.4, 192.0, 357.6, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 242.4, 192.0, 357.6, 37.0 ],
                                                    "text": "Arm 1-position right rotation; NO output.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "text": "03",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 238.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 238.0, 405.0, 37.0 ],
                                                    "text": "First bang emits ORIGINAL list: 1 0 0 0 0 0.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "text": "04",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "text": "One position right: 0 1 0 0 0 0.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "text": "05",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 330.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 330.0, 405.0, 37.0 ],
                                                    "text": "Another position right: 0 0 1 0 0 0.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "text": "06",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 164.4, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 164.4, 27.0 ],
                                                    "text": "rotate2 1 2 3 0 0 0",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 242.4, 376.0, 357.6, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 242.4, 376.0, 357.6, 37.0 ],
                                                    "text": "Arm a NEW 2-position rotation source.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "text": "07",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "text": "First bang again emits ORIGINAL: 1 2 3 0 0 0.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "text": "08",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "text": "Second bang moves each value two slots right.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "text": "09",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 512.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 512.0, 118.8, 27.0 ],
                                                    "text": "resetdefaults",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 514.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 514.0, 403.2, 37.0 ],
                                                    "text": "Exit rotation mode and restore defaults.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "text": "WHAT TO NOTICE",
                                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-046",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "text": "Once rotation is active, it takes precedence over normal bang behavior. Source list stays fixed while each output is a rotated copy. Use resetdefaults or init to exit rotation mode.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 54.0, 620.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 620.0, 250.0, 24.0 ],
                                    "text": "p 07_Rotate_Existing_List",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-030",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 324.0, 622.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 324.0, 622.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-031",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 659.0, 576.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 659.0, 576.0, 19.0 ],
                                    "text": "rotate1...rotate16 rotate the ACTUAL values of a fixed source list, not a mask, and do not generate random numbers.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 16.0,
                                    "id": "box-032",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 598.0, 580.0, 495.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 598.0, 580.0, 495.0, 24.0 ],
                                    "text": "08  SEED + MAKE + STATE",
                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.15, 0.42, 0.78, 1.0 ],
                                    "fontsize": 14.0,
                                    "id": "box-033",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
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
                                        "rect": [ 140.0, 100.0, 1090.0, 775.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 24.0,
                                                    "id": "box-001",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 30.0, 18.0, 1010.0, 35.0 ],
                                                    "text": "08  SEED, MAKE AND REPRODUCIBILITY",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-002",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 34.0, 59.0, 1018.0, 45.0 ],
                                                    "text": "Understand command scheduling and repeatable pseudo-random sequences. make sets parameters and ARMS the next bang.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 15.0,
                                                    "id": "box-003",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 108.0, 570.0, 26.0 ],
                                                    "text": "CLICK THE STEP MESSAGES IN ORDER",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.15, 0.42, 0.78, 1.0 ],
                                                    "fontsize": 17.0,
                                                    "id": "box-004",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 802.0, 216.0, 167.0, 31.0 ],
                                                    "saved_object_attributes": {
                                                        "filename": "rand_list.js",
                                                        "parameter_enable": 0
                                                    },
                                                    "text": "js rand_list.js",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-005",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 722.0, 120.0, 335.0, 25.0 ],
                                                    "text": "BANG = EXECUTE / ADVANCE",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.85, 0.22, 0.27, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontface": 1,
                                                    "fontsize": 20.0,
                                                    "gradient": 1,
                                                    "id": "box-006",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 782.0, 153.0, 101.0, 34.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 13.0,
                                                    "id": "box-007",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 267.0, 350.0, 22.0 ],
                                                    "text": "ONE INSTANCE, TWO OUTLETS",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-008",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 299.0, 348.0, 20.0 ],
                                                    "text": "LEFT OUTLET   Resulting integer list",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 14.0,
                                                    "id": "box-009",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 324.0, 340.0, 31.0 ],
                                                    "text": "(click bang to see a list)",
                                                    "textcolor": [ 0.11, 0.17, 0.29, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-010",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 382.0, 350.0, 20.0 ],
                                                    "text": "RIGHT OUTLET   Status / diagnostic message",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-011",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 714.0, 408.0, 340.0, 35.0 ],
                                                    "text": "init seed 1443231962 burn 338",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-012",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 324.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-013",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1150.0, 408.0, 80.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-014",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 465.0, 250.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_list_08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "box-015",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1150.0, 497.0, 260.0, 22.0 ],
                                                    "text": "print rand_list_tutorial_status_08"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-016",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 462.0, 350.0, 39.0 ],
                                                    "text": "For long state reports, open the Max Console.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-017",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 713.0, 516.0, 354.0, 38.0 ],
                                                    "text": "Every stage uses its own [js rand_list.js] instance.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-018",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 147.0, 27.0, 22.0 ],
                                                    "text": "01",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-019",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 144.0, 118.8, 27.0 ],
                                                    "text": "resetdefaults",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-020",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 146.0, 403.2, 37.0 ],
                                                    "text": "Start from a known state.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-021",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 193.0, 27.0, 22.0 ],
                                                    "text": "02",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-022",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 190.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 190.0, 118.8, 27.0 ],
                                                    "text": "seed 12345678",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-023",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 192.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 192.0, 403.2, 37.0 ],
                                                    "text": "Choose a repeatable RNG starting state.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-024",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 239.0, 27.0, 22.0 ],
                                                    "text": "03",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-025",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 236.0, 134.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 236.0, 134.0, 27.0 ],
                                                    "text": "make 6 1 15 0 1",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-026",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 212.0, 238.0, 388.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 212.0, 238.0, 388.0, 37.0 ],
                                                    "text": "Arm length 6, range 1..15, UNIQUE, sorted up.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-027",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 285.0, 27.0, 22.0 ],
                                                    "text": "04",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-028",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 282.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-029",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 284.0, 405.0, 37.0 ],
                                                    "text": "Write down the resulting ordered list.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-030",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 331.0, 27.0, 22.0 ],
                                                    "text": "05",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-031",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 328.0, 118.8, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 328.0, 118.8, 27.0 ],
                                                    "text": "seed 12345678",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-032",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 196.8, 330.0, 403.2, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 196.8, 330.0, 403.2, 37.0 ],
                                                    "text": "Return to the very same seed.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-033",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 377.0, 27.0, 22.0 ],
                                                    "text": "06",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-034",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 374.0, 134.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 374.0, 134.0, 27.0 ],
                                                    "text": "make 6 1 15 0 1",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-035",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 212.0, 376.0, 388.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 212.0, 376.0, 388.0, 37.0 ],
                                                    "text": "Reapply the same settings.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-036",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 423.0, 27.0, 22.0 ],
                                                    "text": "07",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-037",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 420.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-038",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 422.0, 405.0, 37.0 ],
                                                    "text": "Compare: this list should match step 4.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-039",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 469.0, 27.0, 22.0 ],
                                                    "text": "08",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-040",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 466.0, 117.0, 27.0 ],
                                                    "text": "getstate",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-041",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 468.0, 405.0, 37.0 ],
                                                    "text": "Inspect length/range/seed and active flags.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-042",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 515.0, 27.0, 22.0 ],
                                                    "text": "09",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-043",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 512.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 512.0, 117.0, 27.0 ],
                                                    "text": "init",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-044",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 514.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 514.0, 405.0, 37.0 ],
                                                    "text": "Reseed with time + salt; notice status seed/burn.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-045",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 561.0, 27.0, 22.0 ],
                                                    "text": "10",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_color1": [ 0.91, 0.95, 1.0, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                                    "bgfillcolor_type": "gradient",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "box-046",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 558.0, 117.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 72.0, 558.0, 117.0, 27.0 ],
                                                    "text": "bang",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-047",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 560.0, 405.0, 37.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 195.0, 560.0, 405.0, 37.0 ],
                                                    "text": "Generate a new list using retained parameters.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 1,
                                                    "fontsize": 14.0,
                                                    "id": "box-048",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 625.0, 240.0, 22.0 ],
                                                    "text": "WHAT TO NOTICE",
                                                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 12.0,
                                                    "id": "box-049",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 38.0, 650.0, 1005.0, 61.0 ],
                                                    "text": "make DOES NOT immediately output in this uploaded version. Its five numbers mean length, minimum, maximum, allowrepeats (0 or 1), sort (-1/0/1). init changes seed, not parameters.",
                                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 11.0,
                                                    "id": "box-050",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 36.0, 720.0, 991.0, 20.0 ],
                                                    "text": "All configuration / arming messages are deferred unless a step explicitly says otherwise.",
                                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "box-012", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-013", 0 ],
                                                    "order": 1,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-014", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-015", 0 ],
                                                    "order": 0,
                                                    "source": [ "box-004", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-006", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-009", 0 ],
                                                    "source": [ "box-012", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-011", 0 ],
                                                    "source": [ "box-013", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-019", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-022", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-025", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-028", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-031", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-034", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-037", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-040", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-043", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "box-004", 0 ],
                                                    "source": [ "box-046", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 606.0, 620.0, 250.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 620.0, 250.0, 24.0 ],
                                    "text": "p 08_Seed_Make_and_State",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-034",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 876.0, 622.0, 220.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 876.0, 622.0, 220.0, 19.0 ],
                                    "text": "Double-click to open this lesson.",
                                    "textcolor": [ 0.4, 0.44, 0.5, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "box-035",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 659.0, 629.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 606.0, 659.0, 629.0, 19.0 ],
                                    "text": "Understand command scheduling and repeatable pseudo-random sequences. make sets parameters and ARMS the next bang.",
                                    "textcolor": [ 0.16, 0.19, 0.23, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 12.0,
                                    "id": "box-036",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 732.0, 1050.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 732.0, 1050.0, 20.0 ],
                                    "text": "IMPORTANT: In this specific upload, rotate1...rotate16 rotate list VALUES, not a mutate mask. There is no mutatepattern function in the supplied JS.",
                                    "textcolor": [ 0.85, 0.22, 0.27, 1.0 ]
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 814.0, 12.0, 232.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 814.0, 12.0, 232.0, 24.0 ],
                    "text": "p EIGHT_STAGE_TUTORIAL",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "ec-tutorial-caption",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 794.0, 46.0, 300.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 794.0, 46.0, 300.0, 18.0 ],
                    "text": "DOUBLE-CLICK FOR THE STEP-BY-STEP TUTORIAL",
                    "textcolor": [ 0.15, 0.42, 0.78, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "m_reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m_reset", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-20", 0 ]
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
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-30", 0 ]
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
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-599", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 1 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}