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
        "rect": [ 134.0, 172.0, 1045.0, 536.0 ],
        "boxes": [
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 15.0, 1000.0, 20.0 ],
                    "text": "AUTOMATIC: 8 inputs → 8 taps"
                }
            },
            {
                "box": {
                    "id": "usage",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 52.0, 1000.0, 20.0 ],
                    "text": "Turn DSP on in the parent help patch. Click an input button; only the taps assigned to that input should flash."
                }
            },
            {
                "box": {
                    "id": "label0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 95.0, 110.0, 20.0 ],
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
                    "patching_rect": [ 150.0, 95.0, 110.0, 20.0 ],
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
                    "patching_rect": [ 275.0, 95.0, 110.0, 20.0 ],
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
                    "id": "label3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 95.0, 110.0, 20.0 ],
                    "text": "Input 4"
                }
            },
            {
                "box": {
                    "id": "bang3",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 400.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 400.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 95.0, 110.0, 20.0 ],
                    "text": "Input 5"
                }
            },
            {
                "box": {
                    "id": "bang4",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 525.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 525.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 95.0, 110.0, 20.0 ],
                    "text": "Input 6"
                }
            },
            {
                "box": {
                    "id": "bang5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 650.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 650.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 95.0, 110.0, 20.0 ],
                    "text": "Input 7"
                }
            },
            {
                "box": {
                    "id": "bang6",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 775.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 775.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "label7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 900.0, 95.0, 110.0, 20.0 ],
                    "text": "Input 8"
                }
            },
            {
                "box": {
                    "id": "bang7",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 900.0, 130.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "click7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 900.0, 180.0, 70.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 25.0, 230.0, 985.0, 22.0 ],
                    "text": "mc.pack~ 8"
                }
            },
            {
                "box": {
                    "id": "engine",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "signal", "" ],
                    "patching_rect": [ 25.0, 305.0, 113.0, 22.0 ],
                    "text": "ec_tapdelay64_v3~"
                }
            },
            {
                "box": {
                    "id": "init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 116.0, 271.0, 150.0, 22.0 ],
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
                    "patching_rect": [ 306.0, 271.0, 100.0, 22.0 ],
                    "text": "250 8"
                }
            },
            {
                "box": {
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 446.0, 271.0, 70.0, 22.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "split",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 25.0, 370.0, 894.0, 22.0 ],
                    "text": "ec_tapdelay64_breakout~ 8"
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 119.0, 334.0, 270.0, 22.0 ],
                    "text": "print automatic_8"
                }
            },
            {
                "box": {
                    "id": "taplabel0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 415.0, 122.0, 20.0 ],
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
                    "patching_rect": [ 25.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 150.0, 415.0, 122.0, 20.0 ],
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
                    "patching_rect": [ 150.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 275.0, 415.0, 122.0, 20.0 ],
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
                    "patching_rect": [ 275.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 415.0, 122.0, 20.0 ],
                    "text": "Tap 4 ← input 4"
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 400.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 415.0, 122.0, 20.0 ],
                    "text": "Tap 5 ← input 5"
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 525.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 650.0, 415.0, 122.0, 20.0 ],
                    "text": "Tap 6 ← input 6"
                }
            },
            {
                "box": {
                    "id": "meter5",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 650.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 775.0, 415.0, 122.0, 20.0 ],
                    "text": "Tap 7 ← input 7"
                }
            },
            {
                "box": {
                    "id": "meter6",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 775.0, 470.0, 105.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "taplabel7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 900.0, 415.0, 122.0, 20.0 ],
                    "text": "Tap 8 ← input 8"
                }
            },
            {
                "box": {
                    "id": "meter7",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 900.0, 470.0, 105.0, 18.0 ]
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
                    "destination": [ "click3", 0 ],
                    "source": [ "bang3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click4", 0 ],
                    "source": [ "bang4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click5", 0 ],
                    "source": [ "bang5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click6", 0 ],
                    "source": [ "bang6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "click7", 0 ],
                    "source": [ "bang7", 0 ]
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
                    "destination": [ "pack", 3 ],
                    "source": [ "click3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 4 ],
                    "source": [ "click4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 5 ],
                    "source": [ "click5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 6 ],
                    "source": [ "click6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 7 ],
                    "source": [ "click7", 0 ]
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
                    "destination": [ "print", 0 ],
                    "source": [ "engine", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "split", 0 ],
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
            }
        ],
        "autosave": 0
    }
}