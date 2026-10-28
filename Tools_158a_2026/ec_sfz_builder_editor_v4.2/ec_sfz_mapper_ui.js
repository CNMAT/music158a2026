/* Local browser view. No network, filesystem, external dependencies, or second SFZ model. */
(function(){
'use strict';
var $=function(id){return document.getElementById(id);},canvas=$('map'),ctx=canvas.getContext('2d'),viewport=$('viewport');
var state=null,transfer=null,tab='regions',selected=0,drag=null,preview=null,busy=false,busyTimer=null;
var fields=['lokey','hikey','lovel','hivel','pitch_keycenter'],fieldBase={},cw=8,gh=300,top=24,kby=350,height=420,zoom=1;
var playing=null,heartbeat=null,rootHits=[],regionHits=[];
var fieldTimer=null,afterFields=null,activeSubmission=null,autoQueued=false,pendingSample=false;
function send(){if(window.max&&window.max.outlet)window.max.outlet.apply(window.max,arguments);}
function status(s){$('status').textContent=s;}
function clamp(v,a,b){return Math.max(a,Math.min(b,v));}
function noteName(n){return ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'][n%12]+(Math.floor(n/12)-1);}
// Candycane colors repeat every octave and follow the sample's root pitch.
var PITCH_NAMES=['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'];
function pitchClass(r){
 var root=r.pitch_keycenter;
 return Number.isFinite(root)&&Number.isInteger(root)?((root%12)+12)%12:null;
}
function pitchColor(r,part){
 var pc=pitchClass(r),hue=pc===null?0:pc*30,saturation=pc===null?0:62;
 return 'hsla('+hue+','+saturation+'%,'+(part==='edge'?48:86)+'%,'+(part==='fill'?.82:1)+')';
}
function renderPitchLegend(){
 var legend=$('pitchLegend');if(!legend)return;legend.textContent='';
 var label=document.createElement('span');label.className='pitch-legend-label';label.textContent='Root pitch class';legend.appendChild(label);
 PITCH_NAMES.forEach(function(name,pc){
  var swatch=document.createElement('span');swatch.className='pitch-swatch';swatch.textContent=name;
  swatch.style.backgroundColor=pitchColor({pitch_keycenter:pc},'solid');swatch.style.borderColor=pitchColor({pitch_keycenter:pc},'edge');
  swatch.title='Pitch class '+pc+' ('+name+'): the same sample-region color in every octave.';legend.appendChild(swatch);
 });
}
// Only labels use display IDs. Commands, selection and group values keep private IDs.
function numberOf(r){return r.displayId===undefined?r.id:r.displayId;}
function groupNumber(r){return r.groupDisplayId===undefined?r.group:r.groupDisplayId;}
function current(){return state&&state.regions.find(function(r){return r.id===selected;});}
function visible(){return state?state.regions.filter(function(r){return $('filter').value==='all'||String(r.group)===$('filter').value;}):[];}
function renderAllocation(){
 var el=$('allocation');if(!el||!state)return;
 var view=$('filter').value,gid=view==='all'?(state.groups.length?state.groups[0].id:null):Number(view);
 var group=state.groups.find(function(g){return g.id===gid;}),u=state.allocation&&state.allocation[gid];
 var label=gid===null?'New group':gid===0?'No group':'Group '+(group?numberOf(group):gid);
 if(state.blocked){el.textContent='Automatic placement is unavailable in text mode.';return;}
 if(!u)u={free:128,next:0,shared:0,invalid:false};
 el.textContent='Adding to '+label+' · '+(u.invalid?'Correct invalid key ranges':u.free+' free keys · '+(u.next===null?'Full':'Next: MIDI '+u.next))+(u.shared?' · '+u.shared+' shared keys':'');
}
function editing(){return !state||busy||!!state.blocked;}
function controls(){
 var r=current(),locked=busy&&!activeSubmission;
 ['duplicate','delete'].forEach(function(id){$(id).disabled=!state||locked||!!state.blocked||!r;});
 fields.forEach(function(k){$(k).disabled=!state||!!state.blocked||!r||!r.editable;});
 $('undo').disabled=!state||locked;
 $('addSample').disabled=!state||locked||!!state.blocked||state.scanning||!state.files.length;
 $('busy').textContent=busy?'Updating…':'';
}
function fieldDraft(){var d={};fields.forEach(function(k){if(fieldBase[k]!==undefined&&$(k).value!==fieldBase[k])d[k]=$(k).value;});return d;}
function hasFieldDraft(){return Object.keys(fieldDraft()).length>0;}
function done(ok){
 busy=false;activeSubmission=null;pendingSample=false;clearTimeout(busyTimer);controls();
 if(Number(ok)===0){afterFields=null;autoQueued=false;return;}
 var next=afterFields;afterFields=null;
 if(next||autoQueued){autoQueued=false;commitFields(next);}
}
function sendAction(name,args,rev){
 if(busy||!state)return;busy=true;pendingSample=name==='add_sample';controls();
 busyTimer=setTimeout(function(){done(0);status('No reply yet. Check the builder status, then Refresh.');send('refresh');},18000);
 send.apply(null,['action',rev===undefined?state.revision:rev,name].concat(args||[]));
}
function commitFields(next){
 clearTimeout(fieldTimer);fieldTimer=null;
 if(busy){if(activeSubmission){if(next)afterFields=next;autoQueued=true;}return false;}
 var r=current(),draft=fieldDraft(),keys=Object.keys(draft),changes={};
 if(!r||!keys.length){if(next)next();return true;}
 for(var i=0;i<keys.length;i++){
  var k=keys[i],s=draft[k],v=Number(s),min=/vel/.test(k)?1:0;
  if(s===''||!Number.isInteger(v)||v<min||v>127){status(k+' must be an integer '+min+'–127. Correct the value, or press Escape to restore it.');return false;}
  changes[k]=v;
 }
 var proposed=Object.assign({},r,changes);
 if(proposed.lokey>proposed.hikey||proposed.lovel>proposed.hivel){status('The low value must not exceed the high value. Adjust the other field, or press Escape to restore.');return false;}
 afterFields=next||null;activeSubmission={id:r.id,values:changes};
 sendAction('map',[r.id,'x'+encodeURIComponent(JSON.stringify(changes))]);return false;
}
function action(name,args,rev){
 if(name==='map'){sendAction(name,args,rev);return;}
 commitFields(function(){sendAction(name,args,rev);});
}
function selectLocal(id){selected=id;fillFields();draw();renderList();}
function fillFields(preserve){
 var r=current();fieldBase={};
 $('selection').textContent=r?'Region '+numberOf(r)+' · '+(r.group?'Group '+groupNumber(r):'No group')+' · '+r.sample:'Select a region to edit its mapping.';
 fields.forEach(function(k){var v=r&&Number.isFinite(r[k])?String(r[k]):'';$(k).value=preserve&&Object.prototype.hasOwnProperty.call(preserve,k)?preserve[k]:v;fieldBase[k]=v;$(k).placeholder=r&&k==='pitch_keycenter'?r.rootLabel:'';});
 controls();
}
function options(id,items,first){var el=$(id),old=el.value;el.textContent='';var op=document.createElement('option');op.value=first[0];op.textContent=first[1];el.appendChild(op);items.forEach(function(g){var o=document.createElement('option');o.value=g.id;o.textContent=g.id?'Group '+numberOf(g):'No group';el.appendChild(o);});if(Array.from(el.options).some(function(o){return o.value===old;}))el.value=old;}
function accept(next){
 var reset=state&&state.reset!==next.reset;
 if(reset){hideHelp();clearTimeout(fieldTimer);clearTimeout(busyTimer);fieldTimer=null;busy=false;afterFields=null;activeSubmission=null;autoQueued=false;pendingSample=false;drag=null;preview=null;fieldBase={};$('search').value='';$('filter').value='all';$('list').scrollTop=0;zoom=1;$('zoom').value=1;viewport.scrollLeft=0;}
 var priorRevision=state&&state.revision,draft=!reset&&selected===next.selected?fieldDraft():null;state=next;selected=next.selected;
 if(drag&&priorRevision!==next.revision){drag=null;preview=null;status('Instrument changed during drag. Try the edit again.');}
 options('filter',next.groups.concat(next.regions.some(function(r){return !r.group;})?[{id:0}]:[]),['all','All groups']);
 renderSampleChoices();renderAllocation();
 $('instrument').textContent=next.filename+' : Before using this editor, make sure the samples are loaded from the home page.';
 $('warning').textContent=next.blocked?'TEXT MODE — '+next.blocked:(next.auditionIssue||next.warnings.slice(0,2).join(' ')||'');
 if(next.status)status(next.status);renderList();fillFields(draft);resize();
 if(pendingSample&&priorRevision!==next.revision&&current()){var added=rect(current());viewport.scrollLeft=Math.max(0,added.x-(viewport.clientWidth-added.w)/2);draw();}
}
function renderSampleChoices(){
 var el=$('addSample');el.textContent='';var placeholder=document.createElement('option');
 placeholder.value='';placeholder.textContent=state.scanning?'Scanning…':'Select a sample…';el.appendChild(placeholder);
 state.files.forEach(function(name,i){var op=document.createElement('option');op.value=i;op.textContent=name;op.title=name;el.appendChild(op);});
}
function renderList(){
 if(!state)return;var list=$('list'),q=$('search').value.toLowerCase();list.textContent='';
 var rows=tab==='regions'?visible().map(function(r){return {r:r,label:r.sample,search:numberOf(r)+' '+groupNumber(r)+' '+r.sample};}):state.files.map(function(f,i){return {index:i,label:f,search:f};});
 rows=rows.filter(function(o){return o.search.toLowerCase().includes(q);});
 rows.slice(0,500).forEach(function(o){var el=document.createElement(o.r?'button':'div');el.className='item';var title=document.createElement('span');title.textContent=o.r?'#'+numberOf(o.r)+'  '+o.label.replace(/^.*[\\/]/,''):o.label.replace(/^.*[\\/]/,'');el.appendChild(title);var small=document.createElement('small');
 if(o.r){var r=o.r;el.dataset.region=r.id;el.title='Region '+numberOf(r)+' · '+(r.group?'Group '+groupNumber(r):'No group')+' · '+r.sample+' · keys '+r.lokey+'–'+r.hikey+' · velocity '+r.lovel+'–'+r.hivel+(pitchClass(r)!==null?' · root '+r.pitch_keycenter+' ('+PITCH_NAMES[pitchClass(r)]+')':'')+'. Click to edit.';el.style.borderLeftColor=pitchColor(r,'edge');el.style.backgroundColor=pitchColor(r,'solid');el.classList.toggle('selected',r.id===selected);small.textContent=(r.group?'Group '+groupNumber(r):'No group')+' · keys '+r.lokey+'–'+r.hikey+' · vel '+r.lovel+'–'+r.hivel;el.onclick=function(){action('select',[r.id]);};}
 else{el.title=o.label;el.draggable=false;el.dataset.sample=o.index;small.textContent=o.label.replace(/[^\\/]+$/,'')||'Folder sample';}
 el.appendChild(small);list.appendChild(el);
 });
 if(!rows.length){var p=document.createElement('p');p.style.padding='10px';p.textContent=tab==='samples'?(state.scanning?'Scanning folder…':'No matches. Use Load folder in the builder.'):'No matching regions.';list.appendChild(p);}
 $('listhelp').textContent=(rows.length>500?'Showing 500 of '+rows.length+'. Filter to narrow the list. ':rows.length+' '+(tab==='regions'?'regions. ':'sounds. '))+(tab==='regions'?'Select here to reach overlapping layers. Colors show root pitch class.':'');
}
function resize(){
 var oldcw=cw,center=(viewport.scrollLeft+viewport.clientWidth/2)/oldcw;
 height=Math.max(230,viewport.clientHeight);gh=Math.max(100,height-106);kby=top+gh+20;
 cw=Math.max(3,viewport.clientWidth/128)*zoom;var w=Math.ceil(cw*128),dpr=window.devicePixelRatio||1;
 canvas.style.width=w+'px';canvas.style.height=height+'px';canvas.width=Math.round(w*dpr);canvas.height=Math.round(height*dpr);ctx.setTransform(dpr,0,0,dpr,0,0);
 var axis=$('axis'),a=axis.getContext('2d');axis.width=40*dpr;axis.height=height*dpr;axis.style.height=height+'px';a.setTransform(dpr,0,0,dpr,0,0);a.clearRect(0,0,40,height);a.font='10px Arial';a.fillStyle='#52615b';a.textAlign='right';
 [127,96,64,32,1].forEach(function(v){a.fillText(v,34,top+(127-v)/127*gh+4);});a.save();a.translate(12,top+gh/2);a.rotate(-Math.PI/2);a.textAlign='center';a.fillText('VELOCITY',0,0);a.restore();
 if(oldcw)viewport.scrollLeft=center*cw-viewport.clientWidth/2;draw();
}
function rect(r){return {x:r.lokey*cw,y:top+(127-r.hivel)/127*gh,w:(r.hikey-r.lokey+1)*cw,h:(r.hivel-r.lovel+1)/127*gh};}
function square(x,y){ctx.fillStyle='#fff';ctx.strokeStyle='#205b40';ctx.lineWidth=1.5;ctx.fillRect(x-3.5,y-3.5,7,7);ctx.strokeRect(x-3.5,y-3.5,7,7);}
function handles(b){return [{x:b.x,y:b.y+b.h/2,kind:'left'},{x:b.x+b.w,y:b.y+b.h/2,kind:'right'},{x:b.x+b.w/2,y:b.y,kind:'top'},{x:b.x+b.w/2,y:b.y+b.h,kind:'bottom'}];}
function draw(){
 var w=cw*128;ctx.clearRect(0,0,w,height);ctx.fillStyle='#fafbf8';ctx.fillRect(0,0,w,height);ctx.font='10px Arial';ctx.textAlign='left';
 for(var k=0;k<128;k++){if([1,3,6,8,10].includes(k%12)){ctx.fillStyle='rgba(142,144,140,0.5)';ctx.fillRect(k*cw,top,cw,gh); // Black-key bands: 50% strength against the grid background.
}ctx.strokeStyle=k%12===0?'#b6c3b6':'#dde3d9';ctx.lineWidth=1;ctx.beginPath();ctx.moveTo(k*cw,top);ctx.lineTo(k*cw,top+gh);ctx.stroke();if(k%12===0){ctx.fillStyle='#52615b';ctx.fillText(noteName(k)+' / '+k,k*cw+3,15);}}
 [1,32,64,96,127].forEach(function(v){var y=top+(127-v)/127*gh;ctx.strokeStyle='#c9d3c5';ctx.beginPath();ctx.moveTo(0,y);ctx.lineTo(w,y);ctx.stroke();});
 regionHits=[];rootHits=[];var rows=visible().filter(function(r){return r.editable;});rows.sort(function(a,b){return (a.id===selected?1:0)-(b.id===selected?1:0);});
 rows.forEach(function(original){var r=preview&&preview.id===original.id?preview:original,b=rect(r),sel=r.id===selected;ctx.fillStyle=pitchColor(r,'fill');ctx.fillRect(b.x+.5,b.y+.5,Math.max(1,b.w-1),Math.max(1,b.h-1));ctx.strokeStyle=sel?'#24352f':pitchColor(r,'edge');ctx.lineWidth=sel?2.5:1;ctx.strokeRect(b.x+.5,b.y+.5,Math.max(1,b.w-1),Math.max(1,b.h-1));
 ctx.save();ctx.beginPath();ctx.rect(b.x+2,b.y+2,Math.max(0,b.w-4),Math.max(0,b.h-4));ctx.clip();ctx.fillStyle='#173d27';ctx.font=(sel?'bold ':'')+'11px Arial';var sx=Math.max(b.x+6,viewport.scrollLeft+6);ctx.fillText('#'+numberOf(r)+' '+r.sample.replace(/^.*[\\/]/,''),sx,b.y+17);ctx.restore();regionHits.push({r:r,b:b});
 if(sel){handles(b).forEach(function(h){square(h.x,h.y);});if(Number.isFinite(r.pitch_keycenter)){var x=(r.pitch_keycenter+.5)*cw;ctx.setLineDash([4,3]);ctx.strokeStyle='#aa5a12';ctx.beginPath();ctx.moveTo(x,top);ctx.lineTo(x,top+gh+12);ctx.stroke();ctx.setLineDash([]);ctx.fillStyle='#b96916';ctx.beginPath();ctx.moveTo(x,top+gh+2);ctx.lineTo(x-7,top+gh+15);ctx.lineTo(x+7,top+gh+15);ctx.closePath();ctx.fill();rootHits.push({x:x,y:top+gh+9,id:r.id});}}
 });
 // White key silhouettes span adjacent black-key half lanes; black keys remain aligned to grid notes.
 for(k=0;k<128;k++)if(![1,3,6,8,10].includes(k%12)){var l=(k-(k>0&&[1,3,6,8,10].includes((k-1)%12)?.5:0))*cw;var rw=(1+([1,3,6,8,10].includes((k+1)%12)?.5:0)+(k>0&&[1,3,6,8,10].includes((k-1)%12)?.5:0))*cw;ctx.fillStyle=playing===k?'#80bf96':'#fff';ctx.fillRect(l,kby,rw,58);ctx.strokeStyle='#aebbb0';ctx.lineWidth=1;ctx.strokeRect(l+.5,kby+.5,rw,58);if(cw>9||k%12===0){ctx.fillStyle='#52615b';ctx.font='10px Arial';ctx.textAlign='center';ctx.fillText(k,(k+.5)*cw,kby+50);}}
 for(k=0;k<128;k++)if([1,3,6,8,10].includes(k%12)){ctx.fillStyle=playing===k?'#43895e':'#26352d';ctx.fillRect((k+.16)*cw,kby,.68*cw,35);if(cw>20){ctx.fillStyle='#fff';ctx.font='9px Arial';ctx.textAlign='center';ctx.fillText(k,(k+.5)*cw,kby+27);}}
 ctx.textAlign='left';if(!rows.length){ctx.fillStyle='#6c796e';ctx.font='14px Arial';ctx.fillText(state&&state.blocked?'Text mode: edit the SFZ in the builder.':'',viewport.scrollLeft+25,top+gh/2);}
}
function point(e){var b=canvas.getBoundingClientRect();return {x:e.clientX-b.left,y:e.clientY-b.top};}
function keyAt(p){return clamp(Math.floor(p.x/cw),0,127);}
function velocityAt(p){return clamp(127-Math.floor((p.y-top)/gh*127),1,127);}
function hit(p){
 for(var i=rootHits.length-1;i>=0;i--)if(Math.abs(rootHits[i].x-p.x)<10&&Math.abs(rootHits[i].y-p.y)<11)return {id:rootHits[i].id,kind:'root'};
 for(i=regionHits.length-1;i>=0;i--){var h=regionHits[i],b=h.b;if(h.r.id===selected){var hs=handles(b);for(var j=0;j<hs.length;j++)if(Math.abs(hs[j].x-p.x)<=7&&Math.abs(hs[j].y-p.y)<=7)return {id:h.r.id,kind:hs[j].kind};}if(p.x>=b.x&&p.x<=b.x+b.w&&p.y>=b.y&&p.y<=b.y+b.h)return {id:h.r.id,kind:'move'};}
 return null;
}
function pianoKey(p){var n=keyAt(p);if(p.y<kby+35&&[1,3,6,8,10].includes(n%12)&&p.x>=(n+.16)*cw&&p.x<=(n+.84)*cw)return n;if([1,3,6,8,10].includes(n%12))n+=p.x/cw-n<.5?-1:1;return clamp(n,0,127);}
function release(){if(playing!==null){send('note',playing,0);playing=null;}clearInterval(heartbeat);heartbeat=null;draw();}
function play(p){release();playing=pianoKey(p);send('note',playing,clamp(Math.round((p.y-kby)/58*126)+1,1,127));heartbeat=setInterval(function(){send('heartbeat');},500);draw();}
canvas.addEventListener('pointerdown',function(e){
 if(e.button!==0)return;var p=point(e);canvas.focus();
 if(p.y>=kby){canvas.setPointerCapture(e.pointerId);play(p);return;}
 if(hasFieldDraft()){commitFields();return;}if(editing())return;var h=hit(p);if(!h)return;selectLocal(h.id);var r=current();
 drag={id:h.id,kind:h.kind,start:p,original:Object.assign({},r),revision:state.revision,moved:false,pointer:e.pointerId};preview=Object.assign({},r);canvas.setPointerCapture(e.pointerId);draw();
});
canvas.addEventListener('pointermove',function(e){
 var p=point(e);$('cursor').textContent='Key '+keyAt(p)+' · vel '+velocityAt(p);
 if(playing!==null){if(p.y>=kby&&pianoKey(p)!==playing)play(p);return;}
 if(!drag){var h=hit(p);canvas.style.cursor=p.y>=kby?'pointer':!h?'default':h.kind==='move'?'grab':h.kind==='root'?'ew-resize':['left','right'].includes(h.kind)?'ew-resize':'ns-resize';return;}
 var r=Object.assign({},drag.original),dk=Math.round((p.x-drag.start.x)/cw),dv=Math.round((drag.start.y-p.y)/gh*127);
 if(drag.kind==='move'){
   var lo=-r.lokey,hi=127-r.hikey;if($('moveRoot').checked&&Number.isFinite(r.pitch_keycenter)){lo=Math.max(lo,-r.pitch_keycenter);hi=Math.min(hi,127-r.pitch_keycenter);}dk=clamp(dk,lo,hi);dv=clamp(dv,1-r.lovel,127-r.hivel);r.lokey+=dk;r.hikey+=dk;r.lovel+=dv;r.hivel+=dv;if($('moveRoot').checked&&Number.isFinite(r.pitch_keycenter))r.pitch_keycenter+=dk;
 }else if(drag.kind==='left')r.lokey=clamp(r.lokey+dk,0,r.hikey);
 else if(drag.kind==='right')r.hikey=clamp(r.hikey+dk,r.lokey,127);
 else if(drag.kind==='top')r.hivel=clamp(r.hivel+dv,r.lovel,127);
 else if(drag.kind==='bottom')r.lovel=clamp(r.lovel+dv,1,r.hivel);
 else if(drag.kind==='root')r.pitch_keycenter=keyAt(p);
 preview=r;drag.moved=fields.some(function(k){return r[k]!==drag.original[k];});draw();
});
canvas.addEventListener('pointerup',function(){
 if(playing!==null){release();return;}if(!drag)return;
 var d=drag,r=preview,changes={};drag=null;preview=null;fields.forEach(function(k){if(r[k]!==d.original[k])changes[k]=r[k];});draw();
 if(d.moved)action('map',[d.id,'x'+encodeURIComponent(JSON.stringify(changes))],d.revision);else action('select',[d.id],d.revision);
});
function cancel(){drag=null;preview=null;release();}
canvas.addEventListener('pointercancel',cancel);canvas.addEventListener('lostpointercapture',function(){if(playing!==null)release();});
fields.forEach(function(k){
 $(k).addEventListener('input',function(){clearTimeout(fieldTimer);});
 $(k).addEventListener('change',function(){clearTimeout(fieldTimer);fieldTimer=setTimeout(function(){commitFields();},150);});
 $(k).addEventListener('keydown',function(e){if(e.key==='Enter'){e.preventDefault();commitFields();}});
});
['duplicate','delete'].forEach(function(id){$(id).onclick=function(){if(current())action(id,[selected]);};});
$('undo').onclick=function(){action('command',['undo']);};
$('panic').onclick=function(){cancel();send('panic');};
$('addSample').onchange=function(){var index=Number(this.value),name=state&&state.files[index],group=$('filter').value;if(this.value===''||name===undefined)return;this.value='';$('search').value='';changeTab('regions');action('add_sample',[index,'x'+encodeURIComponent(name),group]);};
$('refresh').onclick=function(){cancel();commitFields(function(){send('refresh');});};
$('filter').onchange=function(){renderAllocation();renderList();draw();};$('search').oninput=renderList;
function changeTab(next){tab=next;$('regionsTab').classList.toggle('current',tab==='regions');$('samplesTab').classList.toggle('current',tab==='samples');renderList();}
$('regionsTab').onclick=function(){changeTab('regions');};$('samplesTab').onclick=function(){changeTab('samples');};
$('zoom').oninput=function(){zoom=Number(this.value);resize();};
$('all').onclick=function(){zoom=1;$('zoom').value=1;resize();viewport.scrollLeft=0;};
$('fit').onclick=function(){var rows=visible().filter(function(r){return r.editable;});if(!rows.length)return;var lo=Math.min.apply(null,rows.map(function(r){return r.lokey;})),hi=Math.max.apply(null,rows.map(function(r){return r.hikey;}));zoom=clamp(128/(hi-lo+5),1,8);$('zoom').value=zoom;resize();viewport.scrollLeft=Math.max(0,lo-2)*cw;};
// Ignore external file/folder drops without allowing the embedded page to navigate.
['dragover','drop'].forEach(function(name){document.addEventListener(name,function(e){e.preventDefault();if(e.dataTransfer)e.dataTransfer.dropEffect='none';});});
viewport.addEventListener('scroll',draw);window.addEventListener('resize',resize);
window.addEventListener('blur',function(){cancel();send('release');});window.addEventListener('beforeunload',function(){release();send('release');});document.addEventListener('visibilitychange',function(){if(document.hidden){cancel();send('release');}});
document.addEventListener('keydown',function(e){if(e.key==='Escape'){clearTimeout(fieldTimer);afterFields=null;autoQueued=false;fillFields();cancel();send('panic');}if(e.target===canvas&&(e.key==='Delete'||e.key==='Backspace')&&!editing()&&current()){e.preventDefault();action('delete',[selected]);}});
function bind(){if(!window.max||!window.max.bindInlet){status('Open this view from the Max builder’s Graphic mapper button.');setTimeout(bind,250);return;}
 window.max.bindInlet('map_begin',function(id,count){transfer={id:Number(id),count:Number(count),parts:[]};});
 window.max.bindInlet('map_chunk',function(id,index,part){if(transfer&&transfer.id===Number(id))transfer.parts[Number(index)]=String(part).substring(1);});
 window.max.bindInlet('map_end',function(id){if(!transfer||transfer.id!==Number(id))return;try{for(var i=0;i<transfer.count;i++)if(typeof transfer.parts[i]!=='string')throw new Error('Incomplete mapper update');accept(JSON.parse(decodeURIComponent(transfer.parts.join(''))));}catch(e){status(e.message+'. Click Refresh.');}transfer=null;});
 window.max.bindInlet('map_status',function(s){status(decodeURIComponent(String(s).substring(1)));});
 window.max.bindInlet('map_done',done);window.max.bindInlet('map_notes_clear',function(){playing=null;clearInterval(heartbeat);heartbeat=null;draw();});
 send('ready');
}
// In-page hover help remains visible in Max's embedded browser.
var helpTimer=null,helpTarget=null,helpBox=$('tooltip');
function hideHelp(){clearTimeout(helpTimer);helpBox.hidden=true;helpTarget=null;}
document.addEventListener('pointerover',function(e){
 var el=e.target.closest('[title]');if(!el||el===helpTarget)return;hideHelp();helpTarget=el;
 var x=e.clientX,y=e.clientY;
 helpTimer=setTimeout(function(){helpBox.textContent=el.title;helpBox.hidden=false;helpBox.style.left=Math.max(6,Math.min(x+14,window.innerWidth-helpBox.offsetWidth-8))+'px';helpBox.style.top=Math.max(6,Math.min(y+18,window.innerHeight-helpBox.offsetHeight-8))+'px';},450);
});
document.addEventListener('pointerout',function(e){if(helpTarget&&!helpTarget.contains(e.relatedTarget))hideHelp();});
document.addEventListener('pointerdown',hideHelp);window.addEventListener('blur',hideHelp);
renderPitchLegend();resize();controls();bind();
})();
