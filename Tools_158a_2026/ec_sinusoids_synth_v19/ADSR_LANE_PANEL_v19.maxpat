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
        "rect": [
            100.0,
            100.0,
            1000.0,
            565.0
        ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "panel-title",
                    "maxclass": "comment",
                    "text": "12 INDEPENDENT ADSR LANES \u2014 edit sliders directly \u2022 choose memory index \u2022 STO / RCL",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        5.0,
                        3.0,
                        850.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        3.0,
                        850.0,
                        20.0
                    ],
                    "fontface": 1
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-01",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_01_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        5.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-01",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 01 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-02",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_02_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        252.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        252.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-02",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        95.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 02 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-03",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_03_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        499.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        499.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-03",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 03 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-04",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_04_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        746.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        746.0,
                        27.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-04",
                    "index": 4,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        245.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 04 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-05",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_05_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        5.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-05",
                    "index": 5,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        320.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 05 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-06",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_06_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        252.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        252.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-06",
                    "index": 6,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        395.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 06 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-07",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_07_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        499.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        499.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-07",
                    "index": 7,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        470.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 07 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-08",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_08_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        746.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        746.0,
                        197.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-08",
                    "index": 8,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        545.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 08 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-09",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_09_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        5.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-09",
                    "index": 9,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        620.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 09 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-10",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_10_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        252.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        252.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-10",
                    "index": 10,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        695.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 10 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-11",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_11_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        499.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        499.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-11",
                    "index": 11,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        770.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 11 envelope signal"
                }
            },
            {
                "box": {
                    "id": "lane-bpatch-12",
                    "maxclass": "bpatcher",
                    "name": "ADSR_Lane_12_v19.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        746.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        746.0,
                        367.0,
                        240.0,
                        160.0
                    ],
                    "args": [],
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "viewvisibility": 1,
                    "clickthrough": 0,
                    "lockeddragscroll": 0
                }
            },
            {
                "box": {
                    "id": "lane-out-12",
                    "index": 12,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        845.0,
                        530.0,
                        30.0,
                        30.0
                    ],
                    "comment": "lane 12 envelope signal"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-01",
                        0
                    ],
                    "destination": [
                        "lane-out-01",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-02",
                        0
                    ],
                    "destination": [
                        "lane-out-02",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-03",
                        0
                    ],
                    "destination": [
                        "lane-out-03",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-04",
                        0
                    ],
                    "destination": [
                        "lane-out-04",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-05",
                        0
                    ],
                    "destination": [
                        "lane-out-05",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-06",
                        0
                    ],
                    "destination": [
                        "lane-out-06",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-07",
                        0
                    ],
                    "destination": [
                        "lane-out-07",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-08",
                        0
                    ],
                    "destination": [
                        "lane-out-08",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-09",
                        0
                    ],
                    "destination": [
                        "lane-out-09",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-10",
                        0
                    ],
                    "destination": [
                        "lane-out-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-11",
                        0
                    ],
                    "destination": [
                        "lane-out-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "lane-bpatch-12",
                        0
                    ],
                    "destination": [
                        "lane-out-12",
                        0
                    ]
                }
            }
        ]
    }
}
