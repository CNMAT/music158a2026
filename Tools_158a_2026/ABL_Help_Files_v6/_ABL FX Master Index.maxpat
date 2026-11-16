{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 1,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "openrect": [
   0.0,
   72.0,
   1592.0,
   790.0
  ],
  "gridsize": [
   15.0,
   15.0
  ],
  "assistshowspatchername": 0,
  "commentary": "",
  "showcommentary": 0,
  "boxes": [
   {
    "box": {
     "fontface": 1,
     "fontsize": 22.0,
     "id": "i_title",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      18.0,
      650.0,
      31.0
     ],
     "text": "ABL FX MASTER INDEX — BY FUNCTION"
    }
   },
   {
    "box": {
     "id": "i_sub",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      50.0,
      1480.0,
      20.0
     ],
     "text": "Objects are grouped by processing type. Click any object name to open its help file. Concise functional descriptions appear beneath each link; links remain folder-relative."
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "i_pc",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1425.0,
      20.0,
      62.0,
      22.0
     ],
     "text": "pcontrol"
    }
   },
   {
    "box": {
     "id": "dev_b0",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      128.0,
      276.0,
      22.0
     ],
     "text": "abl.device.autofilter~",
     "texton": "abl.device.autofilter~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m0",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      128.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.autofilter~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b1",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      185.0,
      276.0,
      22.0
     ],
     "text": "abl.device.channeleq~",
     "texton": "abl.device.channeleq~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m1",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      185.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.device.channeleq~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b2",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      518.0,
      276.0,
      22.0
     ],
     "text": "abl.device.compressor~",
     "texton": "abl.device.compressor~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m2",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      518.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.device.compressor~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b3",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      128.0,
      276.0,
      22.0
     ],
     "text": "abl.device.delay~",
     "texton": "abl.device.delay~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m3",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      128.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.delay~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b4",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      128.0,
      276.0,
      22.0
     ],
     "text": "abl.device.drift~",
     "texton": "abl.device.drift~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m4",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      128.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.drift~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b5",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      575.0,
      276.0,
      22.0
     ],
     "text": "abl.device.drumbuss~",
     "texton": "abl.device.drumbuss~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m5",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      575.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.device.drumbuss~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b6",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      185.0,
      276.0,
      22.0
     ],
     "text": "abl.device.drumsampler~",
     "texton": "abl.device.drumsampler~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m6",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      185.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.device.drumsampler~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b7",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      185.0,
      276.0,
      22.0
     ],
     "text": "abl.device.echo~",
     "texton": "abl.device.echo~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m7",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      185.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.echo~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b8",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      632.0,
      276.0,
      22.0
     ],
     "text": "abl.device.limiter~",
     "texton": "abl.device.limiter~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m8",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      632.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.limiter~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b9",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      128.0,
      276.0,
      22.0
     ],
     "text": "abl.device.redux~",
     "texton": "abl.device.redux~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m9",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      128.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.redux~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b10",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      725.0,
      276.0,
      22.0
     ],
     "text": "abl.device.reverb~",
     "texton": "abl.device.reverb~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m10",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      725.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.reverb~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b11",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      185.0,
      276.0,
      22.0
     ],
     "text": "abl.device.roar~",
     "texton": "abl.device.roar~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m11",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      185.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.roar~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b12",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      725.0,
      276.0,
      22.0
     ],
     "text": "abl.device.spectralresonator~",
     "texton": "abl.device.spectralresonator~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m12",
     "linecount": 11,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      725.0,
      40.0,
      156.0
     ],
     "text": "loadunique Patcher:/abl.device.spectralresonator~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b13",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      782.0,
      276.0,
      22.0
     ],
     "text": "abl.device.spectraltime~",
     "texton": "abl.device.spectraltime~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m13",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      782.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.device.spectraltime~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dev_b14",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      965.0,
      276.0,
      22.0
     ],
     "text": "abl.device.utility~",
     "texton": "abl.device.utility~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dev_m14",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      965.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.device.utility~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b0",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      518.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.alternate~",
     "texton": "abl.dsp.alternate~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m0",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      518.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.alternate~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b1",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      254.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.basicshapes~",
     "texton": "abl.dsp.basicshapes~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m1",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      254.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.basicshapes~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b2",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      242.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.bitgrunge~",
     "texton": "abl.dsp.bitgrunge~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m2",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      242.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.bitgrunge~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b3",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      128.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.bubble~",
     "texton": "abl.dsp.bubble~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m3",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      128.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.bubble~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b4",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      311.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.chip~",
     "texton": "abl.dsp.chip~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m4",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      311.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.chip~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b5",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      254.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.chorus~",
     "texton": "abl.dsp.chorus~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m5",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      254.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.chorus~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b6",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      689.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.compander~",
     "texton": "abl.dsp.compander~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m6",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      689.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.compander~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b7",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      185.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.crackle~",
     "texton": "abl.dsp.crackle~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m7",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      185.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.crackle~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b8",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      782.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.darkhall~",
     "texton": "abl.dsp.darkhall~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m8",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      782.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.darkhall~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b9",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      242.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.dfm~",
     "texton": "abl.dsp.dfm~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m9",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      242.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.dfm~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b10",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      299.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.distortion~",
     "texton": "abl.dsp.distortion~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m10",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      299.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.distortion~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b11",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      311.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.doubler~",
     "texton": "abl.dsp.doubler~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m11",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      311.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.doubler~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b12",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      368.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.dualbasicshapes~",
     "texton": "abl.dsp.dualbasicshapes~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m12",
     "linecount": 11,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      368.0,
      40.0,
      156.0
     ],
     "text": "loadunique Patcher:/abl.dsp.dualbasicshapes~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b13",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      368.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.ensemble~",
     "texton": "abl.dsp.ensemble~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m13",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      368.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.ensemble~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b14",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      746.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.envfollower~",
     "texton": "abl.dsp.envfollower~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m14",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      746.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.envfollower~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b15",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      575.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.euclid~",
     "texton": "abl.dsp.euclid~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m15",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      575.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.euclid~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b16",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      368.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.expshaper~",
     "texton": "abl.dsp.expshaper~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m16",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      368.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.expshaper~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b17",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      425.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.extratone~",
     "texton": "abl.dsp.extratone~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m17",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      425.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.extratone~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b18",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      242.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.filterednoise~",
     "texton": "abl.dsp.filterednoise~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m18",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      242.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.filterednoise~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b19",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      299.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.filther~",
     "texton": "abl.dsp.filther~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m19",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      299.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.filther~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b20",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      425.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.flanger~",
     "texton": "abl.dsp.flanger~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m20",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      425.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.flanger~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b21",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      482.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.fmbass~",
     "texton": "abl.dsp.fmbass~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m21",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      482.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.fmbass~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b22",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      539.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.foldfm~",
     "texton": "abl.dsp.foldfm~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m22",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      539.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.foldfm~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b23",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      437.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.fuzz~",
     "texton": "abl.dsp.fuzz~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m23",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      437.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.fuzz~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b24",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      596.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.harmonicfm~",
     "texton": "abl.dsp.harmonicfm~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m24",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      596.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.harmonicfm~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b25",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      356.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.meldfilter~",
     "texton": "abl.dsp.meldfilter~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m25",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      356.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.meldfilter~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b26",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      653.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.meldosc~",
     "texton": "abl.dsp.meldosc~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m26",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      653.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.meldosc~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b27",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      839.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.modalresonator~",
     "texton": "abl.dsp.modalresonator~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m27",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      839.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.modalresonator~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b28",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      632.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.modulator~",
     "texton": "abl.dsp.modulator~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m28",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      632.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.modulator~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b29",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      299.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.noiseloop~",
     "texton": "abl.dsp.noiseloop~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m29",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      299.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.noiseloop~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b30",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      710.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.noisyshapes~",
     "texton": "abl.dsp.noisyshapes~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m30",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      710.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.noisyshapes~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b31",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      494.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.overdrive~",
     "texton": "abl.dsp.overdrive~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m31",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      494.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.overdrive~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b32",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      482.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.phaser~",
     "texton": "abl.dsp.phaser~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m32",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      482.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.phaser~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b33",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      896.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.pitchestimator~",
     "texton": "abl.dsp.pitchestimator~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m33",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      896.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.pitchestimator~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b34",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      953.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.pitchshifter~",
     "texton": "abl.dsp.pitchshifter~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m34",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      953.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.pitchshifter~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b35",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      839.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.prism~",
     "texton": "abl.dsp.prism~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m35",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      839.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.prism~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b36",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      677.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.pulsate~",
     "texton": "abl.dsp.pulsate~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m36",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      677.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.pulsate~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b37",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      896.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.quartz~",
     "texton": "abl.dsp.quartz~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m37",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      896.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.quartz~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b38",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      356.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.rain~",
     "texton": "abl.dsp.rain~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m38",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      356.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.rain~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b39",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      734.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.ramp~",
     "texton": "abl.dsp.ramp~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m39",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      734.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.ramp~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b40",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      551.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.ringmod~",
     "texton": "abl.dsp.ringmod~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m40",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      551.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.ringmod~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b41",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      551.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.saturator~",
     "texton": "abl.dsp.saturator~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m41",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      551.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.saturator~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b42",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      767.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.shepard~",
     "texton": "abl.dsp.shepard~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m42",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      767.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.shepard~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b43",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      953.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.shimmer~",
     "texton": "abl.dsp.shimmer~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m43",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      953.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.shimmer~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b44",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      824.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.simplefm~",
     "texton": "abl.dsp.simplefm~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m44",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      824.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.simplefm~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b45",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      881.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.squarefifth~",
     "texton": "abl.dsp.squarefifth~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m45",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      881.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.squarefifth~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b46",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      938.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.squaresync~",
     "texton": "abl.dsp.squaresync~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m46",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      938.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.squaresync~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b47",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      791.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.stereolfo~",
     "texton": "abl.dsp.stereolfo~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m47",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      791.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.stereolfo~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b48",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      995.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.subosc~",
     "texton": "abl.dsp.subosc~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m48",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      995.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.subosc~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b49",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      1052.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.swarm~",
     "texton": "abl.dsp.swarm~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m49",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      1052.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.swarm~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b50",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      918.0,
      1109.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.tarp~",
     "texton": "abl.dsp.tarp~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m50",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1198.0,
      1109.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.tarp~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b51",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      1010.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.tides~",
     "texton": "abl.dsp.tides~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m51",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      1010.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.tides~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b52",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      1022.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.transform~",
     "texton": "abl.dsp.transform~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m52",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      1022.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.transform~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b53",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      803.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.transientdesign~",
     "texton": "abl.dsp.transientdesign~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m53",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      803.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.transientdesign~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b54",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      413.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.velvetnoise~",
     "texton": "abl.dsp.velvetnoise~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m54",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      413.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.velvetnoise~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b55",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      322.0,
      620.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.vibrato~",
     "texton": "abl.dsp.vibrato~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m55",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      602.0,
      620.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.vibrato~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b56",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      24.0,
      413.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.vowel~",
     "texton": "abl.dsp.vowel~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m56",
     "linecount": 8,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      304.0,
      413.0,
      40.0,
      116.0
     ],
     "text": "loadunique Patcher:/abl.dsp.vowel~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b57",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1216.0,
      848.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.wander~",
     "texton": "abl.dsp.wander~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m57",
     "linecount": 9,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1496.0,
      848.0,
      40.0,
      129.0
     ],
     "text": "loadunique Patcher:/abl.dsp.wander~.maxhelp"
    }
   },
   {
    "box": {
     "id": "dsp_b58",
     "maxclass": "textbutton",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      620.0,
      620.0,
      276.0,
      22.0
     ],
     "text": "abl.dsp.waveshaper~",
     "texton": "abl.dsp.waveshaper~"
    }
   },
   {
    "box": {
     "hidden": 1,
     "id": "dsp_m58",
     "linecount": 10,
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900.0,
      620.0,
      40.0,
      143.0
     ],
     "text": "loadunique Patcher:/abl.dsp.waveshaper~.maxhelp"
    }
   },
   {
    "box": {
     "id": "i_note",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      1184.0,
      1480.0,
      20.0
     ],
     "text": "Folder rule: keep this index, all .maxhelp files, abl_parameter_state.js and abl_preset_collection.js together. No absolute machine paths are stored."
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_0",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      98.0,
      295.0,
      22.0
     ],
     "text": "FILTERS & EQ  — 6"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_1",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      488.0,
      295.0,
      22.0
     ],
     "text": "DYNAMICS & TRANSIENT  — 6"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      98.0,
      295.0,
      22.0
     ],
     "text": "DELAY, CHORUS & MODULATION FX  — 9"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_3",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      695.0,
      295.0,
      22.0
     ],
     "text": "REVERB & AMBIENCE  — 6"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      98.0,
      295.0,
      22.0
     ],
     "text": "DISTORTION, SATURATION & LO-FI  — 9"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_5",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      695.0,
      295.0,
      22.0
     ],
     "text": "SPECTRAL, RESONANCE & PITCH  — 5"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_6",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      98.0,
      295.0,
      22.0
     ],
     "text": "INSTRUMENTS & OSCILLATORS  — 18"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_7",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      98.0,
      295.0,
      22.0
     ],
     "text": "NOISE & TEXTURE  — 6"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_8",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      488.0,
      295.0,
      22.0
     ],
     "text": "CONTROL, MODULATION & RHYTHM  — 7"
    }
   },
   {
    "box": {
     "fontface": 1,
     "fontsize": 14.0,
     "id": "type_head_9",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      935.0,
      295.0,
      22.0
     ],
     "text": "UTILITY & SIGNAL SHAPING  — 2"
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b0",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      152.0,
      276.0,
      26.0
     ],
     "text": "Multi-mode resonant filter with LFO and envelope modulation for dynamic tone shaping."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b1",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      209.0,
      276.0,
      26.0
     ],
     "text": "Compact channel equalizer for broad low-, mid-, and high-frequency tonal adjustment."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b9",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      266.0,
      276.0,
      26.0
     ],
     "text": "Characterful resonant filter based on Ableton's DFM filter circuit."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b19",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      323.0,
      276.0,
      26.0
     ],
     "text": "Creative resonant filter for pronounced, animated timbral transformation."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b25",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      380.0,
      276.0,
      26.0
     ],
     "text": "Meta-filter exposing the collection of filter models used in Ableton Meld."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b56",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      437.0,
      276.0,
      26.0
     ],
     "text": "Formant-style filter that shapes spectra toward vowel-like resonances."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b2",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      542.0,
      276.0,
      26.0
     ],
     "text": "Full compressor device for controlling dynamic range, including sidechain-style behavior."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b5",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      599.0,
      276.0,
      26.0
     ],
     "text": "Drum-bus processor combining drive, compression, transient shaping, and low-end enhancement."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b8",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      656.0,
      276.0,
      26.0
     ],
     "text": "Peak limiter that constrains output level to a defined ceiling."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b6",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      713.0,
      276.0,
      26.0
     ],
     "text": "A-law compressor/expander for nonlinear dynamic-range companding."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b14",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      770.0,
      276.0,
      26.0
     ],
     "text": "Tracks the amplitude envelope of an incoming signal and produces a modulation signal."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b53",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      24.0,
      827.0,
      276.0,
      26.0
     ],
     "text": "Transient shaper for emphasizing or suppressing attack and sustain characteristics."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b3",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      152.0,
      276.0,
      26.0
     ],
     "text": "Stereo delay device with feedback and tone-shaping controls."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b7",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      209.0,
      276.0,
      38.0
     ],
     "text": "Two-line modulation delay with stereo/ping-pong/mid-side modes, filtering, and reverb."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b5",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      278.0,
      276.0,
      26.0
     ],
     "text": "Chorus effect using modulated delays to create stereo width and ensemble-like thickening."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b11",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      335.0,
      276.0,
      26.0
     ],
     "text": "Artificial double-tracking effect using short delay/pitch variation to thicken a source."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b13",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      392.0,
      276.0,
      26.0
     ],
     "text": "Multi-voice modulated-delay effect for broad chorus and ensemble textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b20",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      449.0,
      276.0,
      26.0
     ],
     "text": "Very short modulated delay producing moving comb-filter notches and peaks."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b32",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      506.0,
      276.0,
      38.0
     ],
     "text": "Phase-shifting effect that creates moving spectral notches using modulated all-pass filtering."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b40",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      575.0,
      276.0,
      38.0
     ],
     "text": "Stereo ring modulator that creates sum-and-difference sidebands from the input signal."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b55",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      644.0,
      276.0,
      26.0
     ],
     "text": "Periodic pitch-modulation effect for vibrato and animated detuning."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b10",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      749.0,
      276.0,
      26.0
     ],
     "text": "General-purpose algorithmic reverb with pre-delay, damping, decay, and wet/dry control."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b8",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      806.0,
      276.0,
      26.0
     ],
     "text": "Dark Hall algorithmic reverb for dense, damped, large-space reverberation."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b35",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      863.0,
      276.0,
      26.0
     ],
     "text": "Prism algorithmic reverb from Ableton's Hybrid Reverb family."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b37",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      920.0,
      276.0,
      26.0
     ],
     "text": "Quartz algorithmic reverb with decay, size, damping, diffusion, modulation, and distance."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b43",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      977.0,
      276.0,
      26.0
     ],
     "text": "Reverb with pitch-shifted feedback for rising, sustained, harmonically enriched tails."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b51",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      322.0,
      1034.0,
      276.0,
      26.0
     ],
     "text": "Animated algorithmic reverb designed for strongly modulated, evolving spatial textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b9",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      152.0,
      276.0,
      26.0
     ],
     "text": "Bit-depth/sample-rate reduction device for digital degradation and aliasing textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b11",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      209.0,
      276.0,
      26.0
     ],
     "text": "Multi-stage saturation/distortion processor with flexible routing, feedback, and filtering."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b2",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      266.0,
      276.0,
      26.0
     ],
     "text": "Lo-fi pseudo-random square-wave oscillator with an old-computer/data character."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b10",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      323.0,
      276.0,
      38.0
     ],
     "text": "Nonlinear distortion processor for adding harmonic coloration and more aggressive clipping."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b16",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      392.0,
      276.0,
      38.0
     ],
     "text": "Exponentially reshapes signal amplitude/curvature for nonlinear control or audio shaping."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b23",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      461.0,
      276.0,
      26.0
     ],
     "text": "Fuzz-style nonlinear distortion for dense, strongly clipped harmonic spectra."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b31",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      518.0,
      276.0,
      26.0
     ],
     "text": "Overdrive-style distortion for progressive saturation and harmonic enrichment."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b41",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      575.0,
      276.0,
      38.0
     ],
     "text": "Saturation/waveshaping processor for soft coloration through more extreme nonlinear shaping."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b58",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      644.0,
      276.0,
      26.0
     ],
     "text": "General nonlinear waveshaper that remaps signal amplitude to alter harmonic content."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b12",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      749.0,
      276.0,
      26.0
     ],
     "text": "Spectral resonator that reshapes and retunes frequency components around resonant pitches."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b13",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      806.0,
      276.0,
      26.0
     ],
     "text": "Spectral freeze/delay processor for freezing, smearing, and delaying frequency-domain content."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b27",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      863.0,
      276.0,
      26.0
     ],
     "text": "Modal resonator that emphasizes tuned resonant modes for pitched, ringing responses."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b33",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      920.0,
      276.0,
      26.0
     ],
     "text": "Analyzes incoming audio and estimates its fundamental pitch."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b34",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      620.0,
      977.0,
      276.0,
      26.0
     ],
     "text": "Changes the pitch of incoming audio independently of its playback duration."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b4",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      152.0,
      276.0,
      26.0
     ],
     "text": "Analog-inspired subtractive synthesizer with oscillator drift and modulation."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b6",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      209.0,
      276.0,
      38.0
     ],
     "text": "Monophonic drum sampler with envelope, filtering, pitch/loop controls, and internal effects."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b1",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      278.0,
      276.0,
      26.0
     ],
     "text": "Morphable oscillator moving through sine, triangle, saw, and square/pulse shapes."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b4",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      335.0,
      276.0,
      26.0
     ],
     "text": "Square-wave chiptune oscillator designed to evoke 8-bit game-console sounds."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b12",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      392.0,
      276.0,
      26.0
     ],
     "text": "Dual morphable basic-shape oscillator for layered and interacting waveforms."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b17",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      449.0,
      276.0,
      26.0
     ],
     "text": "Rapidly retriggers a kick-like oscillator to create granular-like pitched textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b21",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      506.0,
      276.0,
      26.0
     ],
     "text": "FM bass oscillator with modulation-index control and operator feedback."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b22",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      563.0,
      276.0,
      26.0
     ],
     "text": "Harmonic FM oscillator combined with wavefolding for brighter nonlinear spectra."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b24",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      620.0,
      276.0,
      26.0
     ],
     "text": "Harmonic FM oscillator with controllable modulation ratio and amount."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b26",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      677.0,
      276.0,
      26.0
     ],
     "text": "Meta-oscillator providing the collection of oscillator models used in Ableton Meld."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b30",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      734.0,
      276.0,
      26.0
     ],
     "text": "Morphable basic waveforms with controllable noise injection."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b42",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      791.0,
      276.0,
      26.0
     ],
     "text": "Shepard-tone oscillator for continuously rising or falling pitch illusions."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b44",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      848.0,
      276.0,
      26.0
     ],
     "text": "Straightforward FM oscillator with modulation-index and amount controls."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b45",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      905.0,
      276.0,
      26.0
     ],
     "text": "Morphs between a square wave and a square wave pitched a fifth above."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b46",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      962.0,
      276.0,
      26.0
     ],
     "text": "Two synchronized square-wave oscillators with controllable relative frequency."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b48",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      1019.0,
      276.0,
      26.0
     ],
     "text": "Low-frequency/sub oscillator with waveform morphing and an additional sub component."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b49",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      1076.0,
      276.0,
      26.0
     ],
     "text": "Multi-oscillator swarm generator for dense, detuned, animated tone clusters."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b50",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      918.0,
      1133.0,
      276.0,
      26.0
     ],
     "text": "Impulse/drum oscillator with decay and tone controls for percussive synthesis."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b3",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      152.0,
      276.0,
      26.0
     ],
     "text": "Synthesized bubble generator for liquid, rising, and popping tones."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b7",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      209.0,
      276.0,
      26.0
     ],
     "text": "Random-transient oscillator that generates crackling and sparse impulse textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b18",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      266.0,
      276.0,
      26.0
     ],
     "text": "Noise generator shaped by a resonant band-pass filter."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b29",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      323.0,
      276.0,
      26.0
     ],
     "text": "Loops a noise buffer at audio rates to create granular-like pitched tones."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b38",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      380.0,
      276.0,
      26.0
     ],
     "text": "Synthetic rain generator combining modeled drops with noise/wind textures."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b54",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      437.0,
      276.0,
      26.0
     ],
     "text": "Velvet-noise impulse generator for sparse noise, excitation, and texture synthesis."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b0",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      542.0,
      276.0,
      26.0
     ],
     "text": "Modulation generator whose output alternates between two defined values."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b15",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      599.0,
      276.0,
      26.0
     ],
     "text": "Euclidean-rhythm ramp generator for evenly distributed rhythmic modulation patterns."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b28",
     "linecount": 1,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      656.0,
      276.0,
      14.0
     ],
     "text": "General-purpose modulation-signal generator."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b36",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      701.0,
      276.0,
      26.0
     ],
     "text": "Random pulse emitter for irregular trigger-like modulation signals."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b39",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      758.0,
      276.0,
      26.0
     ],
     "text": "Ramp generator for cyclic or one-direction modulation trajectories."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b47",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      815.0,
      276.0,
      26.0
     ],
     "text": "Stereo low-frequency oscillator for coordinated left/right modulation."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b57",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      872.0,
      276.0,
      38.0
     ],
     "text": "Smooth wandering modulation generator for continuously varying quasi-random control signals."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dev_b14",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      989.0,
      276.0,
      26.0
     ],
     "text": "Utility processor for gain, phase, stereo width, and channel manipulation."
    }
   },
   {
    "box": {
     "fontsize": 9.5,
     "id": "desc_dsp_b52",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1216.0,
      1046.0,
      276.0,
      38.0
     ],
     "text": "Signal transformer offering offset, scaling, gating, skew, quantize, sample/hold, slew, and related operations."
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "dev_m0",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b0",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m1",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m10",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m11",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m12",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m13",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m14",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m2",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m3",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m4",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m5",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m6",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m7",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m8",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dev_m9",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_b9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m0",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dev_m9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m0",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b0",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m1",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m10",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m11",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m12",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m13",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m14",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m15",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m16",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m17",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m18",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m19",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b19",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m2",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m20",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b20",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m21",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b21",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m22",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b22",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m23",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b23",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m24",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b24",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m25",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b25",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m26",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b26",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m27",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m28",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m29",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b29",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m3",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m30",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b30",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m31",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b31",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m32",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b32",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m33",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b33",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m34",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m35",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b35",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m36",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b36",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m37",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b37",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m38",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b38",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m39",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b39",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m4",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m40",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b40",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m41",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b41",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m42",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m43",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b43",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m44",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b44",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m45",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b45",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m46",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b46",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m47",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b47",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m48",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b48",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m49",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b49",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m5",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m50",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b50",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m51",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b51",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m52",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b52",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m53",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b53",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m54",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b54",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m55",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b55",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m56",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b56",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m57",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m58",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b58",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m6",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m7",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m8",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dsp_m9",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_b9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m0",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m1",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m18",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m19",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m20",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m21",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m22",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m23",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m24",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m25",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m26",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m27",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m28",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m29",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m30",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m31",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m32",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m33",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m34",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m35",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m36",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m37",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m38",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m39",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m4",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m40",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m41",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m42",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m43",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m44",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m45",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m46",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m47",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m48",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m49",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m50",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m51",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m52",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m53",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m54",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m55",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m56",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m58",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "i_pc",
      0
     ],
     "hidden": 1,
     "source": [
      "dsp_m9",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "autosave": 0
 }
}
