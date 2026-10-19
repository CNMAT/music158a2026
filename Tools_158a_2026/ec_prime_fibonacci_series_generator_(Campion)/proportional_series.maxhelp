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
        "rect": [ 1810.0, 141.0, 1114.0, 735.0 ],
        "description": "Help patch for proportional_series.js",
        "digest": "Fibonacci and prime series generator",
        "tags": "fibonacci prime series proportional js",
        "boxes": [
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 583.0, 654.0, 520.0, 22.0 ],
                    "text": "11 13 17 19 23 29 31 37 41 43 47 53 59"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 388.0, 177.0, 33.0 ],
                    "text": "Compatibility: outputs one flat list: 3 5 5 7 11 13 ... 71 73"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 360.0, 147.0, 22.0 ],
                    "text": "prime_gaplist_flat 2 0-100"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 113.5, 141.0, 60.0 ],
                    "text": "a PRIME GAP is the distance between consecutive prime number pairs."
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "m3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 258.5, 124.0, 22.0 ],
                    "text": "prime_gaplist 2 0-100"
                }
            },
            {
                "box": {
                    "id": "m3c",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 664.0, 284.0, 187.0, 74.0 ],
                    "text": "Gap search: outputs consecutive twin-prime pairs in range 0-100.\nOutputs pair messages: 3 5, 5 7, 11 13, 17 19, 29 31, 41 43, 59 61, 71 73"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "m4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 429.5, 141.0, 22.0 ],
                    "text": "prime_gaplist 2 4 50-200"
                }
            },
            {
                "box": {
                    "id": "m4c",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 456.5, 185.0, 33.0 ],
                    "text": "Multi-gap search: searches gaps 2 and 4 in values 50-200"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "m6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 176.5, 90.0, 22.0 ],
                    "text": "prime_gaplist 2"
                }
            },
            {
                "box": {
                    "id": "m6c",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 201.5, 141.0, 47.0 ],
                    "text": "All consecutive prime pairs separated by 2 in the 1200-prime table"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.31, 0.282, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "m7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.0, 535.0, 127.0, 22.0 ],
                    "text": "prime_gapslist 50-200"
                }
            },
            {
                "box": {
                    "id": "m7c",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 665.0, 560.0, 129.0, 74.0 ],
                    "text": "Gap-only list for prime values 50-200. Outputs gap values only: 1 2 2 4 2 4 2 4 6 ..."
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.0, 91.0, 569.0, 22.0 ],
                    "text": "NOTE:  adding underscore 'rcp' to any of these functions will output the reciprocal decimal."
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 516.0, 245.0, 117.0, 22.0 ],
                    "text": "prime_index_rcp 0.5"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.0, 243.0, 131.0, 24.0 ],
                    "text": "fib_index_rcp 0.125"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 663.0, 111.0, 24.0 ],
                    "text": "fiblist_rcp 3-15 3"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 663.0, 121.0, 22.0 ],
                    "text": "primelist_rcp 10-20 2"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 567.0, 111.0, 22.0 ],
                    "text": "primelist_rcp 21-25"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-66",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 566.0, 107.0, 24.0 ],
                    "text": "fiblist_rcp 15-18"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 462.0, 87.0, 22.0 ],
                    "text": "primelist_rcp 6"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 324.0, 102.0, 22.0 ],
                    "text": "prime_rcp 2 4 6 8"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 324.0, 117.0, 24.0 ],
                    "text": "fib_rcp 2 4 6 8 18"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 229.0, 79.0, 22.0 ],
                    "text": "prime_rcp 20"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 229.0, 70.0, 24.0 ],
                    "text": "fib_rcp 10"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 298.0, 101.0, 20.0 ],
                    "text": "outputs 3 7 13 19"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 273.0, 79.0, 22.0 ],
                    "text": "prime 2 4 6 8"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 146.0, 161.0, 47.0 ],
                    "text": "sets stream to Prime; \nstatus outlet: reset fibonacci.\noutputs 71 (20th in series)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 200.0, 55.0, 22.0 ],
                    "text": "prime 20"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 199.0, 43.0, 24.0 ],
                    "text": "fib 10"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 20.0, 360.0, 33.0 ],
                    "text": "proportional_series.js"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 58.0, 301.0, 20.0 ],
                    "text": "Fibonacci and prime-number series generator for Max:."
                }
            },
            {
                "box": {
                    "color": [ 0.215686274509804, 1.0, 0.505882352941176, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 352.0, 629.0, 190.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "proportional_series.js",
                        "parameter_enable": 0
                    },
                    "text": "js proportional_series.js"
                }
            },
            {
                "box": {
                    "color": [ 0.215686274509804, 1.0, 0.505882352941176, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 358.0, 694.0, 230.0, 22.0 ],
                    "text": "print proportional_series_values"
                }
            },
            {
                "box": {
                    "color": [ 0.215686274509804, 1.0, 0.505882352941176, 1.0 ],
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.0, 694.0, 235.0, 22.0 ],
                    "text": "print proportional_series_status"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 115.0, 197.0, 24.0 ],
                    "text": "Direct lookup: fib / prime"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 368.0, 234.0, 24.0 ],
                    "text": "Lists, ranges, stepped ranges"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.0, 118.0, 189.0, 24.0 ],
                    "text": "Index lookup and slices"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 102.0, 201.0, 24.0 ],
                    "text": "Stream / status examples"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 80.0, 194.0, 111.0, 33.0 ],
                    "text": " Fibonacci index is \nzero-based."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 273.0, 89.0, 24.0 ],
                    "text": "fib 2 4 6 8 18"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 298.0, 125.0, 20.0 ],
                    "text": "outputs 1 3 8 21 2584"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 396.0, 52.0, 24.0 ],
                    "text": "fiblist 6"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 422.0, 107.0, 33.0 ],
                    "text": "first 6 Fibonacci \nvalues: 0 1 1 2 3 5"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 492.0, 80.0, 24.0 ],
                    "text": "fiblist 15-18"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 517.0, 117.0, 47.0 ],
                    "text": "range output: values\n610 987 1597 2584\n"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 603.0, 84.0, 24.0 ],
                    "text": "fiblist 3-15 3"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 629.0, 140.0, 33.0 ],
                    "text": "stepped by index 3: \nvalues: 2 8 34 144 610"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 400.0, 63.0, 22.0 ],
                    "text": "primelist 6"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 425.0, 122.0, 33.0 ],
                    "text": "first 6 primes: \nvalues: 2 3 5 7 11 13 "
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 492.0, 81.0, 22.0 ],
                    "text": "primelist 5-17"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 522.0, 117.0, 33.0 ],
                    "text": "range output: values\n73 79 83 89 97"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 603.0, 97.0, 22.0 ],
                    "text": "primelist 10-20 2"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 629.0, 151.0, 33.0 ],
                    "text": "stepped by index 2: values\n29 37 43 53 61 71"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 516.0, 183.0, 84.0, 22.0 ],
                    "text": "prime_index 2"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 208.0, 129.0, 33.0 ],
                    "text": "value-to-index lookup: \noutputs 1."
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 516.0, 310.0, 130.0, 22.0 ],
                    "text": "prime_index 2 3 5 7 11"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 335.0, 101.0, 20.0 ],
                    "text": "outputs 1 2 3 4 5."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.0, 180.0, 100.0, 24.0 ],
                    "text": "fib_index 2584"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.0, 205.0, 68.0, 20.0 ],
                    "text": "outputs 18."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.0, 309.0, 135.0, 24.0 ],
                    "text": "fib_index 0 1 1 2 3 5"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.0, 334.0, 133.0, 47.0 ],
                    "text": "outputs 0 1 1 3 4 5; \nduplicate 1 returns first \nmatching index."
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color1": [ 1.0, 0.309803921568627, 0.282352941176471, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 516.0, 402.0, 127.0, 22.0 ],
                    "text": "prime_slice 100-200 6"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 429.0, 123.0, 47.0 ],
                    "text": "even index slice: \noutputs 541 659 809 941 1069 1223."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color1": [ 0.07843137254902, 0.925490196078431, 0.819607843137255, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 366.0, 399.0, 103.0, 24.0 ],
                    "text": "fib_slice 4-16 3"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.0, 424.0, 109.0, 60.0 ],
                    "text": "slice = range + \nnumber of outputs \nacross range\n3 55 987."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "fontsize": 14.0,
                    "gradient": 1,
                    "id": "obj-42",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 134.0, 65.0, 24.0 ],
                    "text": "series fib"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 146.0, 161.0, 47.0 ],
                    "text": "sets stream to Fibonacci; \nstatus outlet: reset fibonacci.\noutputs 55 (10th in series)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 531.0, 170.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 556.0, 201.0, 33.0 ],
                    "text": "resets current stream; status outlet: reset fibonacci or reset prime."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 207.0, 170.0, 22.0 ],
                    "text": "next 8"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 232.0, 170.0, 33.0 ],
                    "text": "after reset in Fibonacci mode: 0 1 1 2 3 5 8 13."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 310.0, 170.0, 22.0 ],
                    "text": "position 10"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 335.0, 174.0, 47.0 ],
                    "text": "Fibonacci stream status: reset fibonacci, then position 10 value 55."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435294117647059, 0.847058823529412, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 434.0, 170.0, 22.0 ],
                    "text": "info"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 459.0, 185.0, 47.0 ],
                    "text": "example status: series fibonacci position 0 current 0 prime_range 1-1200 fibonacci_seed 0 1."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.435, 0.847, 1.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 943.0, 135.0, 74.0, 22.0 ],
                    "text": "series prime"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 166.0, 207.0, 33.0 ],
                    "text": "sets stream to fibonacci or prime; status outlet: reset prime."
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 272.0, 149.0, 33.0 ],
                    "text": "after reset in prime mode: 2 3 5 7 11 13 17 19."
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 388.0, 178.0, 33.0 ],
                    "text": "prime stream status: reset prime, then position 9 value 29."
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 861.0, 600.0, 170.0, 22.0 ],
                    "text": "seed 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 861.0, 625.0, 201.0, 33.0 ],
                    "text": "changes Fibonacci seed; status includes fibonacci seed 1 1."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 16.0,
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 535.5, 21.0, 152.0, 24.0 ],
                    "text": "Function summary"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 535.5, 44.0, 585.0, 47.0 ],
                    "text": "fib / prime: direct lookup by index. fiblist / primelist: first n, range, or stepped range. fib_index / prime_index: recover sequence index from value. fib_slice / prime_slice: evenly distributed index samples across a range. series / bang / next / position / reset: stream mode."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "m3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "m4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "m6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "m7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 1 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-72", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}