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
        "rect": [ 134.0, 172.0, 1016.0, 817.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 543.0, 289.0, 377.0, 35.0 ],
                    "text": "0.96 -0.96 0.506667 -1. -1. -0.04 -1. -1. -1. -1. -0.266667 -1. -1. -1. -0.373333 -1. -1. -0.68 -0.826667 -1."
                }
            },
            {
                "box": {
                    "candycane": 23,
                    "id": "obj-2",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 456.0, 116.0, 464.0, 150.0 ],
                    "size": 20
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 447.0, 320.0, 45.0, 22.0 ],
                    "text": "2 8 6 1"
                }
            },
            {
                "box": {
                    "candycane": 23,
                    "id": "obj-1",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 50.0, 490.0, 400.0, 138.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 20
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 25.0, 480.0, 29.0 ],
                    "text": "probability-normalizer.js — 3 decimal output"
                }
            },
            {
                "box": {
                    "id": "desc1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 62.0, 760.0, 20.0 ],
                    "text": "Outputs probability weights rounded to 0.001 while preserving index order and an exact total of 1.000."
                }
            },
            {
                "box": {
                    "id": "msg1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 125.0, 90.0, 22.0 ],
                    "text": "90 50 3."
                }
            },
            {
                "box": {
                    "id": "c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 160.0, 126.0, 210.0, 20.0 ],
                    "text": "→ 0.629 0.350 0.021"
                }
            },
            {
                "box": {
                    "id": "msg2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 165.0, 70.0, 22.0 ],
                    "text": "2 1 1"
                }
            },
            {
                "box": {
                    "id": "c2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 166.0, 210.0, 20.0 ],
                    "text": "→ 0.500 0.250 0.250"
                }
            },
            {
                "box": {
                    "id": "msg3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 205.0, 70.0, 22.0 ],
                    "text": "1 1 1"
                }
            },
            {
                "box": {
                    "id": "c3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 206.0, 270.0, 20.0 ],
                    "text": "→ 0.334 0.333 0.333 = 1.000"
                }
            },
            {
                "box": {
                    "id": "msg4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 245.0, 80.0, 22.0 ],
                    "text": "0 0 0 0"
                }
            },
            {
                "box": {
                    "id": "c4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 246.0, 250.0, 20.0 ],
                    "text": "→ 0.250 0.250 0.250 0.250"
                }
            },
            {
                "box": {
                    "id": "msg5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 50.0, 285.0, 115.0, 22.0 ],
                    "text": "4.5 0.5 2. 8."
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 50.0, 355.0, 175.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "probability-normalizer.js",
                        "parameter_enable": 0
                    },
                    "text": "js probability-normalizer.js"
                }
            },
            {
                "box": {
                    "id": "tee",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 50.0, 405.0, 165.0, 22.0 ],
                    "text": "t l l l"
                }
            },
            {
                "box": {
                    "id": "out",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 67.0, 441.0, 430.0, 22.0 ],
                    "text": "0.31 0.006 0.238 0 0 0.152 0 0 0 0 0.116 0 0 0 0.099 0 0 0.051 0.028 0"
                }
            },
            {
                "box": {
                    "id": "zl",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 535.0, 455.0, 55.0, 22.0 ],
                    "text": "zl sum"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "sum",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 620.0, 455.0, 85.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "sumlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 715.0, 456.0, 110.0, 20.0 ],
                    "text": "sum = 1.000"
                }
            },
            {
                "box": {
                    "id": "note",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 469.0, 507.0, 700.0, 33.0 ],
                    "text": "Three-decimal quantization uses largest-remainder allocation \nso rounding never breaks the probability total."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "tee", 0 ],
                    "source": [ "js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "msg1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "msg2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "msg3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "msg4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "msg5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "tee", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out", 1 ],
                    "source": [ "tee", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "zl", 0 ],
                    "source": [ "tee", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sum", 0 ],
                    "source": [ "zl", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}