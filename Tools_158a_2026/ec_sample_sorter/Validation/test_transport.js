'use strict';
// Model only the standard Max message objects in the saved transport graph.
// This detects message-order regressions; it does not run Max's DSP engine.
const fs=require('fs'),assert=require('assert').strict;
const patch=JSON.parse(fs.readFileSync('_ec_sample_sorter.maxpat')).patcher;
const boxes=new Map(patch.boxes.map(b=>[b.box.id,b.box]));
function transport(){
 const gates={file_open_gate:0,start_if_open:0},queue=[],messages=[];let open=null;
 function output(id,out,v){
  const lines=patch.lines.map(l=>l.patchline).filter(l=>l.source[0]===id&&l.source[1]===out).sort((a,b)=>(a.order||0)-(b.order||0));
  for(const l of lines)receive(l.destination[0],l.destination[1],v);
 }
 function receive(id,inlet,v){
  if(id==='player'){
   messages.push(v);
   if(v[0]==='open')open=v[1];
   else if(v[0]===0||v[0]===1||v[0]==='fclose'){
    assert(open,'no open file: '+JSON.stringify(v));if(v[0]==='fclose')open=null;
   }
   return;
  }
  const text=boxes.get(id).text;
  if(text==='route play stop cue')return output(id,{play:0,stop:1,cue:2}[v[0]],v.length>1?v.slice(1):['bang']);
  if(text==='gate 1 0'){
   if(inlet===0)gates[id]=v[0];else if(gates[id])output(id,0,v);return;
  }
  if(text==='t b s b'){output(id,2,['bang']);output(id,1,v);output(id,0,['bang']);return;}
  if(text==='t 1 0'){output(id,1,[0]);output(id,0,[1]);return;}
  if(text==='t b 0'||text==='t b 1'){output(id,1,[Number(text.slice(-1))]);output(id,0,['bang']);return;}
  if(text==='0, fclose'){output(id,0,[0]);output(id,0,['fclose']);return;}
  if(text==='prepend open')return output(id,0,['open',...v]);
  if(text==='deferlow'){queue.push(()=>output(id,0,v));return;}
  if(text==='1')return output(id,0,[1]);
  throw new Error('Unexpected transport object '+id+' '+text);
 }
 return {messages,send:(...v)=>receive('transport',0,v),flush:()=>{while(queue.length)queue.shift()();}};
}
let t=transport();t.send('stop');t.flush();assert.deepEqual(t.messages,[]);
t.send('play','/sounds/first.wav');t.flush();assert.deepEqual(t.messages,[['open','/sounds/first.wav'],[1]]);
t.messages.length=0;t.send('play','/sounds/second.wav');t.flush();
assert.deepEqual(t.messages,[[0],['fclose'],['open','/sounds/second.wav'],[1]]);
t.messages.length=0;t.send('stop');t.send('stop');t.flush();assert.deepEqual(t.messages,[[0],['fclose']]);
t.messages.length=0;t.send('play','/sounds/first.wav');t.send('stop');t.flush();
assert.deepEqual(t.messages,[['open','/sounds/first.wav'],[0],['fclose']]);
t.messages.length=0;t.send('play','/sounds/first.wav');t.flush();assert.deepEqual(t.messages,[['open','/sounds/first.wav'],[1]]);
t=transport();t.send('cue','/sounds/first.wav');t.flush();
assert.deepEqual(t.messages,[['open','/sounds/first.wav']],'startup opens without a play command');
t.send('play','/sounds/first.wav');t.flush();
assert.deepEqual(t.messages,[['open','/sounds/first.wav'],[0],['fclose'],['open','/sounds/first.wav'],[1]]);
t=transport();t.send('play','/sounds/previous.wav');t.send('cue','/sounds/first.wav');t.flush();
assert.deepEqual(t.messages,[['open','/sounds/previous.wav'],[0],['fclose'],['open','/sounds/first.wav']],'cue blocks an older deferred start');
t.send('stop');t.flush();assert.deepEqual(t.messages.slice(-2),[[0],['fclose']]);
console.log('PASS silent startup cue, explicit first play, stop/close guards, switching, and cancellation of queued starts.');
