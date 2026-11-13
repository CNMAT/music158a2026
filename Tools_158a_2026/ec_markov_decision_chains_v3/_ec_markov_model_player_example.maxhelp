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
        "rect": [ 50.0, 100.0, 1080.0, 824.0 ],
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 36.0, 175.0, 1317.0, 783.0 ],
                        "default_fontsize": 14.0,
                        "default_fontname": "Arial Bold",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 24.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.0, 1.0, 853.0, 33.0 ],
                                    "text": "WHAT IS A PITCHCLASS and how is that different from a MIDI Note Number?"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 18.0,
                                    "id": "obj-2",
                                    "linecount": 36,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 13.0, 36.0, 1283.0, 730.0 ],
                                    "text": "A **pitch class identifies a note without specifying its octave.** All C notes belong to the same pitch class, whether played low on the piano or high.\nIn our Western theory twelve-note equal-tempered model, we number pitch classes from **0 to 11**: (e.g. 11 = generic B, 6 = generic F#/Fb)\n\n| Note name | C | C♯/D♭ | D | D♯/E♭ | E | F | F♯/G♭ | G | G♯/A♭ | A | A♯/B♭ | B |\n| Pitch class | 0 | 1           | 2  | 3          | 4 | 5 | 6           | 7  | 8           | 9 | 10        | 11 |      (The mathematics of pitchclasses is modulo 12)\n\nThink of a piano: **pitch class tells you which position within a repeating group of twelve unique keys; a MIDI note number identifies a particular key.**\n\nFor example, these MIDI notes are all C:\n\n| MIDI note number | Note name* | Pitch class |\n|---:|---|---:|\n| 48 | C3 | 0 |\n| 60 | C4 — middle C | 0 |\n| 72 | C5 | 0 |\n\n**To turn a pitch class into a MIDI note, choose an octave.** To choose the octave beginning at MIDI 60, simply add 60 to the pitchclass (e.g. 0 + 60 = 60):\n\n| Pitch class | Calculation | Result |\n|---:|---|---|\n| 0 — C | 60 + 0 | MIDI 60 |\n| 4 — E | 60 + 4 | MIDI 64 |\n| 7 — G | 60 + 7 | MIDI 67 |\n| 9 — A | 60 + 9 | MIDI 69 |\n\nIn Max, send the pitch-class output into **`[+ 60]`**. Adding 48 instead places the notes one octave lower; adding 72 places them one octave higher.\n\nThe reverse operation is modulo 12 arithmetic **`[% 12]`**: divide the MIDI number by twelve and keep the remainder. Both MIDI 60 and MIDI 72 produce pitch class 0.\n\nFor a frozen Markov model, this creates a useful distinction:\n\n- **Training on pitch classes:** C in every octave counts as the same state. You choose the playback register afterward.\n- **Training on MIDI notes:** low C and high C count as different states. The model can learn register-specific patterns."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 251.0, 769.0, 495.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontname": "Arial Bold",
                        "fontsize": 14.0
                    },
                    "text": "p WHAT IS A PITCHCLASS and how is that different from a MIDI_NOTE_NUMBER?"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 36.0, 175.0, 1248.0, 848.0 ],
                        "default_fontsize": 14.0,
                        "default_fontname": "Arial Bold",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 24.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 9.0, 8.0, 596.0, 33.0 ],
                                    "text": "WHAT IS A SIMPLE FIRST-ORDER MARKOV CHAIN?"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 18.0,
                                    "id": "obj-2",
                                    "linecount": 33,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 32.0, 48.0, 1206.0, 670.0 ],
                                    "text": "Given the note/event we just triggered, what are the chances of choosing a possible next note/event/state from a 'bag' of elements?\n\nWe use a FIRST-ORDER MARKOV CHAIN, where only the current note/event and its associated probabilities determines the chances of what comes next.  It is not a random selection but a network of probabilites that help organize selection in ways more musical than simple random selection.\n\nEach note/event comes with its collection of probabilities that will be used to probabilistically choose the next note. Each note/event will have its own 'bag' of notes/events from which to draw the next choice. Then, the next selection will have a different set of probabilities and selection 'bag', and on and on.  ONLY THE CURRENT STATE AND ITS ASSOCIATED PROBABILITIES DETERMINE WHAT COMES NEXT.  THERE IS NO PAST ONLY THE CURRENT CONDITION FOR THE NEXT CHOICE.\n\nImagine three available notes: C, D, and E. Each note has its own 'bag' containing PROBABILITY + NEXT NOTE for every note in the 'bag'. \n\nThe engine works like this:\n1. Start by playing C.\n2. Draw a note/event (based on probability) from C’s bag.\n3. Suppose the ticket says E. Play E.\n4. Since E is now the current note, draw the next note from E’s bag using its associated unique weights.\n5. Keep repeating. The current selected note tells you which note/events are available for the next selection.\n\n\nMoving from three notes to six does not change the procedure. With C, D, E, F, G, and A, you have six bags instead of three. Each bag can contain PROBABILITY+NEXT NOTE for any of those six notes, or any combination of those six notes, or all of them. Some destinations can be excluded simply by leaving the probability for selecting those notes at 0%.\n\nThe composer designs tendencies:\n- More % for the same note encourages repetition.\n- More % for neighboring notes encourage stepwise motion.\n- More % for distant notes encourage leaps.\n- More % for C encourage returns to C.\nThese are tendencies, not promises. A 70% chance does not guarantee exactly seven occurrences in ten draws.\n\nFor Max, each bang can mean: look up the current note’s probabilities, choose the next note, output it, and repeat for next note."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 33.0, 769.0, 194.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontname": "Arial Bold",
                        "fontsize": 14.0
                    },
                    "text": "p WHAT IS A MARKOV CHAIN?"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 282.0, 250.0, 314.0, 22.0 ],
                    "text": "see the full \"model\" responsible for the pattern"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 101.0, 49.0, 24.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "reset-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 262.0, 101.0, 275.0, 22.0 ],
                    "text": "Restore exported start, seed and octave"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 131.0, 64.0, 24.0 ],
                    "text": "start 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "start-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 282.0, 131.0, 251.0, 22.0 ],
                    "text": "Silent start from active pitch class 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "seed",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 161.0, 68.0, 24.0 ],
                    "text": "seed 123"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "seed-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 282.0, 161.0, 251.0, 22.0 ],
                    "text": "Set a repeatable random generator"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "octave",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 192.0, 68.0, 24.0 ],
                    "text": "octave 4"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "octave-desc",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 282.0, 192.0, 251.0, 38.0 ],
                    "text": "MIDI register; leaves pitch classes fixed"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 222.0, 53.0, 24.0 ],
                    "text": "status"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 182.0, 249.0, 53.0, 24.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "bottom",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 109.0, 342.0, 920.0, 69.0 ],
                    "text": "The js object is the reusable MAX object used for installing an .js file argument such as the one generated with _ec_markov_chain_builder.maxpat\nOne bang selects one successor. The starting state itself makes no sound.\nZero-weight rows produce no note. Transitions remain probabilistic unless each row has one destination.\nThis patch displays note numbers; your master patch supplies its own instrument and note duration."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 16.0, 970.0, 29.0 ],
                    "text": "ec_markov_note_player~ / extracted builder tone"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 58.0, 571.0, 36.0 ],
                    "text": "Click AUDIO, then NEXT or RUN. The included model selects C, E and G.\nFor your own model, replace example_markov_frozen.js in the js box with your exported filename."
                }
            },
            {
                "box": {
                    "id": "run",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 120.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "run-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 21.5, 98.0, 37.0, 21.0 ],
                    "text": "RUN"
                }
            },
            {
                "box": {
                    "id": "rate",
                    "maxclass": "number",
                    "maximum": 5000,
                    "minimum": 50,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 67.0, 124.0, 75.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 170.0, 100.0, 23.0 ],
                    "text": "metro 650"
                }
            },
            {
                "box": {
                    "id": "defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 199.0, 90.0, 23.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "next",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 55.0, 305.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "id": "next-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 51.0, 279.0, 43.0, 21.0 ],
                    "text": "NEXT"
                }
            },
            {
                "box": {
                    "id": "model",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 24.0, 417.0, 430.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "example_markov_frozen.js",
                        "parameter_enable": 0
                    },
                    "text": "js example_markov_frozen.js"
                }
            },
            {
                "box": {
                    "id": "pc",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 477.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "pc-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 96.0, 470.5, 122.0, 36.0 ],
                    "text": "Outlet 1: pitch class\nDisplay only here."
                }
            },
            {
                "box": {
                    "id": "midi",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.5, 472.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 298.0, 465.5, 134.0, 36.0 ],
                    "text": "Outlet 2: MIDI note\nThis triggers the tone."
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 477.0, 175.0, 23.0 ],
                    "text": "print markov_model"
                }
            },
            {
                "box": {
                    "id": "status-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 512.0, 145.0, 36.0 ],
                    "text": "Outlet 3: status\nShown in Max Console."
                }
            },
            {
                "box": {
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 230.0, 587.0, 270.0, 23.0 ],
                    "text": "ec_markov_note_player~"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 625.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "dac-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 632.0, 85.0, 21.0 ],
                    "text": "AUDIO"
                }
            },
            {
                "box": {
                    "id": "meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 440.0, 620.0, 125.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "meter-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 440.0, 655.0, 165.0, 21.0 ],
                    "text": "Mono audio output"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "level-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 718.0, 144.0, 173.0, 36.0 ],
                    "text": "RIGHT INLET: LEVEL\nDefault 0.12; range 0.0-0.3."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level",
                    "maxclass": "flonum",
                    "maximum": 0.3,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 718.0, 199.0, 85.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "mute",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 840.0, 199.0, 45.0, 23.0 ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "restore-level",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 905.0, 199.0, 60.0, 23.0 ],
                    "text": "0.12"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "manual-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 464.0, 221.0, 36.0 ],
                    "text": "DIRECT NOTE TEST\nClick a MIDI note to hear one tone."
                }
            },
            {
                "box": {
                    "id": "test-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 700.0, 524.0, 55.0, 23.0 ],
                    "text": "60"
                }
            },
            {
                "box": {
                    "id": "test-64",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 775.0, 524.0, 55.0, 23.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "test-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 850.0, 524.0, 55.0, 23.0 ],
                    "text": "67"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "defaults",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 608.0, 207.0, 108.0 ],
                    "text": "SAME SOUND AS THE BUILDER\nSine oscillator, one voice.\nEnvelope: 250 ms total.\nPitch smoothing: 10 ms.\nLevel smoothing: 50 ms.\nEach note retriggers the envelope.\nNo creation arguments required."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "integration",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 27.0, 681.0, 611.0, 79.0 ],
                    "text": "IN YOUR MASTER PATCH\nPut ec_markov_note_player~.maxpat beside the master patch and create [ec_markov_note_player~].\nConnect the js model's SECOND outlet to the LEFT inlet. Connect its signal outlet to your audio routing.\nThe right inlet is optional: level starts at 0.12. You can also use the builder engine's second outlet.\nFor pitch-class output instead, insert [+ 60] before the player for octave 4. Use one note source at a time."
                }
            },
            {
                "box": {
                    "id": "load-rate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 67.0, 100.0, 105.0, 23.0 ],
                    "text": "loadmess 650"
                }
            },
            {
                "box": {
                    "id": "load-level",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 718.0, 112.0, 110.0, 23.0 ],
                    "text": "loadmess 0.12"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "defer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "dump", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 1 ],
                    "midpoints": [ 727.5, 240.0, 1035.5078125, 240.0, 1035.5078125, 570.328125, 490.5, 570.328125 ],
                    "source": [ "level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "load-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rate", 0 ],
                    "source": [ "load-rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "defer", 0 ],
                    "source": [ "metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi", 0 ],
                    "source": [ "model", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc", 0 ],
                    "source": [ "model", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "model", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "mute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "next", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 1,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 2,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter", 0 ],
                    "order": 0,
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 1 ],
                    "source": [ "rate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "level", 0 ],
                    "source": [ "restore-level", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro", 0 ],
                    "source": [ "run", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "seed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "model", 0 ],
                    "source": [ "status", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 709.5, 555.03515625, 645.0, 555.03515625, 645.0, 576.58984375, 205.0, 576.58984375, 205.0, 522.0, 239.5, 522.0 ],
                    "source": [ "test-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 784.5, 559.30078125, 645.0, 559.30078125, 645.0, 576.59375, 205.0, 576.59375, 205.0, 522.0, 239.5, 522.0 ],
                    "source": [ "test-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "midpoints": [ 859.5, 564.6015625, 645.0, 564.6015625, 645.0, 576.53515625, 205.0, 576.53515625, 205.0, 522.0, 239.5, 522.0 ],
                    "source": [ "test-67", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}