var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids_";
/*
    ec_cnmat_sinusoids_shapes.js
    Resamples the normalized 48-point shape templates to 2-256 values.

    inlet 0: component count (2-256), silent size update; bang outputs shapes
    inlet 1: inharmonicity shape menu index (0 = flat zero, 1 = all on full, 2-24 = shape)
    inlet 2: amplitude shape menu index (0 = flat zero, 1 = all on full, 2-24 = shape)
    inlet 3: harmonic-anchor menu index (0 = flat zero, 1 = all on full, 2-24 = shape)
    outlet 0: resampled inharmonicity list
    outlet 1: resampled amplitude list
    outlet 2: resampled harmonic-anchor amplitude list
*/

autowatch = 1;
inlets = 4;
outlets = 3;

var componentCount = 32;
var inharmonicityShape = 2;
var amplitudeShape = 2;
var harmonicShape = -1;
var templates = [[0.0,0.021277,0.042553,0.06383,0.085106,0.106383,0.12766,0.148936,0.170213,0.191489,0.212766,0.234043,0.255319,0.276596,0.297872,0.319149,0.340426,0.361702,0.382979,0.404255,0.425532,0.446809,0.468085,0.489362,0.510638,0.531915,0.553191,0.574468,0.595745,0.617021,0.638298,0.659574,0.680851,0.702128,0.723404,0.744681,0.765957,0.787234,0.808511,0.829787,0.851064,0.87234,0.893617,0.914894,0.93617,0.957447,0.978723,1.0],[0.0,0.001657,0.003462,0.005427,0.007566,0.009896,0.012432,0.015194,0.018201,0.021476,0.025041,0.028923,0.033149,0.037751,0.042762,0.048218,0.054159,0.060628,0.067671,0.07534,0.08369,0.092781,0.102681,0.11346,0.125196,0.137975,0.151889,0.167039,0.183535,0.201496,0.221053,0.242347,0.265533,0.290779,0.318267,0.348197,0.380785,0.416269,0.454905,0.496973,0.542778,0.592652,0.646956,0.706084,0.770465,0.840565,0.916892,1.0],[1.0,0.978723,0.957447,0.93617,0.914894,0.893617,0.87234,0.851064,0.829787,0.808511,0.787234,0.765957,0.744681,0.723404,0.702128,0.680851,0.659574,0.638298,0.617021,0.595745,0.574468,0.553191,0.531915,0.510638,0.489362,0.468085,0.446809,0.425532,0.404255,0.382979,0.361702,0.340426,0.319149,0.297872,0.276596,0.255319,0.234043,0.212766,0.191489,0.170213,0.148936,0.12766,0.106383,0.085106,0.06383,0.042553,0.021277,0.0],[1.0,0.916892,0.840565,0.770465,0.706084,0.646956,0.592652,0.542778,0.496973,0.454905,0.416269,0.380785,0.348197,0.318267,0.290779,0.265533,0.242347,0.221053,0.201496,0.183535,0.167039,0.151889,0.137975,0.125196,0.11346,0.102681,0.092781,0.08369,0.07534,0.067671,0.060628,0.054159,0.048218,0.042762,0.037751,0.033149,0.028923,0.025041,0.021476,0.018201,0.015194,0.012432,0.009896,0.007566,0.005427,0.003462,0.001657,0.0],[0.0,0.042553,0.085106,0.12766,0.170213,0.212766,0.255319,0.297872,0.340426,0.382979,0.425532,0.468085,0.510638,0.553191,0.595745,0.638298,0.680851,0.723404,0.765957,0.808511,0.851064,0.893617,0.93617,0.978723,0.978723,0.93617,0.893617,0.851064,0.808511,0.765957,0.723404,0.680851,0.638298,0.595745,0.553191,0.510638,0.468085,0.425532,0.382979,0.340426,0.297872,0.255319,0.212766,0.170213,0.12766,0.085106,0.042553,0.0],[0.0,0.003544,0.007761,0.012779,0.018751,0.025857,0.034312,0.044374,0.056347,0.070594,0.087548,0.107721,0.131727,0.160293,0.194285,0.234734,0.282867,0.340142,0.408296,0.489397,0.585903,0.700741,0.837392,1.0,1.0,0.837392,0.700741,0.585903,0.489397,0.408296,0.340142,0.282867,0.234734,0.194285,0.160293,0.131727,0.107721,0.087548,0.070594,0.056347,0.044374,0.034312,0.025857,0.018751,0.012779,0.007761,0.003544,0.0],[0.0,0.00384,0.009304,0.016928,0.027356,0.041335,0.059694,0.083312,0.113058,0.149724,0.193931,0.24603,0.305999,0.373347,0.447044,0.525485,0.606502,0.687429,0.765232,0.836679,0.898565,0.947937,0.982338,1.0,1.0,0.982338,0.947937,0.898565,0.836679,0.765232,0.687429,0.606502,0.525485,0.447044,0.373347,0.305999,0.24603,0.193931,0.149724,0.113058,0.083312,0.059694,0.041335,0.027356,0.016928,0.009304,0.00384,0.0],[0.0,1e-06,8e-06,3.7e-05,0.000124,0.000347,0.000871,0.002003,0.004298,0.008674,0.016562,0.030024,0.051796,0.085169,0.133621,0.200171,0.286471,0.391805,0.512251,0.64032,0.765374,0.87488,0.956428,1.0,1.0,0.956428,0.87488,0.765374,0.64032,0.512251,0.391805,0.286471,0.200171,0.133621,0.085169,0.051796,0.030024,0.016562,0.008674,0.004298,0.002003,0.000871,0.000347,0.000124,3.7e-05,8e-06,1e-06,0.0],[1.0,0.99616,0.990696,0.983072,0.972644,0.958665,0.940306,0.916688,0.886942,0.850276,0.806069,0.75397,0.694001,0.626653,0.552956,0.474515,0.393498,0.312571,0.234768,0.163321,0.101435,0.052063,0.017662,0.0,0.0,0.017662,0.052063,0.101435,0.163321,0.234768,0.312571,0.393498,0.474515,0.552956,0.626653,0.694001,0.75397,0.806069,0.850276,0.886942,0.916688,0.940306,0.958665,0.972644,0.983072,0.990696,0.99616,1.0],[1.0,0.999999,0.999992,0.999963,0.999876,0.999653,0.999129,0.997997,0.995702,0.991326,0.983438,0.969976,0.948204,0.914831,0.866379,0.799829,0.713529,0.608195,0.487749,0.35968,0.234626,0.12512,0.043572,0.0,0.0,0.043572,0.12512,0.234626,0.35968,0.487749,0.608195,0.713529,0.799829,0.866379,0.914831,0.948204,0.969976,0.983438,0.991326,0.995702,0.997997,0.999129,0.999653,0.999876,0.999963,0.999992,0.999999,1.0],[0.0,0.020055,0.050435,0.094286,0.154508,0.233047,0.330056,0.443115,0.566743,0.69246,0.809525,0.90636,0.9724,1.0,0.985911,0.931958,0.844743,0.734461,0.613188,0.493074,0.384866,0.297035,0.235518,0.203925,0.203925,0.235518,0.297035,0.384866,0.493074,0.613188,0.734461,0.844743,0.931958,0.985911,1.0,0.9724,0.90636,0.809525,0.69246,0.566743,0.443115,0.330056,0.233047,0.154508,0.094286,0.050435,0.020055,0.0],[0.0,5.7e-05,0.000571,0.00273,0.009384,0.026219,0.062585,0.130705,0.241805,0.399013,0.589625,0.782081,0.932422,1.0,0.965149,0.838476,0.655861,0.462298,0.294431,0.170718,0.091891,0.048086,0.026919,0.018779,0.018779,0.026919,0.048086,0.091891,0.170718,0.294431,0.462298,0.655861,0.838476,0.965149,1.0,0.932422,0.782081,0.589625,0.399013,0.241805,0.130705,0.062585,0.026219,0.009384,0.00273,0.000571,5.7e-05,0.0],[1.0,0.979945,0.949565,0.905714,0.845492,0.766953,0.669944,0.556885,0.433257,0.30754,0.190475,0.09364,0.0276,0.0,0.014089,0.068042,0.155257,0.265539,0.386812,0.506926,0.615134,0.702965,0.764482,0.796075,0.796075,0.764482,0.702965,0.615134,0.506926,0.386812,0.265539,0.155257,0.068042,0.014089,0.0,0.0276,0.09364,0.190475,0.30754,0.433257,0.556885,0.669944,0.766953,0.845492,0.905714,0.949565,0.979945,1.0],[1.0,0.999943,0.999429,0.99727,0.990616,0.973781,0.937415,0.869295,0.758195,0.600987,0.410375,0.217919,0.067578,0.0,0.034851,0.161524,0.344139,0.537702,0.705569,0.829282,0.908109,0.951914,0.973081,0.981221,0.981221,0.973081,0.951914,0.908109,0.829282,0.705569,0.537702,0.344139,0.161524,0.034851,0.0,0.067578,0.217919,0.410375,0.600987,0.758195,0.869295,0.937415,0.973781,0.990616,0.99727,0.999429,0.999943,1.0],[0.0,0.068636,0.172626,0.314625,0.487685,0.672741,0.840424,0.958077,1.0,0.956614,0.838159,0.671113,0.489312,0.324258,0.198838,0.126089,0.111549,0.15613,0.256827,0.404683,0.581768,0.760331,0.90661,0.989258,0.989258,0.90661,0.760331,0.581768,0.404683,0.256827,0.15613,0.111549,0.126089,0.198838,0.324258,0.489312,0.671113,0.838159,0.956614,1.0,0.958077,0.840424,0.672741,0.487685,0.314625,0.172626,0.068636,0.0],[0.0,0.001234,0.012381,0.055524,0.166092,0.37121,0.647509,0.898465,1.0,0.895039,0.643156,0.368968,0.167481,0.059872,0.01763,0.005645,0.004156,0.009632,0.033427,0.104181,0.258151,0.504088,0.782621,0.973361,0.973361,0.782621,0.504088,0.258151,0.104181,0.033427,0.009632,0.004156,0.005645,0.01763,0.059872,0.167481,0.368968,0.643156,0.895039,1.0,0.898465,0.647509,0.37121,0.166092,0.055524,0.012381,0.001234,0.0],[1.0,0.931364,0.827374,0.685375,0.512315,0.327259,0.159576,0.041923,0.0,0.043386,0.161841,0.328887,0.510688,0.675742,0.801162,0.873911,0.888451,0.84387,0.743173,0.595317,0.418232,0.239669,0.09339,0.010742,0.010742,0.09339,0.239669,0.418232,0.595317,0.743173,0.84387,0.888451,0.873911,0.801162,0.675742,0.510688,0.328887,0.161841,0.043386,0.0,0.041923,0.159576,0.327259,0.512315,0.685375,0.827374,0.931364,1.0],[1.0,0.998766,0.987619,0.944476,0.833908,0.62879,0.352491,0.101535,0.0,0.104961,0.356844,0.631032,0.832519,0.940128,0.98237,0.994355,0.995844,0.990368,0.966573,0.895819,0.741849,0.495912,0.217379,0.026639,0.026639,0.217379,0.495912,0.741849,0.895819,0.966573,0.990368,0.995844,0.994355,0.98237,0.940128,0.832519,0.631032,0.356844,0.104961,0.0,0.101535,0.352491,0.62879,0.833908,0.944476,0.987619,0.998766,1.0],[0.096133,0.284366,0.532159,0.786056,0.964102,0.997023,0.871173,0.637723,0.380293,0.16969,0.040715,0.0,0.046557,0.181381,0.396603,0.654977,0.883756,1.0,0.956242,0.770731,0.515534,0.273192,0.098522,0.010821,0.010821,0.098522,0.273192,0.515534,0.770731,0.956242,1.0,0.883756,0.654977,0.396603,0.181381,0.046557,0.0,0.040715,0.16969,0.380293,0.637723,0.871173,0.997023,0.964102,0.786056,0.532159,0.284366,0.096133],[0.002865,0.043122,0.206587,0.547815,0.912657,0.992574,0.708371,0.324773,0.089186,0.011862,0.000334,0.0,0.000468,0.014011,0.099058,0.347188,0.734228,1.0,0.894169,0.521503,0.190829,0.039009,0.003047,1.2e-05,1.2e-05,0.003047,0.039009,0.190829,0.521503,0.894169,1.0,0.734228,0.347188,0.099058,0.014011,0.000468,0.0,0.000334,0.011862,0.089186,0.324773,0.708371,0.992574,0.912657,0.547815,0.206587,0.043122,0.002865],[0.903867,0.715634,0.467841,0.213944,0.035898,0.002977,0.128827,0.362277,0.619707,0.83031,0.959285,1.0,0.953443,0.818619,0.603397,0.345023,0.116244,0.0,0.043758,0.229269,0.484466,0.726808,0.901478,0.989179,0.989179,0.901478,0.726808,0.484466,0.229269,0.043758,0.0,0.116244,0.345023,0.603397,0.818619,0.953443,1.0,0.959285,0.83031,0.619707,0.362277,0.128827,0.002977,0.035898,0.213944,0.467841,0.715634,0.903867],[0.997135,0.956878,0.793413,0.452185,0.087343,0.007426,0.291629,0.675227,0.910814,0.988138,0.999666,1.0,0.999532,0.985989,0.900942,0.652812,0.265772,0.0,0.105831,0.478497,0.809171,0.960991,0.996953,0.999988,0.999988,0.996953,0.960991,0.809171,0.478497,0.105831,0.0,0.265772,0.652812,0.900942,0.985989,0.999532,1.0,0.999666,0.988138,0.910814,0.675227,0.291629,0.007426,0.087343,0.452185,0.793413,0.956878,0.997135],[0.684252,0.995491,0.934361,0.10241,0.418453,0.770951,0.329513,0.632919,0.640483,0.06445,0.113825,0.557088,0.046934,0.081483,0.603648,0.713657,0.532517,0.032737,0.631007,0.055018,0.657812,0.087056,0.315027,0.794472,0.115627,0.879021,0.083101,0.943951,0.140064,0.592541,0.773648,0.878784,0.702661,0.522066,0.325899,0.553865,0.892673,0.310473,0.257807,0.693359,0.882688,0.514288,0.704867,0.156758,0.680873,0.357273,0.740705,0.453477]];

function clipInteger(value, low, high) {
    return Math.max(low, Math.min(high, Math.round(Number(value))));
}

function rounded(value) {
    return Math.round(value * 1000000.0) / 1000000.0;
}

function resample(shapeIndex) {
    var source = templates[clipInteger(shapeIndex, 0, templates.length - 1)];
    var result = [];
    var last = source.length - 1;
    var i;
    for (i = 0; i < componentCount; i++) {
        var position = (i * last) / (componentCount - 1);
        var lower = Math.floor(position);
        var upper = Math.min(last, lower + 1);
        var fraction = position - lower;
        result[i] = rounded(source[lower] + (source[upper] - source[lower]) * fraction);
    }
    return result;
}

function zeroList() {
    var result = [];
    var i;
    for (i = 0; i < componentCount; i++) {
        result[i] = 0.0;
    }
    return result;
}

function fullList() {
    var result = [];
    var i;
    for (i = 0; i < componentCount; i++) {
        result[i] = 1.0;
    }
    return result;
}

function harmonicList() { return shapeList(harmonicShape); }

function shapeList(index) {
    if (index === -2) return fullList();
    return index < 0 ? zeroList() : resample(index);
}

function menuToShape(value) {
    var menuIndex = clipInteger(value, 0, templates.length + 1);
    if (menuIndex === 0) return -1;
    if (menuIndex === 1) return -2;
    return menuIndex - 2;
}

function outputAll() {
    outlet(0, shapeList(inharmonicityShape));
    outlet(1, shapeList(amplitudeShape));
    outlet(2, harmonicList());
}

function msg_int(value) {
    if (inlet === 0) {
        componentCount = clipInteger(value, 2, 256);
        // Count changes do not regenerate shapes or overwrite partial memory.
    } else if (inlet === 1) {
        inharmonicityShape = menuToShape(value);
        outlet(0, shapeList(inharmonicityShape));
    } else if (inlet === 2) {
        amplitudeShape = menuToShape(value);
        outlet(1, shapeList(amplitudeShape));
    } else if (inlet === 3) {
        harmonicShape = menuToShape(value);
        outlet(2, harmonicList());
    }
}

function msg_float(value) {
    msg_int(value);
}

function bang() {
    outputAll();
}

function loadbang() {
    outputAll();
}

// Ignore non-data selectors used by Max UI objects during restoration.
function clear() {
}

function append() {
}

function set() {
}

function anything() {
}

// Private preset state helpers. Called locally by the public ecpreset message.
function ec_array(x){return Object.prototype.toString.call(x)==="[object Array]";}
function ec_copy(x){return ec_dataCopy(x);}
function ec_shift(x,n){if(ec_array(x)){for(var i=0;i<x.length;i++)x[i]=ec_shift(x[i],n);return x;}return typeof x==="number"?x+n:x;}
function ec_validTree(x,depth){
 if(depth>12)return false;
 if(x===null||typeof x==="boolean"||typeof x==="string")return true;
 if(typeof x==="number")return isFinite(x)&&Math.abs(x)<=1e16;
 if(ec_array(x)){if(x.length>4096)return false;for(var i=0;i<x.length;i++)if(!ec_validTree(x[i],depth+1))return false;return true;}
 return false;
}
var ec_fields = ["componentCount", "inharmonicityShape", "amplitudeShape", "harmonicShape"];
var ec_clocks = [];
function ec_export(){var d=ec_copy({"componentCount":componentCount,"inharmonicityShape":inharmonicityShape,"amplitudeShape":amplitudeShape,"harmonicShape":harmonicShape});var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],-n);return d;}
function ec_validate(d){if(!d||ec_array(d)||Object.keys(d).length!==ec_fields.length)return false;var initial={"componentCount":componentCount,"inharmonicityShape":inharmonicityShape,"amplitudeShape":amplitudeShape,"harmonicShape":harmonicShape};for(var i=0;i<ec_fields.length;i++){var k=ec_fields[i];if(!d.hasOwnProperty(k)||!ec_validTree(d[k],0))return false;if(ec_array(initial[k])){if(!(ec_array(d[k])))return false;}else if(initial[k]!==null && typeof d[k]!==typeof initial[k])return false;}if(d.componentCount<2||d.componentCount>256)return false;return true;}
function ec_import(d){if(!ec_validate(d))throw new Error("Invalid shapes preset state");d=ec_copy(d);var n=(new Date()).getTime();for(var i=0;i<ec_clocks.length;i++)d[ec_clocks[i]]=ec_shift(d[ec_clocks[i]],n);componentCount=d.componentCount;inharmonicityShape=d.inharmonicityShape;amplitudeShape=d.amplitudeShape;harmonicShape=d.harmonicShape;}
function ec_emit(){}
ec_export.local=1;ec_validate.local=1;ec_import.local=1;ec_emit.local=1;ec_copy.local=1;ec_shift.local=1;ec_validTree.local=1;

var EC_PRESET_KIND = "shapes";

// Public Max message endpoint for this engine's private preset helpers.
function ecpreset(dictionaryName){
 var name=String(dictionaryName),prefix=EC_NS+"preset-transfer-";
 // A foreign instance receives a negative acknowledgement, never preset data.
 if(!/^.+-ec-cnmat-sinusoids_preset-transfer-[0-9]+$/.test(name))return;
 var transfer=new Dict(name),request=null;
 try{
  request=ec_wireRead(transfer,"request");
  if(request.protocol!==1||request.kind!==EC_PRESET_KIND||typeof request.sequence!=="number")throw new Error("Invalid preset request");
  if(name.indexOf(prefix)!==0)throw new Error("Preset namespace mismatch: engine="+EC_NS+" request="+name);
  var result;
  if(request.action==="ping")result=true;
  else if(request.action==="export")result=ec_export();
  else if(request.action==="validate")result=ec_validate(request.data);
  else if(request.action==="import"){ec_import(request.data);result=true;}
  else if(request.action==="emit"){ec_emit();result=true;}
  else throw new Error("Unknown preset action");
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request.sequence,kind:EC_PRESET_KIND,ok:true,data:result});
 }catch(e){
  ec_wireWrite(transfer,"response",{protocol:1,sequence:request?request.sequence:0,kind:EC_PRESET_KIND,ok:false,error:(request?request.action:"request")+" "+EC_PRESET_KIND+": "+String(e.message||e)});
 }finally{transfer.freepeer();}
}

// Private preset transport. Short ASCII-only atoms avoid quote/token conversion
// and unbounded strings at the Max Dict boundary. No runtime include is needed.
function ec_dataCopy(x,depth){
 depth=depth||0;if(depth>32)throw new Error("Preset copy nesting limit");
 if(x===null)return null;
 var t=typeof x,i,k,r;
 if(t==="string"||t==="boolean")return x;
 if(t==="number"){if(!isFinite(x))throw new Error("Non-finite preset value");return x;}
 if(Object.prototype.toString.call(x)==="[object Array]"){
  r=[];for(i=0;i<x.length;i++)r[i]=x[i]===undefined?null:ec_dataCopy(x[i],depth+1);return r;
 }
 if(t==="object"){
  r={};for(k in x)if(Object.prototype.hasOwnProperty.call(x,k)&&x[k]!==undefined){
   if(k==="__proto__"||k==="constructor"||k==="prototype")throw new Error("Unsafe preset key");
   r[k]=ec_dataCopy(x[k],depth+1);
  }return r;
 }
 throw new Error("Unsupported preset value type "+t);
}
function ec_wireEncode(s){
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c;
 for(i=0;i<s.length;i+=3){a=s.charCodeAt(i);b=s.charCodeAt(i+1);c=s.charCodeAt(i+2);r+=alphabet.charAt(a>>2)+alphabet.charAt(((a&3)<<4)|(isNaN(b)?0:b>>4))+(isNaN(b)?"=":alphabet.charAt(((b&15)<<2)|(isNaN(c)?0:c>>6)))+(isNaN(c)?"=":alphabet.charAt(c&63));}return r;
}
function ec_wireDecode(s){
 if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(s))throw new Error("Invalid Base64 chunk");
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c,d;
 for(i=0;i<s.length;i+=4){a=alphabet.indexOf(s.charAt(i));b=alphabet.indexOf(s.charAt(i+1));c=alphabet.indexOf(s.charAt(i+2));d=alphabet.indexOf(s.charAt(i+3));r+=String.fromCharCode((a<<2)|(b>>4));if(c>=0)r+=String.fromCharCode(((b&15)<<4)|(c>>2));if(d>=0)r+=String.fromCharCode(((c&3)<<6)|d);}return r;
}
function ec_wireChecksum(s){var a=1,b=0;for(var i=0;i<s.length;i++){a=(a+s.charCodeAt(i))%65521;b=(b+a)%65521;}return "h"+(((b<<16)|a)>>>0).toString(16);}
function ec_wireAtom(dict,key){
 var x=dict.get(key);
 if(Object.prototype.toString.call(x)==="[object Array]"&&x.length===1)x=x[0];
 return x;
}
function ec_wireWrite(dict,key,value){
 dict.set(key+"_ready",0);
 var raw=JSON.stringify(value);
 if(typeof raw!=="string")throw new Error(key+": JSON serialization returned no string");
 raw=raw.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});
 var coded=ec_wireEncode(raw),count=Math.ceil(coded.length/480);
 if(count<1||count>8192)throw new Error(key+": preset transfer too large");
 dict.set(key+"_format","ecb64v1");dict.set(key+"_chars",raw.length);
 dict.set(key+"_encoded",coded.length);dict.set(key+"_sum",ec_wireChecksum(raw));
 dict.set(key+"_count",count);
 for(var i=0;i<count;i++)dict.set(key+"_"+i,"p"+coded.substr(i*480,480));
 dict.set(key+"_ready",1);
}
function ec_wireRead(dict,key){
 if(Number(ec_wireAtom(dict,key+"_ready"))!==1)throw new Error(key+": transfer not complete");
 if(ec_wireAtom(dict,key+"_format")!=="ecb64v1")throw new Error(key+": unsupported transfer format");
 var count=Number(ec_wireAtom(dict,key+"_count")),length=Number(ec_wireAtom(dict,key+"_encoded"));
 var chars=Number(ec_wireAtom(dict,key+"_chars")),sum=ec_wireAtom(dict,key+"_sum");
 if(!isFinite(count)||count!==Math.floor(count)||count<1||count>8192||
    !isFinite(length)||length!==Math.floor(length)||length<4||length%4||Math.ceil(length/480)!==count||
    !isFinite(chars)||chars!==Math.floor(chars)||chars<1||chars>count*360)throw new Error(key+": invalid transfer dimensions");
 var raw="",part,i;
 for(i=0;i<count;i++){
  part=ec_wireAtom(dict,key+"_"+i);
  if(typeof part!=="string"||part.charAt(0)!=="p"||part.length!==1+Math.min(480,length-i*480))throw new Error(key+": missing or truncated chunk "+i);
  try{raw+=ec_wireDecode(part.substr(1));}catch(e){throw new Error(key+": corrupt chunk "+i+": "+String(e.message||e));}
 }
 if(raw.length!==chars||ec_wireChecksum(raw)!==sum)throw new Error(key+": transfer checksum mismatch");
 try{return JSON.parse(raw);}catch(e){throw new Error(key+": JSON decode failed after verified transfer ("+raw.length+" chars): "+String(e.message||e));}
}
ec_dataCopy.local=1;ec_wireEncode.local=1;ec_wireDecode.local=1;ec_wireChecksum.local=1;
ec_wireAtom.local=1;ec_wireWrite.local=1;ec_wireRead.local=1;
