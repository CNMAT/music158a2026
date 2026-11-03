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
        "rect": [ 2685.0, 177.0, 1080.0, 790.0 ],
        "default_fontsize": 13.0,
        "description": "Release tracked MIDI notes before every new pitch/velocity note-on; pass note-offs; bang/flush/stop releases.",
        "digest": "Flush before each MIDI note-on",
        "tags": "MIDI note flush monophonic",
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 25.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 18.0, 1020.0, 34.0 ],
                    "text": "MIDI / FLUSH BEFORE NOTE"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 15.0,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 60.0, 1015.0, 23.0 ],
                    "text": "Every new note-on first releases held notes, then sends the new pitch / velocity pair."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "inlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 38.0, 105.0, 105.0, 20.0 ],
                    "text": "LIST IN"
                }
            },
            {
                "box": {
                    "comment": "Pitch velocity (0-127); bang, flush or stop releases tracked notes",
                    "id": "in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 135.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "testlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 151.0, 105.0, 245.0, 20.0 ],
                    "text": "CLICK TO TRY: note-ons"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Play MIDI note 60 after releasing any tracked note.",
                    "id": "test60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 155.0, 135.0, 72.0, 24.0 ],
                    "text": "60 100"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Release the previous note, then play MIDI note 64.",
                    "id": "test64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 240.0, 135.0, 72.0, 24.0 ],
                    "text": "64 100"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Release the previous note, then play MIDI note 67.",
                    "id": "test67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 325.0, 135.0, 72.0, 24.0 ],
                    "text": "67 100"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "offlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 414.0, 105.0, 78.0, 20.0 ],
                    "text": "Note-off"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Pass a normal note-off for pitch 67, without flushing other pitches.",
                    "id": "off67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 415.0, 135.0, 65.0, 24.0 ],
                    "text": "67 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "flushlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 105.0, 110.0, 20.0 ],
                    "text": "Release held"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Send note-offs for all notes tracked by this instance.",
                    "id": "flushmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 505.0, 135.0, 65.0, 24.0 ],
                    "text": "flush"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "route",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 45.0, 215.0, 182.0, 23.0 ],
                    "text": "route bang flush stop"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "manual",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 475.0, 270.0, 38.0, 23.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "routeinfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 213.0, 295.0, 20.0 ],
                    "text": "bang / flush / stop = release only"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 45.0, 280.0, 207.0, 23.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "second",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 37.0, 320.0, 240.0, 20.0 ],
                    "text": "2. THEN pass the original pair"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "first",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 286.0, 277.0, 260.0, 20.0 ],
                    "text": "1. FIRST check velocity"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "inspect",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 315.0, 315.0, 100.0, 23.0 ],
                    "text": "unpack 0 0"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "positive",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 396.0, 354.0, 40.0, 23.0 ],
                    "text": "> 0"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "select",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 396.0, 395.0, 51.0, 23.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "vcheck",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.0, 351.0, 163.0, 20.0 ],
                    "text": "Only note-ons trigger a flush."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 45.0, 363.0, 169.0, 23.0 ],
                    "text": "unpack 0 0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "preserve",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 407.0, 280.0, 20.0 ],
                    "text": "Velocity is restored AFTER flushing."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "flush",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 45.0, 480.0, 169.0, 23.0 ],
                    "text": "flush"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "flushinfo",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.0, 480.0, 340.0, 21.0 ],
                    "text": "Tracks held notes. A bang emits note-offs."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45.0, 534.0, 169.0, 23.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 45.0, 579.0, 169.0, 23.0 ],
                    "text": "t l l l"
                }
            },
            {
                "box": {
                    "comment": "Pitch velocity pairs: all required note-offs FIRST, then the new note-on",
                    "id": "out",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 682.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "outlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 724.0, 110.0, 20.0 ],
                    "text": "LIST OUT"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 633.0, 112.0, 23.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "hint": "Most recent output pair. Enable Console to see every event in order.",
                    "id": "display",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 682.0, 112.0, 24.0 ],
                    "text": "60 100"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "displaylabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 185.0, 724.0, 135.0, 20.0 ],
                    "text": "Latest output"
                }
            },
            {
                "box": {
                    "hint": "Enable printing of every output pair in Max Console. Off by default.",
                    "id": "console",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 435.0, 571.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 12.0,
                    "id": "consolelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 467.0, 572.0, 100.0, 20.0 ],
                    "text": "Console"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 435.0, 633.0, 95.0, 23.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 682.0, 155.0, 23.0 ],
                    "text": "print ec_midi_flush"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "printlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 387.0, 724.0, 222.0, 20.0 ],
                    "text": "Watch note-off, then note-on."
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "divider",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 609.0, 105.0, 4.0, 645.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "usehead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 108.0, 390.0, 23.0 ],
                    "text": "USE IN YOUR PATCH"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "usage",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 143.0, 299.0, 116.0 ],
                    "text": "Save this file beside your patch, then create:\n\nec_midi_flush_before_note\n\nLeft inlet: a two-integer list, e.g. 60 100.\nOutlet: pitch / velocity lists for your instrument.\nUse unpack 0 0 if separate outlets are needed."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "sequencehead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 319.0, 390.0, 23.0 ],
                    "text": "EXAMPLE"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 14.0,
                    "id": "sequence",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 355.0, 278.0, 100.0 ],
                    "text": "Input 60 100  →  output 60 100\nInput 64 100  →  output 60 0, THEN 64 100\nInput flush      →  output 64 0\n\nRetrigger 64 100 while 64 is held:\noutput 64 0, THEN 64 100."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "ruleshead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 513.0, 390.0, 23.0 ],
                    "text": "BEHAVIOR"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "rules",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 549.0, 285.0, 79.0 ],
                    "text": "• Velocity 1–127: release held notes, then play.\n• Velocity 0: pass the note-off normally.\n• bang / flush / stop: release without a new note.\n• Uses native Max objects; no external files.\n• Each instance keeps its own note tracking."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "limits",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 679.0, 277.0, 60.0 ],
                    "text": "Tracks only notes that pass through this instance.\nUse one instance per MIDI channel / destination.\nInstrument sustain and release behavior still apply.\nNo sound or MIDI device is opened by this patch."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "gate", 0 ],
                    "source": [ "console", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gate", 1 ],
                    "midpoints": [ 204.5, 611.0, 520.5, 611.0 ],
                    "source": [ "fan", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out", 0 ],
                    "source": [ "fan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set", 0 ],
                    "midpoints": [ 129.5, 618.0, 199.5, 618.0 ],
                    "source": [ "fan", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "source": [ "flush", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "source": [ "flush", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "midpoints": [ 514.5, 187.0, 54.5, 187.0 ],
                    "source": [ "flushmsg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "source": [ "in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "positive", 0 ],
                    "source": [ "inspect", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flush", 0 ],
                    "midpoints": [ 484.5, 305.0, 582.0, 305.0, 582.0, 461.0, 54.5, 461.0 ],
                    "source": [ "manual", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "midpoints": [ 424.5, 187.0, 54.5, 187.0 ],
                    "source": [ "off67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fan", 0 ],
                    "source": [ "pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "select", 0 ],
                    "source": [ "positive", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "manual", 0 ],
                    "midpoints": [ 163.16666666666669, 252.0, 484.5, 252.0 ],
                    "source": [ "route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "manual", 0 ],
                    "midpoints": [ 108.83333333333334, 252.0, 484.5, 252.0 ],
                    "source": [ "route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "manual", 0 ],
                    "midpoints": [ 54.5, 252.0, 484.5, 252.0 ],
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trigger", 0 ],
                    "midpoints": [ 217.5, 255.0, 54.5, 255.0 ],
                    "source": [ "route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flush", 0 ],
                    "midpoints": [ 405.5, 446.0, 54.5, 446.0 ],
                    "source": [ "select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "display", 0 ],
                    "source": [ "set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "midpoints": [ 164.5, 187.0, 54.5, 187.0 ],
                    "source": [ "test60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "midpoints": [ 249.5, 187.0, 54.5, 187.0 ],
                    "source": [ "test64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "midpoints": [ 334.5, 187.0, 54.5, 187.0 ],
                    "source": [ "test67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "inspect", 0 ],
                    "midpoints": [ 242.5, 310.0, 324.5, 310.0 ],
                    "source": [ "trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack", 0 ],
                    "source": [ "trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flush", 1 ],
                    "source": [ "unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flush", 0 ],
                    "source": [ "unpack", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}