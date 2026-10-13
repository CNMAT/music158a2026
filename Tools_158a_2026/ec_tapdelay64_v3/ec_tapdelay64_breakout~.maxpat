{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      60,
      60,
      1140,
      730
    ],
    "default_fontsize": 12.0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            15,
            1060,
            36
          ],
          "text": "Argument: N = taps 1\u2013N; start-end = inclusive tap range. Examples: 8 = taps 1\u20138; 8-15 = eight outlets carrying taps 8\u201315. Default: 64."
        }
      },
      {
        "box": {
          "id": "in",
          "maxclass": "inlet",
          "patching_rect": [
            20,
            55,
            25,
            25
          ],
          "index": 1,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            "multichannelsignal"
          ]
        }
      },
      {
        "box": {
          "id": "unpack",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            105,
            1080,
            22
          ],
          "text": "mc.unpack~ 64",
          "numinlets": 1,
          "numoutlets": 64,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal",
            "signal"
          ],
          "varname": "tap_unpack"
        }
      },
      {
        "box": {
          "id": "label1",
          "maxclass": "comment",
          "patching_rect": [
            20,
            175,
            68,
            22
          ],
          "text": "source 1",
          "varname": "tap_label_1"
        }
      },
      {
        "box": {
          "id": "out1",
          "maxclass": "outlet",
          "patching_rect": [
            20,
            199,
            25,
            25
          ],
          "index": 1,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 1",
          "varname": "tap_out_1"
        }
      },
      {
        "box": {
          "id": "label2",
          "maxclass": "comment",
          "patching_rect": [
            88,
            175,
            68,
            22
          ],
          "text": "source 2",
          "varname": "tap_label_2"
        }
      },
      {
        "box": {
          "id": "out2",
          "maxclass": "outlet",
          "patching_rect": [
            88,
            199,
            25,
            25
          ],
          "index": 2,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 2",
          "varname": "tap_out_2"
        }
      },
      {
        "box": {
          "id": "label3",
          "maxclass": "comment",
          "patching_rect": [
            156,
            175,
            68,
            22
          ],
          "text": "source 3",
          "varname": "tap_label_3"
        }
      },
      {
        "box": {
          "id": "out3",
          "maxclass": "outlet",
          "patching_rect": [
            156,
            199,
            25,
            25
          ],
          "index": 3,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 3",
          "varname": "tap_out_3"
        }
      },
      {
        "box": {
          "id": "label4",
          "maxclass": "comment",
          "patching_rect": [
            224,
            175,
            68,
            22
          ],
          "text": "source 4",
          "varname": "tap_label_4"
        }
      },
      {
        "box": {
          "id": "out4",
          "maxclass": "outlet",
          "patching_rect": [
            224,
            199,
            25,
            25
          ],
          "index": 4,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 4",
          "varname": "tap_out_4"
        }
      },
      {
        "box": {
          "id": "label5",
          "maxclass": "comment",
          "patching_rect": [
            292,
            175,
            68,
            22
          ],
          "text": "source 5",
          "varname": "tap_label_5"
        }
      },
      {
        "box": {
          "id": "out5",
          "maxclass": "outlet",
          "patching_rect": [
            292,
            199,
            25,
            25
          ],
          "index": 5,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 5",
          "varname": "tap_out_5"
        }
      },
      {
        "box": {
          "id": "label6",
          "maxclass": "comment",
          "patching_rect": [
            360,
            175,
            68,
            22
          ],
          "text": "source 6",
          "varname": "tap_label_6"
        }
      },
      {
        "box": {
          "id": "out6",
          "maxclass": "outlet",
          "patching_rect": [
            360,
            199,
            25,
            25
          ],
          "index": 6,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 6",
          "varname": "tap_out_6"
        }
      },
      {
        "box": {
          "id": "label7",
          "maxclass": "comment",
          "patching_rect": [
            428,
            175,
            68,
            22
          ],
          "text": "source 7",
          "varname": "tap_label_7"
        }
      },
      {
        "box": {
          "id": "out7",
          "maxclass": "outlet",
          "patching_rect": [
            428,
            199,
            25,
            25
          ],
          "index": 7,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 7",
          "varname": "tap_out_7"
        }
      },
      {
        "box": {
          "id": "label8",
          "maxclass": "comment",
          "patching_rect": [
            496,
            175,
            68,
            22
          ],
          "text": "source 8",
          "varname": "tap_label_8"
        }
      },
      {
        "box": {
          "id": "out8",
          "maxclass": "outlet",
          "patching_rect": [
            496,
            199,
            25,
            25
          ],
          "index": 8,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 8",
          "varname": "tap_out_8"
        }
      },
      {
        "box": {
          "id": "label9",
          "maxclass": "comment",
          "patching_rect": [
            564,
            175,
            68,
            22
          ],
          "text": "source 9",
          "varname": "tap_label_9"
        }
      },
      {
        "box": {
          "id": "out9",
          "maxclass": "outlet",
          "patching_rect": [
            564,
            199,
            25,
            25
          ],
          "index": 9,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 9",
          "varname": "tap_out_9"
        }
      },
      {
        "box": {
          "id": "label10",
          "maxclass": "comment",
          "patching_rect": [
            632,
            175,
            68,
            22
          ],
          "text": "source 10",
          "varname": "tap_label_10"
        }
      },
      {
        "box": {
          "id": "out10",
          "maxclass": "outlet",
          "patching_rect": [
            632,
            199,
            25,
            25
          ],
          "index": 10,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 10",
          "varname": "tap_out_10"
        }
      },
      {
        "box": {
          "id": "label11",
          "maxclass": "comment",
          "patching_rect": [
            700,
            175,
            68,
            22
          ],
          "text": "source 11",
          "varname": "tap_label_11"
        }
      },
      {
        "box": {
          "id": "out11",
          "maxclass": "outlet",
          "patching_rect": [
            700,
            199,
            25,
            25
          ],
          "index": 11,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 11",
          "varname": "tap_out_11"
        }
      },
      {
        "box": {
          "id": "label12",
          "maxclass": "comment",
          "patching_rect": [
            768,
            175,
            68,
            22
          ],
          "text": "source 12",
          "varname": "tap_label_12"
        }
      },
      {
        "box": {
          "id": "out12",
          "maxclass": "outlet",
          "patching_rect": [
            768,
            199,
            25,
            25
          ],
          "index": 12,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 12",
          "varname": "tap_out_12"
        }
      },
      {
        "box": {
          "id": "label13",
          "maxclass": "comment",
          "patching_rect": [
            836,
            175,
            68,
            22
          ],
          "text": "source 13",
          "varname": "tap_label_13"
        }
      },
      {
        "box": {
          "id": "out13",
          "maxclass": "outlet",
          "patching_rect": [
            836,
            199,
            25,
            25
          ],
          "index": 13,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 13",
          "varname": "tap_out_13"
        }
      },
      {
        "box": {
          "id": "label14",
          "maxclass": "comment",
          "patching_rect": [
            904,
            175,
            68,
            22
          ],
          "text": "source 14",
          "varname": "tap_label_14"
        }
      },
      {
        "box": {
          "id": "out14",
          "maxclass": "outlet",
          "patching_rect": [
            904,
            199,
            25,
            25
          ],
          "index": 14,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 14",
          "varname": "tap_out_14"
        }
      },
      {
        "box": {
          "id": "label15",
          "maxclass": "comment",
          "patching_rect": [
            972,
            175,
            68,
            22
          ],
          "text": "source 15",
          "varname": "tap_label_15"
        }
      },
      {
        "box": {
          "id": "out15",
          "maxclass": "outlet",
          "patching_rect": [
            972,
            199,
            25,
            25
          ],
          "index": 15,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 15",
          "varname": "tap_out_15"
        }
      },
      {
        "box": {
          "id": "label16",
          "maxclass": "comment",
          "patching_rect": [
            1040,
            175,
            68,
            22
          ],
          "text": "source 16",
          "varname": "tap_label_16"
        }
      },
      {
        "box": {
          "id": "out16",
          "maxclass": "outlet",
          "patching_rect": [
            1040,
            199,
            25,
            25
          ],
          "index": 16,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 16",
          "varname": "tap_out_16"
        }
      },
      {
        "box": {
          "id": "label17",
          "maxclass": "comment",
          "patching_rect": [
            20,
            240,
            68,
            22
          ],
          "text": "source 17",
          "varname": "tap_label_17"
        }
      },
      {
        "box": {
          "id": "out17",
          "maxclass": "outlet",
          "patching_rect": [
            20,
            264,
            25,
            25
          ],
          "index": 17,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 17",
          "varname": "tap_out_17"
        }
      },
      {
        "box": {
          "id": "label18",
          "maxclass": "comment",
          "patching_rect": [
            88,
            240,
            68,
            22
          ],
          "text": "source 18",
          "varname": "tap_label_18"
        }
      },
      {
        "box": {
          "id": "out18",
          "maxclass": "outlet",
          "patching_rect": [
            88,
            264,
            25,
            25
          ],
          "index": 18,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 18",
          "varname": "tap_out_18"
        }
      },
      {
        "box": {
          "id": "label19",
          "maxclass": "comment",
          "patching_rect": [
            156,
            240,
            68,
            22
          ],
          "text": "source 19",
          "varname": "tap_label_19"
        }
      },
      {
        "box": {
          "id": "out19",
          "maxclass": "outlet",
          "patching_rect": [
            156,
            264,
            25,
            25
          ],
          "index": 19,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 19",
          "varname": "tap_out_19"
        }
      },
      {
        "box": {
          "id": "label20",
          "maxclass": "comment",
          "patching_rect": [
            224,
            240,
            68,
            22
          ],
          "text": "source 20",
          "varname": "tap_label_20"
        }
      },
      {
        "box": {
          "id": "out20",
          "maxclass": "outlet",
          "patching_rect": [
            224,
            264,
            25,
            25
          ],
          "index": 20,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 20",
          "varname": "tap_out_20"
        }
      },
      {
        "box": {
          "id": "label21",
          "maxclass": "comment",
          "patching_rect": [
            292,
            240,
            68,
            22
          ],
          "text": "source 21",
          "varname": "tap_label_21"
        }
      },
      {
        "box": {
          "id": "out21",
          "maxclass": "outlet",
          "patching_rect": [
            292,
            264,
            25,
            25
          ],
          "index": 21,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 21",
          "varname": "tap_out_21"
        }
      },
      {
        "box": {
          "id": "label22",
          "maxclass": "comment",
          "patching_rect": [
            360,
            240,
            68,
            22
          ],
          "text": "source 22",
          "varname": "tap_label_22"
        }
      },
      {
        "box": {
          "id": "out22",
          "maxclass": "outlet",
          "patching_rect": [
            360,
            264,
            25,
            25
          ],
          "index": 22,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 22",
          "varname": "tap_out_22"
        }
      },
      {
        "box": {
          "id": "label23",
          "maxclass": "comment",
          "patching_rect": [
            428,
            240,
            68,
            22
          ],
          "text": "source 23",
          "varname": "tap_label_23"
        }
      },
      {
        "box": {
          "id": "out23",
          "maxclass": "outlet",
          "patching_rect": [
            428,
            264,
            25,
            25
          ],
          "index": 23,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 23",
          "varname": "tap_out_23"
        }
      },
      {
        "box": {
          "id": "label24",
          "maxclass": "comment",
          "patching_rect": [
            496,
            240,
            68,
            22
          ],
          "text": "source 24",
          "varname": "tap_label_24"
        }
      },
      {
        "box": {
          "id": "out24",
          "maxclass": "outlet",
          "patching_rect": [
            496,
            264,
            25,
            25
          ],
          "index": 24,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 24",
          "varname": "tap_out_24"
        }
      },
      {
        "box": {
          "id": "label25",
          "maxclass": "comment",
          "patching_rect": [
            564,
            240,
            68,
            22
          ],
          "text": "source 25",
          "varname": "tap_label_25"
        }
      },
      {
        "box": {
          "id": "out25",
          "maxclass": "outlet",
          "patching_rect": [
            564,
            264,
            25,
            25
          ],
          "index": 25,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 25",
          "varname": "tap_out_25"
        }
      },
      {
        "box": {
          "id": "label26",
          "maxclass": "comment",
          "patching_rect": [
            632,
            240,
            68,
            22
          ],
          "text": "source 26",
          "varname": "tap_label_26"
        }
      },
      {
        "box": {
          "id": "out26",
          "maxclass": "outlet",
          "patching_rect": [
            632,
            264,
            25,
            25
          ],
          "index": 26,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 26",
          "varname": "tap_out_26"
        }
      },
      {
        "box": {
          "id": "label27",
          "maxclass": "comment",
          "patching_rect": [
            700,
            240,
            68,
            22
          ],
          "text": "source 27",
          "varname": "tap_label_27"
        }
      },
      {
        "box": {
          "id": "out27",
          "maxclass": "outlet",
          "patching_rect": [
            700,
            264,
            25,
            25
          ],
          "index": 27,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 27",
          "varname": "tap_out_27"
        }
      },
      {
        "box": {
          "id": "label28",
          "maxclass": "comment",
          "patching_rect": [
            768,
            240,
            68,
            22
          ],
          "text": "source 28",
          "varname": "tap_label_28"
        }
      },
      {
        "box": {
          "id": "out28",
          "maxclass": "outlet",
          "patching_rect": [
            768,
            264,
            25,
            25
          ],
          "index": 28,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 28",
          "varname": "tap_out_28"
        }
      },
      {
        "box": {
          "id": "label29",
          "maxclass": "comment",
          "patching_rect": [
            836,
            240,
            68,
            22
          ],
          "text": "source 29",
          "varname": "tap_label_29"
        }
      },
      {
        "box": {
          "id": "out29",
          "maxclass": "outlet",
          "patching_rect": [
            836,
            264,
            25,
            25
          ],
          "index": 29,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 29",
          "varname": "tap_out_29"
        }
      },
      {
        "box": {
          "id": "label30",
          "maxclass": "comment",
          "patching_rect": [
            904,
            240,
            68,
            22
          ],
          "text": "source 30",
          "varname": "tap_label_30"
        }
      },
      {
        "box": {
          "id": "out30",
          "maxclass": "outlet",
          "patching_rect": [
            904,
            264,
            25,
            25
          ],
          "index": 30,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 30",
          "varname": "tap_out_30"
        }
      },
      {
        "box": {
          "id": "label31",
          "maxclass": "comment",
          "patching_rect": [
            972,
            240,
            68,
            22
          ],
          "text": "source 31",
          "varname": "tap_label_31"
        }
      },
      {
        "box": {
          "id": "out31",
          "maxclass": "outlet",
          "patching_rect": [
            972,
            264,
            25,
            25
          ],
          "index": 31,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 31",
          "varname": "tap_out_31"
        }
      },
      {
        "box": {
          "id": "label32",
          "maxclass": "comment",
          "patching_rect": [
            1040,
            240,
            68,
            22
          ],
          "text": "source 32",
          "varname": "tap_label_32"
        }
      },
      {
        "box": {
          "id": "out32",
          "maxclass": "outlet",
          "patching_rect": [
            1040,
            264,
            25,
            25
          ],
          "index": 32,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 32",
          "varname": "tap_out_32"
        }
      },
      {
        "box": {
          "id": "label33",
          "maxclass": "comment",
          "patching_rect": [
            20,
            305,
            68,
            22
          ],
          "text": "source 33",
          "varname": "tap_label_33"
        }
      },
      {
        "box": {
          "id": "out33",
          "maxclass": "outlet",
          "patching_rect": [
            20,
            329,
            25,
            25
          ],
          "index": 33,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 33",
          "varname": "tap_out_33"
        }
      },
      {
        "box": {
          "id": "label34",
          "maxclass": "comment",
          "patching_rect": [
            88,
            305,
            68,
            22
          ],
          "text": "source 34",
          "varname": "tap_label_34"
        }
      },
      {
        "box": {
          "id": "out34",
          "maxclass": "outlet",
          "patching_rect": [
            88,
            329,
            25,
            25
          ],
          "index": 34,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 34",
          "varname": "tap_out_34"
        }
      },
      {
        "box": {
          "id": "label35",
          "maxclass": "comment",
          "patching_rect": [
            156,
            305,
            68,
            22
          ],
          "text": "source 35",
          "varname": "tap_label_35"
        }
      },
      {
        "box": {
          "id": "out35",
          "maxclass": "outlet",
          "patching_rect": [
            156,
            329,
            25,
            25
          ],
          "index": 35,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 35",
          "varname": "tap_out_35"
        }
      },
      {
        "box": {
          "id": "label36",
          "maxclass": "comment",
          "patching_rect": [
            224,
            305,
            68,
            22
          ],
          "text": "source 36",
          "varname": "tap_label_36"
        }
      },
      {
        "box": {
          "id": "out36",
          "maxclass": "outlet",
          "patching_rect": [
            224,
            329,
            25,
            25
          ],
          "index": 36,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 36",
          "varname": "tap_out_36"
        }
      },
      {
        "box": {
          "id": "label37",
          "maxclass": "comment",
          "patching_rect": [
            292,
            305,
            68,
            22
          ],
          "text": "source 37",
          "varname": "tap_label_37"
        }
      },
      {
        "box": {
          "id": "out37",
          "maxclass": "outlet",
          "patching_rect": [
            292,
            329,
            25,
            25
          ],
          "index": 37,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 37",
          "varname": "tap_out_37"
        }
      },
      {
        "box": {
          "id": "label38",
          "maxclass": "comment",
          "patching_rect": [
            360,
            305,
            68,
            22
          ],
          "text": "source 38",
          "varname": "tap_label_38"
        }
      },
      {
        "box": {
          "id": "out38",
          "maxclass": "outlet",
          "patching_rect": [
            360,
            329,
            25,
            25
          ],
          "index": 38,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 38",
          "varname": "tap_out_38"
        }
      },
      {
        "box": {
          "id": "label39",
          "maxclass": "comment",
          "patching_rect": [
            428,
            305,
            68,
            22
          ],
          "text": "source 39",
          "varname": "tap_label_39"
        }
      },
      {
        "box": {
          "id": "out39",
          "maxclass": "outlet",
          "patching_rect": [
            428,
            329,
            25,
            25
          ],
          "index": 39,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 39",
          "varname": "tap_out_39"
        }
      },
      {
        "box": {
          "id": "label40",
          "maxclass": "comment",
          "patching_rect": [
            496,
            305,
            68,
            22
          ],
          "text": "source 40",
          "varname": "tap_label_40"
        }
      },
      {
        "box": {
          "id": "out40",
          "maxclass": "outlet",
          "patching_rect": [
            496,
            329,
            25,
            25
          ],
          "index": 40,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 40",
          "varname": "tap_out_40"
        }
      },
      {
        "box": {
          "id": "label41",
          "maxclass": "comment",
          "patching_rect": [
            564,
            305,
            68,
            22
          ],
          "text": "source 41",
          "varname": "tap_label_41"
        }
      },
      {
        "box": {
          "id": "out41",
          "maxclass": "outlet",
          "patching_rect": [
            564,
            329,
            25,
            25
          ],
          "index": 41,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 41",
          "varname": "tap_out_41"
        }
      },
      {
        "box": {
          "id": "label42",
          "maxclass": "comment",
          "patching_rect": [
            632,
            305,
            68,
            22
          ],
          "text": "source 42",
          "varname": "tap_label_42"
        }
      },
      {
        "box": {
          "id": "out42",
          "maxclass": "outlet",
          "patching_rect": [
            632,
            329,
            25,
            25
          ],
          "index": 42,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 42",
          "varname": "tap_out_42"
        }
      },
      {
        "box": {
          "id": "label43",
          "maxclass": "comment",
          "patching_rect": [
            700,
            305,
            68,
            22
          ],
          "text": "source 43",
          "varname": "tap_label_43"
        }
      },
      {
        "box": {
          "id": "out43",
          "maxclass": "outlet",
          "patching_rect": [
            700,
            329,
            25,
            25
          ],
          "index": 43,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 43",
          "varname": "tap_out_43"
        }
      },
      {
        "box": {
          "id": "label44",
          "maxclass": "comment",
          "patching_rect": [
            768,
            305,
            68,
            22
          ],
          "text": "source 44",
          "varname": "tap_label_44"
        }
      },
      {
        "box": {
          "id": "out44",
          "maxclass": "outlet",
          "patching_rect": [
            768,
            329,
            25,
            25
          ],
          "index": 44,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 44",
          "varname": "tap_out_44"
        }
      },
      {
        "box": {
          "id": "label45",
          "maxclass": "comment",
          "patching_rect": [
            836,
            305,
            68,
            22
          ],
          "text": "source 45",
          "varname": "tap_label_45"
        }
      },
      {
        "box": {
          "id": "out45",
          "maxclass": "outlet",
          "patching_rect": [
            836,
            329,
            25,
            25
          ],
          "index": 45,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 45",
          "varname": "tap_out_45"
        }
      },
      {
        "box": {
          "id": "label46",
          "maxclass": "comment",
          "patching_rect": [
            904,
            305,
            68,
            22
          ],
          "text": "source 46",
          "varname": "tap_label_46"
        }
      },
      {
        "box": {
          "id": "out46",
          "maxclass": "outlet",
          "patching_rect": [
            904,
            329,
            25,
            25
          ],
          "index": 46,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 46",
          "varname": "tap_out_46"
        }
      },
      {
        "box": {
          "id": "label47",
          "maxclass": "comment",
          "patching_rect": [
            972,
            305,
            68,
            22
          ],
          "text": "source 47",
          "varname": "tap_label_47"
        }
      },
      {
        "box": {
          "id": "out47",
          "maxclass": "outlet",
          "patching_rect": [
            972,
            329,
            25,
            25
          ],
          "index": 47,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 47",
          "varname": "tap_out_47"
        }
      },
      {
        "box": {
          "id": "label48",
          "maxclass": "comment",
          "patching_rect": [
            1040,
            305,
            68,
            22
          ],
          "text": "source 48",
          "varname": "tap_label_48"
        }
      },
      {
        "box": {
          "id": "out48",
          "maxclass": "outlet",
          "patching_rect": [
            1040,
            329,
            25,
            25
          ],
          "index": 48,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 48",
          "varname": "tap_out_48"
        }
      },
      {
        "box": {
          "id": "label49",
          "maxclass": "comment",
          "patching_rect": [
            20,
            370,
            68,
            22
          ],
          "text": "source 49",
          "varname": "tap_label_49"
        }
      },
      {
        "box": {
          "id": "out49",
          "maxclass": "outlet",
          "patching_rect": [
            20,
            394,
            25,
            25
          ],
          "index": 49,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 49",
          "varname": "tap_out_49"
        }
      },
      {
        "box": {
          "id": "label50",
          "maxclass": "comment",
          "patching_rect": [
            88,
            370,
            68,
            22
          ],
          "text": "source 50",
          "varname": "tap_label_50"
        }
      },
      {
        "box": {
          "id": "out50",
          "maxclass": "outlet",
          "patching_rect": [
            88,
            394,
            25,
            25
          ],
          "index": 50,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 50",
          "varname": "tap_out_50"
        }
      },
      {
        "box": {
          "id": "label51",
          "maxclass": "comment",
          "patching_rect": [
            156,
            370,
            68,
            22
          ],
          "text": "source 51",
          "varname": "tap_label_51"
        }
      },
      {
        "box": {
          "id": "out51",
          "maxclass": "outlet",
          "patching_rect": [
            156,
            394,
            25,
            25
          ],
          "index": 51,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 51",
          "varname": "tap_out_51"
        }
      },
      {
        "box": {
          "id": "label52",
          "maxclass": "comment",
          "patching_rect": [
            224,
            370,
            68,
            22
          ],
          "text": "source 52",
          "varname": "tap_label_52"
        }
      },
      {
        "box": {
          "id": "out52",
          "maxclass": "outlet",
          "patching_rect": [
            224,
            394,
            25,
            25
          ],
          "index": 52,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 52",
          "varname": "tap_out_52"
        }
      },
      {
        "box": {
          "id": "label53",
          "maxclass": "comment",
          "patching_rect": [
            292,
            370,
            68,
            22
          ],
          "text": "source 53",
          "varname": "tap_label_53"
        }
      },
      {
        "box": {
          "id": "out53",
          "maxclass": "outlet",
          "patching_rect": [
            292,
            394,
            25,
            25
          ],
          "index": 53,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 53",
          "varname": "tap_out_53"
        }
      },
      {
        "box": {
          "id": "label54",
          "maxclass": "comment",
          "patching_rect": [
            360,
            370,
            68,
            22
          ],
          "text": "source 54",
          "varname": "tap_label_54"
        }
      },
      {
        "box": {
          "id": "out54",
          "maxclass": "outlet",
          "patching_rect": [
            360,
            394,
            25,
            25
          ],
          "index": 54,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 54",
          "varname": "tap_out_54"
        }
      },
      {
        "box": {
          "id": "label55",
          "maxclass": "comment",
          "patching_rect": [
            428,
            370,
            68,
            22
          ],
          "text": "source 55",
          "varname": "tap_label_55"
        }
      },
      {
        "box": {
          "id": "out55",
          "maxclass": "outlet",
          "patching_rect": [
            428,
            394,
            25,
            25
          ],
          "index": 55,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 55",
          "varname": "tap_out_55"
        }
      },
      {
        "box": {
          "id": "label56",
          "maxclass": "comment",
          "patching_rect": [
            496,
            370,
            68,
            22
          ],
          "text": "source 56",
          "varname": "tap_label_56"
        }
      },
      {
        "box": {
          "id": "out56",
          "maxclass": "outlet",
          "patching_rect": [
            496,
            394,
            25,
            25
          ],
          "index": 56,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 56",
          "varname": "tap_out_56"
        }
      },
      {
        "box": {
          "id": "label57",
          "maxclass": "comment",
          "patching_rect": [
            564,
            370,
            68,
            22
          ],
          "text": "source 57",
          "varname": "tap_label_57"
        }
      },
      {
        "box": {
          "id": "out57",
          "maxclass": "outlet",
          "patching_rect": [
            564,
            394,
            25,
            25
          ],
          "index": 57,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 57",
          "varname": "tap_out_57"
        }
      },
      {
        "box": {
          "id": "label58",
          "maxclass": "comment",
          "patching_rect": [
            632,
            370,
            68,
            22
          ],
          "text": "source 58",
          "varname": "tap_label_58"
        }
      },
      {
        "box": {
          "id": "out58",
          "maxclass": "outlet",
          "patching_rect": [
            632,
            394,
            25,
            25
          ],
          "index": 58,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 58",
          "varname": "tap_out_58"
        }
      },
      {
        "box": {
          "id": "label59",
          "maxclass": "comment",
          "patching_rect": [
            700,
            370,
            68,
            22
          ],
          "text": "source 59",
          "varname": "tap_label_59"
        }
      },
      {
        "box": {
          "id": "out59",
          "maxclass": "outlet",
          "patching_rect": [
            700,
            394,
            25,
            25
          ],
          "index": 59,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 59",
          "varname": "tap_out_59"
        }
      },
      {
        "box": {
          "id": "label60",
          "maxclass": "comment",
          "patching_rect": [
            768,
            370,
            68,
            22
          ],
          "text": "source 60",
          "varname": "tap_label_60"
        }
      },
      {
        "box": {
          "id": "out60",
          "maxclass": "outlet",
          "patching_rect": [
            768,
            394,
            25,
            25
          ],
          "index": 60,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 60",
          "varname": "tap_out_60"
        }
      },
      {
        "box": {
          "id": "label61",
          "maxclass": "comment",
          "patching_rect": [
            836,
            370,
            68,
            22
          ],
          "text": "source 61",
          "varname": "tap_label_61"
        }
      },
      {
        "box": {
          "id": "out61",
          "maxclass": "outlet",
          "patching_rect": [
            836,
            394,
            25,
            25
          ],
          "index": 61,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 61",
          "varname": "tap_out_61"
        }
      },
      {
        "box": {
          "id": "label62",
          "maxclass": "comment",
          "patching_rect": [
            904,
            370,
            68,
            22
          ],
          "text": "source 62",
          "varname": "tap_label_62"
        }
      },
      {
        "box": {
          "id": "out62",
          "maxclass": "outlet",
          "patching_rect": [
            904,
            394,
            25,
            25
          ],
          "index": 62,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 62",
          "varname": "tap_out_62"
        }
      },
      {
        "box": {
          "id": "label63",
          "maxclass": "comment",
          "patching_rect": [
            972,
            370,
            68,
            22
          ],
          "text": "source 63",
          "varname": "tap_label_63"
        }
      },
      {
        "box": {
          "id": "out63",
          "maxclass": "outlet",
          "patching_rect": [
            972,
            394,
            25,
            25
          ],
          "index": 63,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 63",
          "varname": "tap_out_63"
        }
      },
      {
        "box": {
          "id": "label64",
          "maxclass": "comment",
          "patching_rect": [
            1040,
            370,
            68,
            22
          ],
          "text": "source 64",
          "varname": "tap_label_64"
        }
      },
      {
        "box": {
          "id": "out64",
          "maxclass": "outlet",
          "patching_rect": [
            1040,
            394,
            25,
            25
          ],
          "index": 64,
          "numinlets": 1,
          "numoutlets": 0,
          "comment": "source 64",
          "varname": "tap_out_64"
        }
      },
      {
        "box": {
          "id": "args",
          "maxclass": "newobj",
          "text": "patcherargs 64",
          "patching_rect": [
            20,
            735,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "limit",
          "maxclass": "newobj",
          "text": "clip 1 64",
          "patching_rect": [
            20,
            815,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "defer",
          "maxclass": "newobj",
          "text": "deferlow",
          "patching_rect": [
            20,
            855,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "order",
          "maxclass": "newobj",
          "text": "t b i",
          "patching_rect": [
            20,
            895,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "count",
          "maxclass": "newobj",
          "text": "uzi 64",
          "patching_rect": [
            20,
            935,
            220,
            22
          ],
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            "int"
          ]
        }
      },
      {
        "box": {
          "id": "reverse",
          "maxclass": "newobj",
          "text": "!- 65",
          "patching_rect": [
            20,
            975,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "filter",
          "maxclass": "newobj",
          "text": "if $i1 > $i2 then $i1",
          "patching_rect": [
            270,
            975,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "both",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            270,
            1015,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "delout",
          "maxclass": "newobj",
          "text": "sprintf script delete tap_out_%ld",
          "patching_rect": [
            270,
            1055,
            270,
            22
          ]
        }
      },
      {
        "box": {
          "id": "dellabel",
          "maxclass": "newobj",
          "text": "sprintf script delete tap_label_%ld",
          "patching_rect": [
            590,
            1055,
            290,
            22
          ]
        }
      },
      {
        "box": {
          "id": "scripter",
          "maxclass": "newobj",
          "text": "thispatcher",
          "patching_rect": [
            270,
            1105,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "setupnote",
          "maxclass": "comment",
          "text": "Initialization: parse count/range, delete surplus physical outlets highest-first, remap retained outlets, then resize the parent box.",
          "patching_rect": [
            330,
            740,
            720,
            50
          ]
        }
      },
      {
        "box": {
          "id": "note",
          "maxclass": "comment",
          "text": "Range selects incoming MC channels, not SPAT source numbers. Example: 8-15 needs at least 15 active incoming delay taps; its eight physical outlets carry taps 8 through 15.",
          "patching_rect": [
            330,
            805,
            720,
            50
          ]
        }
      },
      {
        "box": {
          "id": "note2",
          "maxclass": "comment",
          "text": "Change the creation argument by editing the parent object box. Recreate existing breakout instances after replacing this file. No additional JS file is required.",
          "patching_rect": [
            330,
            870,
            720,
            50
          ]
        }
      },
      {
        "box": {
          "id": "retain_count",
          "maxclass": "newobj",
          "text": "i 64",
          "patching_rect": [
            20,
            1155,
            230,
            22
          ]
        }
      },
      {
        "box": {
          "id": "width",
          "maxclass": "newobj",
          "text": "expr max(230\\, 10 + 8 * ($i1 - 1))",
          "patching_rect": [
            20,
            1195,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "sizepair",
          "maxclass": "newobj",
          "text": "pack 230 22",
          "patching_rect": [
            20,
            1235,
            230,
            22
          ]
        }
      },
      {
        "box": {
          "id": "resize_message",
          "maxclass": "newobj",
          "text": "prepend patching_size",
          "patching_rect": [
            20,
            1275,
            230,
            22
          ]
        }
      },
      {
        "box": {
          "id": "parent_box",
          "maxclass": "newobj",
          "text": "thisobject patcherassoc",
          "patching_rect": [
            20,
            1315,
            230,
            22
          ]
        }
      },
      {
        "box": {
          "id": "widthnote",
          "maxclass": "comment",
          "patching_rect": [
            355,
            1195,
            670,
            50
          ],
          "text": "Width follows retained outlet count: 8 or 8-15 \u2192 230 px; 64 \u2192 514 px. Parent scripting name: source."
        }
      },
      {
        "box": {
          "id": "source_name_init",
          "maxclass": "newobj",
          "text": "loadmess varname source",
          "patching_rect": [
            355,
            1275,
            210,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "argtype",
          "maxclass": "newobj",
          "text": "route int",
          "patching_rect": [
            20,
            1400,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "single_range",
          "maxclass": "message",
          "text": "1 $1",
          "patching_rect": [
            20,
            1440,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_match",
          "maxclass": "newobj",
          "text": "regexp ^[0-9]+-[0-9]+$",
          "patching_rect": [
            300,
            1400,
            280,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_split",
          "maxclass": "newobj",
          "text": "fromsymbol @separator -",
          "patching_rect": [
            300,
            1440,
            280,
            22
          ]
        }
      },
      {
        "box": {
          "id": "invalid_default",
          "maxclass": "message",
          "text": "1 64",
          "patching_rect": [
            610,
            1440,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pair_unpack",
          "maxclass": "newobj",
          "text": "unpack i i",
          "patching_rect": [
            20,
            1490,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "start_clip",
          "maxclass": "newobj",
          "text": "clip 1 64",
          "patching_rect": [
            20,
            1530,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "end_clip",
          "maxclass": "newobj",
          "text": "clip 1 64",
          "patching_rect": [
            270,
            1530,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pair_pack",
          "maxclass": "newobj",
          "text": "pack 1 64",
          "patching_rect": [
            20,
            1570,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_sort",
          "maxclass": "newobj",
          "text": "zl.sort",
          "patching_rect": [
            20,
            1610,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_unpack",
          "maxclass": "newobj",
          "text": "unpack i i",
          "patching_rect": [
            20,
            1650,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_end",
          "maxclass": "newobj",
          "text": "i 64",
          "patching_rect": [
            270,
            1690,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "start_order",
          "maxclass": "newobj",
          "text": "t b i i",
          "patching_rect": [
            20,
            1690,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_offset",
          "maxclass": "newobj",
          "text": "- 1",
          "patching_rect": [
            20,
            1730,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_length",
          "maxclass": "newobj",
          "text": "expr $i1 - $i2 + 1",
          "patching_rect": [
            270,
            1730,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "remap_then_width",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            20,
            1790,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "map_count",
          "maxclass": "newobj",
          "text": "uzi 64",
          "patching_rect": [
            270,
            1790,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "map_order",
          "maxclass": "newobj",
          "text": "t i i i i",
          "patching_rect": [
            270,
            1830,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "disconnect_order",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            20,
            1890,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "disconnect_index",
          "maxclass": "newobj",
          "text": "- 1",
          "patching_rect": [
            20,
            1930,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "disconnect_script",
          "maxclass": "newobj",
          "text": "sprintf script disconnect tap_unpack %ld tap_out_%ld 0",
          "patching_rect": [
            20,
            2010,
            530,
            22
          ]
        }
      },
      {
        "box": {
          "id": "connect_order",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            580,
            1890,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "connect_channel",
          "maxclass": "newobj",
          "text": "+ 0",
          "patching_rect": [
            580,
            1930,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "connect_index",
          "maxclass": "newobj",
          "text": "- 1",
          "patching_rect": [
            580,
            1970,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "connect_script",
          "maxclass": "newobj",
          "text": "sprintf script connect tap_unpack %ld tap_out_%ld 0",
          "patching_rect": [
            580,
            2010,
            530,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_order",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            20,
            2100,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_channel",
          "maxclass": "newobj",
          "text": "+ 0",
          "patching_rect": [
            260,
            2140,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_script",
          "maxclass": "message",
          "text": "script sendbox $1 set $2",
          "patching_rect": [
            20,
            2510,
            440,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_order",
          "maxclass": "newobj",
          "text": "t i i",
          "patching_rect": [
            580,
            2100,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_channel",
          "maxclass": "newobj",
          "text": "+ 0",
          "patching_rect": [
            820,
            2140,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_script",
          "maxclass": "message",
          "text": "script sendbox $1 comment $2",
          "patching_rect": [
            580,
            2510,
            440,
            22
          ]
        }
      },
      {
        "box": {
          "id": "range_note",
          "maxclass": "comment",
          "text": "Use a single argument with no spaces: 8-15. Endpoints are clipped to 1\u201364 and sorted. Invalid range syntax falls back to 64 outputs.",
          "patching_rect": [
            20,
            2300,
            1070,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_fulltext",
          "maxclass": "newobj",
          "text": "sprintf symout source %ld",
          "patching_rect": [
            20,
            2350,
            260,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_target",
          "maxclass": "newobj",
          "text": "sprintf symout tap_label_%ld",
          "patching_rect": [
            20,
            2390,
            260,
            22
          ]
        }
      },
      {
        "box": {
          "id": "label_pair",
          "maxclass": "newobj",
          "text": "pack s s",
          "patching_rect": [
            20,
            2450,
            260,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_fulltext",
          "maxclass": "newobj",
          "text": "sprintf symout source %ld",
          "patching_rect": [
            580,
            2350,
            260,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_target",
          "maxclass": "newobj",
          "text": "sprintf symout tap_out_%ld",
          "patching_rect": [
            580,
            2390,
            260,
            22
          ]
        }
      },
      {
        "box": {
          "id": "assist_pair",
          "maxclass": "newobj",
          "text": "pack s s",
          "patching_rect": [
            580,
            2450,
            260,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in",
            0
          ],
          "destination": [
            "unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            0
          ],
          "destination": [
            "out1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            1
          ],
          "destination": [
            "out2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            2
          ],
          "destination": [
            "out3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            3
          ],
          "destination": [
            "out4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            4
          ],
          "destination": [
            "out5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            5
          ],
          "destination": [
            "out6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            6
          ],
          "destination": [
            "out7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            7
          ],
          "destination": [
            "out8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            8
          ],
          "destination": [
            "out9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            9
          ],
          "destination": [
            "out10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            10
          ],
          "destination": [
            "out11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            11
          ],
          "destination": [
            "out12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            12
          ],
          "destination": [
            "out13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            13
          ],
          "destination": [
            "out14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            14
          ],
          "destination": [
            "out15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            15
          ],
          "destination": [
            "out16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            16
          ],
          "destination": [
            "out17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            17
          ],
          "destination": [
            "out18",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            18
          ],
          "destination": [
            "out19",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            19
          ],
          "destination": [
            "out20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            20
          ],
          "destination": [
            "out21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            21
          ],
          "destination": [
            "out22",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            22
          ],
          "destination": [
            "out23",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            23
          ],
          "destination": [
            "out24",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            24
          ],
          "destination": [
            "out25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            25
          ],
          "destination": [
            "out26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            26
          ],
          "destination": [
            "out27",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            27
          ],
          "destination": [
            "out28",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            28
          ],
          "destination": [
            "out29",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            29
          ],
          "destination": [
            "out30",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            30
          ],
          "destination": [
            "out31",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            31
          ],
          "destination": [
            "out32",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            32
          ],
          "destination": [
            "out33",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            33
          ],
          "destination": [
            "out34",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            34
          ],
          "destination": [
            "out35",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            35
          ],
          "destination": [
            "out36",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            36
          ],
          "destination": [
            "out37",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            37
          ],
          "destination": [
            "out38",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            38
          ],
          "destination": [
            "out39",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            39
          ],
          "destination": [
            "out40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            40
          ],
          "destination": [
            "out41",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            41
          ],
          "destination": [
            "out42",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            42
          ],
          "destination": [
            "out43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            43
          ],
          "destination": [
            "out44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            44
          ],
          "destination": [
            "out45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            45
          ],
          "destination": [
            "out46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            46
          ],
          "destination": [
            "out47",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            47
          ],
          "destination": [
            "out48",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            48
          ],
          "destination": [
            "out49",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            49
          ],
          "destination": [
            "out50",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            50
          ],
          "destination": [
            "out51",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            51
          ],
          "destination": [
            "out52",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            52
          ],
          "destination": [
            "out53",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            53
          ],
          "destination": [
            "out54",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            54
          ],
          "destination": [
            "out55",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            55
          ],
          "destination": [
            "out56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            56
          ],
          "destination": [
            "out57",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            57
          ],
          "destination": [
            "out58",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            58
          ],
          "destination": [
            "out59",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            59
          ],
          "destination": [
            "out60",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            60
          ],
          "destination": [
            "out61",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            61
          ],
          "destination": [
            "out62",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            62
          ],
          "destination": [
            "out63",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "unpack",
            63
          ],
          "destination": [
            "out64",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "limit",
            0
          ],
          "destination": [
            "defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "defer",
            0
          ],
          "destination": [
            "order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "order",
            1
          ],
          "destination": [
            "filter",
            1
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "order",
            0
          ],
          "destination": [
            "count",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "count",
            2
          ],
          "destination": [
            "reverse",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "reverse",
            0
          ],
          "destination": [
            "filter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "filter",
            0
          ],
          "destination": [
            "both",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "both",
            1
          ],
          "destination": [
            "delout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "both",
            0
          ],
          "destination": [
            "dellabel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "delout",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "dellabel",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "order",
            1
          ],
          "destination": [
            "retain_count",
            1
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "count",
            1
          ],
          "destination": [
            "retain_count",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "width",
            0
          ],
          "destination": [
            "sizepair",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "sizepair",
            0
          ],
          "destination": [
            "resize_message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "resize_message",
            0
          ],
          "destination": [
            "parent_box",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "source_name_init",
            0
          ],
          "destination": [
            "parent_box",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "args",
            0
          ],
          "destination": [
            "argtype",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "argtype",
            0
          ],
          "destination": [
            "single_range",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "argtype",
            1
          ],
          "destination": [
            "range_match",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_match",
            2
          ],
          "destination": [
            "range_split",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_match",
            3
          ],
          "destination": [
            "invalid_default",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "single_range",
            0
          ],
          "destination": [
            "pair_unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_split",
            0
          ],
          "destination": [
            "pair_unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "invalid_default",
            0
          ],
          "destination": [
            "pair_unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pair_unpack",
            1
          ],
          "destination": [
            "end_clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "end_clip",
            0
          ],
          "destination": [
            "pair_pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pair_unpack",
            0
          ],
          "destination": [
            "start_clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start_clip",
            0
          ],
          "destination": [
            "pair_pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pair_pack",
            0
          ],
          "destination": [
            "range_sort",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_sort",
            0
          ],
          "destination": [
            "range_unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_unpack",
            1
          ],
          "destination": [
            "range_end",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_unpack",
            0
          ],
          "destination": [
            "start_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start_order",
            2
          ],
          "destination": [
            "range_offset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start_order",
            1
          ],
          "destination": [
            "range_length",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "start_order",
            0
          ],
          "destination": [
            "range_end",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_end",
            0
          ],
          "destination": [
            "range_length",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_length",
            0
          ],
          "destination": [
            "limit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "retain_count",
            0
          ],
          "destination": [
            "remap_then_width",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "remap_then_width",
            1
          ],
          "destination": [
            "map_count",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "remap_then_width",
            0
          ],
          "destination": [
            "width",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "map_count",
            2
          ],
          "destination": [
            "map_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "disconnect_script",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "disconnect_order",
            1
          ],
          "destination": [
            "disconnect_script",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "disconnect_order",
            0
          ],
          "destination": [
            "disconnect_index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "disconnect_index",
            0
          ],
          "destination": [
            "disconnect_script",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "connect_script",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "connect_order",
            1
          ],
          "destination": [
            "connect_script",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "connect_order",
            0
          ],
          "destination": [
            "connect_channel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_offset",
            0
          ],
          "destination": [
            "connect_channel",
            1
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "connect_channel",
            0
          ],
          "destination": [
            "connect_index",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "connect_index",
            0
          ],
          "destination": [
            "connect_script",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_script",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_order",
            1
          ],
          "destination": [
            "label_channel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_offset",
            0
          ],
          "destination": [
            "label_channel",
            1
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "assist_script",
            0
          ],
          "destination": [
            "scripter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_order",
            1
          ],
          "destination": [
            "assist_channel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "range_offset",
            0
          ],
          "destination": [
            "assist_channel",
            1
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "map_order",
            3
          ],
          "destination": [
            "disconnect_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "map_order",
            2
          ],
          "destination": [
            "connect_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "map_order",
            1
          ],
          "destination": [
            "label_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "map_order",
            0
          ],
          "destination": [
            "assist_order",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_channel",
            0
          ],
          "destination": [
            "label_fulltext",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_fulltext",
            0
          ],
          "destination": [
            "label_pair",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_order",
            0
          ],
          "destination": [
            "label_target",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_target",
            0
          ],
          "destination": [
            "label_pair",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "label_pair",
            0
          ],
          "destination": [
            "label_script",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_channel",
            0
          ],
          "destination": [
            "assist_fulltext",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_fulltext",
            0
          ],
          "destination": [
            "assist_pair",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_order",
            0
          ],
          "destination": [
            "assist_target",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_target",
            0
          ],
          "destination": [
            "assist_pair",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "assist_pair",
            0
          ],
          "destination": [
            "assist_script",
            0
          ]
        }
      }
    ]
  }
}
