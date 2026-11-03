/* Read-only response monitor: ONE response of the four parallel filter outputs, including fader levels.
   ES5 / legacy jsui. This file never emits controls, coefficients or audio.
   Exact center samples and extra samples around narrow bands prevent missed peaks. */
autowatch=1;inlets=1;outlets=0;
mgraphics.init();mgraphics.relative_coords=0;mgraphics.autofill=0;
var sampleRate=44100,maxHz=13000,topDB=36,lowDB=-60,selected=0,hasFrame=false;
var colors=[[.32,.77,.75,1],[.98,.68,.38,1],[.65,.65,.97,1],[.88,.54,.70,1]];
var names=["Peak","LP","BP","Ultra","HP","Res","Notch"];
var nativeCoeffs=null;
var bands=[{on:0,type:0,f:180,g:6,q:6},{on:0,type:0,f:700,g:6,q:6},
           {on:0,type:0,f:2400,g:6,q:6},{on:0,type:0,f:7000,g:6,q:6}];
function clamp(v,a,b){return Math.min(b,Math.max(a,v));}
function frame(){
 var a=arrayfromargs(arguments);if(a.length!==32)return;
 for(var k=0;k<a.length;k++){a[k]=Number(a[k]);if(!isFinite(a[k]))return;}
 selected=clamp(Math.round(a[0])-1,0,3);sampleRate=Math.max(8000,a[1]);
 maxHz=clamp(a[2],61,Math.min(13000,sampleRate*.45));topDB=Math.max(36,a[3]);
 for(var i=0;i<4;i++){var p=4+i*7;bands[i]={on:a[p]?1:0,type:clamp(Math.round(a[p+1]),0,6),
  f:clamp(a[p+2],60,maxHz),g:clamp(a[p+3],-24,24),q:clamp(a[p+4],.5,200),wet:clamp(a[p+5],0,1),level:clamp(a[p+6],-24,12)};}
 hasFrame=true;mgraphics.redraw();
}
function bang(){mgraphics.redraw();}
function onresize(){mgraphics.redraw();}onresize.local=1;
// Receive the four native filtergraph~ coefficient groups. This keeps the
// display consistent with filtercoeff~ for all seven filter types, including
// Max's resonant mode, without an approximate duplicate filter design.
function coeffs(){
 var a=arrayfromargs(arguments);if(a.length!==20)return;
 for(var k=0;k<a.length;k++){a[k]=Number(a[k]);if(!isFinite(a[k]))return;}
 nativeCoeffs=[];for(var i=0;i<4;i++)nativeCoeffs.push(a.slice(i*5,i*5+5));
 mgraphics.redraw();
}
function responseComplex(c,f){
 var w=2*Math.PI*f/sampleRate,x=Math.cos(w),y=-Math.sin(w),x2=2*x*x-1,y2=2*x*y;
 var nr=c[0]+c[1]*x+c[2]*x2,ni=c[1]*y+c[2]*y2,dr=1+c[3]*x+c[4]*x2,di=c[3]*y+c[4]*y2;
 var den=Math.max(1e-30,dr*dr+di*di);return [(nr*dr+ni*di)/den,(ni*dr-nr*di)/den];
}
function responseDB(c,f){var h=responseComplex(c,f);return 10*Math.log(Math.max(1e-30,h[0]*h[0]+h[1]*h[1]))/Math.LN10;}
function combinedDB(f,cs){
 var re=0,im=0;
 for(var i=0;i<4;i++){
  var b=bands[i],h=responseComplex(cs[i],f),w=(b.wet||0)*Math.pow(10,(b.level||0)/20);
  re+=w*h[0];im+=w*h[1];
 }
 return 10*Math.log(Math.max(1e-30,re*re+im*im))/Math.LN10;
}

function frequencies(width){
 var out=[],span=Math.log(maxHz/60),count=Math.max(64,Math.ceil(width)),i,j;
 for(i=0;i<=count;i++)out.push(60*Math.exp(span*i/count));
 for(i=0;i<4;i++)if(bands[i].on||bands[i].wet>0.001){
  var b=bands[i],bw=sampleRate*Math.sin(2*Math.PI*b.f/sampleRate)/(2*Math.PI*b.q);
  out.push(b.f);
  for(j=-32;j<=32;j++)out.push(clamp(b.f+bw*j/8,60,maxHz));
 }
 out.sort(function(a,b){return a-b;});return out;
}
function traces(width){
 var f=frequencies(width),sum=[],cs=[],i,j,total,peak=-999;
 for(i=0;i<4;i++)cs.push(nativeCoeffs?nativeCoeffs[i]:[1,0,0,0,0]);
 for(j=0;j<f.length;j++){
  total=combinedDB(f[j],cs);
  sum.push(total);peak=Math.max(peak,total);
 }
 return {f:f,sum:sum,peak:peak,coeff:cs};
}
function color(c,a){mgraphics.set_source_rgba(c[0],c[1],c[2],typeof a==='number'?a:c[3]);}
function label(s,x,y,c,size){color(c);mgraphics.select_font_face("Arial");mgraphics.set_font_size(size||10);mgraphics.move_to(x,y);mgraphics.show_text(s);}
function segment(x1,y1,x2,y2,c,width){color(c);mgraphics.set_line_width(width);mgraphics.move_to(x1,y1);mgraphics.line_to(x2,y2);mgraphics.stroke();}
function paint(){
 var w=box.rect[2]-box.rect[0],h=box.rect[3]-box.rect[1],left=34,right=w-10,top=23,bottom=h-19;
 var width=Math.max(1,right-left),height=Math.max(1,bottom-top),span=Math.log(maxHz/60),i,j;
 function X(f){return left+Math.log(f/60)/span*width;}
 function Y(db){return top+(topDB-clamp(db,lowDB,topDB))/(topDB-lowDB)*height;}
 color([.04,.055,.075,1]);mgraphics.rectangle(0,0,w,h);mgraphics.fill();
 var ink=[.65,.71,.77,1],grid=[.18,.22,.27,1],white=[.93,.95,.97,1];
 for(i=0;i<4;i++){
  var b=bands[i],s=(i+1)+" "+(b.on?names[b.type]+" "+Math.round(b.f)+" Hz / Q"+(Math.round(b.q*10)/10):"OFF");
  label(s,8+i*(w-175)/4,13,b.on?colors[i]:ink,10);
 }
 label("SUM BEFORE GLOBAL",w-151,13,white,10);
 var t=hasFrame&&nativeCoeffs?traces(width):null;
 if(t)topDB=Math.max(topDB,Math.ceil((t.peak+6)/12)*12);
 var levels=[topDB,0,-30,lowDB];
 for(i=0;i<levels.length;i++){var yy=Y(levels[i]);segment(left,yy,right,yy,grid,levels[i]===0?1.2:.7);label(String(levels[i]),2,clamp(yy+3,top+8,bottom),ink,9);}
 var ticks=[60,100,200,500,1000,2000,5000,10000,13000];
 for(i=0;i<ticks.length;i++)if(ticks[i]<=maxHz){var xx=X(ticks[i]);segment(xx,top,xx,bottom,grid,.5);label(ticks[i]>=1000?(ticks[i]/1000)+"k":String(ticks[i]),clamp(xx-8,left,right-23),h-4,ink,9);}
 if(!hasFrame||!nativeCoeffs){label("Waiting for filter parameters...",left+10,top+18,ink,11);return;}
 function path(values,c,lineWidth){
  color(c);mgraphics.set_line_width(lineWidth);mgraphics.move_to(X(t.f[0]),Y(values[0]));
  for(var n=1;n<t.f.length;n++)mgraphics.line_to(X(t.f[n]),Y(values[n]));mgraphics.stroke();
 }
 // A single combined curve avoids duplicate individual/total outlines.
 path(t.sum,[.72,.89,.89,1],1.8);
 for(i=0;i<4;i++)if(bands[i].on){
  var cx=X(bands[i].f),cy=Y(combinedDB(bands[i].f,t.coeff));
  segment(cx,top,cx,bottom,[colors[i][0],colors[i][1],colors[i][2],.22],.6);
  color(colors[i]);mgraphics.ellipse(cx-2.5,cy-2.5,5,5);mgraphics.fill();
 }
}
// These helpers are deliberately not exposed as incoming Max messages.
responseDB.local=1;responseComplex.local=1;combinedDB.local=1;frequencies.local=1;traces.local=1;
