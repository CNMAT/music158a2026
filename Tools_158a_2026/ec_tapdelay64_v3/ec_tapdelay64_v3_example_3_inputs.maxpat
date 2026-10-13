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
        "rect": [ 2428.0, 254.0, 1230.0, 661.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 797.0, 578.0, 93.0, 20.0 ],
                    "text": "Tap 8 ← input 2"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 781.0, 596.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 781.0, 554.0, 197.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~ 2-2"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 174.0, 578.0, 93.0, 20.0 ],
                    "text": "Tap 8 ← input 2"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 158.0, 596.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 158.0, 554.0, 197.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~ 2-2"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 774.0, 517.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 789.0, 492.0, 93.0, 20.0 ],
                    "text": "Tap 7 ← input 1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 412.0, 465.0, 381.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~ 4-7"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 412.0, 517.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 532.0, 517.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 420.0, 492.0, 93.0, 20.0 ],
                    "text": "Tap 4 ← input 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 545.0, 492.0, 93.0, 20.0 ],
                    "text": "Tap 5 ← input 2"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 492.0, 93.0, 20.0 ],
                    "text": "Tap 6 ← input 3"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 653.0, 517.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 264.0, 241.0, 20.0 ],
                    "text": "250ms added delay between taps 9 outputs"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1036.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1057.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 9 ← input 3"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 15.0, 194.0, 20.0 ],
                    "text": "ROUND ROBIN: 3 inputs → 8 taps"
                }
            },
            {
                "box": {
                    "id": "usage",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 52.0, 584.0, 20.0 ],
                    "text": "Turn DSP on in the parent help patch. Click an input button; only the taps assigned to that input should flash."
                }
            },
            {
                "box": {
                    "id": "label0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 95.0, 45.0, 20.0 ],
                    "text": "Input 1"
                }
            },
            {
                "box": {
                    "id": "bang0",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click0",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 95.0, 45.0, 20.0 ],
                    "text": "Input 2"
                }
            },
            {
                "box": {
                    "id": "bang1",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 150.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 150.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 275.0, 95.0, 45.0, 20.0 ],
                    "text": "Input 3"
                }
            },
            {
                "box": {
                    "id": "bang2",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 275.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 275.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 25.0, 230.0, 360.0, 22.0 ],
                    "text": "mc.pack~ 3"
                }
            },
            {
                "box": {
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "signal", "" ],
                    "patching_rect": [ 25.0, 305.0, 300.0, 22.0 ],
                    "text": "ec_tapdelay64_v3~ 3"
                }
            },
            {
                "box": {
                    "id": "init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 306.0, 263.0, 150.0, 22.0 ],
                    "text": "loadmess 250 8"
                }
            },
            {
                "box": {
                    "id": "pair",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 475.0, 263.0, 39.0, 22.0 ],
                    "text": "250 9"
                }
            },
            {
                "box": {
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 229.0, 263.0, 70.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "split",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 9,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 37.0, 370.0, 1016.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~ 9"
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 306.0, 334.0, 113.0, 22.0 ],
                    "text": "print round_robin_3"
                }
            },
            {
                "box": {
                    "id": "taplabel0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 1 ← input 1"
                }
            },
            {
                "box": {
                    "id": "meter0",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 37.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 181.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 2 ← input 2"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 162.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 306.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 3 ← input 3"
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 287.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 431.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 4 ← input 1"
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 412.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 556.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 5 ← input 2"
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 536.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 681.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 6 ← input 3"
                }
            },
            {
                "box": {
                    "id": "meter5",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 660.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 806.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 7 ← input 1"
                }
            },
            {
                "box": {
                    "id": "meter6",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 785.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 931.0, 398.0, 93.0, 20.0 ],
                    "text": "Tap 8 ← input 2"
                }
            },
            {
                "box": {
                    "id": "meter7",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 910.0, 434.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "foot",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 474.0, 294.0, 319.0, 20.0 ],
                    "text": "Tap delays: 0, 250, 500, 750, 1000, 1250, 1500, 1750 ms. "
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "click0", 0 ],
                    "source": [ "bang0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click1", 0 ],
                    "source": [ "bang1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click2", 0 ],
                    "source": [ "bang2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "source": [ "click0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "source": [ "click1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 2 ],
                    "source": [ "click2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 1 ],
                    "source": [ "dump", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 34.5, 460.5625, 421.5, 460.5625 ],
                    "order": 1,
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "midpoints": [ 34.5, 553.2890625 ],
                    "order": 2,
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 34.5, 550.44921875 ],
                    "order": 0,
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "split", 0 ],
                    "order": 3,
                    "source": [ "engine", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 1 ],
                    "source": [ "init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-11", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-11", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 0 ],
                    "source": [ "pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "engine", 1 ],
                    "source": [ "pair", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter0", 0 ],
                    "source": [ "split", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter1", 0 ],
                    "source": [ "split", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter2", 0 ],
                    "source": [ "split", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter3", 0 ],
                    "source": [ "split", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter4", 0 ],
                    "source": [ "split", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter5", 0 ],
                    "source": [ "split", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter6", 0 ],
                    "source": [ "split", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter7", 0 ],
                    "source": [ "split", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "split", 8 ]
                }
            }
        ],
        "autosave": 0
    }
}