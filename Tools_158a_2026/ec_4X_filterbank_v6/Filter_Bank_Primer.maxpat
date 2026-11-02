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
    "rect": [
      34.0,
      113.0,
      348.0,
      903.0
    ],
    "openinpresentation": 1,
    "visible": 1,
    "boxes": [
      {
        "box": {
          "annotation": "FILTER BANK / PRIMER",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "FILTER BANK / PRIMER",
          "id": "title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            20.0,
            474.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            10.0,
            142.0,
            20.0
          ],
          "text": "FILTER BANK / PRIMER",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Use your own input. Left inlet = audio; right inlet = commands.",
          "fontname": "Arial",
          "fontsize": 13.0,
          "hint": "Use your own input. Left inlet = audio; right inlet = commands.",
          "id": "intro",
          "linecount": 3,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            60.0,
            365.0,
            50.0
          ],
          "presentation": 1,
          "presentation_linecount": 3,
          "presentation_rect": [
            24.0,
            34.0,
            291.0,
            50.0
          ],
          "text": "Audio left; commands right.\nExamples control only the connected\nFilter Bank.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "GET A SOUND",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "GET A SOUND",
          "id": "s1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            122.0,
            344.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            83.0,
            90.0,
            20.0
          ],
          "text": "GET A SOUND",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "1. Enable Max Audio and this demo's Output switch.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "1. Enable Max Audio and this demo's Output switch.",
          "id": "s1body",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            154.0,
            307.0,
            60.0
          ],
          "presentation": 1,
          "presentation_linecount": 4,
          "presentation_rect": [
            24.0,
            104.0,
            307.0,
            60.0
          ],
          "text": "1. Enable Max Audio and local Output.\n2. Raise the fader; click One peak.\n3. Open Filter_Bank_v6 to tune.\n4. Try Motion, then Capture.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "BIQUAD BASICS",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "BIQUAD BASICS",
          "id": "s2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            122.0,
            349.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            595.0,
            102.0,
            20.0
          ],
          "text": "BIQUAD BASICS",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "A biquad is a second-order filter: two poles and two zeros.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "A biquad is a second-order filter: two poles and two zeros.",
          "id": "s2body",
          "linecount": 4,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            154.0,
            316.0,
            60.0
          ],
          "presentation": 1,
          "presentation_linecount": 4,
          "presentation_rect": [
            24.0,
            620.0,
            316.0,
            60.0
          ],
          "text": "Biquad: two poles and two zeros.\nFrequency locates the peak or cutoff.\nHigher Q is narrower and rings longer.\nPeak gain: boost/cut; 0 dB is flat.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "FILTER MODES",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "FILTER MODES",
          "id": "s3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            278.0,
            342.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            195.0,
            96.0,
            20.0
          ],
          "text": "FILTER MODES",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Seven modes; Ultra runs in parallel.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Seven modes; Ultra runs in parallel.",
          "id": "s3body",
          "linecount": 8,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            311.0,
            303.0,
            118
          ],
          "presentation": 1,
          "presentation_linecount": 8,
          "presentation_rect": [
            24.0,
            219.0,
            303.0,
            118
          ],
          "text": "Peak: boost or cut around the center.\nLowpass: pass below the cutoff.\nBandpass: pass a band around the center.\nUltra: narrow parallel bandpass (Q 20–200).\nHighpass: pass above the cutoff.\nResonant: resonant bandpass, shaped by Q.\nNotch: reject the center; gain trims output.\nUltra is parallel; other modes are serial.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "TWO CURVES / ONE CLOCK",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "TWO CURVES / ONE CLOCK",
          "id": "s4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            278.0,
            344.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            683.0,
            170.0,
            20.0
          ],
          "text": "TWO CURVES / ONE CLOCK",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "FREQUENCY curve × Hz depth offsets the base frequency.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "FREQUENCY curve × Hz depth offsets the base frequency.",
          "id": "s4body",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            311.0,
            324.0,
            74.0
          ],
          "presentation": 1,
          "presentation_linecount": 5,
          "presentation_rect": [
            24.0,
            702.0,
            324.0,
            74.0
          ],
          "text": "Frequency curve × Hz depth = Hz offset.\nGain curve × dB depth = gain offset.\nFull Trip spans both curves once.\nOnce plays one trip; Loop repeats.\nFlat curves or zero depth: no motion.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "SAVE / MOVE A SOUND",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "SAVE / MOVE A SOUND",
          "id": "s5",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            461.0,
            341.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            363.0,
            142.0,
            20.0
          ],
          "text": "STORE / CAPTURE",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ],
          "linecount": 1,
          "presentation_linecount": 1
        }
      },
      {
        "box": {
          "annotation": "Store saves settings into a slot 1–10. Save the patch.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Store saves settings into a slot 1–10. Save the patch.",
          "id": "s5body",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            494.0,
            301.0,
            74.0
          ],
          "presentation": 1,
          "presentation_linecount": 5,
          "presentation_rect": [
            24.0,
            388.0,
            301.0,
            74.0
          ],
          "text": "Store saves a preset slot; save the patch.\nCapture writes a full state message.\nOpen captured-restore-state to view it.\nClick its message to restore this copy.\nCopy it to another bank’s right inlet.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "RANGES / OUTPUT",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "RANGES / OUTPUT",
          "id": "s6",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            461.0,
            348.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            22.0,
            797.0,
            119.0,
            20.0
          ],
          "text": "RANGES / OUTPUT",
          "textcolor": [
            0.36,
            0.84,
            0.78,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Frequency: 60–13000 Hz. Filter gain: -24 to +24 dB.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Frequency: 60–13000 Hz. Filter gain: -24 to +24 dB.",
          "id": "s6body",
          "linecount": 5,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            490.0,
            494.0,
            305.0,
            74.0
          ],
          "presentation": 1,
          "presentation_linecount": 5,
          "presentation_rect": [
            22.0,
            818.0,
            305.0,
            74.0
          ],
          "text": "Frequency: 60–13000 Hz. Gain: ±24 dB.\nDepth needs a curve and Once/Loop.\nLevel: 0–1. Gain Out: -36 to +12 dB.\nGain Out changes fade over 2 seconds.\nProtection limits peaks; no makeup gain.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Section guide.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Section guide.",
          "id": "scope",
          "linecount": 6,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            657.0,
            540.0,
            47.0
          ],
          "presentation": 1,
          "presentation_linecount": 6,
          "presentation_rect": [
            24.0,
            489.0,
            301.0,
            87.0
          ],
          "text": "State includes settings, curves and presets.\nRunning curves restart from the beginning.\nAudio-engine settings and delay history\nare excluded, as are the demo controls.\nCopy the whole Filter_Bank_v6 object\nfor independent controls and presets.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Cycling ’74 references: biquad~ / filtercoeff~ / function / umenu",
          "fontname": "Arial",
          "fontsize": 11.0,
          "hint": "Cycling ’74 references: biquad~ / filtercoeff~ / function / umenu",
          "id": "sources",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            744.0,
            892.0,
            19.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            576.0,
            313.0,
            19.0
          ],
          "text": "Reference: Cycling ’74 filter documentation.",
          "textcolor": [
            0.68,
            0.73,
            0.8,
            1.0
          ],
          "linecount": 1,
          "presentation_linecount": 1
        }
      },
      {
        "box": {
          "annotation": "Commands to Filter Bank",
          "comment": "Commands to Filter Bank",
          "hint": "Commands to Filter Bank",
          "id": "out",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24.0,
            860.0,
            30.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Set up one audible peak.",
          "bgcolor": [
            0.6705882352941176,
            0.03529411764705882,
            0.8901960784313725,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Set up one audible peak.",
          "id": "button_peak",
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
            252.0,
            192.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            169.0,
            126.0,
            18.0
          ],
          "text": "One peak",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Local control message.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Local control message.",
          "id": "message_peak",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            252.0,
            858.0,
            22.0
          ],
          "text": "stopall, filters 1, filter 1, type peak, freq 1000 1000, gain 12 1000, q 6 1000, depth 200, ampdepth 6, triangle, amptriangle, period 4000, gainout 0., amp 0.5 1000",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Loop frequency and gain.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Loop frequency and gain.",
          "id": "button_motion",
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
            240.0,
            252.0,
            192.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            173.0,
            169.0,
            151.0,
            18.0
          ],
          "text": "Motion",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Select target filter: 1–4.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Select target filter: 1–4.",
          "id": "message_motion",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            252.0,
            650.0,
            22.0
          ],
          "text": "filter 1, triangle, amptriangle, depth 200, ampdepth 6, period 4000, loop 1",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Set up four parallel Ultra bands.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Set up four parallel Ultra bands.",
          "id": "button_ultra",
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
            425.0,
            192.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            342.0,
            190.0,
            18.0
          ],
          "text": "Four Ultra",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Local control message.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Local control message.",
          "id": "message_ultra",
          "linecount": 3,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            425.0,
            654.0,
            49.0
          ],
          "text": "stopall, filters 4, band 1 type ultra, band 1 freq 220, band 1 gain 12, band 2 type ultra, band 2 freq 700, band 2 gain 12, band 3 type ultra, band 3 freq 2200, band 3 gain 12, band 4 type ultra, band 4 freq 7000, band 4 gain 12, gainout 0., amp 0.5 1000",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Stop all motion.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Stop all motion.",
          "id": "button_stop",
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
            490.0,
            425.0,
            192.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            22.0,
            775.0,
            190.0,
            18.0
          ],
          "text": "Stop motion",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Stop all four motion loops.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Stop all four motion loops.",
          "id": "message_stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            425.0,
            650.0,
            22.0
          ],
          "text": "stopall",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Fill the home-page state message.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Fill the home-page state message.",
          "id": "button_capture",
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
            612.0,
            192.0,
            26.0
          ],
          "presentation": 1,
          "presentation_rect": [
            24.0,
            467.0,
            190.0,
            18.0
          ],
          "text": "Capture state",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Capture current state and all presets.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Capture current state and all presets.",
          "id": "message_capture",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            612.0,
            650.0,
            22.0
          ],
          "text": "dumpstate",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Fade this Filter Bank to silence.",
          "bgcolor": [
            0.671,
            0.035,
            0.89,
            1.0
          ],
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Fade this Filter Bank to silence.",
          "id": "button_quiet",
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
            490.0,
            612.0,
            192.0,
            26.0
          ],
          "text": "Quiet",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      },
      {
        "box": {
          "annotation": "Local control message.",
          "fontname": "Arial",
          "fontsize": 12.0,
          "hint": "Local control message.",
          "id": "message_quiet",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1000.0,
            612.0,
            650.0,
            22.0
          ],
          "text": "stopall, amp 0 1000",
          "textcolor": [
            0.92,
            0.94,
            0.96,
            1.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "message_capture",
            0
          ],
          "source": [
            "button_capture",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "message_motion",
            0
          ],
          "source": [
            "button_motion",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "message_peak",
            0
          ],
          "source": [
            "button_peak",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "message_quiet",
            0
          ],
          "source": [
            "button_quiet",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "message_stop",
            0
          ],
          "source": [
            "button_stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "message_ultra",
            0
          ],
          "source": [
            "button_ultra",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_capture",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_motion",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_peak",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_quiet",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "out",
            0
          ],
          "source": [
            "message_ultra",
            0
          ]
        }
      }
    ],
    "bgcolor": [
      0.075,
      0.09,
      0.115,
      1.0
    ],
    "editing_bgcolor": [
      0.16,
      0.17,
      0.19,
      1.0
    ]
  }
}
