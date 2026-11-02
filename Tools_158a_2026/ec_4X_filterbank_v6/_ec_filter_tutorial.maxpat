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
        "rect": [ 134.0, 172.0, 1160.0, 860.0 ],
        "openinpresentation": 1,
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 931.0, 166.0, 555.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 891.0, 169.0, 238.0, 21.0 ],
                    "text": "Q adds resonance at center/cutoff freq.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575.0, 161.0, 555.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 622.0, 169.0, 192.0, 21.0 ],
                    "text": "Adjust cut-off /center frequency ",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 27.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 16.0, 900.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 16.0, 900.0, 37.0 ],
                    "text": "HEAR WHAT A FILTER DOES",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
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
                    "patching_rect": [ 26.0, 57.0, 1110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 57.0, 1110.0, 22.0 ],
                    "text": "A sound can contain many frequencies. A filter changes their balance, making the sound darker, thinner, or more focused.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                    "id": "leftcard",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 96.0, 298.0, 490.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 96.0, 298.0, 490.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                    "id": "filtercard",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 96.0, 798.0, 490.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 338.0, 96.0, 798.0, 490.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                    "id": "lessoncard",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 602.0, 1112.0, 208.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 602.0, 1112.0, 208.0 ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "sourcehead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 110.0, 258.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 110.0, 258.0, 27.0 ],
                    "text": "1  LISTEN",
                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.84, 0.87, 0.86, 1.0 ],
                    "bgoncolor": [ 0.48, 0.8, 0.68, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Start or mute this tutorial.",
                    "id": "sound",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 42.0, 149.0, 117.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 149.0, 117.0, 33.0 ],
                    "text": "Sound OFF",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "texton": "Sound ON",
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textovercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usebgoncolor": 1,
                    "usegradient": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "starttip",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 172.0, 148.0, 110.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 172.0, 148.0, 110.0, 33.0 ],
                    "text": "Click to begin.\nStart at a low level.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "vollabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 194.0, 150.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 194.0, 150.0, 21.0 ],
                    "text": "Volume",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.89, 0.88, 1.0 ],
                    "hint": "Listening level: 0 to 100 percent.",
                    "id": "vol",
                    "knobcolor": [ 0.03, 0.42, 0.43, 1.0 ],
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 42.0, 222.0, 190.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 222.0, 190.0, 22.0 ],
                    "size": 101.0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.16, 0.19, 0.21, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Volume percent.",
                    "htricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "volnum",
                    "maxclass": "number",
                    "maximum": 100,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 246.0, 221.0, 56.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 246.0, 221.0, 56.0, 23.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "sourcelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 264.0, 240.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 264.0, 240.0, 21.0 ],
                    "text": "Sound source",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Choose noise, a rich tone, or one sine frequency.",
                    "id": "source",
                    "items": [ "Noise (a broad hiss)", ",", "Harmonic tone (110 Hz)", ",", "Sine tone (440 Hz)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 42.0, 292.0, 260.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 292.0, 260.0, 23.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "sourcedesc",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 328.0, 239.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 42.0, 328.0, 239.0, 47.0 ],
                    "text": "Noise reveals the whole filter shape.\nThe harmonic tone makes sweeps musical.\nThe sine tone contains one frequency.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "listenlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 399.0, 260.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 399.0, 260.0, 21.0 ],
                    "text": "Compare what you hear",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Switch between original and filtered sound.",
                    "id": "listen",
                    "items": [ "Original (filter bypassed)", ",", "Filtered" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 42.0, 429.0, 260.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 429.0, 260.0, 23.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "meterlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 473.0, 145.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 473.0, 145.0, 20.0 ],
                    "text": "Output level",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "hint": "Level after volume and the Sound switch.",
                    "id": "meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 42.0, 500.0, 260.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 500.0, 260.0, 15.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "mutetip",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 533.0, 221.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 42.0, 533.0, 221.0, 33.0 ],
                    "text": "Sound OFF mutes this demo.\nPlots keep running while audio is active.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "filterhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 110.0, 520.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 110.0, 520.0, 27.0 ],
                    "text": "2  SHAPE THE SOUND",
                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Choose which frequency region to keep or reduce.",
                    "id": "type",
                    "items": [ "Low-pass", ",", "High-pass", ",", "Band-pass", ",", "Notch (band-stop)", ",", "One-pole low-pass" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 356.0, 146.0, 190.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 146.0, 190.0, 23.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "typedesc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 560.0, 146.0, 555.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 146.0, 555.0, 21.0 ],
                    "text": "Notch: reduces a region and keeps both sides.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freqlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 193.0, 155.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 193.0, 155.0, 21.0 ],
                    "text": "Frequency (Hz)",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.16, 0.19, 0.21, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "hint": "Cutoff or center: 80 to 10000 Hz.",
                    "htricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "freq",
                    "maxclass": "flonum",
                    "maximum": 10000.0,
                    "minimum": 80.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 190.0, 92.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 514.0, 190.0, 92.0, 23.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.86, 0.89, 0.88, 1.0 ],
                    "floatoutput": 1,
                    "hint": "Sweep frequency from low to high.",
                    "id": "freqslider",
                    "knobcolor": [ 0.03, 0.42, 0.43, 1.0 ],
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 622.0, 192.0, 278.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 622.0, 192.0, 264.0, 23.0 ],
                    "size": 1001.0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "qlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 928.0, 193.0, 30.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 894.0, 193.0, 30.0, 21.0 ],
                    "text": "Q",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.16, 0.19, 0.21, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "hint": "Resonance / width: 0.5 to 4. Higher Q is more focused.",
                    "htricolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "q",
                    "maxclass": "flonum",
                    "maximum": 4.0,
                    "minimum": 0.5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 969.0, 190.0, 74.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 931.0, 192.0, 74.0, 23.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "hint": "Return Q to a gentle setting.",
                    "id": "qreset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1054.0, 190.0, 64.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1017.0, 192.0, 64.0, 23.0 ],
                    "text": "0.707",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "freqhint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 222.0, 490.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 222.0, 490.0, 20.0 ],
                    "text": "Cutoff for low/high-pass; center for band-pass/notch.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "qhint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 846.0, 222.0, 276.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 846.0, 222.0, 276.0, 20.0 ],
                    "text": "Higher Q = narrower / more resonant",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "autoout": 1,
                    "bgcolor": [ 0.96, 0.98, 0.97, 1.0 ],
                    "curvecolor": [ 0.03, 0.42, 0.43, 1.0 ],
                    "fontface": 0,
                    "hint": "Filter response. In one-pole mode use the Frequency controls; Q is not used.",
                    "id": "graph",
                    "markercolor": [ 0.76, 0.81, 0.8, 1.0 ],
                    "maxclass": "filtergraph~",
                    "nfilters": 1,
                    "numinlets": 8,
                    "numoutlets": 7,
                    "outlettype": [ "list", "float", "float", "float", "float", "list", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 356.0, 253.0, 762.0, 151.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 253.0, 762.0, 151.0 ],
                    "range": [ 0.009999999776482582, 8.0 ],
                    "setfilter": [ 0, 4, 0, 0, 1, 880.0, 1.0, 3.0, 80.0, 10000.0, 1.0, 1.0, 0.5, 4.0 ],
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "graphexplain",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 411.0, 762.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 411.0, 762.0, 20.0 ],
                    "text": "CURVE = filter action.  0 dB: unchanged; below: reduced; above: boosted.  Left = low; right = high.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "beforelabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 438.0, 360.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 438.0, 360.0, 20.0 ],
                    "text": "ORIGINAL SPECTRUM",
                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "afterlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 748.0, 438.0, 360.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 748.0, 438.0, 360.0, 20.0 ],
                    "text": "FILTERED SPECTRUM",
                    "textcolor": [ 0.76, 0.39, 0.12, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.98, 0.97, 1.0 ],
                    "domain": [ 20.0, 20000.0 ],
                    "fgcolor": [ 0.03, 0.42, 0.43, 1.0 ],
                    "hint": "Actual sound: frequency left to right; stronger components extend upward.",
                    "id": "before",
                    "interval": 50,
                    "logfreq": 1,
                    "markercolor": [ 0.76, 0.81, 0.8, 1.0 ],
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 356.0, 462.0, 370.0, 83.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 462.0, 370.0, 83.0 ],
                    "range": [ 9.999999747378752e-05, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.98, 0.97, 1.0 ],
                    "domain": [ 20.0, 20000.0 ],
                    "fgcolor": [ 0.76, 0.39, 0.12, 1.0 ],
                    "hint": "Actual sound: frequency left to right; stronger components extend upward.",
                    "id": "after",
                    "interval": 50,
                    "logfreq": 1,
                    "markercolor": [ 0.76, 0.81, 0.8, 1.0 ],
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 748.0, 462.0, 370.0, 83.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 748.0, 462.0, 370.0, 83.0 ],
                    "range": [ 9.999999747378752e-05, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "plotnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 552.0, 762.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 552.0, 762.0, 19.0 ],
                    "text": "SPECTRA = actual sound. Same scales; measured before listening volume. Both remain visible when bypassed.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "lessonhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 615.0, 355.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 615.0, 355.0, 27.0 ],
                    "text": "3   EIGHT LESSONS --->>>",
                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.13333333333333333, 0.9058823529411765, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.06274509803921569, 0.13333333333333333, 0.9058823529411765, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Select a lesson to load a listening experiment.",
                    "id": "lesson",
                    "items": [ "1. Hear the filtered sound", ",", "2. Low-pass: soften the hiss", ",", "3. High-pass: lose the low end", ",", "4. Band-pass: a moving window", ",", "5. Notch: make a gap", ",", "6. Resonance: hear the bump", ",", "7. Optional: one sine tone", ",", "8. DSP: one pole / two poles" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 430.0, 615.0, 430.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 430.0, 615.0, 430.0, 23.0 ],
                    "textcolor": [ 0.8313725490196079, 0.8117647058823529, 0.8117647058823529, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.91, 0.89, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Reset the tutorial and turn its sound off.",
                    "id": "restart",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 882.0, 615.0, 113.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 882.0, 615.0, 113.0, 27.0 ],
                    "text": "Restart",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textovercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.91, 0.89, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Open the current lesson notes. Lesson 8 opens the DSP comparison.",
                    "id": "notesbutton",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1005.0, 615.0, 113.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1005.0, 615.0, 113.0, 27.0 ],
                    "text": "More notes",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textovercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "usegradient": 0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "lessontext0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 654.0, 1076.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 654.0, 1076.0, 22.0 ],
                    "text": "PREDICT: A notch does the opposite of a band-pass filter: it reduces one region while keeping frequencies on either side.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "lessontext1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 701.0, 1076.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 701.0, 1076.0, 22.0 ],
                    "text": "TRY: Sweep Frequency slowly from 110 to 1500 Hz over the harmonic tone. Lower Q to 0.70 for a wider gap. Compare Original and Filtered.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "lessontext2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 748.0, 1076.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.0, 748.0, 1076.0, 22.0 ],
                    "text": "NOTICE: Harmonics near the gap become quieter. A narrow notch may sound subtle. In other settings a notch can reduce a steady hum.",
                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 11.0,
                    "id": "footer",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 824.0, 1110.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 824.0, 1110.0, 19.0 ],
                    "text": "ec_filter_tutorial v1  |  Max/MSP 9  |  Eight lessons  |  No samples or external packages  |  Select lesson 8 for the DSP comparison.",
                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 18.0,
                    "id": "wiringhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 920.0, 1100.0, 27.0 ],
                    "text": "THE WORKING MSP PATCH — filtergraph~ controls biquad~; spectra show the two audio paths.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "sources",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 40.0, 60.0, 760.0, 520.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source: 0 noise / 1 saw / 2 sine",
                                    "id": "choice",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 30.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "head",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 80.0, 660.0, 30.0 ],
                                    "text": "Three built-in sounds. Changes crossfade in 40 ms.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "noise",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 30.0, 140.0, 110.0, 22.0 ],
                                    "text": "noise~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "noiseeq",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 140.0, 180.0, 60.0, 22.0 ],
                                    "text": "== 0",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "noisepack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 220.0, 100.0, 22.0 ],
                                    "text": "pack 0. 40",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "noiseline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 140.0, 260.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "noisegain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 30.0, 310.0, 50.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "saw",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 260.0, 140.0, 110.0, 22.0 ],
                                    "text": "saw~ 110",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "saweq",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 370.0, 180.0, 60.0, 22.0 ],
                                    "text": "== 1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sawpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 370.0, 220.0, 100.0, 22.0 ],
                                    "text": "pack 0. 40",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sawline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 370.0, 260.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sawgain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 260.0, 310.0, 50.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sine",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 490.0, 140.0, 110.0, 22.0 ],
                                    "text": "cycle~ 440",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sineeq",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 600.0, 180.0, 60.0, 22.0 ],
                                    "text": "== 2",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sinepack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 600.0, 220.0, 100.0, 22.0 ],
                                    "text": "pack 0. 40",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sineline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 600.0, 260.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sinegain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 490.0, 310.0, 50.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "trim",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 280.0, 370.0, 80.0, 22.0 ],
                                    "text": "*~ 0.1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Selected sound (mono)",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 420.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sum",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 370.0, 330.0, 60.0 ],
                                    "text": "Signal cords into the same inlet are added. Only the selected source stays on.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "noiseeq", 0 ],
                                    "order": 2,
                                    "source": [ "choice", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "saweq", 0 ],
                                    "order": 1,
                                    "source": [ "choice", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sineeq", 0 ],
                                    "order": 0,
                                    "source": [ "choice", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "noisegain", 0 ],
                                    "source": [ "noise", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "noisepack", 0 ],
                                    "source": [ "noiseeq", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "trim", 0 ],
                                    "source": [ "noisegain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "noisegain", 1 ],
                                    "source": [ "noiseline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "noiseline", 0 ],
                                    "source": [ "noisepack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sawgain", 0 ],
                                    "source": [ "saw", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sawpack", 0 ],
                                    "source": [ "saweq", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "trim", 0 ],
                                    "source": [ "sawgain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sawgain", 1 ],
                                    "source": [ "sawline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sawline", 0 ],
                                    "source": [ "sawpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sinegain", 0 ],
                                    "source": [ "sine", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sinepack", 0 ],
                                    "source": [ "sineeq", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "trim", 0 ],
                                    "source": [ "sinegain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sinegain", 1 ],
                                    "source": [ "sineline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sineline", 0 ],
                                    "source": [ "sinepack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "trim", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 40.0, 980.0, 180.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p Sound_sources",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "filter",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 450.0, 1060.0, 190.0, 23.0 ],
                    "text": "biquad~ @smooth 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "output",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 40.0, 60.0, 1010.0, 690.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Original",
                                    "id": "dry",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 30.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Filtered",
                                    "id": "wet",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 180.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "0 original / 1 filtered",
                                    "id": "ab",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 360.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Volume percent",
                                    "id": "vol",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Sound 0 / 1",
                                    "id": "on",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 800.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "head",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 83.0, 900.0, 28.0 ],
                                    "text": "Listening path: smooth comparison, volume, local sound switch.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "abclip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 360.0, 130.0, 90.0, 22.0 ],
                                    "text": "clip 0 1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "abpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 360.0, 170.0, 100.0, 22.0 ],
                                    "text": "pack 0. 50",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "abline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 360.0, 210.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "inverse",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 230.0, 260.0, 80.0, 22.0 ],
                                    "text": "!-~ 1.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "drymul",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 30.0, 310.0, 50.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "wetmul",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 180.0, 310.0, 50.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "vclip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 130.0, 110.0, 22.0 ],
                                    "text": "clip 0. 100.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "vscale",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 570.0, 170.0, 90.0, 22.0 ],
                                    "text": "* 0.005",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "vpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 210.0, 100.0, 22.0 ],
                                    "text": "pack 0. 60",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "vline",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 570.0, 250.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "switch",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 800.0, 130.0, 60.0, 22.0 ],
                                    "text": "t i i",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "startsel",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 890.0, 170.0, 60.0, 22.0 ],
                                    "text": "sel 1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "start",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 890.0, 210.0, 60.0, 24.0 ],
                                    "text": "start",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "onpack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 800.0, 270.0, 100.0, 22.0 ],
                                    "text": "pack 0. 60",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "online",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 800.0, 310.0, 100.0, 22.0 ],
                                    "text": "line~ 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "volume",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 110.0, 380.0, 60.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "gate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 110.0, 430.0, 60.0, 22.0 ],
                                    "text": "*~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "backstop",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 110.0, 480.0, 150.0, 22.0 ],
                                    "text": "clip~ -0.95 0.95",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "dac",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 110.0, 540.0, 100.0, 22.0 ],
                                    "text": "dac~ 1 2",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Output level",
                                    "id": "monitor",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 360.0, 540.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.0, 420.0, 500.0, 90.0 ],
                                    "text": "Sound OFF mutes this tutorial. It does not stop DSP for other patches.\nThe final clip~ is an output backstop; it is outside the filter and spectrum comparison.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "abclip", 0 ],
                                    "source": [ "ab", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "abpack", 0 ],
                                    "source": [ "abclip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "inverse", 0 ],
                                    "order": 0,
                                    "source": [ "abline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wetmul", 1 ],
                                    "order": 1,
                                    "source": [ "abline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "abline", 0 ],
                                    "source": [ "abpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "dac", 1 ],
                                    "order": 1,
                                    "source": [ "backstop", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "dac", 0 ],
                                    "order": 2,
                                    "source": [ "backstop", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "monitor", 0 ],
                                    "order": 0,
                                    "source": [ "backstop", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "drymul", 0 ],
                                    "source": [ "dry", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "volume", 0 ],
                                    "source": [ "drymul", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "backstop", 0 ],
                                    "source": [ "gate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "drymul", 1 ],
                                    "source": [ "inverse", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "switch", 0 ],
                                    "source": [ "on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 1 ],
                                    "source": [ "online", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "online", 0 ],
                                    "source": [ "onpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "dac", 0 ],
                                    "source": [ "start", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "start", 0 ],
                                    "source": [ "startsel", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "onpack", 0 ],
                                    "source": [ "switch", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "startsel", 0 ],
                                    "source": [ "switch", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "vscale", 0 ],
                                    "source": [ "vclip", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "volume", 1 ],
                                    "source": [ "vline", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "vclip", 0 ],
                                    "source": [ "vol", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 0 ],
                                    "source": [ "volume", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "vline", 0 ],
                                    "source": [ "vpack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "vpack", 0 ],
                                    "source": [ "vscale", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "wetmul", 0 ],
                                    "source": [ "wet", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "volume", 0 ],
                                    "source": [ "wetmul", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 40.0, 1170.0, 210.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p Compare_and_output",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "audiocmt",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 1170.0, 654.0, 21.0 ],
                    "text": "The same source feeds the dry path and the filter. Only the listening output is switched; both spectra remain live.",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "modeplus",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 450.0, 980.0, 240.0, 23.0 ],
                    "text": "expr ($i1 + 1) * ($i1 != 4)",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0, 980.0, 130.0, 23.0 ],
                    "text": "prepend mode",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freqmap",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1260.0, 310.0, 23.0 ],
                    "text": "expr 80. * exp(log(125.) * $f1 / 1000.)",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freqset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 350.0, 1260.0, 120.0, 23.0 ],
                    "text": "prepend set",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freqreverse",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 1310.0, 330.0, 23.0 ],
                    "text": "expr 1000. * log($f1 / 80.) / log(125.)",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "sliderset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 1310.0, 120.0, 23.0 ],
                    "text": "prepend set",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "qset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 550.0, 1260.0, 110.0, 23.0 ],
                    "text": "prepend set",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "volset",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 1260.0, 110.0, 23.0 ],
                    "text": "prepend set",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "typesel",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "" ],
                    "patching_rect": [ 30.0, 1390.0, 130.0, 23.0 ],
                    "text": "sel 0 1 2 3 4",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "def0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 1380.0, 520.0, 23.0 ],
                    "text": "set Low-pass: keeps the lows and reduces the highs.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "def1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 1416.0, 520.0, 23.0 ],
                    "text": "set High-pass: keeps the highs and reduces the lows.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "def2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 1452.0, 520.0, 23.0 ],
                    "text": "set Band-pass: favors a region and reduces both sides.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "def3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 1488.0, 520.0, 23.0 ],
                    "text": "set Notch: reduces a region and keeps both sides.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "lessons",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
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
                        "rect": [ 40.0, 60.0, 1100.0, 780.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Lesson index 0-6",
                                    "id": "in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 30.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "select",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 9,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 30.0, 90.0, 250.0, 22.0 ],
                                    "text": "sel 0 1 2 3 4 5 6 7",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Preset: source / type / Hz / Q / listen",
                                    "id": "out0",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 690.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Predict / start",
                                    "id": "out1",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 690.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Try",
                                    "id": "out2",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 570.0, 690.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Notice",
                                    "id": "out3",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 840.0, 690.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 145.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 145.0, 180.0, 24.0 ],
                                    "text": "0 0 1000. 0.707 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text0_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 145.0, 225.0, 24.0 ],
                                    "text": "set START: Turn Sound ON and choose a comfortable volume. Listen to the filtered noise: a softer version of a broad hiss.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text0_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 145.0, 225.0, 24.0 ],
                                    "text": "set TRY: Choose lesson 2. After that use Listen to compare Original and Filtered. Change one control at a time.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text0_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 145.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: A filter changes the balance of frequencies already in a sound. Our ears often hear this as a change in tone color.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 205.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 205.0, 180.0, 24.0 ],
                                    "text": "0 0 500. 0.707 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text1_0",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 205.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: Which parts of the hiss will a low-pass filter make quieter: the low sounds or the high sounds?",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text1_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 205.0, 225.0, 24.0 ],
                                    "text": "set TRY: Move Frequency slowly from 300 to 8000 Hz. Compare Original and Filtered. Listen for the return of the bright hiss.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text1_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 205.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: Low frequencies pass more easily. Higher frequencies fade gradually. The cutoff is a transition point rather than a hard wall.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 265.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 265.0, 180.0, 24.0 ],
                                    "text": "0 1 1500. 0.707 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text2_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 265.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: A high-pass filter favors high frequencies. What might happen to the low rumble in the noise?",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text2_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 265.0, 225.0, 24.0 ],
                                    "text": "set TRY: Move Frequency from 100 to 4000 Hz. Compare Original and Filtered. Describe the change with a word such as thin or bright.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text2_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 265.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: The lower part of the spectrum gets quieter. High-pass filtering can reduce low rumble in a recording.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 325.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 325.0, 180.0, 24.0 ],
                                    "text": "0 2 1000. 2. 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text3_0",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 325.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: A band-pass filter favors one frequency region. What will happen when that region moves?",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text3_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 325.0, 225.0, 24.0 ],
                                    "text": "set TRY: Sweep Frequency from 300 to 3000 Hz. Then change Q from 0.7 to 4. Watch the allowed band become narrower.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text3_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 325.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: Frequencies on both sides get quieter. A narrow band of noise can seem almost pitched. This suggests a telephone-like tone color.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 385.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 385.0, 180.0, 24.0 ],
                                    "text": "1 3 880. 3. 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text4_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 385.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: A notch does the opposite of a band-pass filter: it reduces one region while keeping frequencies on either side.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text4_1",
                                    "linecount": 5,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 385.0, 225.0, 24.0 ],
                                    "text": "set TRY: Sweep Frequency slowly from 110 to 1500 Hz over the harmonic tone. Lower Q to 0.7 for a wider gap. Compare Original and Filtered.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text4_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 385.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: Harmonics near the gap become quieter. A narrow notch may sound subtle. In other settings a notch can reduce a steady hum.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 445.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 445.0, 180.0, 24.0 ],
                                    "text": "1 0 900. 4. 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text5_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 445.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: Raising Q can emphasize frequencies near a low-pass cutoff. What might a moving peak sound like?",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text5_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 445.0, 225.0, 24.0 ],
                                    "text": "set TRY: Compare Q = 0.7 with Q = 4. Sweep Frequency slowly from 250 to 2500 Hz. Listen for a vowel-like or ringing quality.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text5_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 445.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: The curve can rise above 0 dB near the cutoff. Filtering can boost a region as well as reduce it. Q may change loudness too.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 505.0, 100.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 505.0, 180.0, 24.0 ],
                                    "text": "2 0 300. 0.707 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text6_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 505.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: A steady sine tone has only one frequency: here it is 440 Hz. There are no upper harmonics to remove.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text6_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 505.0, 225.0, 24.0 ],
                                    "text": "set TRY: Move Frequency slowly between 100 and 2000 Hz at Q = 0.7. Compare Original and Filtered after each movement.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text6_2",
                                    "linecount": 5,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 505.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: Once the filter settles the tone stays at 440 Hz and mainly changes level. A filter reshapes a rich sound without acting like a pitch shifter.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "tr7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 30.0, 565.0, 110.0, 22.0 ],
                                    "text": "t b b b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "preset7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 565.0, 180.0, 24.0 ],
                                    "text": "0 4 500. 0.707107 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text7_0",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 350.0, 565.0, 225.0, 24.0 ],
                                    "text": "set PREDICT: Both filters reduce high frequencies. Which will leave more hiss: one pole or two? The DSP window explains why.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text7_1",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 590.0, 565.0, 225.0, 24.0 ],
                                    "text": "set TRY: Use Hear ONE pole / Hear TWO poles in the DSP window. Both buttons set 500 Hz. Compare the curve and spectrum on this page.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "text7_2",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 830.0, 565.0, 225.0, 24.0 ],
                                    "text": "set NOTICE: A one-pole filter has a gentler rolloff. A two-pole biquad can fall more steeply and can resonate. Filter order is not a channel count.",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "select", 0 ],
                                    "source": [ "in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out0", 0 ],
                                    "source": [ "preset7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr0", 0 ],
                                    "source": [ "select", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr1", 0 ],
                                    "source": [ "select", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr2", 0 ],
                                    "source": [ "select", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr3", 0 ],
                                    "source": [ "select", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr4", 0 ],
                                    "source": [ "select", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr5", 0 ],
                                    "source": [ "select", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr6", 0 ],
                                    "source": [ "select", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr7", 0 ],
                                    "source": [ "select", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text0_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text0_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text0_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text1_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text1_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text1_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text2_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text2_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text2_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text3_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text3_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text3_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text4_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text4_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text4_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text5_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text5_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text5_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text6_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text6_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text6_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out1", 0 ],
                                    "source": [ "text7_0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out2", 0 ],
                                    "source": [ "text7_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out3", 0 ],
                                    "source": [ "text7_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset0", 0 ],
                                    "source": [ "tr0", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text0_0", 0 ],
                                    "source": [ "tr0", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text0_1", 0 ],
                                    "source": [ "tr0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text0_2", 0 ],
                                    "source": [ "tr0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset1", 0 ],
                                    "source": [ "tr1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text1_0", 0 ],
                                    "source": [ "tr1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text1_1", 0 ],
                                    "source": [ "tr1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text1_2", 0 ],
                                    "source": [ "tr1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset2", 0 ],
                                    "source": [ "tr2", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text2_0", 0 ],
                                    "source": [ "tr2", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text2_1", 0 ],
                                    "source": [ "tr2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text2_2", 0 ],
                                    "source": [ "tr2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset3", 0 ],
                                    "source": [ "tr3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text3_0", 0 ],
                                    "source": [ "tr3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text3_1", 0 ],
                                    "source": [ "tr3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text3_2", 0 ],
                                    "source": [ "tr3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset4", 0 ],
                                    "source": [ "tr4", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text4_0", 0 ],
                                    "source": [ "tr4", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text4_1", 0 ],
                                    "source": [ "tr4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text4_2", 0 ],
                                    "source": [ "tr4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset5", 0 ],
                                    "source": [ "tr5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text5_0", 0 ],
                                    "source": [ "tr5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text5_1", 0 ],
                                    "source": [ "tr5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text5_2", 0 ],
                                    "source": [ "tr5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset6", 0 ],
                                    "source": [ "tr6", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text6_0", 0 ],
                                    "source": [ "tr6", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text6_1", 0 ],
                                    "source": [ "tr6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text6_2", 0 ],
                                    "source": [ "tr6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "preset7", 0 ],
                                    "source": [ "tr7", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text7_0", 0 ],
                                    "source": [ "tr7", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text7_1", 0 ],
                                    "source": [ "tr7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "text7_2", 0 ],
                                    "source": [ "tr7", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 30.0, 1580.0, 180.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p Guided_lessons",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "int", "int", "float", "float", "int" ],
                    "patching_rect": [ 280.0, 1580.0, 210.0, 23.0 ],
                    "text": "unpack 0 0 0. 0. 0",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 30.0, 1670.0, 100.0, 23.0 ],
                    "text": "loadbang",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 150.0, 1670.0, 90.0, 23.0 ],
                    "text": "deferlow",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 270.0, 1670.0, 100.0, 23.0 ],
                    "text": "t b b b b",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 1640.0, 40.0, 23.0 ],
                    "text": "0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "initgraph",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 1690.0, 700.0, 23.0 ],
                    "text": "options 0 1 0 0 1, constraints 0 80. 10000. 1. 1. 0.5 4., params 1000. 1. 0.707",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "initvol",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 1730.0, 50.0, 23.0 ],
                    "text": "50",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "initlesson",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 1770.0, 40.0, 23.0 ],
                    "text": "0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 800.0, 1580.0, 60.0, 23.0 ],
                    "text": "open",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 880.0, 1580.0, 80.0, 23.0 ],
                    "text": "pcontrol",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "notes",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 40.0, 60.0, 990.0, 780.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Window control target",
                                    "id": "control",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 810.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 25.0,
                                    "id": "h",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 20.0, 920.0, 40.0 ],
                                    "text": "FILTERS: vocabulary and teaching notes",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 78.0, 205.0, 30.0 ],
                                    "text": "Frequency and pitch",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b0",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 78.0, 715.0, 66.0 ],
                                    "text": "Frequency counts vibrations each second. The unit is hertz (Hz). 1000 Hz is also called 1 kHz. A higher-frequency sine tone sounds higher in pitch. Most musical sounds contain many frequencies at once.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 156.0, 205.0, 30.0 ],
                                    "text": "Tone color / timbre",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b1",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 156.0, 715.0, 66.0 ],
                                    "text": "A flute and a trumpet can play the same note and still sound different. Their frequency balance is one reason. Filtering changes that balance. It is not a method for moving every frequency to a new pitch.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 234.0, 205.0, 30.0 ],
                                    "text": "Cutoff / center / Q",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b2",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 234.0, 715.0, 66.0 ],
                                    "text": "For low-pass and high-pass use Frequency as the cutoff: a reference in the transition between passing and reducing sound. For band-pass and notch it is the center. Higher Q narrows a band or a notch and can make a low/high-pass cutoff more resonant. Start at Q = 0.7.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 312.0, 205.0, 30.0 ],
                                    "text": "Read the pictures",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b3",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 312.0, 715.0, 66.0 ],
                                    "text": "Left means low frequencies; right means high frequencies. The frequency axis is logarithmic: equal distances represent equal frequency ratios. On the filter curve 0 dB means unchanged; below it means reduced and above it means boosted. The two lower plots show the actual sound on matching scales.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 390.0, 205.0, 30.0 ],
                                    "text": "Listen critically",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b4",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 390.0, 715.0, 66.0 ],
                                    "text": "A quieter sound is not automatically a duller sound. Compare at a comfortable level. White noise may look uneven on a logarithmic spectrum because of the display and analysis; use the two matching plots to judge the change. A notch may be subtle when little sound lies near its center.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 468.0, 205.0, 30.0 ],
                                    "text": "Ten-minute class activity",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b5",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 468.0, 715.0, 66.0 ],
                                    "text": "Work through lessons 1-6. Before each change predict what will happen. Then listen and describe what changed without numbers. In pairs one person chooses a filter and the other identifies it by ear. Finish by explaining the difference between volume and filtering.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 546.0, 205.0, 30.0 ],
                                    "text": "Inside this Max patch",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b6",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 546.0, 715.0, 66.0 ],
                                    "text": "Exit Presentation mode to follow the real patch cords. filtergraph~ calculates coefficients; biquad~ filters audio; spectroscope~ displays it. Choose lesson 8 for a listening comparison and a sample-by-sample explanation of one-pole and two-pole filtering.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "t7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 624.0, 205.0, 30.0 ],
                                    "text": "Use and defaults",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "b7",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 624.0, 715.0, 66.0 ],
                                    "text": "A single self-contained Max 9 patch. No samples, JavaScript, or external packages. Sound starts OFF. Volume = 50%; source = noise; type = low-pass; Frequency = 1000 Hz; Q = 0.707; Listen = Filtered. Source amplitude = 0.1 (half the original level). Restart resets these settings. Controls are connected by local patch cords.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "refs",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 710.0, 940.0, 24.0 ],
                                    "text": "Cycling 74 references: filtergraph~ / biquad~ / spectroscope~ / MSP Filter Tutorial 2",
                                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "urls",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 739.0, 940.0, 40.0 ],
                                    "text": "https://docs.cycling74.com/learn/articles/08_filterchapter02/\nhttps://docs.cycling74.com/reference/filtergraph~/   https://docs.cycling74.com/reference/biquad~/",
                                    "textcolor": [ 0.33, 0.39, 0.42, 1.0 ]
                                }
                            }
                        ],
                        "lines": [],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 790.0, 1640.0, 300.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p Vocabulary_and_teaching_notes",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "onepole",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 65.0, 70.0, 900.0, 600.0 ],
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Frequency in Hz",
                                    "id": "frequency",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 25.0, 25.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Enable coefficient output: 0 / 1",
                                    "id": "enabled",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 340.0, 25.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 20.0,
                                    "id": "head",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 70.0, 820.0, 30.0 ],
                                    "text": "ONE POLE, expressed as biquad coefficients",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "why",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 108.0, 830.0, 48.0 ],
                                    "text": "The response is normalized to unity at DC and -3 dB at the selected cutoff. The current DSP sample rate is used.\nThree biquad terms are zero. The same biquad~ and audio path serve both comparisons.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "remember",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 25.0, 175.0, 95.0, 22.0 ],
                                    "text": "f 1000.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "rate",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "float", "int", "int" ],
                                    "patching_rect": [ 205.0, 175.0, 100.0, 22.0 ],
                                    "text": "dspstate~",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "rate_defer",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 205.0, 215.0, 90.0, 22.0 ],
                                    "text": "deferlow",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "positive",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 205.0, 255.0, 200.0, 22.0 ],
                                    "text": "if $f1 > 0. then $f1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 305.0, 170.0, 22.0 ],
                                    "text": "pak 1000. 48000.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "u",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 345.0, 430.0, 22.0 ],
                                    "text": "expr 1. - cos(6.283185307179586 * $f1 / $f2)",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "a",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 385.0, 380.0, 22.0 ],
                                    "text": "expr sqrt($f1 * $f1 + 2. * $f1) - $f1",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 25.0, 425.0, 65.0, 22.0 ],
                                    "text": "t f f",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "feedback",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 150.0, 425.0, 65.0, 22.0 ],
                                    "text": "- 1.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "coeff",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 470.0, 200.0, 22.0 ],
                                    "text": "pack 0. 0. 0. 0. 0.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "gate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 390.0, 470.0, 90.0, 22.0 ],
                                    "text": "gate 1 0",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "a0 a1 a2 b1 b2",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 390.0, 530.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "enable_order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 510.0, 175.0, 75.0, 22.0 ],
                                    "text": "t b i",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 650.0, 175.0, 90.0, 22.0 ],
                                    "text": "loadbang",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "load_defer",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 650.0, 215.0, 90.0, 22.0 ],
                                    "text": "deferlow",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "load_order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 650.0, 255.0, 70.0, 22.0 ],
                                    "text": "t b b",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "sign",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 510.0, 345.0, 340.0, 75.0 ],
                                    "text": "Max subtracts b1*y[n-1].\nHere b1 = a - 1 = -r.\nSo the audible filter adds r*y[n-1].",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "order", 0 ],
                                    "source": [ "a", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 1 ],
                                    "source": [ "coeff", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "gate", 0 ],
                                    "source": [ "enable_order", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "remember", 0 ],
                                    "source": [ "enable_order", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "enable_order", 0 ],
                                    "source": [ "enabled", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "coeff", 3 ],
                                    "source": [ "feedback", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "remember", 0 ],
                                    "source": [ "frequency", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "gate", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "load_defer", 0 ],
                                    "source": [ "load", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "load_order", 0 ],
                                    "source": [ "load_defer", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rate", 0 ],
                                    "source": [ "load_order", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "remember", 0 ],
                                    "source": [ "load_order", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "coeff", 0 ],
                                    "source": [ "order", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "feedback", 0 ],
                                    "source": [ "order", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "u", 0 ],
                                    "source": [ "pack", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pack", 1 ],
                                    "source": [ "positive", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "rate_defer", 0 ],
                                    "source": [ "rate", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "positive", 0 ],
                                    "source": [ "rate_defer", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pack", 0 ],
                                    "source": [ "remember", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a", 0 ],
                                    "source": [ "u", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 30.0, 1890.0, 220.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p One_pole_coefficients",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "type_order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "int", "int", "bang" ],
                    "patching_rect": [ 300.0, 1880.0, 95.0, 23.0 ],
                    "text": "t b i i b",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "isone",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 410.0, 1880.0, 65.0, 23.0 ],
                    "text": "== 4",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "isone_order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 500.0, 1880.0, 80.0, 23.0 ],
                    "text": "t i i i",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "istwo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 610.0, 1880.0, 65.0, 23.0 ],
                    "text": "== 0",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freq_gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 1880.0, 90.0, 23.0 ],
                    "text": "gate 1 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "q_gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 820.0, 1880.0, 90.0, 23.0 ],
                    "text": "gate 1 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "lock",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 410.0, 1940.0, 185.0, 23.0 ],
                    "text": "prepend ignoreclick",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "refresh",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 300.0, 1940.0, 70.0, 23.0 ],
                    "text": "t b b",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "def4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 1530.0, 530.0, 23.0 ],
                    "text": "set One-pole low-pass: a gentler slope\\; no Q control.",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "q_label_select",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 610.0, 1940.0, 85.0, 23.0 ],
                    "text": "sel 0 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "q_label_two",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 1940.0, 355.0, 23.0 ],
                    "text": "set Higher Q = narrower / more resonant",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "q_label_one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 1980.0, 355.0, 23.0 ],
                    "text": "set One-pole: Q is not used",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "dsp8",
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
                        "rect": [ 134.0, 172.0, 1120.0, 890.0 ],
                        "openinpresentation": 1,
                        "default_fontsize": 13.0,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Window control target",
                                    "id": "control",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 950.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Comparison preset to main tutorial",
                                    "id": "presetout",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 1030.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 27.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 16.0, 1070.0, 37.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 16.0, 1070.0, 37.0 ],
                                    "text": "8  /  HOW THE DSP WORKS",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "intro",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 61.0, 643.0, 38.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 26.0, 61.0, 643.0, 38.0 ],
                                    "text": "DSP means digital signal processing: the computer repeats a small calculation for every audio sample.\nAt 48 kHz it handles 48,000 samples per second. A sample is one momentary amplitude value.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Load noise at 500 Hz; use the main Sound and Volume controls.",
                                    "id": "hearone",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 26.0, 120.0, 188.0, 34.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 26.0, 120.0, 188.0, 34.0 ],
                                    "text": "Hear ONE pole",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "textovercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "usegradient": 0
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "hearonepreset",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 26.0, 980.0, 200.0, 23.0 ],
                                    "text": "0 4 500. 0.707107 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Load noise at 500 Hz; use the main Sound and Volume controls.",
                                    "id": "heartwo",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 231.0, 120.0, 188.0, 34.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 231.0, 120.0, 188.0, 34.0 ],
                                    "text": "Hear TWO poles",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "textoncolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "textovercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "usegradient": 0
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_type": "gradient",
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "id": "heartwopreset",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 231.0, 980.0, 200.0, 23.0 ],
                                    "text": "0 0 500. 0.707107 1",
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "listen",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 444.0, 116.0, 412.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 444.0, 116.0, 412.0, 36.0 ],
                                    "text": "Both buttons load noise at 500 Hz and choose Filtered.\nUse Sound and Volume on the main page. Neither button starts audio.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "where",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 164.0, 1070.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 26.0, 164.0, 1070.0, 21.0 ],
                                    "text": "Watch the main curve and filtered spectrum. ONE pole corresponds to the new One-pole low-pass menu item; TWO poles uses Low-pass.",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                                    "id": "left",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 206.0, 526.0, 261.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 206.0, 526.0, 261.0 ],
                                    "rounded": 10
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                                    "id": "right",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 568.0, 206.0, 526.0, 261.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 568.0, 206.0, 526.0, 261.0 ],
                                    "rounded": 10
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 19.0,
                                    "id": "onehead",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 220.0, 486.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 220.0, 486.0, 28.0 ],
                                    "text": "ONE POLE: a little memory",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "onebody",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 257.0, 486.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 42.0, 257.0, 486.0, 53.0 ],
                                    "text": "Think of the output as a follower that cannot change instantly. Each sample blends the new input with the previous output. Fast changes are softened; slow changes pass more easily.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 18.0,
                                    "id": "oneeq",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 331.0, 486.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 331.0, 486.0, 27.0 ],
                                    "text": "y[n] = (1 - r) x[n] + r y[n-1]",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "onekey",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 371.0, 680.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 42.0, 371.0, 349.0, 50.0 ],
                                    "text": "x[n] = input now; y[n] = output now.\ny[n-1] = output one sample earlier. For this filter, 0 < r < 1.\n A larger r gives the past more weight and lowers the cutoff.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 19.0,
                                    "id": "twohead",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 586.0, 220.0, 486.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 586.0, 220.0, 486.0, 28.0 ],
                                    "text": "TWO POLES: more ways to respond",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "twobody",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 586.0, 257.0, 486.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 586.0, 257.0, 486.0, 53.0 ],
                                    "text": "A second-order filter can use the two previous outputs. With suitable settings it rolls off more steeply, or can ring briefly and emphasize frequencies near the cutoff.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "twokey",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 586.0, 332.0, 486.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 586.0, 332.0, 486.0, 53.0 ],
                                    "text": "A pole describes part of the filter's stored response: how it dies away or rings. It is a mathematical property, not a speaker, channel, or extra sound source.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "twocaveat",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 586.0, 405.0, 486.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 586.0, 405.0, 486.0, 36.0 ],
                                    "text": "Two one-pole filters in series are also second order. They do not automatically give the same cutoff shape or resonance as this biquad setting.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                                    "id": "biquadcard",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 482.0, 1070.0, 171.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 482.0, 1070.0, 171.0 ],
                                    "rounded": 10
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 19.0,
                                    "id": "biquadhead",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 495.0, 1028.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 495.0, 1028.0, 28.0 ],
                                    "text": "BIQUAD: one flexible second-order recipe",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 17.0,
                                    "id": "eq",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 535.0, 1028.0, 25.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 535.0, 1028.0, 25.0 ],
                                    "text": "y[n] = a0 x[n] + a1 x[n-1] + a2 x[n-2] - b1 y[n-1] - b2 y[n-2]",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 14.0,
                                    "id": "eqkey",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 573.0, 1054.0, 38.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 42.0, 573.0, 1054.0, 38.0 ],
                                    "text": "The a terms weight the current and two stored input samples; the b terms weight two stored output samples.\nThese five weights are the coefficients. Changing them changes the filter. The input terms can cancel frequencies (zeros); the feedback terms govern its memory (poles).",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 1.0, 1.0, 0.99, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.83, 0.86, 0.85, 1.0 ],
                                    "id": "bottom",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 24.0, 668.0, 1070.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 24.0, 668.0, 1070.0, 164.0 ],
                                    "rounded": 10
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Arial",
                                    "fontsize": 19.0,
                                    "id": "meaning",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 681.0, 1028.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 42.0, 681.0, 1028.0, 28.0 ],
                                    "text": "Why the name? Why the different sound?",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "name",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 718.0, 1028.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 42.0, 718.0, 1028.0, 36.0 ],
                                    "text": "Biquad means biquadratic: its transfer function is a ratio of two quadratic polynomials. It can have up to two poles and two zeros. It does not mean four poles. Lower-order filters fit the same recipe by setting some coefficients to zero.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "slope",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 42.0, 773.0, 1028.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 42.0, 773.0, 1028.0, 36.0 ],
                                    "text": "For low-pass filters in the rolloff region, one pole gives about 6 dB of extra reduction per octave; two poles give about 12 dB. An octave doubles frequency. These are trends away from the cutoff and below the Nyquist limit (half the sample rate), not exact slopes everywhere or for every biquad filter type.",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "footer",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 843.0, 675.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 26.0, 843.0, 675.0, 33.0 ],
                                    "text": "Here: both modes use the same biquad~ audio path. One-pole sets a1 = a2 = b2 = 0; two-pole uses filtergraph~ at Q = 0.707.\nPredict before switching. Then explain the result using the words sample, memory, cutoff, and slope.",
                                    "textcolor": [ 0.03, 0.42, 0.43, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "references",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 950.0, 323.0, 47.0 ],
                                    "text": "References: https://docs.cycling74.com/reference/biquad~/\nhttps://docs.cycling74.com/reference/onepole~/\nhttps://docs.cycling74.com/learn/articles/08_filterchapter02/",
                                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "hearonepreset", 0 ],
                                    "source": [ "hearone", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "presetout", 0 ],
                                    "source": [ "hearonepreset", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "heartwopreset", 0 ],
                                    "source": [ "heartwo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "presetout", 0 ],
                                    "source": [ "heartwopreset", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
                    },
                    "patching_rect": [ 30.0, 2070.0, 245.0, 23.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ],
                        "fontsize": 13.0,
                        "locked_bgcolor": [ 0.96, 0.96, 0.94, 1.0 ]
                    },
                    "text": "p DSP_one_pole_two_pole",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "dsp8_select",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 310.0, 2070.0, 65.0, 23.0 ],
                    "text": "sel 7",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "gradient": 1,
                    "id": "dsp8_open",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 400.0, 2070.0, 60.0, 23.0 ],
                    "text": "open",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "dsp8_pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 490.0, 2070.0, 90.0, 23.0 ],
                    "text": "pcontrol",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "notes_gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 650.0, 2070.0, 95.0, 23.0 ],
                    "text": "gate 2 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "notes_choice",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 790.0, 2070.0, 65.0, 23.0 ],
                    "text": "== 7",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "notes_plus",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 890.0, 2070.0, 60.0, 23.0 ],
                    "text": "+ 1",
                    "textcolor": [ 0.12, 0.17, 0.21, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "before_type",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 30.0, 2150.0, 120.0, 23.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freq_store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 190.0, 2150.0, 120.0, 23.0 ],
                    "text": "f 1000."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "q_store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 350.0, 2150.0, 120.0, 23.0 ],
                    "text": "f 0.707"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "freq_saved",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 190.0, 2200.0, 120.0, 23.0 ],
                    "text": "f 1000."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "q_saved",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 350.0, 2200.0, 120.0, 23.0 ],
                    "text": "f 0.707"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_color1": [ 0.94, 0.96, 0.94, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "one_disable",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 510.0, 2150.0, 40.0, 23.0 ],
                    "text": "0",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "freq_store", 0 ],
                    "source": [ "before_type", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "one_disable", 0 ],
                    "source": [ "before_type", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_store", 0 ],
                    "source": [ "before_type", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typedesc", 0 ],
                    "source": [ "def0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typedesc", 0 ],
                    "source": [ "def1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typedesc", 0 ],
                    "source": [ "def2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typedesc", 0 ],
                    "source": [ "def3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typedesc", 0 ],
                    "source": [ "def4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack", 0 ],
                    "source": [ "dsp8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp8_pcontrol", 0 ],
                    "source": [ "dsp8_open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp8", 0 ],
                    "source": [ "dsp8_pcontrol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp8_open", 0 ],
                    "source": [ "dsp8_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "after", 0 ],
                    "order": 0,
                    "source": [ "filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 1 ],
                    "order": 1,
                    "source": [ "filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_gate", 1 ],
                    "order": 0,
                    "source": [ "freq", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_store", 1 ],
                    "order": 1,
                    "source": [ "freq", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freqreverse", 0 ],
                    "order": 3,
                    "source": [ "freq", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "onepole", 0 ],
                    "order": 2,
                    "source": [ "freq", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 5 ],
                    "source": [ "freq_gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq", 0 ],
                    "source": [ "freq_saved", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_saved", 1 ],
                    "source": [ "freq_store", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq", 0 ],
                    "source": [ "freqmap", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sliderset", 0 ],
                    "source": [ "freqreverse", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq", 0 ],
                    "source": [ "freqset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freqmap", 0 ],
                    "source": [ "freqslider", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter", 0 ],
                    "source": [ "graph", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_store", 1 ],
                    "order": 1,
                    "source": [ "graph", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freqreverse", 0 ],
                    "order": 3,
                    "source": [ "graph", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freqset", 0 ],
                    "order": 0,
                    "source": [ "graph", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "onepole", 0 ],
                    "order": 2,
                    "source": [ "graph", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_store", 1 ],
                    "order": 1,
                    "source": [ "graph", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "qset", 0 ],
                    "order": 0,
                    "source": [ "graph", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "initgraph", 0 ],
                    "source": [ "init", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "initlesson", 0 ],
                    "source": [ "init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "initvol", 0 ],
                    "source": [ "init", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "off", 0 ],
                    "source": [ "init", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 0 ],
                    "source": [ "initgraph", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lesson", 0 ],
                    "source": [ "initlesson", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vol", 0 ],
                    "source": [ "initvol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "isone_order", 0 ],
                    "order": 1,
                    "source": [ "isone", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_label_select", 0 ],
                    "order": 0,
                    "source": [ "isone", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "istwo", 0 ],
                    "source": [ "isone_order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lock", 0 ],
                    "source": [ "isone_order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "onepole", 1 ],
                    "source": [ "isone_order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_gate", 0 ],
                    "order": 1,
                    "source": [ "istwo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_gate", 0 ],
                    "order": 0,
                    "source": [ "istwo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp8_select", 0 ],
                    "order": 1,
                    "source": [ "lesson", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lessons", 0 ],
                    "order": 2,
                    "source": [ "lesson", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "notes_choice", 0 ],
                    "order": 0,
                    "source": [ "lesson", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lessontext0", 0 ],
                    "source": [ "lessons", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lessontext1", 0 ],
                    "source": [ "lessons", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "lessontext2", 0 ],
                    "source": [ "lessons", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack", 0 ],
                    "source": [ "lessons", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 2 ],
                    "source": [ "listen", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer", 0 ],
                    "source": [ "load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 0 ],
                    "order": 2,
                    "source": [ "lock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q", 0 ],
                    "order": 1,
                    "source": [ "lock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "qreset", 0 ],
                    "order": 0,
                    "source": [ "lock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 0 ],
                    "source": [ "mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mode", 0 ],
                    "source": [ "modeplus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "notes_plus", 0 ],
                    "source": [ "notes_choice", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dsp8_open", 0 ],
                    "source": [ "notes_gate", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "open", 0 ],
                    "source": [ "notes_gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "notes_gate", 0 ],
                    "source": [ "notes_plus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "notes_gate", 1 ],
                    "source": [ "notesbutton", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sound", 0 ],
                    "source": [ "off", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "onepole", 1 ],
                    "source": [ "one_disable", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 0 ],
                    "source": [ "onepole", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pcontrol", 0 ],
                    "source": [ "open", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter", 0 ],
                    "source": [ "output", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "notes", 0 ],
                    "source": [ "pcontrol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_gate", 1 ],
                    "order": 0,
                    "source": [ "q", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_store", 1 ],
                    "order": 1,
                    "source": [ "q", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "graph", 7 ],
                    "source": [ "q_gate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "qhint", 0 ],
                    "source": [ "q_label_one", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_label_one", 0 ],
                    "source": [ "q_label_select", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_label_two", 0 ],
                    "source": [ "q_label_select", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "qhint", 0 ],
                    "source": [ "q_label_two", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q", 0 ],
                    "source": [ "q_saved", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_saved", 1 ],
                    "source": [ "q_store", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q", 0 ],
                    "source": [ "qreset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q", 0 ],
                    "source": [ "qset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq_saved", 0 ],
                    "source": [ "refresh", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q_saved", 0 ],
                    "source": [ "refresh", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "init", 0 ],
                    "source": [ "restart", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freqslider", 0 ],
                    "source": [ "sliderset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 4 ],
                    "source": [ "sound", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sources", 0 ],
                    "source": [ "source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "before", 0 ],
                    "order": 1,
                    "source": [ "sources", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter", 0 ],
                    "order": 0,
                    "source": [ "sources", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 0 ],
                    "order": 2,
                    "source": [ "sources", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "type_order", 0 ],
                    "order": 0,
                    "source": [ "type", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "typesel", 0 ],
                    "order": 1,
                    "source": [ "type", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "before_type", 0 ],
                    "source": [ "type_order", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "isone", 0 ],
                    "source": [ "type_order", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "modeplus", 0 ],
                    "source": [ "type_order", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "refresh", 0 ],
                    "source": [ "type_order", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "def0", 0 ],
                    "source": [ "typesel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "def1", 0 ],
                    "source": [ "typesel", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "def2", 0 ],
                    "source": [ "typesel", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "def3", 0 ],
                    "source": [ "typesel", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "def4", 0 ],
                    "source": [ "typesel", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "freq", 0 ],
                    "source": [ "unpack", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "listen", 0 ],
                    "source": [ "unpack", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "q", 0 ],
                    "source": [ "unpack", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "source", 0 ],
                    "source": [ "unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "type", 0 ],
                    "source": [ "unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 3 ],
                    "order": 1,
                    "source": [ "vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volset", 0 ],
                    "order": 0,
                    "source": [ "vol", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "vol", 0 ],
                    "source": [ "volnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "volnum", 0 ],
                    "source": [ "volset", 0 ]
                }
            }
        ],
        "autosave": 0,
        "bgcolor": [ 0.96, 0.96, 0.94, 1.0 ],
        "editing_bgcolor": [ 0.94, 0.94, 0.93, 1.0 ]
    }
}