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
        "rect": [ 134.0, 172.0, 1110.0, 860.0 ],
        "default_fontsize": 15.0,
        "description": "Concise message-box tutorial for the spat5.oper source namespace.",
        "digest": "Spat source parameters, variables, filter lists, booleans, patterns, and a 31-message source snapshot.",
        "tags": "Spat5 IRCAM OSC tutorial source namespace",
        "boxes": [
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 20.0, 1040.0, 398.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-2",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 20.0, 1040.0, 78.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 26.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 28.0, 990.0, 36.0 ],
                    "text": "spat5.oper MESSAGE SPACE"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 69.0, 970.0, 23.0 ],
                    "text": "Message boxes, variables, and source controls"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 153.0, 987.0, 23.0 ],
                    "text": "Requires IRCAM Spat 5. This patch sends controls only; it produces no audio."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 54.0, 192.0, 974.0, 23.0 ],
                    "text": "Address + space + value: /source/1/pres 90.0 sets source 1 presence to 90."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 231.0, 108.0, 25.0 ],
                    "text": "r spat5_tutorial",
                    "varname": "tutorial_receive"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.5019607843137255, 0.5019607843137255, 1.0 ],
                    "color": [ 0.9254901960784314, 0.027450980392156862, 0.027450980392156862, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 48.0, 273.0, 399.0, 25.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.oper @initwith \"/source/number 12, /room/number 2\"",
                    "varname": "tutorial_oper"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 718.0, 273.0, 193.0, 25.0 ],
                    "text": "print SPAT5_TUTORIAL_IN"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 315.0, 972.0, 23.0 ],
                    "text": "Double-click spat5.oper to view its 12 sources and 2 rooms."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 354.0, 616.0, 40.0 ],
                    "text": "s / r spat5_tutorial connects the examples to oper. \nBlue = variable template. Green = sent message, not a reply from Spat."
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-15",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 440.0, 1040.0, 328.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 440.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 447.0, 1005.0, 28.0 ],
                    "text": "01   Address + value"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 499.0, 982.0, 23.0 ],
                    "text": "Click 60.0 or 90.0 to set source 1 presence."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 538.0, 145.0, 25.0 ],
                    "text": "60.",
                    "varname": "presence_60"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 228.0, 538.0, 145.0, 25.0 ],
                    "text": "90.",
                    "varname": "presence_90"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 607.0, 592.5, 227.0, 23.0 ],
                    "text": "$1 takes the first incoming value."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgcolor2": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 590.0, 550.0, 25.0 ],
                    "text": "/source/1/pres $1",
                    "varname": "presence_template"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 642.0, 982.0, 23.0 ],
                    "text": "Higher presence increases early-sound energy and perceived proximity. These values are not dB."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 681.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 681.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-26",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 720.0, 550.0, 25.0 ],
                    "text": "/source/1/pres 90.",
                    "varname": "out_01"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 720.0, 110.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_01"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-29",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 790.0, 1040.0, 529.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-30",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 790.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 797.0, 1005.0, 28.0 ],
                    "text": "02   Perceptual controls"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 849.0, 982.0, 23.0 ],
                    "text": "These numbers use Spat perceptual scales."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 888.0, 550.0, 25.0 ],
                    "text": "/source/1/pres 90."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 888.0, 395.0, 23.0 ],
                    "text": "Presence: direct + early room energy; perceived proximity."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 956.0, 550.0, 25.0 ],
                    "text": "/source/1/warm 30."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 956.0, 388.0, 23.0 ],
                    "text": "Warmth: low-frequency balance of early sound."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1008.0, 550.0, 25.0 ],
                    "text": "/source/1/bril 30."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1008.0, 388.0, 23.0 ],
                    "text": "Brilliance: high-frequency balance of early sound."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1060.0, 550.0, 25.0 ],
                    "text": "/source/1/prer 48."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1060.0, 388.0, 23.0 ],
                    "text": "Room presence: later reflections + reverb energy."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1112.0, 550.0, 25.0 ],
                    "text": "/source/1/revp 34."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1112.0, 395.0, 23.0 ],
                    "text": "Running reverberance: early decay during ongoing sound."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1180.0, 550.0, 25.0 ],
                    "text": "/source/1/env 24."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1180.0, 388.0, 23.0 ],
                    "text": "Envelopment: early room energy relative to direct sound."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 1232.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1232.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-49",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1271.0, 550.0, 25.0 ],
                    "text": "/source/1/env 24.",
                    "varname": "out_02"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1271.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_02"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-52",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1341.0, 1040.0, 497.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-53",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1341.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 1348.0, 1005.0, 28.0 ],
                    "text": "03   Variables: numbers, words, lists"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 1400.0, 982.0, 23.0 ],
                    "text": "$1, $2, etc. take successive incoming items. Click an input first."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1439.0, 104.0, 25.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 176.0, 1439.0, 104.0, 25.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1439.0, 388.0, 23.0 ],
                    "text": "Air absorption: 0 off; 1 on."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgcolor2": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1491.0, 550.0, 25.0 ],
                    "text": "/source/1/air $1",
                    "varname": "air_template"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1543.0, 248.0, 25.0 ],
                    "text": "symbol linear"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 1543.0, 266.0, 25.0 ],
                    "text": "symbol log2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1543.0, 388.0, 23.0 ],
                    "text": "symbol passes one word into $1."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgcolor2": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1595.0, 550.0, 25.0 ],
                    "text": "/source/1/drop/mode $1",
                    "varname": "dropmode_template"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1647.0, 550.0, 25.0 ],
                    "text": "0. 1.7 0. -3.8 177. 5657.",
                    "varname": "omni_six_values"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1647.0, 388.0, 23.0 ],
                    "text": "Order: G0 Gl Gm Gh (dB), fl fh (Hz)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgcolor2": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1699.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/params $1 $2 $3 $4 $5 $6",
                    "varname": "omni_template"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 1751.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1751.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-70",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1790.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/params 0. 1.7 0. -3.8 177. 5657.",
                    "varname": "out_03"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1790.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_03"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-73",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1860.0, 1040.0, 809.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-74",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1860.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 1867.0, 1005.0, 28.0 ],
                    "text": "04   Axis filter: direct sound"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 1919.0, 982.0, 23.0 ],
                    "text": "Gains: dB. Crossovers: Hz. G0 uses zero; Gl uses lowercase L. Keep fl < fh."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-77",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 1958.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/G0 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 1958.0, 388.0, 23.0 ],
                    "text": "Overall gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2010.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/Gl 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2010.0, 388.0, 23.0 ],
                    "text": "Low gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-81",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2062.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/Gm 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2062.0, 388.0, 23.0 ],
                    "text": "Mid gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-83",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2114.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/Gh 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2114.0, 388.0, 23.0 ],
                    "text": "High gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2166.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/fl 177."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2166.0, 388.0, 23.0 ],
                    "text": "Low/mid crossover: 177 Hz."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2218.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/fh 5657."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2218.0, 388.0, 23.0 ],
                    "text": "Mid/high crossover: 5657 Hz."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-89",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2270.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/params 0. 0. 0. 0. 177. 5657."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2270.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh fl fh."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2322.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/params 0. 0. 0. 0. 177."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2322.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh fl (five values)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2374.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/params 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-94",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2374.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh (four values)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2426.0, 266.0, 25.0 ],
                    "text": "/source/1/axis/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 2426.0, 266.0, 25.0 ],
                    "text": "/source/1/axis/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2426.0, 388.0, 23.0 ],
                    "text": "Mute: 0 passes; 1 silences this path."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-98",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2478.0, 266.0, 25.0 ],
                    "text": "/source/1/axis/bypass 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-99",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 2478.0, 266.0, 25.0 ],
                    "text": "/source/1/axis/bypass 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2478.0, 388.0, 23.0 ],
                    "text": "Bypass: 0 filters; 1 skips filtering."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2530.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/reset"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-102",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2530.0, 388.0, 23.0 ],
                    "text": "Reset this filter to Spat defaults. No value needed."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-105",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 2582.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-106",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2582.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-107",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2621.0, 550.0, 25.0 ],
                    "text": "/source/1/axis/bypass 1",
                    "varname": "out_04"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2621.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_04"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-110",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 2691.0, 1040.0, 809.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-111",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 2691.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-112",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 2698.0, 1005.0, 28.0 ],
                    "text": "05   Omni filter: room sound"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-113",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 2750.0, 982.0, 23.0 ],
                    "text": "Filters the early reflections, cluster, and reverb. Same units and parameter order as axis."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-114",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2789.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/G0 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-115",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2789.0, 388.0, 23.0 ],
                    "text": "Overall gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-116",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2841.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/Gl 1.7"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-117",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2841.0, 388.0, 23.0 ],
                    "text": "Low gain: +1.7 dB (boost)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-118",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2893.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/Gm 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-119",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2893.0, 388.0, 23.0 ],
                    "text": "Mid gain: 0 dB."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-120",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2945.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/Gh -3.8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-121",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2945.0, 388.0, 23.0 ],
                    "text": "High gain: -3.8 dB (cut)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 2997.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/fl 177."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-123",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 2997.0, 388.0, 23.0 ],
                    "text": "Low/mid crossover: 177 Hz."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-124",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3049.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/fh 5657."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-125",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3049.0, 388.0, 23.0 ],
                    "text": "Mid/high crossover: 5657 Hz."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-126",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3101.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/params 0. 1.7 0. -3.8 177. 5657."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-127",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3101.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh fl fh."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-128",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3153.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/params 0. 1.7 0. -3.8 177."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-129",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3153.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh fl (five values)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-130",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3205.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/params 0. 1.7 0. -3.8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-131",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3205.0, 388.0, 23.0 ],
                    "text": "Set G0 Gl Gm Gh (four values)."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-132",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3257.0, 266.0, 25.0 ],
                    "text": "/source/1/omni/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-133",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 3257.0, 266.0, 25.0 ],
                    "text": "/source/1/omni/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-134",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3257.0, 388.0, 23.0 ],
                    "text": "Mute: 0 passes; 1 silences this path."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-135",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3309.0, 266.0, 25.0 ],
                    "text": "/source/1/omni/bypass 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-136",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 3309.0, 266.0, 25.0 ],
                    "text": "/source/1/omni/bypass 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-137",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3309.0, 388.0, 23.0 ],
                    "text": "Bypass: 0 filters; 1 skips filtering."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-138",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3361.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/reset"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-139",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3361.0, 388.0, 23.0 ],
                    "text": "Reset this filter to Spat defaults. No value needed."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-142",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 3413.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-143",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3413.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-144",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3452.0, 550.0, 25.0 ],
                    "text": "/source/1/omni/mute 0",
                    "varname": "out_05"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3452.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_05"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-147",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 3522.0, 1040.0, 536.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-148",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 3522.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-149",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 3529.0, 1005.0, 28.0 ],
                    "text": "06   Distance effects"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-150",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 3581.0, 982.0, 23.0 ],
                    "text": "These settings affect a moving source in a configured Spat audio patch."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-151",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3620.0, 266.0, 25.0 ],
                    "text": "/source/1/doppler 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-152",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 3620.0, 266.0, 25.0 ],
                    "text": "/source/1/doppler 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-153",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3620.0, 388.0, 23.0 ],
                    "text": "Doppler pitch shift: 0 off; 1 on."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-154",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3672.0, 266.0, 25.0 ],
                    "text": "/source/1/air 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-155",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 3672.0, 266.0, 25.0 ],
                    "text": "/source/1/air 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-156",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3672.0, 388.0, 23.0 ],
                    "text": "Distance-related high-frequency loss: 0 off; 1 on."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-157",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3724.0, 550.0, 25.0 ],
                    "text": "/source/1/air/freq 10000."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-158",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3724.0, 388.0, 23.0 ],
                    "text": "Air-absorption roll-off: 10000 Hz."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-159",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3776.0, 550.0, 25.0 ],
                    "text": "/source/1/drop 6."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-160",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3776.0, 388.0, 23.0 ],
                    "text": "Drop: 6 dB per distance doubling in log2 mode."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-161",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3828.0, 266.0, 25.0 ],
                    "text": "/source/1/drop/mode log2"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-162",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 3828.0, 266.0, 25.0 ],
                    "text": "/source/1/drop/mode linear"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-163",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3828.0, 388.0, 23.0 ],
                    "text": "Distance law: log2 or linear."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-164",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 3880.0, 550.0, 25.0 ],
                    "text": "/source/1/radius 1."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-165",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3880.0, 388.0, 23.0 ],
                    "text": "Radius: 1 m. Limits level increase near the listener."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-167",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, 3932.0, 978.0, 23.0 ],
                    "text": "With applicable 3D panners, sources slide over the radius sphere for smooth listener crossings."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-168",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 3971.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-169",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 3971.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-170",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4010.0, 550.0, 25.0 ],
                    "varname": "out_06"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4010.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_06"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-173",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 4080.0, 1040.0, 549.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-174",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 4080.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-175",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 4087.0, 1005.0, 28.0 ],
                    "text": "07   Room, mute, solo"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-176",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 4139.0, 982.0, 23.0 ],
                    "text": "Click either value in a row to compare."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-177",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4178.0, 266.0, 25.0 ],
                    "text": "/source/1/room/destination 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-178",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4178.0, 266.0, 25.0 ],
                    "text": "/source/1/room/destination 2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-179",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4178.0, 388.0, 23.0 ],
                    "text": "Destination room: 1 or 2."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-180",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4230.0, 266.0, 25.0 ],
                    "text": "/source/1/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-181",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4230.0, 266.0, 25.0 ],
                    "text": "/source/1/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-182",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4230.0, 388.0, 23.0 ],
                    "text": "Whole source: 0 unmuted; 1 muted."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-183",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4282.0, 266.0, 25.0 ],
                    "text": "/source/1/solo 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-184",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4282.0, 266.0, 25.0 ],
                    "text": "/source/1/solo 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-185",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4282.0, 388.0, 23.0 ],
                    "text": "Source solo: 0 off; 1 on."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-186",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4334.0, 266.0, 25.0 ],
                    "text": "/source/1/direct/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-187",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4334.0, 266.0, 25.0 ],
                    "text": "/source/1/direct/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-188",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4334.0, 388.0, 23.0 ],
                    "text": "Direct sound: 0 passes; 1 mutes."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-189",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4386.0, 266.0, 25.0 ],
                    "text": "/source/1/early/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-190",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4386.0, 266.0, 25.0 ],
                    "text": "/source/1/early/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-191",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4386.0, 388.0, 23.0 ],
                    "text": "Early reflections: 0 passes; 1 mutes."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-192",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4438.0, 266.0, 25.0 ],
                    "text": "/source/1/cluster/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-193",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4438.0, 266.0, 25.0 ],
                    "text": "/source/1/cluster/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-194",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4438.0, 388.0, 23.0 ],
                    "text": "Cluster (later reflections): 0 passes; 1 mutes."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-195",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4490.0, 266.0, 25.0 ],
                    "text": "/source/1/reverb/mute 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-196",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 4490.0, 266.0, 25.0 ],
                    "text": "/source/1/reverb/mute 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-197",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4490.0, 388.0, 23.0 ],
                    "text": "Reverb tail: 0 passes; 1 mutes."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-200",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 4542.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-201",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4542.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-202",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4581.0, 550.0, 25.0 ],
                    "varname": "out_07"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-203",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4581.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_07"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-205",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 4651.0, 1040.0, 425.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-206",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 4651.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-207",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 4658.0, 1005.0, 28.0 ],
                    "text": "08   Width, shape, spread, panrev"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-208",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 4710.0, 982.0, 23.0 ],
                    "text": "Each control shapes a different sound component."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-209",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4749.0, 550.0, 25.0 ],
                    "text": "/source/1/early/width 30."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-210",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4749.0, 388.0, 23.0 ],
                    "text": "Early-reflection stereo width: 30 degrees."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-211",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4801.0, 550.0, 25.0 ],
                    "text": "/source/1/early/shape 50."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-212",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4801.0, 306.0, 40.0 ],
                    "text": "Echo levels: 50% equal; below favors earlier,\nabove favors later echoes."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-213",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4869.0, 550.0, 25.0 ],
                    "text": "/source/1/spread 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-214",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4869.0, 388.0, 23.0 ],
                    "text": "Direct spread: 0 = point source; higher = wider."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-215",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 4921.0, 550.0, 25.0 ],
                    "text": "/source/1/panrev 0."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-216",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4921.0, 429.0, 23.0 ],
                    "text": "Panrev: 0% diffuse; higher makes part of the cluster directional."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-219",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 4989.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-220",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 4989.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-221",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5028.0, 550.0, 25.0 ],
                    "varname": "out_08"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-222",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5028.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_08"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-224",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 5098.0, 1040.0, 380.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-225",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 5098.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-226",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 5105.0, 1005.0, 28.0 ],
                    "text": "09   Color, lock, reset"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-227",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 5157.0, 982.0, 23.0 ],
                    "text": "Interface settings and an action with no value."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-228",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5196.0, 550.0, 25.0 ],
                    "text": "/source/1/color 0.490196 1. 0. 1."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-229",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5196.0, 388.0, 23.0 ],
                    "text": "Marker RGBA, each 0-1. Here: opaque yellow-green."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-230",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5248.0, 266.0, 25.0 ],
                    "text": "/source/1/lock 0"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-231",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 332.0, 5248.0, 266.0, 25.0 ],
                    "text": "/source/1/lock 1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-232",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5248.0, 388.0, 23.0 ],
                    "text": "Source lock: 0 unlocked; 1 locked."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-233",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5300.0, 550.0, 25.0 ],
                    "text": "/source/1/reset"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-234",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5300.0, 388.0, 23.0 ],
                    "text": "Reset source 1 to Spat defaults. No value needed."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-236",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, 5352.0, 978.0, 23.0 ],
                    "text": "Lesson 11 restores your supplied settings after a reset."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-237",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 5391.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-238",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5391.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-239",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5430.0, 550.0, 25.0 ],
                    "text": "/source/1/color 0.490196 1. 0. 1.",
                    "varname": "out_09"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-240",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5430.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_09"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-242",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 5500.0, 1040.0, 742.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-243",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 5500.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-244",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 5507.0, 1005.0, 28.0 ],
                    "text": "10   Source address variables + OSC patterns"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-245",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 5559.0, 982.0, 23.0 ],
                    "text": "Max fills the $ variables. Spat matches the OSC patterns against its 12 sources."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-246",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5598.0, 550.0, 25.0 ],
                    "text": "list /source/1/pres 90.",
                    "varname": "source1_list"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-247",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5684.0, 550.0, 25.0 ],
                    "text": "list /source/2/pres 75.",
                    "varname": "source2_list"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-248",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5598.0, 354.0, 57.0 ],
                    "text": "$1 = complete address; $2 = value.\nUse list to pass both items.\n/source/$1/pres does not substitute inside a symbol."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgcolor2": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.88, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-249",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5736.0, 550.0, 25.0 ],
                    "text": "$1 $2",
                    "varname": "source_address_template"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-250",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5788.0, 550.0, 25.0 ],
                    "text": "/source/?/pres 60."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-251",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5788.0, 388.0, 23.0 ],
                    "text": "? = one character. Matches sources 1-9."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-252",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5840.0, 550.0, 25.0 ],
                    "text": "/source/*/pres 90."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-253",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5840.0, 388.0, 23.0 ],
                    "text": "* = zero or more characters. Matches all 12 sources."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-254",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5892.0, 550.0, 25.0 ],
                    "text": "/source/[135]/warm 40."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-255",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5892.0, 388.0, 23.0 ],
                    "text": "[135] = one listed character. Matches 1, 3, 5."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-256",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5944.0, 550.0, 25.0 ],
                    "text": "/source/[1-4]/bril 45."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-257",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5944.0, 388.0, 23.0 ],
                    "text": "[1-4] = one-character range. Matches 1-4."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-258",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 5996.0, 550.0, 25.0 ],
                    "text": "/source/[!1-4]/pres 75."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-259",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 5996.0, 388.0, 23.0 ],
                    "text": "[!1-4] = one character outside the range. Matches 5-9."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-260",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 6048.0, 550.0, 25.0 ],
                    "text": "/source/{1\\,10}/pres 90."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-261",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6048.0, 334.0, 40.0 ],
                    "text": "{1,10} = alternatives. Matches 1 and 10.\nEscape the comma with \\ in a Max message box."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-262",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 6116.0, 982.0, 23.0 ],
                    "text": "Patterns stay within a / level. [index] in documentation is a placeholder, not a source number."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-263",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 6155.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-264",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6155.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-265",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 6194.0, 550.0, 25.0 ],
                    "text": "/source/?/pres 60.",
                    "varname": "out_10"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-266",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6194.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_10"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-268",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 6264.0, 1040.0, 796.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-269",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 6264.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-270",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 6271.0, 1005.0, 28.0 ],
                    "text": "11   Restore the 31 supplied settings"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-271",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 6323.0, 982.0, 23.0 ],
                    "text": "One click sends 31 messages in order. Commas separate the messages."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-272",
                    "linecount": 11,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 6366.0, 550.0, 193.0 ],
                    "text": "/source/1/pres 90., /source/1/warm 30., /source/1/bril 30., /source/1/prer 48., /source/1/revp 34., /source/1/env 24., /source/1/axis/params 0. 0. 0. 0. 177. 5657., /source/1/axis/mute 0, /source/1/axis/bypass 0, /source/1/omni/params 0. 1.7 0. -3.8 177. 5657., /source/1/omni/mute 0, /source/1/omni/bypass 0, /source/1/color 0.490196 1. 0. 1., /source/1/doppler 0, /source/1/air 1, /source/1/air/freq 10000., /source/1/drop 6., /source/1/drop/mode log2, /source/1/radius 1., /source/1/room/destination 1, /source/1/mute 0, /source/1/solo 0, /source/1/direct/mute 0, /source/1/early/mute 0, /source/1/cluster/mute 0, /source/1/reverb/mute 0, /source/1/early/width 30., /source/1/early/shape 50., /source/1/spread 0., /source/1/panrev 0., /source/1/lock 0",
                    "varname": "starting_state_31"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-273",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6366.0, 388.0, 23.0 ],
                    "text": "SOURCE 1 ONLY"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-274",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6407.0, 375.0, 157.0 ],
                    "text": "Restores your supplied settings, not Spat defaults.\n\nSources 2-12 are unchanged.\n\nThe monitor shows the final message: /source/1/lock 0.\n\nOpen Max Console to see all 31.\n\nNo delay is added between messages."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-275",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 644.0, 6597.0, 119.0, 42.0 ],
                    "text": ";\rmax maxwindow",
                    "varname": "open_max_console"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-276",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6641.0, 388.0, 23.0 ],
                    "text": "Open Max Console"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-277",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 6975.0, 550.0, 23.0 ],
                    "text": "SENT MESSAGE"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-278",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 6975.0, 390.0, 23.0 ],
                    "text": "TO OPER"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgcolor2": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color1": [ 0.78, 0.93, 0.8, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "dontreplace": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Displays the latest message received at the right inlet; does not forward it.",
                    "id": "obj-279",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7012.0, 550.0, 25.0 ],
                    "text": "/source/1/lock 0",
                    "varname": "out_11"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "color": [ 0.3, 0.33, 0.38, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-280",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 644.0, 7012.0, 388.0, 25.0 ],
                    "text": "s spat5_tutorial",
                    "varname": "send_11"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-282",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 7082.0, 1040.0, 914.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "id": "obj-283",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 7082.0, 1040.0, 43.0 ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.87, 0.89, 0.92, 1.0 ],
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 19.0,
                    "id": "obj-284",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 7089.0, 1005.0, 28.0 ],
                    "text": "12   Practice + references"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-286",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7141.0, 415.0, 74.0 ],
                    "text": "1. Feed 15.0, 30.0, 60.0 into /source/1/early/width $1.\n2. Compare the omni gains with 0.0 0.0 0.0 0.0 177.0 5657.0.\n3. Compare axis/mute 1 and axis/bypass 1; restore both to 0.\n4. Try /source/1?/pres 75.0 for sources 10-12."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-289",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 54.0, 7236.0, 966.0, 23.0 ],
                    "text": "For sound: connect oper's leftmost outlet to a configured spat5.spat~ patch with matching source/room counts."
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-291",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7275.0, 982.0, 23.0 ],
                    "text": "Option-click oper (Mac) or Alt-click (Windows) for help. See Spat 5 basic tutorials for audio setup and parameter ranges."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-292",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7314.0, 982.0, 23.0 ],
                    "text": "Spat package"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-293",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7353.0, 414.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://forum.ircam.fr/projects/detail/spat/",
                    "varname": "ref_292"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-294",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7405.0, 982.0, 23.0 ],
                    "text": "Perceptual controls"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-295",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7444.0, 670.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://support-old.ircam.fr/forum-ol-doc/spat/3.0/spat-3-intro/co/perceptual.html",
                    "varname": "ref_294"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-296",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7496.0, 982.0, 23.0 ],
                    "text": "Early shape, spread, panrev"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-297",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7535.0, 607.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://discussion.forum.ircam.fr/t/spat-oper-source-parameters/22702",
                    "varname": "ref_296"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-298",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7587.0, 982.0, 23.0 ],
                    "text": "Axis and omni filters"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-299",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7626.0, 863.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://discussion.forum.ircam.fr/t/defaut-source-room-parameters-different-by-default-for-two-sources/27372",
                    "varname": "ref_298"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-300",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7678.0, 982.0, 23.0 ],
                    "text": "Distance, air, radius"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-301",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7717.0, 886.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://cdn-resources.ableton.com/resources/packs/spat-devices/spat_multichannel_devices_documentation.pdf",
                    "varname": "ref_300"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-302",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7769.0, 982.0, 23.0 ],
                    "text": "OSC address patterns"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-303",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7808.0, 493.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://opensoundcontrol.stanford.edu/spec-1_0.html",
                    "varname": "ref_302"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-304",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7860.0, 982.0, 23.0 ],
                    "text": "Max message boxes"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgcolor2": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color1": [ 0.96, 0.96, 0.96, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                    "bgfillcolor_type": "color",
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "gradient": 1,
                    "hint": "Click to send. Unlock to edit.",
                    "id": "obj-305",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 48.0, 7899.0, 455.0, 42.0 ],
                    "text": ";\rmax launchbrowser https://docs.cycling74.com/reference/message/",
                    "varname": "ref_304"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 15.0,
                    "id": "obj-306",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 7951.0, 982.0, 23.0 ],
                    "text": "Click a link box to open documentation."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 57.5, 273.0, 727.5, 273.0 ],
                    "order": 0,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2567.0, 36.0, 2567.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2567.0, 36.0, 2567.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 2826.0, 36.0, 2826.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 2826.0, 36.0, 2826.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 2878.0, 36.0, 2878.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 2878.0, 36.0, 2878.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 2930.0, 36.0, 2930.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 2930.0, 36.0, 2930.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 2982.0, 36.0, 2982.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 2982.0, 36.0, 2982.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3034.0, 36.0, 3034.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3034.0, 36.0, 3034.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3086.0, 36.0, 3086.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3086.0, 36.0, 3086.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3138.0, 36.0, 3138.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3138.0, 36.0, 3138.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3190.0, 36.0, 3190.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3190.0, 36.0, 3190.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3242.0, 36.0, 3242.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3242.0, 36.0, 3242.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3294.0, 36.0, 3294.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3294.0, 36.0, 3294.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 341.5, 3294.0, 36.0, 3294.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 341.5, 3294.0, 36.0, 3294.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3346.0, 36.0, 3346.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3346.0, 36.0, 3346.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 341.5, 3346.0, 36.0, 3346.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 341.5, 3346.0, 36.0, 3346.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 1 ],
                    "midpoints": [ 57.5, 3398.0, 36.0, 3398.0, 36.0, 3442.0, 588.5, 3442.0 ],
                    "order": 1,
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "midpoints": [ 57.5, 3398.0, 36.0, 3398.0, 36.0, 3442.0, 653.5, 3442.0 ],
                    "order": 0,
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3657.0, 36.0, 3657.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3657.0, 36.0, 3657.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 341.5, 3657.0, 36.0, 3657.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 341.5, 3657.0, 36.0, 3657.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3709.0, 36.0, 3709.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3709.0, 36.0, 3709.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 341.5, 3709.0, 36.0, 3709.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 341.5, 3709.0, 36.0, 3709.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3761.0, 36.0, 3761.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3761.0, 36.0, 3761.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3813.0, 36.0, 3813.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3813.0, 36.0, 3813.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3865.0, 36.0, 3865.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3865.0, 36.0, 3865.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 341.5, 3865.0, 36.0, 3865.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 341.5, 3865.0, 36.0, 3865.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 57.5, 3917.0, 36.0, 3917.0, 36.0, 4000.0, 588.5, 4000.0 ],
                    "order": 1,
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 57.5, 3917.0, 36.0, 3917.0, 36.0, 4000.0, 653.5, 4000.0 ],
                    "order": 0,
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4215.0, 36.0, 4215.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4215.0, 36.0, 4215.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4215.0, 36.0, 4215.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4215.0, 36.0, 4215.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4267.0, 36.0, 4267.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4267.0, 36.0, 4267.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4267.0, 36.0, 4267.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4267.0, 36.0, 4267.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4319.0, 36.0, 4319.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4319.0, 36.0, 4319.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4319.0, 36.0, 4319.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4319.0, 36.0, 4319.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4371.0, 36.0, 4371.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4371.0, 36.0, 4371.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4371.0, 36.0, 4371.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4371.0, 36.0, 4371.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4423.0, 36.0, 4423.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-189", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4423.0, 36.0, 4423.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-189", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4423.0, 36.0, 4423.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4423.0, 36.0, 4423.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4475.0, 36.0, 4475.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-192", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4475.0, 36.0, 4475.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-192", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4475.0, 36.0, 4475.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-193", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4475.0, 36.0, 4475.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-193", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 57.5, 4527.0, 36.0, 4527.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 57.5, 4527.0, 36.0, 4527.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 1 ],
                    "midpoints": [ 341.5, 4527.0, 36.0, 4527.0, 36.0, 4571.0, 588.5, 4571.0 ],
                    "order": 1,
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "midpoints": [ 341.5, 4527.0, 36.0, 4527.0, 36.0, 4571.0, 653.5, 4571.0 ],
                    "order": 0,
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 1 ],
                    "midpoints": [ 57.5, 4786.0, 36.0, 4786.0, 36.0, 5018.0, 588.5, 5018.0 ],
                    "order": 1,
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "midpoints": [ 57.5, 4786.0, 36.0, 4786.0, 36.0, 5018.0, 653.5, 5018.0 ],
                    "order": 0,
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 1 ],
                    "midpoints": [ 57.5, 4838.0, 36.0, 4838.0, 36.0, 5018.0, 588.5, 5018.0 ],
                    "order": 1,
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "midpoints": [ 57.5, 4838.0, 36.0, 4838.0, 36.0, 5018.0, 653.5, 5018.0 ],
                    "order": 0,
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 1 ],
                    "midpoints": [ 57.5, 4906.0, 36.0, 4906.0, 36.0, 5018.0, 588.5, 5018.0 ],
                    "order": 1,
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "midpoints": [ 57.5, 4906.0, 36.0, 4906.0, 36.0, 5018.0, 653.5, 5018.0 ],
                    "order": 0,
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 1 ],
                    "midpoints": [ 57.5, 4958.0, 36.0, 4958.0, 36.0, 5018.0, 588.5, 5018.0 ],
                    "order": 1,
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "midpoints": [ 57.5, 4958.0, 36.0, 4958.0, 36.0, 5018.0, 653.5, 5018.0 ],
                    "order": 0,
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "midpoints": [ 57.5, 627.0, 36.0, 627.0, 36.0, 710.0, 588.5, 710.0 ],
                    "order": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 57.5, 627.0, 36.0, 627.0, 36.0, 710.0, 653.5, 710.0 ],
                    "order": 0,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 1 ],
                    "midpoints": [ 57.5, 5233.0, 36.0, 5233.0, 36.0, 5420.0, 588.5, 5420.0 ],
                    "order": 1,
                    "source": [ "obj-228", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "midpoints": [ 57.5, 5233.0, 36.0, 5233.0, 36.0, 5420.0, 653.5, 5420.0 ],
                    "order": 0,
                    "source": [ "obj-228", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 1 ],
                    "midpoints": [ 57.5, 5285.0, 36.0, 5285.0, 36.0, 5420.0, 588.5, 5420.0 ],
                    "order": 1,
                    "source": [ "obj-230", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "midpoints": [ 57.5, 5285.0, 36.0, 5285.0, 36.0, 5420.0, 653.5, 5420.0 ],
                    "order": 0,
                    "source": [ "obj-230", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 1 ],
                    "midpoints": [ 341.5, 5285.0, 36.0, 5285.0, 36.0, 5420.0, 588.5, 5420.0 ],
                    "order": 1,
                    "source": [ "obj-231", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "midpoints": [ 341.5, 5285.0, 36.0, 5285.0, 36.0, 5420.0, 653.5, 5420.0 ],
                    "order": 0,
                    "source": [ "obj-231", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-239", 1 ],
                    "midpoints": [ 57.5, 5337.0, 36.0, 5337.0, 36.0, 5420.0, 588.5, 5420.0 ],
                    "order": 1,
                    "source": [ "obj-233", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-240", 0 ],
                    "midpoints": [ 57.5, 5337.0, 36.0, 5337.0, 36.0, 5420.0, 653.5, 5420.0 ],
                    "order": 0,
                    "source": [ "obj-233", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "source": [ "obj-246", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-249", 0 ],
                    "source": [ "obj-247", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 5773.0, 36.0, 5773.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 5773.0, 36.0, 5773.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-249", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 5825.0, 36.0, 5825.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-250", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 5825.0, 36.0, 5825.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-250", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 5877.0, 36.0, 5877.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-252", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 5877.0, 36.0, 5877.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-252", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 5929.0, 36.0, 5929.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-254", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 5929.0, 36.0, 5929.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-254", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 5981.0, 36.0, 5981.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-256", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 5981.0, 36.0, 5981.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-256", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 6033.0, 36.0, 6033.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-258", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 6033.0, 36.0, 6033.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-258", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 1 ],
                    "midpoints": [ 57.5, 6085.0, 36.0, 6085.0, 36.0, 6184.0, 588.5, 6184.0 ],
                    "order": 1,
                    "source": [ "obj-260", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 57.5, 6085.0, 36.0, 6085.0, 36.0, 6184.0, 653.5, 6184.0 ],
                    "order": 0,
                    "source": [ "obj-260", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 1 ],
                    "midpoints": [ 57.5, 6958.0, 36.0, 6958.0, 36.0, 7002.0, 588.5, 7002.0 ],
                    "order": 1,
                    "source": [ "obj-272", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-280", 0 ],
                    "midpoints": [ 57.5, 6958.0, 36.0, 6958.0, 36.0, 7002.0, 653.5, 7002.0 ],
                    "order": 0,
                    "source": [ "obj-272", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 925.0, 36.0, 925.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 925.0, 36.0, 925.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 993.0, 36.0, 993.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 993.0, 36.0, 993.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 1045.0, 36.0, 1045.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 1045.0, 36.0, 1045.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 1097.0, 36.0, 1097.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 1097.0, 36.0, 1097.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 1149.0, 36.0, 1149.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 1149.0, 36.0, 1149.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 57.5, 1217.0, 36.0, 1217.0, 36.0, 1261.0, 588.5, 1261.0 ],
                    "order": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 57.5, 1217.0, 36.0, 1217.0, 36.0, 1261.0, 653.5, 1261.0 ],
                    "order": 0,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "midpoints": [ 57.5, 1528.0, 36.0, 1528.0, 36.0, 1780.0, 588.5, 1780.0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 57.5, 1528.0, 36.0, 1528.0, 36.0, 1780.0, 653.5, 1780.0 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "midpoints": [ 57.5, 1632.0, 36.0, 1632.0, 36.0, 1780.0, 588.5, 1780.0 ],
                    "order": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 57.5, 1632.0, 36.0, 1632.0, 36.0, 1780.0, 653.5, 1780.0 ],
                    "order": 0,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "midpoints": [ 57.5, 1736.0, 36.0, 1736.0, 36.0, 1780.0, 588.5, 1780.0 ],
                    "order": 1,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 57.5, 1736.0, 36.0, 1736.0, 36.0, 1780.0, 653.5, 1780.0 ],
                    "order": 0,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 1995.0, 36.0, 1995.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 1995.0, 36.0, 1995.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2047.0, 36.0, 2047.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2047.0, 36.0, 2047.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2099.0, 36.0, 2099.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2099.0, 36.0, 2099.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2151.0, 36.0, 2151.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2151.0, 36.0, 2151.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2203.0, 36.0, 2203.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2203.0, 36.0, 2203.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2255.0, 36.0, 2255.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2255.0, 36.0, 2255.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2307.0, 36.0, 2307.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2307.0, 36.0, 2307.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2359.0, 36.0, 2359.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2359.0, 36.0, 2359.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2411.0, 36.0, 2411.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2411.0, 36.0, 2411.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2463.0, 36.0, 2463.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2463.0, 36.0, 2463.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 341.5, 2463.0, 36.0, 2463.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 341.5, 2463.0, 36.0, 2463.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 57.5, 2515.0, 36.0, 2515.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 57.5, 2515.0, 36.0, 2515.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "midpoints": [ 341.5, 2515.0, 36.0, 2515.0, 36.0, 2611.0, 588.5, 2611.0 ],
                    "order": 1,
                    "source": [ "obj-99", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 341.5, 2515.0, 36.0, 2515.0, 36.0, 2611.0, 653.5, 2611.0 ],
                    "order": 0,
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "autosave": 0,
        "color": [ 0.06, 0.06, 0.07, 1.0 ],
        "elementcolor": [ 0.3, 0.33, 0.38, 1.0 ],
        "accentcolor": [ 0.06, 0.06, 0.07, 1.0 ],
        "selectioncolor": [ 1.0, 0.62, 0.04, 0.22 ],
        "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
        "textcolor_inverse": [ 0.06, 0.06, 0.07, 1.0 ],
        "patchlinecolor": [ 0.25, 0.28, 0.32, 1.0 ],
        "clearcolor": [ 1.0, 1.0, 1.0, 1.0 ],
        "bgcolor": [ 0.96, 0.96, 0.96, 1.0 ],
        "editing_bgcolor": [ 0.9, 0.91, 0.92, 1.0 ],
        "syntax_objectcolor": [ 0.06, 0.06, 0.07, 1.0 ],
        "syntax_attributecolor": [ 0.06, 0.06, 0.07, 1.0 ],
        "syntax_attrargcolor": [ 0.06, 0.06, 0.07, 1.0 ],
        "syntax_objargcolor": [ 0.06, 0.06, 0.07, 1.0 ]
    }
}