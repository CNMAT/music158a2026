{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 2089.0, 152.0, 1277.0, 724.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-57",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 259.0, 530.0, 55.0, 137.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -80 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 339.0, 588.0, 240.0, 20.0 ],
                    "text": "parameters for currently loaded vst~ plug-in"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "params", "set" ],
                    "patching_rect": [ 338.0, 394.0, 261.0, 22.0 ],
                    "text": "t params set"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 330.0, 613.0, 96.0, 22.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 330.0, 648.0, 889.0, 35.0 ],
                    "text": "\"Room Size\" \"Reverberation Time\" \"Lows Cutoff Frequency\" \"Lows Q Factor\" \"Lows Gain\" \"Highs Cutoff Frequency\" \"Highs Q Factor\" \"Highs Gain\" \"Highpass Slope\" \"Highpass Cutoff Frequency\" \"Highpass Q Factor\" Dry/Wet \"Fade-in Time\" \"Fdn Size (internal)\" Freeze"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 338.0, 365.0, 59.0, 23.0 ],
                    "text": "params"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 405.0, 363.0, 256.0, 25.0 ],
                    "text": "output parameter names to third outlet"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 704.0, 63.0, 310.0, 20.0 ],
                    "text": "examine your disk and build a list of all available plug-ins"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 809.0, 112.0, 150.0, 33.0 ],
                    "text": "list all available vst plugins on your computer"
                }
            },
            {
                "box": {
                    "border": 0,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-22",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 767.0, 234.0, 272.0, 19.0 ],
                    "text": "Access plugin names using the <link href=\"; max openhelp vstscan\">vstscan </link> object",
                    "textcolor": [ 0.5, 0.5, 0.5, 1.0 ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 1.0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785.0, 373.0, 115.0, 25.0 ],
                    "text": "all usable plugs"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 1.0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-27",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1048.0, 361.0, 130.0, 40.0 ],
                    "presentation_linecount": 2,
                    "text": "all unusable \"blacklisted\" plugs"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 999.0, 357.0, 37.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-25",
                    "items": "<empty>",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 976.0, 403.0, 192.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 976.0, 319.0, 112.0, 23.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 790.0, 442.0, 84.0, 23.0 ],
                    "text": "prepend plug"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 728.0, 357.0, 37.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785.0, 181.0, 146.0, 25.0 ],
                    "text": "AudioUnit (Mac only)"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 778.0, 149.0, 58.0, 25.0 ],
                    "text": "VST3"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 754.0, 116.0, 51.0, 25.0 ],
                    "text": "VST"
                }
            },
            {
                "box": {
                    "dontreplace": 1,
                    "fontsize": 13.0,
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 790.0, 471.0, 203.0, 23.0 ],
                    "text": "plug FdnReverb"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 720.0, 150.0, 53.0, 23.0 ],
                    "text": "listvst3"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 739.0, 181.0, 42.0, 23.0 ],
                    "text": "listau"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 704.0, 117.0, 46.0, 23.0 ],
                    "text": "listvst"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-41",
                    "items": [ "4Front Piano", ",", "AllRADecoder", ",", "ARIA Player VST Multi", ",", "ARIA Player VST", ",", "BinauralDecoder", ",", "Bitspeek", ",", "CoordinateConverter", ",", "DirectionalCompressor", ",", "DirectivityShaper", ",", "DistanceCompensator", ",", "DualDelay", ",", "Echobode", ",", "EnergyVisualizer", ",", "FdnReverb", ",", "GranularEncoder", ",", "GRM BandPass Stereo", ",", "GRM BandPass", ",", "GRM Comb Stereo", ",", "GRM Comb", ",", "GRM Contrast Stereo", ",", "GRM Contrast", ",", "GRM Delays Stereo", ",", "GRM Delays", ",", "GRM Doppler Stereo", ",", "GRM Doppler", ",", "GRM Equalize Stereo", ",", "GRM Equalize", ",", "GRM Evolution", ",", "GRM Freeze Stereo", ",", "GRM Freeze", ",", "GRM FreqShift Stereo", ",", "GRM FreqShift", ",", "GRM FreqWarp Stereo", ",", "GRM FreqWarp", ",", "GRM Fusion", ",", "GRM Grinder", ",", "GRM PitchAccum Stereo", ",", "GRM PitchAccum", ",", "GRM Reson Stereo", ",", "GRM Reson", ",", "GRM Shuffling Stereo", ",", "GRM Shuffling", ",", "GRM SpaceFilter", ",", "GRM SpaceGrain", ",", "GRM Spaces", ",", "GRM Spaces3D", ",", "Kontakt", ",", "LABS", ",", "MatrixMultiplier", ",", "Microtonic Multi", ",", "Microtonic", ",", "MultiBandCompressor", ",", "MultiEncoder", ",", "MultiEQ", ",", "Nectar 3 Elements", ",", "Neutron 3 Elements", ",", "OmniCompressor", ",", "Ozone 9 Elements", ",", "Permut8", ",", "ProbeDecoder", ",", "RoomEncoder", ",", "RX 8 De-click", ",", "RX 8 De-clip", ",", "RX 8 De-hum", ",", "RX 8 Voice De-noise", ",", "SceneRotator", ",", "Sennheiser AMBEO A-B format converter", ",", "SimpleDecoder", ",", "SoundField By RODE", ",", "StereoEncoder", ",", "Supercharger", ",", "SurroundZone2", ",", "Synplant", ",", "ToolBox", ",", "UVIWorkstationVST", ",", "WaveShell1-VST 12.7", ",", "WaveShell1-VST 14.12", ",", "WaveShell1-VST 14.19", ",", "Youlean Loudness Meter 2", ",", "<none>", ",", "AllRADecoder", ",", "ARIA Player", ",", "ASAP Formant Shaping", ",", "ASAP Pitches Brew", ",", "ASAP Psycho Filter", ",", "ASAP Spectral Clipping", ",", "ASAP Spectral Crossing", ",", "ASAP Spectral Morphing", ",", "ASAP Spectral Remix", ",", "ASAP Stretch Life", ",", "ASAP Tone Free", ",", "BinauralDecoder", ",", "Bitspeek", ",", "CoordinateConverter", ",", "dearVR AMBI MICRO", ",", "dearVR PRO 2", ",", "DirectionalCompressor", ",", "DirectivityShaper", ",", "DistanceCompensator", ",", "DualDelay", ",", "Echobode", ",", "Eclipsa Audio Element Plugin", ",", "Eclipsa Audio Renderer", ",", "EnergyVisualizer", ",", "Factorsynth", ",", "FdnReverb", ",", "Grand Piano", ",", "GranularEncoder", ",", "GRM BandPass", ",", "GRM BandPassMono", ",", "GRM CombFilter", ",", "GRM Contrast", ",", "GRM Delays", ",", "GRM Doppler", ",", "GRM DopplerMono", ",", "GRM Equalize", ",", "GRM EqualizeMono", ",", "GRM Evolution", ",", "GRM Freeze", ",", "GRM Fusion", ",", "GRM Grinder", ",", "GRM PitchAccum", ",", "GRM Reson", ",", "GRM Shift", ",", "GRM Shuffling", ",", "GRM SpaceFilter", ",", "GRM SpaceGrain", ",", "GRM Spaces", ",", "GRM Spaces3D", ",", "GRM Warp", ",", "Groove Agent SE", ",", "HALion Sonic", ",", "IR-L Mono", ",", "Kontakt", ",", "LABS", ",", "MatrixMultiplier", ",", "Melodyne", ",", "Microtonic Multi", ",", "Microtonic", ",", "Mix to Mobile sender", ",", "MultiBandCompressor", ",", "MultiEncoder", ",", "MultiEQ", ",", "Nectar 3 Elements", ",", "Neutron 3 Elements", ",", "OmniCompressor", ",", "Ozone 9 Elements", ",", "Permut8", ",", "ProbeDecoder", ",", "RoomEncoder", ",", "RX 8 De-click", ",", "RX 8 De-clip", ",", "RX 8 De-hum", ",", "RX 8 Voice De-noise", ",", "SceneRotator", ",", "Sennheiser AMBEO A-B format converter", ",", "SimpleDecoder", ",", "SpectraLayers", ",", "StereoEncoder", ",", "Supercharger", ",", "Surge XT Effects", ",", "Surge XT", ",", "Synplant", ",", "ToolBox", ",", "TrueVerb Mono", ",", "UVIWorkstation", ",", "WaveShell1-VST3 12.7", ",", "WaveShell1-VST3 14.12", ",", "WaveShell1-VST3 14.19", ",", "Youlean Loudness Meter 2" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 704.0, 403.0, 192.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 704.0, 319.0, 112.0, 23.0 ],
                    "text": "prepend append"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 704.0, 264.0, 564.0, 23.0 ],
                    "text": "route plug_vst plug_au plug_vst3 plug_vst_blacklisted plug_vst3_blacklisted plug_au_blacklisted"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 704.0, 230.0, 58.0, 23.0 ],
                    "text": "vstscan"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 402.0, 313.0, 214.0, 40.0 ],
                    "text": "open the interface window (or double click on vst~ object box)"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-12",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 402.0, 268.0, 173.0, 40.0 ],
                    "text": "select and load a plug-in manually"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 325.0, 323.0, 70.0, 23.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 325.0, 271.0, 70.0, 23.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.0, 18.0, 359.0, 35.0 ],
                    "text": ";\rmax launchbrowser https://surge-synthesizer.github.io/downloads/"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 243.0, 148.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 166.0, 155.0, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 258.0, 93.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 166.0, 129.0, 32.0, 22.0 ],
                    "text": "< 36"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 268.0, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 31.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 144.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.0, 99.0, 55.0, 22.0 ],
                    "text": "drunk 84"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 34.0, 68.0, 63.0, 22.0 ],
                    "text": "metro 400"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.0, 633.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 305.0, 54.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 115.0, 353.0, 163.0, 22.0 ],
                    "text": "midiformat"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 115.0, 268.0, 118.0, 22.0 ],
                    "text": "makenote 127 300 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 115.0, 195.0, 336.0, 53.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 316.0, 517.0, 12.0, 87.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 259.0, 678.0, 55.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgcolor": [ 0.7607843137254902, 0.10196078431372549, 0.10196078431372549, 1.0 ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "fontsize": 18.0,
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 259.0, 478.0, 270.9999999999998, 29.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~[1]",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "FdnReverb.vstinfo",
                            "plugindisplayname": "FdnReverb",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 0,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "blob": "845.CMlaKA....fQPMDZ....AXDYRUF.AL......A........................................LPDVMjLgfv....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOFQlaRUlckImX9vCTAIUPMARZj0iHjUFagkGSk41YzglHfXWXrUWY8HhLv3BLh7hO7.UPRETSfjFY8HBYxk2UkQmHfXWXrUWY8HBLtTiHu3COPEjTA0DHoQVOhXVXjUVRtQUZsUlHfXWXrUWY8HBLt.iHu3COPEjTA0DHoQVOhXFYtMUZ5UlHfXWXrUWY8HhLt.iHu3COPEjTA0DHoQVOhXlbkUldkIBH1EFa0UVOh.iKvHxK9vCTAIUPMARZj0iHnk1YnMTcz8lYlIBH1EFa0UVOhDSN4jiK4jSN3byM4HSN1fCNh7hO7.UPRETSfjFY8HBZocFZGEVZtIBH1EFa0UVOhzRNtjSN4jSN4.CM1LiL0XCNzHxK9vCTAIUPMARZj0iHnk1YnEkHfXWXrUWY8HBLtTCLv.CLv.SM4XCLzXCMzfiHu3COPEjTA0DHoQVOhfFbFIWYwUWYtMVdh.hcgwVck0iHx.iKvHxK9vCTAIUPMARZj0iHnA2SxQVYxIBH1EFa0UVOh.iKvHxK9vCTAIUPMARZj0iHnAWTh.hcgwVck0iHv3hM4jSN4jSN3fCL2jCL2DiHu3COPEjTA0DHoQVOhv1a2MTcz8lYlIBH1EFa0UVOhjSNtjSN4jSNxLyMvXCL0PyMh7hO7.UPRETSfjFY8HBauc2Qgklah.hcgwVck0iHw3BLv.CLvDSL4HCL4HCN4XiHu3COPEjTA0DHoQVOhv1a2EkHfXWXrUWY8HBLtTCLv.CLv.SM4XCLzXCMzfiHu3COPEjTA0DHoQVOhHWY1QUZsUlHfXWXrUWY8HRMt.iHu3COOM0PC8lalk1YfHUYiUVZ1UlbP8lbz0iHsDiHfLUYtQVYxkDT8HhHfLUYtQVYxA0axQWOhzRLh.xTk4FYkI2SSMTPjQlbkM2b8HxKFQlaRUlckImXuHBHSUlajUlbI4FckImcgwVOhDCLvHxK9vyKFQlaRUlckImX9.."
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "FdnReverb",
                                    "origin": "FdnReverb.vstinfo",
                                    "type": "VST",
                                    "subtype": "AudioEffect",
                                    "embed": 0,
                                    "snapshot": {
                                        "pluginname": "FdnReverb.vstinfo",
                                        "plugindisplayname": "FdnReverb",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 0,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "blob": "845.CMlaKA....fQPMDZ....AXDYRUF.AL......A........................................LPDVMjLgfv....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOFQlaRUlckImX9vCTAIUPMARZj0iHjUFagkGSk41YzglHfXWXrUWY8HhLv3BLh7hO7.UPRETSfjFY8HBYxk2UkQmHfXWXrUWY8HBLtTiHu3COPEjTA0DHoQVOhXVXjUVRtQUZsUlHfXWXrUWY8HBLt.iHu3COPEjTA0DHoQVOhXFYtMUZ5UlHfXWXrUWY8HhLt.iHu3COPEjTA0DHoQVOhXlbkUldkIBH1EFa0UVOh.iKvHxK9vCTAIUPMARZj0iHnk1YnMTcz8lYlIBH1EFa0UVOhDSN4jiK4jSN3byM4HSN1fCNh7hO7.UPRETSfjFY8HBZocFZGEVZtIBH1EFa0UVOhzRNtjSN4jSN4.CM1LiL0XCNzHxK9vCTAIUPMARZj0iHnk1YnEkHfXWXrUWY8HBLtTCLv.CLv.SM4XCLzXCMzfiHu3COPEjTA0DHoQVOhfFbFIWYwUWYtMVdh.hcgwVck0iHx.iKvHxK9vCTAIUPMARZj0iHnA2SxQVYxIBH1EFa0UVOh.iKvHxK9vCTAIUPMARZj0iHnAWTh.hcgwVck0iHv3hM4jSN4jSN3fCL2jCL2DiHu3COPEjTA0DHoQVOhv1a2MTcz8lYlIBH1EFa0UVOhjSNtjSN4jSNxLyMvXCL0PyMh7hO7.UPRETSfjFY8HBauc2Qgklah.hcgwVck0iHw3BLv.CLvDSL4HCL4HCN4XiHu3COPEjTA0DHoQVOhv1a2EkHfXWXrUWY8HBLtTCLv.CLv.SM4XCLzXCMzfiHu3COPEjTA0DHoQVOhHWY1QUZsUlHfXWXrUWY8HRMt.iHu3COOM0PC8lalk1YfHUYiUVZ1UlbP8lbz0iHsDiHfLUYtQVYxkDT8HhHfLUYtQVYxA0axQWOhzRLh.xTk4FYkI2SSMTPjQlbkM2b8HxKFQlaRUlckImXuHBHSUlajUlbI4FckImcgwVOhDCLvHxK9vyKFQlaRUlckImX9.."
                                    },
                                    "fileref": {
                                        "name": "FdnReverb",
                                        "filename": "FdnReverb.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "6618ad4025a9e1e4b92a6109fc395f31"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~",
                    "varname": "vst~[1]",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.92549, 0.815686, 0.101961, 1.0 ],
                    "fontface": 1,
                    "hint": "",
                    "id": "obj-31",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 301.0, 271.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.lesson_step_circle"
                        }
                    },
                    "text": "1",
                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 0,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "order": 0,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "order": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-23", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 1 ],
                    "order": 1,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "order": 1,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "order": 0,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-41", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-43", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-43", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-43", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-43", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 589.5, 642.70703125, 339.5, 642.70703125 ],
                    "source": [ "obj-54", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-57", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-23": [ "vst~[1]", "vst~[1]", 0 ],
            "obj-57": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "ksliderWhite",
                "default": {
                    "color": [ 1, 1, 1, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjBlue-1",
                "default": {
                    "accentcolor": [ 0.317647, 0.654902, 0.976471, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjGreen-1",
                "default": {
                    "accentcolor": [ 0, 0.533333, 0.168627, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "numberGold-1",
                "default": {
                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}