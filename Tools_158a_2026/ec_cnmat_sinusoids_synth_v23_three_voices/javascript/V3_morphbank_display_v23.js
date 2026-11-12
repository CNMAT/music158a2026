/* MorphBank display only. No sound state, captures, or MIDI messages.
   Inlets: 0 occupancy flags A-X; 1 target LETTER SECONDS; 2 color variant 0/1. */
autowatch=1;inlets=3;outlets=0;
var letters="ABCDEFGHIJKLMNOPQRSTUVWX",filled=[],active="",variant=1;
var palette=[[0.96,0.79,0.76],[0.97,0.87,0.69],[0.91,0.92,0.70],
             [0.74,0.91,0.81],[0.73,0.85,0.96],[0.86,0.79,0.95]];
function paint(){
 for(var i=0;i<letters.length;i++){
  var o=this.patcher.getnamed("V3_v23_morph_to_"+letters.charAt(i));if(!o||!o.valid)continue;
  var c=variant?palette[i%6].slice(0):[0.81,0.90,0.93];
  if(variant){var tint=Math.floor(i/6)*0.025;for(var j=0;j<3;j++)c[j]=Math.min(1,c[j]+tint);}
  if(!filled[i])for(var k=0;k<3;k++)c[k]=0.65*c[k]+0.35*0.90;
  if(active===letters.charAt(i))for(var n=0;n<3;n++)c[n]*=0.82;
  c.push(1);o.message("bgfillcolor_type","color");
  o.message.apply(o,["bgfillcolor_color"].concat(c));o.message.apply(o,["bgcolor"].concat(c));
  o.message("textcolor",0.06,0.07,0.09,1);
 }
}
function list(){
 var a=arrayfromargs(arguments);
 if(inlet===0){filled=a.slice(0,24);if(active&& !filled[letters.indexOf(active)])active="";}
 else if(inlet===1){active=String(a[0]).toUpperCase();}
 paint.call(this);
}
function msg_int(n){if(inlet===2){variant=Number(n)===0?0:1;paint.call(this);}}
function anything(){if(inlet===1){active=String(messagename).toUpperCase();paint.call(this);}}
function loadbang(){paint.call(this);}
paint.local=1;
