/* Optional direct adapter to CNMAT one_string_ped / reso-string~_ped.
   Four outlets: pluck amplitude, length fraction, Hz, midinote float.
   Emits tuning first, pluck last. No global OSC sends or graphics feedback.
   Connect outlet 1 to one_string_ped RIGHT inlet, outlet 0 to LEFT inlet.
   Configure that voice with the same /rootHz and /octave 0 through its OSC path,
   OR use outlet 3 directly into reso-string~_ped tuning inlet and outlet 0
   (scaled by 127) into its excitation inlet. See help patch integration tab.
   Defaults match one_string_ped's internal * 262., octave 0, A4=440. */
inlets=1;outlets=4;
var rootFrequency=262,referenceFrequency=440,pluckAmplitude=1;
setinletassist(0,"Midicents; rootHz <Hz>, reference <A4 Hz>, amplitude <0..1>");
setoutletassist(0,"Pluck amplitude, emitted last (one_string_ped left inlet)");
setoutletassist(1,"Length fraction = rootHz / targetHz (one_string_ped right inlet)");
setoutletassist(2,"Target frequency in Hz");
setoutletassist(3,"Fractional MIDI for reso-string~_ped, calibrated to Max A440 ftom convention");
function msg_float(mc){
    if(typeof mc!=="number"||!isFinite(mc)){post("ec_midicents_to_string: invalid pitch\n");return;}
    var hz=referenceFrequency*Math.pow(2,(mc-6900)/1200);
    if(!isFinite(hz)||hz<=0){post("ec_midicents_to_string: invalid frequency\n");return;}
    outlet(3,69+12*Math.log(hz/440)/Math.LN2);
    outlet(2,hz);outlet(1,rootFrequency/hz);outlet(0,pluckAmplitude);
}
function msg_int(x){msg_float(x);}
function rootHz(x){if(typeof x==="number"&&isFinite(x)&&x>0)rootFrequency=x;}
function reference(x){if(typeof x==="number"&&isFinite(x)&&x>0)referenceFrequency=x;}
function amplitude(x){if(typeof x==="number"&&isFinite(x)&&x>=0&&x<=1)pluckAmplitude=x;}
