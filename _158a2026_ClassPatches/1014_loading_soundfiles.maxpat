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
        "rect": [ 59.0, 114.0, 1635.0, 803.0 ],
        "boxes": [
            {
                "box": {
                    "id": "choose-folder",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 18.0, 112.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "folderlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 54.0, 111.0, 100.0, 21.0 ],
                    "text": "Choose a folder"
                }
            },
            {
                "box": {
                    "id": "dialog-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 18.0, 156.0, 97.0, 22.0 ],
                    "text": "opendialog fold"
                }
            },
            {
                "box": {
                    "id": "prepend-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 18.0, 198.0, 96.0, 22.0 ],
                    "text": "prepend /folder"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "send-folder",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 237.0, 91.0, 22.0 ],
                    "text": "s mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "choose-file",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 198.0, 112.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "filelabel",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 234.0, 106.0, 76.0, 36.0 ],
                    "text": "Choose \none sample"
                }
            },
            {
                "box": {
                    "id": "dialog-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 198.0, 156.0, 72.0, 22.0 ],
                    "text": "opendialog"
                }
            },
            {
                "box": {
                    "id": "prepend-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 198.0, 198.0, 80.0, 22.0 ],
                    "text": "prepend /file"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "send-file",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 198.0, 237.0, 91.0, 22.0 ],
                    "text": "s mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 391.0, 659.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-1",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 327.0, 580.0, 83.0, 64.0 ],
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
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "drop-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 51.0, 346.0, 133.0, 21.0 ],
                    "text": "Or drop a folder here:"
                }
            },
            {
                "box": {
                    "annotation": "Drop a folder to append its audio files.",
                    "id": "drop-folder",
                    "maxclass": "dropfile",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 51.0, 376.0, 236.0, 54.0 ]
                }
            },
            {
                "box": {
                    "id": "drop-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 51.0, 441.0, 96.0, 22.0 ],
                    "text": "prepend /folder"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "drop-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 51.0, 471.0, 91.0, 22.0 ],
                    "text": "s mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "default-head",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 35.0, 232.0, 23.0 ],
                    "text": "DEFAULT LOADING BEHAVIOR"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 13.0,
                    "id": "defaults",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 333.0, 71.0, 333.0, 65.0 ],
                    "text": "Buffer names match filenames, including extensions.\nAll channels are retained; subfolders are not scanned.\nLoading adds samples; already-loaded files are skipped.\nA same-named file from another path is rejected."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "loaderhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 146.0, 218.0, 23.0 ],
                    "text": "2  LOADER AND REPORTING"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "id": "recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 327.0, 186.0, 89.0, 22.0 ],
                    "text": "r mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "loader",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 327.0, 230.0, 85.0, 22.0 ],
                    "text": "multibuf_js_v2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "out-labels",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 320.0, 261.0, 198.0, 20.0 ],
                    "text": "Names                         Per-file bang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "name-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 327.0, 290.0, 83.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "name-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 327.0, 355.0, 77.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgfillcolor_color1": [ 0.5176470588235295, 0.34901960784313724, 0.34901960784313724, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "name-display",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 327.0, 380.0, 152.0, 22.0 ],
                    "text": "pitch21-D-mid-wood.wav"
                }
            },
            {
                "box": {
                    "id": "success",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 434.0, 283.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "status-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 542.0, 260.0, 74.0, 22.0 ],
                    "text": "route menu"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "id": "status-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 542.0, 286.0, 125.0, 22.0 ],
                    "text": "print multibuf_status"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-route",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 535.0, 340.0, 171.0, 22.0 ],
                    "text": "route done cleared removed"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-bang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 535.0, 369.0, 23.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgfillcolor_color1": [ 0.063, 0.522, 0.573, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "hidden": 1,
                    "id": "auto-menu-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 535.0, 399.0, 45.0, 22.0 ],
                    "text": "/menu"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.063, 0.012, 0.871, 1.0 ],
                    "hidden": 1,
                    "id": "auto-menu-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 535.0, 430.0, 91.0, 22.0 ],
                    "text": "s mb-command",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "fontface": 1,
                    "fontsize": 15.0,
                    "id": "play-head",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 430.0, 194.0, 23.0 ],
                    "text": "3  SELECT AND PREVIEW"
                }
            },
            {
                "box": {
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.10588235294117647, 0.7607843137254902, 0.11372549019607843, 1.0 ],
                    "bgfillcolor_color1": [ 0.10588235294117647, 0.7607843137254902, 0.11372549019607843, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "id": "menu",
                    "items": [ "anacru01-human-strong.wav", ",", "anacru02-pitch-high-swell.wav", ",", "anacru03-pitch-high-swell2.wav", ",", "anacru04-zipper1.wav", ",", "atkdcy01-noise-waterdrop-delicate.wav", ",", "atkdcy02-wood-block-bright.wav", ",", "atkdcy03-wood-note-high-D.wav", ",", "atkdcy04-wood-note-mid-D.wav", ",", "continuant01-coinspin.wav", ",", "continuant02_inharm-thick.aif", ",", "elec01-atkdcy-.wav", ",", "elec02-atkdcy-falling-long.wav", ",", "elec03-atkdcy-muscular.wav", ",", "elec04-atkdcy-tone-thick.wav", ",", "elec05-conintuant-dcy-tone-thick.wav", ",", "elec06-contuant-dcy-tone-inharm-thick.wav", ",", "elec07-event-thick.wav", ",", "elec08-noise-muscular.wav", ",", "event01-bell-pitch-atkdcy-reverse.wav", ",", "event02-bell-pitch-atkdcy.wav", ",", "event03-bubbles-impls.wav", ",", "event04-carcrash-phrase-muscular.wav", ",", "event05-cicadas-fading.wav", ",", "event06-icecubes-noise.wav", ",", "event07-potterycrash-atkdcy.wav", ",", "event08-whip-swish2.wav.wav", ",", "event09-whip-swish3.wav", ",", "human-hiss-fade.wav", ",", "human-scream-male.aif", ",", "impls01-event-knock-mid.wav", ",", "impls02-wood-smash.wav", ",", "impls03-wood-dull.wav", ",", "impls04-wood-complex-breaking.wav", ",", "impls05-skin-low-muscular.wav", ",", "impls06-bounce-wood.wav", ",", "impls07-metal-muscular.wav", ",", "impls08-inharm-garbagecan-wirebrush.wav", ",", "impls09-inharm-garbagecan-strike-brigh.wav", ",", "impls10-gun-muscular.wav", ",", "impls11-gun-muscular-bright.wav", ",", "impls12-flashbulb-low-strong.wav", ",", "impls13-flashbulb-complex.wav", ",", "impls14-explosion-low-muscular.wav", ",", "impls15-event-crashingglass.wav", ",", "impls16-event-camerashutter3.wav", ",", "impls17-event-camerashutter2.wav", ",", "impls18-event-camerashutter.wav", ",", "impls19-doorclose-powerful.wav", ",", "impls20-crashing-low.wav", ",", "impls21-crashing-bright.wav", ",", "impls22-event-thump-low.wav", ",", "inharm01-metal-bright-low.wav", ",", "inharm02-Clock-complex.aif", ",", "inharm03-metal-bright.wav", ",", "inharm04-metal-gong.aif", ",", "inharm05-cymbal-dense.aif", ",", "noise01-dcy-event-ocean-brown.wav", ",", "noise02-dcy-event-ocean-brown2.wav", ",", "noise03-downward-elecfanslowing.wav", ",", "noise04-fillingbottle-decay.wav", ",", "noise05-splashing-complex.wav", ",", "noise06-white-fade-elec.wav", ",", "noise07-white-water-fade.wav", ",", "phrase01-saxes-dcy.wav", ",", "phrase02-orchestral-comples.aif", ",", "pitch01-A-Low-clarinet.wav", ",", "pitch02-gliss-delicate-atkdcy2.wav", ",", "pitch03-gliss-delicate-atkdcy.wav", ",", "pitch04-Bb-mid-atkdcy-.wav", ",", "pitch05-Bb-mid-atkdcy-clear.wav", ",", "pitch06-Bb-mid-bowedstrng-swell.wav", ",", "pitch07-Bb-mid-bowedstrng1-swell.wav", ",", "pitch08-C-atkdcy-harpsichord-mid.wav", ",", "pitch09-D-low-piano.wav", ",", "pitch10-D-piano-mid.wav", ",", "pitch11-F-mid-bowedstrng-atckdcy.wav", ",", "pitch12-G-low-bowedstrng-swell.wav", ",", "pitch13-human-glissando.wav", ",", "pitch14-human-phrase-gliss.wav", ",", "pitch15-low-thick-swell.wav", ",", "pitch16-metal-high-atkdcy.wav", ",", "pitch17-noise-Harp-low-dull.wav", ",", "pitch18-noise-Harp-low-dull2.wav", ",", "pitch19-noise-Harp-mid-dull.wav", ",", "pitch20-piano-high-atkdcy.wav", ",", "pitch21-D-mid-wood.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 327.0, 469.0, 461.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06666666666666667, 0.4627450980392157, 0.07450980392156863, 1.0 ],
                    "id": "play-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 327.0, 514.0, 77.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color1": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 502.0, 514.0, 34.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgcolor2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color1": [ 0.106, 0.761, 0.114, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 588.0, 514.0, 33.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.08235294117647059, 0.592156862745098, 0.08627450980392157, 1.0 ],
                    "id": "play",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 327.0, 547.0, 38.0, 22.0 ],
                    "text": "play~"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 669.0, 44.0, 44.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.5,
                    "id": "buffer-location",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 210.0, 433.0, 20.0 ],
                    "text": "To see the buffers: open multibuf_js_v1, then p runtime_buffers after loading."
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.06274509803921569, 0.5215686274509804, 0.5725490196078431, 1.0 ],
                    "hidden": 1,
                    "id": "names-print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 349.0, 325.0, 129.0, 22.0 ],
                    "text": "print multibuf_names"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "auto-menu-message", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-send", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-bang", 0 ],
                    "hidden": 1,
                    "source": [ "auto-menu-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dialog-file", 0 ],
                    "source": [ "choose-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dialog-folder", 0 ],
                    "source": [ "choose-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "prepend-file", 0 ],
                    "source": [ "dialog-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "prepend-folder", 0 ],
                    "source": [ "dialog-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drop-prepend", 0 ],
                    "source": [ "drop-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "drop-send", 0 ],
                    "source": [ "drop-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "auto-menu-route", 0 ],
                    "hidden": 1,
                    "midpoints": [ 402.5, 255.82421875, 544.5, 255.82421875 ],
                    "order": 1,
                    "source": [ "loader", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-route", 0 ],
                    "source": [ "loader", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status-route", 0 ],
                    "order": 0,
                    "source": [ "loader", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "success", 0 ],
                    "source": [ "loader", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play-set", 0 ],
                    "source": [ "menu", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-set", 0 ],
                    "order": 1,
                    "source": [ "name-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "names-print", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "name-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "name-display", 0 ],
                    "source": [ "name-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "play", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "play-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-file", 0 ],
                    "source": [ "prepend-file", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-folder", 0 ],
                    "source": [ "prepend-folder", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "loader", 0 ],
                    "source": [ "recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "menu", 0 ],
                    "midpoints": [ 325.23828125, 282.765625, 325.23828125, 462.7890625, 336.5, 462.7890625 ],
                    "source": [ "status-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status-print", 0 ],
                    "source": [ "status-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "play", 0 ],
                    "source": [ "stop", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.gain~", "live.gain~", 0 ],
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
        "autosave": 0
    }
}