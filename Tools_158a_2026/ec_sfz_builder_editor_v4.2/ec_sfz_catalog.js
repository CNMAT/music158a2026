/* Annotated Tutorial 02 reference. Headers are not opcodes. */
var REFERENCE=[
  {
    "category": "Headers and paths",
    "name": "<control>",
    "example": "<control>",
    "comment": "File-level settings such as default_path.",
    "detail": "Place before the instrument regions. Headers are not opcodes."
  },
  {
    "category": "Headers and paths",
    "name": "<global>",
    "example": "<global>",
    "comment": "Defaults inherited by following groups and regions.",
    "detail": ""
  },
  {
    "category": "Headers and paths",
    "name": "<group>",
    "example": "<group>",
    "comment": "Shared settings for following regions, until the next group.",
    "detail": "A new group resets the previous group settings; global defaults remain."
  },
  {
    "category": "Headers and paths",
    "name": "<region>",
    "example": "<region>",
    "comment": "Begin a playable region; inherit global and group settings.",
    "detail": "Every matching region can sound. Overlapping regions create layers."
  },
  {
    "category": "Headers and paths",
    "name": "sample",
    "example": "sample=My Sound.wav",
    "comment": "Audio file path, relative to the SFZ file.",
    "detail": "Spaces in filenames are allowed; do not add surrounding quotes."
  },
  {
    "category": "Headers and paths",
    "name": "default_path",
    "example": "default_path=samples/",
    "comment": "Prefix added to sample paths; place under <control>.",
    "detail": "Use the trailing slash. Generated folder-list paths already include subfolders."
  },
  {
    "category": "Key and pitch",
    "name": "key",
    "example": "key=60",
    "comment": "Set lokey, hikey and pitch_keycenter to the same note.",
    "detail": "MIDI 60 alone triggers this sample at its original pitch."
  },
  {
    "category": "Key and pitch",
    "name": "lokey",
    "example": "lokey=48",
    "comment": "Lowest triggering MIDI note, inclusive; normally 0-127.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "hikey",
    "example": "hikey=84",
    "comment": "Highest triggering MIDI note, inclusive; normally 0-127.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "pitch_keycenter",
    "example": "pitch_keycenter=60",
    "comment": "Root: MIDI note that plays the sample at original pitch.",
    "detail": "Root pitch does not restrict the playable key range."
  },
  {
    "category": "Key and pitch",
    "name": "pitch_keytrack",
    "example": "pitch_keytrack=100",
    "comment": "Pitch change in cents per key; 100 = normal semitones.",
    "detail": "0 disables keyboard transposition."
  },
  {
    "category": "Key and pitch",
    "name": "transpose",
    "example": "transpose=12",
    "comment": "Transpose the sample by semitones; 12 = one octave up.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "tune",
    "example": "tune=-7",
    "comment": "Fine tuning in cents; 100 cents = one semitone.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "bend_up",
    "example": "bend_up=200",
    "comment": "Pitch-wheel upward range in cents; 200 = two semitones.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "bend_down",
    "example": "bend_down=-200",
    "comment": "Pitch-wheel downward range in cents; negative values bend down.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "trigger",
    "example": "trigger=attack",
    "comment": "Choose when a region starts.",
    "detail": "attack = note-on; first = first held key; legato = overlapping key. release waits for pedal-up when sustained; release_key starts at key-up."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_mode",
    "example": "loop_mode=no_loop",
    "comment": "Choose looping and response to note-off.",
    "detail": "no_loop = play once, obey release; one_shot = ignore note-off. loop_continuous repeats through release; loop_sustain exits at release."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_start",
    "example": "loop_start=0",
    "comment": "First frame of the sample loop, counted from zero.",
    "detail": "Frames, not milliseconds. Inactive when looping is disabled."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_end",
    "example": "loop_end=47999",
    "comment": "Last frame of the loop, inclusive.",
    "detail": "Example: frames 0-47999 make a one-second loop at 48 kHz; verify your sample length."
  },
  {
    "category": "Playback and note-off",
    "name": "offset",
    "example": "offset=0",
    "comment": "Start playback at this zero-based sample-frame offset.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "end",
    "example": "end=47999",
    "comment": "Last sample frame to play, inclusive.",
    "detail": "Omit to use the whole soundfile; values must fit the sample."
  },
  {
    "category": "Playback and note-off",
    "name": "delay",
    "example": "delay=0.1",
    "comment": "Delay the start of the region by this many seconds.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "count",
    "example": "count=2",
    "comment": "Play the sample this many times; implies one_shot.",
    "detail": "Envelopes do not restart for each repetition."
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_delay",
    "example": "ampeg_delay=0",
    "comment": "Envelope delay before attack, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_attack",
    "example": "ampeg_attack=0.01",
    "comment": "Envelope rise from its starting level to peak, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_hold",
    "example": "ampeg_hold=0",
    "comment": "Time at the envelope peak before decay, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_decay",
    "example": "ampeg_decay=0.3",
    "comment": "Time from peak toward the sustain level, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_sustain",
    "example": "ampeg_sustain=70",
    "comment": "Held amplitude level, 0-100 percent; not a duration.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_release",
    "example": "ampeg_release=0.5",
    "comment": "Fade time after note release, in seconds.",
    "detail": "A finite sample may end first; one_shot ignores note-off."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "lovel",
    "example": "lovel=1",
    "comment": "Lowest triggering note-on velocity, inclusive; 1-127.",
    "detail": ""
  },
  {
    "category": "Velocity, gain and pan",
    "name": "hivel",
    "example": "hivel=63",
    "comment": "Highest triggering note-on velocity, inclusive; 1-127.",
    "detail": "Adjacent layers could use 1-63 and 64-127."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "amp_veltrack",
    "example": "amp_veltrack=100",
    "comment": "Velocity-to-amplitude amount: 100 normal, 0 fixed level.",
    "detail": "This is separate from velocity-based region selection."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "volume",
    "example": "volume=-6",
    "comment": "Gain offset in dB; 0 unchanged, negative quieter.",
    "detail": "-6 dB is about half the signal amplitude, not half perceived loudness."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "pan",
    "example": "pan=0",
    "comment": "Stereo position: -100 left, 0 center, +100 right.",
    "detail": ""
  },
  {
    "category": "Velocity, gain and pan",
    "name": "output",
    "example": "output=0",
    "comment": "Stereo pair index: 0=ch1/2, 1=ch3/4, 2=ch5/6, 3=ch7/8.",
    "detail": "Place under <region>, or under <group>/<global> for inherited routing. With this patch’s sfizz~ @outputs 8, use 0, 1, 2 or 3. Channels are 1=L1, 2=R1, 3=L2, 4=R2, 5=L3, 6=R3, 7=L4, 8=R4. @outputs counts individual audio channels; output= chooses a stereo pair starting at 0. To hear output=1, connect channels 3/4 to your listening path and replay a note. For N allocated channels, complete pair indices run from 0 through floor(N/2)-1; the documented maximum @outputs 1024 allows output=511 (channels 1023/1024). Default is output=0. Source: https://docs.cycling74.com/reference/sfizz~/"
  },
  {
    "category": "Sequences and voice groups",
    "name": "seq_length",
    "example": "seq_length=3",
    "comment": "Number of steps in a repeating round-robin sequence.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "seq_position",
    "example": "seq_position=1",
    "comment": "Step at which this region plays; steps start at 1.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "group",
    "example": "group=2",
    "comment": "Assign a voice group number for choking other voices.",
    "detail": "The group opcode is different from the <group> header."
  },
  {
    "category": "Sequences and voice groups",
    "name": "off_by",
    "example": "off_by=2",
    "comment": "Stop this voice when a new voice in group 2 starts.",
    "detail": "Put off_by on the sound to be stopped, such as an open hi-hat."
  },
  {
    "category": "Sequences and voice groups",
    "name": "off_mode",
    "example": "off_mode=fast",
    "comment": "How a choked voice ends: fast or normal envelope release.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "lorand",
    "example": "lorand=0",
    "comment": "Low random-selection boundary, inclusive, between 0 and 1.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "hirand",
    "example": "hirand=0.5",
    "comment": "High random-selection boundary, exclusive.",
    "detail": "Use 0-0.5 and 0.5-1 for two equal random zones; unlike fixed round robin."
  },
  {
    "category": "Filters and controllers",
    "name": "fil_type",
    "example": "fil_type=lpf_2p",
    "comment": "Filter type; lpf_2p is a two-pole low-pass filter.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "cutoff",
    "example": "cutoff=5000",
    "comment": "Filter cutoff frequency in Hz.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "resonance",
    "example": "resonance=3",
    "comment": "Filter resonance amount in dB; raise cautiously.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "cutoff_oncc1",
    "example": "cutoff_oncc1=2400",
    "comment": "Mod-wheel (CC1) cutoff modulation depth in cents.",
    "detail": "2400 cents spans two octaves of cutoff frequency."
  },
  {
    "category": "Filters and controllers",
    "name": "locc64",
    "example": "locc64=64",
    "comment": "Minimum CC64 value to allow a new note to trigger.",
    "detail": "64-127 is normally sustain pedal down; this selects regions, not pedal behavior."
  },
  {
    "category": "Filters and controllers",
    "name": "hicc64",
    "example": "hicc64=127",
    "comment": "Maximum CC64 value to allow a new note to trigger.",
    "detail": ""
  }
];
var CATEGORIES=["All opcodes", "Headers and paths", "Key and pitch", "Playback and note-off", "Amplitude envelope", "Velocity, gain and pan", "Sequences and voice groups", "Filters and controllers"];
