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
        "rect": [ 470.0, 211.0, 900.0, 670.0 ],
        "default_fontsize": 13.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 329.0, 274.0, 21.0 ],
                    "text": "see the full \"model\" responsible for the pattern"
                }
            },
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
                            "revision": 0,
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
                    "patching_rect": [ 254.0, 91.0, 495.0, 23.0 ],
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
                            "revision": 0,
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
                    "patching_rect": [ 36.0, 91.0, 194.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontname": "Arial Bold",
                        "fontsize": 14.0
                    },
                    "text": "p WHAT IS A MARKOV CHAIN?"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 229.0, 610.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 229.0, 566.0, 155.0, 23.0 ],
                    "text": "ec_markov_note_player~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 19.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 18.0, 315.0, 28.0 ],
                    "text": ".js first-order markov chain player"
                }
            },
            {
                "box": {
                    "id": "intro",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 26.0, 48.0, 605.0, 36.0 ],
                    "text": "This example uses a supplied demonstration model (PitchClasses  0, 4, 7).\nReplace the filename in the js object with YOUR exported .js file. Keep that file beside the master patch."
                }
            },
            {
                "box": {
                    "id": "clock",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 135.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "clock-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 135.0, 155.0, 21.0 ],
                    "text": "Run example clock"
                }
            },
            {
                "box": {
                    "id": "metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 24.0, 183.0, 95.0, 23.0 ],
                    "text": "metro 400"
                }
            },
            {
                "box": {
                    "id": "manual",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 48.0, 220.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "id": "manual-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 221.0, 88.0, 21.0 ],
                    "text": "One selection"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 141.0, 60.0, 23.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "reset-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 141.0, 350.0, 21.0 ],
                    "text": "Restore exported start, seed and octave"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 181.0, 80.0, 23.0 ],
                    "text": "start 4"
                }
            },
            {
                "box": {
                    "id": "start-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 358.0, 181.0, 320.0, 21.0 ],
                    "text": "Silent start from active pitch class 4"
                }
            },
            {
                "box": {
                    "id": "seed",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 221.0, 85.0, 23.0 ],
                    "text": "seed 123"
                }
            },
            {
                "box": {
                    "id": "seed-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 358.0, 221.0, 320.0, 21.0 ],
                    "text": "Set a repeatable random generator"
                }
            },
            {
                "box": {
                    "id": "octave",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 261.0, 85.0, 23.0 ],
                    "text": "octave 4"
                }
            },
            {
                "box": {
                    "id": "octave-desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 358.0, 261.0, 320.0, 21.0 ],
                    "text": "MIDI register; leaves pitch classes fixed"
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 301.0, 65.0, 23.0 ],
                    "text": "status"
                }
            },
            {
                "box": {
                    "id": "dump",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.0, 328.0, 65.0, 23.0 ],
                    "text": "dump"
                }
            },
            {
                "box": {
                    "id": "player",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 24.0, 503.0, 430.0, 23.0 ],
                    "saved_object_attributes": {
                        "filename": "markov-min7chord.js",
                        "parameter_enable": 0
                    },
                    "text": "js markov-min7chord.js"
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
                    "patching_rect": [ 24.0, 542.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "pc-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 574.0, 165.0, 36.0 ],
                    "text": "LEFT: pitch class 0..11\nConnect to your pitch logic."
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
                    "patching_rect": [ 229.0, 534.0, 65.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "midi-label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 527.0, 169.0, 36.0 ],
                    "text": "MIDDLE: MIDI note number\nConnect to your instrument."
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 530.0, 549.0, 123.0, 23.0 ],
                    "text": "print frozen_markov"
                }
            },
            {
                "box": {
                    "id": "diagnostics",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 614.5, 209.0, 36.0 ],
                    "text": "RIGHT: step / empty / status / error\nInspect with print or route."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "bottom",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 430.0, 649.0, 65.0 ],
                    "text": "The js object is the reusable MAX module/object. Copy it into a master patch.\nOne bang selects one successor. The starting state itself makes no sound.\nZero-weight rows produce no note. Transitions remain probabilistic unless each row has one destination.\nThis patch displays note numbers; your master patch supplies its own instrument and note duration."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "metro", 0 ],
                    "source": [ "clock", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "dump", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "manual", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "midi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "octave", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi", 0 ],
                    "source": [ "player", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pc", 0 ],
                    "source": [ "player", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "source": [ "player", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "seed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "player", 0 ],
                    "source": [ "status", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}