/* Test-only Max-message/Task/clock emulation. This is NOT a native Max/DSP runtime. */
'use strict';
const fs=require('fs'),path=require('path'),vm=require('vm');
class Clock {
  constructor(){this.now=0;this.tasks=[];}
  advance(end,max=1000000){
    if(end<this.now)throw new Error('Clock cannot go backwards');
    let count=0;
    for(;;){
      const task=this.tasks.filter(t=>t.due!==null && t.due<=end).sort((a,b)=>a.due-b.due)[0];
      if(!task)break;
      if(++count>max)throw new Error('Scheduler runaway');
      this.now=task.due;task.due=null;task.fn.call(task.owner);
    }
    this.now=end;return count;
  }
}
function engine(args,options={}){
  const clock=options.clock||new Clock(),events=[];
  let seed=options.seed===undefined?12345:options.seed;
  const math=Object.create(Math);math.random=()=>{seed=(Math.imul(1664525,seed)+1013904223)>>>0;return seed/4294967296;};
  class DateMock extends Date {constructor(...a){super(...(a.length?a:[clock.now]));}static now(){return clock.now;}}
  function Task(fn,owner){this.fn=fn;this.owner=owner;this.due=null;this.cancelled=0;clock.tasks.push(this);}
  Task.prototype.schedule=function(ms){this.due=clock.now+Number(ms);};
  Task.prototype.cancel=function(){this.due=null;this.cancelled++;};
  const ctx={jsarguments:['automatic_lines_v5_ed.js',...args],Task,Math:math,Date:DateMock,isFinite,Number,
    outlet:(index,...v)=>{
      const atoms=(v.length===1&&Array.isArray(v[0]))?Array.from(v[0]):v;
      const e={time:clock.now,index,atoms};
      if(options.collect!==false)events.push(e);
      if(options.onOutput)options.onOutput(e);
    }};
  vm.createContext(ctx);vm.runInContext(fs.readFileSync(path.join(__dirname,'automatic_lines_v5_ed.js'),'utf8'),ctx,{filename:'automatic_lines_v5_ed.js'});
  return {ctx,clock,events};
}
function atom(s){return /^[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:e[-+]?\d+)?$/i.test(s)?Number(s):s;}
function tokens(s){return String(s).trim().split(/\s+/).filter(Boolean).map(atom);}
const clone=x=>JSON.parse(JSON.stringify(x));
class Network {
  constructor(main){
    this.nodes=new Map();this.wires=new Map();this.receivers=new Map();this.clock=new Clock();this.defer=[];this.posts=[];this.log=[];this.steps=0;
    const routing=main.boxes.find(e=>e.box.id==='sinusoids-audio-routing-v20').box.patcher;
    const control=routing.boxes.find(e=>e.box.id==='am-controller-v20').box.patcher;
    this.addPatch('ui',{boxes:main.boxes.filter(e=>e.box.id.startsWith('am-')),lines:main.lines.filter(e=>e.patchline.source[0].startsWith('am-')&&e.patchline.destination[0].startsWith('am-'))});
    this.addPatch('control',control);
    const js=this.nodes.get('control/am-js').box.text.split(/\s+/);
    this.engine=engine(js.slice(2).map(Number),{clock:this.clock,collect:false,onOutput:e=>this.emit('control/am-js',e.index,e.atoms)});
  }
  addPatch(scope,p){
    for(const {box} of p.boxes){
      const key=scope+'/'+box.id,t=tokens(box.text||'');
      const n={key,box,op:t[0],args:t.slice(1),value:null};
      if(box.maxclass==='message')n.value=t;
      if(['pack','pak'].includes(n.op))n.value=n.args.map(a=>['f','i','s'].includes(a)?0:a);
      if(n.op==='gate')n.value=Number(n.args[1]||0);
      if(n.op==='i')n.value=Number(n.args[0]||0);
      if(n.op==='line~')n.value={start:0,from:Number(n.args[0]||0),to:Number(n.args[0]||0),duration:0};
      this.nodes.set(key,n);
      if(['r','receive'].includes(n.op)){
        if(!this.receivers.has(n.args[0]))this.receivers.set(n.args[0],[]);
        this.receivers.get(n.args[0]).push(key);
      }
    }
    for(const {patchline:e} of p.lines){
      const key=scope+'/'+e.source[0]+'/'+e.source[1];
      if(!this.wires.has(key))this.wires.set(key,[]);
      this.wires.get(key).push({key:scope+'/'+e.destination[0],inlet:e.destination[1],order:e.order||0});
    }
    for(const a of this.wires.values())a.sort((x,y)=>x.order-y.order);
  }
  emit(key,outlet,atoms){
    for(const w of this.wires.get(key+'/'+outlet)||[])this.send(w.key,w.inlet,clone(atoms));
  }
  broadcast(bus,atoms){
    this.posts.push({time:this.clock.now,bus,atoms:clone(atoms)});
    for(const key of this.receivers.get(bus)||[])this.emit(key,0,atoms);
  }
  send(key,inlet,atoms=[]){
    if(++this.steps>5000000)throw new Error('Message feedback loop');
    const n=this.nodes.get(key);if(!n)throw new Error('Missing node '+key);
    const b=n.box,op=n.op,a=n.args;
    let payload=atoms[0]==='bang'?[]:atoms;
    const first=payload[0],bang=payload.length===0;
    if(b.maxclass==='comment'||b.maxclass==='outlet')return;
    if(b.maxclass==='message'){
      if(first==='set'){n.value=payload.slice(1);return;}
      this.emit(key,0,n.value);return;
    }
    if(['flonum','number','umenu','toggle','multislider'].includes(b.maxclass)){
      const silent=first==='set';payload=silent?payload.slice(1):payload;
      if(payload.length){
        if(b.maxclass==='multislider'){n.value=payload;return;}
        let value=Number(payload[0]);
        if(b.maxclass!=='flonum')value=Math.trunc(value);
        if(b.minimum!==undefined)value=Math.max(value,b.minimum);
        if(b.maximum!==undefined)value=Math.min(value,b.maximum);
        if(b.maxclass==='toggle')value=value?1:0;
        n.value=value;
      }
      if(!silent)this.emit(key,0,[n.value]);return;
    }
    switch(op){
      case 'receive':case 'r':this.emit(key,0,payload);break;
      case 'send':case 's':this.broadcast(a[0],payload);break;
      case 'loadbang':this.emit(key,0,[]);break;
      case 'deferlow':this.defer.push(()=>this.emit(key,0,payload));break;
      case 'print':this.log.push({key,payload});break;
      case 'route':{
        const selector=bang?'bang':first;let i=a.indexOf(selector);
        if(i<0)this.emit(key,a.length,payload);else this.emit(key,i,payload.slice(1));break;
      }
      case 'sel':case 'select':{
        let i=a.indexOf(first);if(i<0)this.emit(key,a.length,payload);else this.emit(key,i,[]);break;
      }
      case 't':case 'trigger':
        for(let i=a.length-1;i>=0;i--){
          const type=a[i];let result;
          if(type==='b')result=[];
          else if(type==='l'||type==='a')result=payload;
          else if(type==='i')result=[Math.trunc(Number(first||0))];
          else if(type==='f')result=[Number(first||0)];
          else throw new Error('Unsupported trigger '+type);
          this.emit(key,i,result);
        }break;
      case 'i':
        if(!bang)n.value=Math.trunc(Number(first));
        if(inlet===0)this.emit(key,0,[n.value]);break;
      case 'clip':this.emit(key,0,[Math.min(Number(a[1]),Math.max(Number(a[0]),Number(first)))]);break;
      case 'maximum':this.emit(key,0,[Math.max(Number(a[0]),Number(first))]);break;
      case '==':this.emit(key,0,[Number(first)===Number(a[0])?1:0]);break;
      case 'prepend':this.emit(key,0,[...a,...payload]);break;
      case 'unpack':
        for(let i=Math.min(a.length,payload.length)-1;i>=0;i--)this.emit(key,i,[Number(payload[i])]);break;
      case 'pack':case 'pak':{
        const silent=first==='set',values=silent?payload.slice(1):payload;
        for(let i=0;i<values.length&&inlet+i<n.value.length;i++)n.value[inlet+i]=values[i];
        if(!silent&&(op==='pak'||inlet===0))this.emit(key,0,n.value.slice());break;
      }
      case 'zl':if(a[0]==='sort')this.emit(key,0,payload.slice().sort((x,y)=>x-y));else throw new Error('Unsupported zl');break;
      case 'gate':
        if(inlet===0)n.value=Number(first);
        else if(n.value>0)this.emit(key,n.value-1,payload);break;
      case 'line~':{
        const now=this.clock.now,previous=this.signal(key);
        n.value={start:now,from:previous,to:Number(first),duration:Number(payload[1]||0)};
        break;
      }
      case 'js':{
        const method=bang?'bang':String(first),args=payload.slice(1);
        if(typeof this.engine.ctx[method]!=='function')throw new Error('Unknown JS method '+method);
        this.engine.ctx[method](...args);break;
      }
      default:throw new Error('Unimplemented object in selective emulator: '+key+' '+op);
    }
  }
  signal(key){
    const n=this.nodes.get(key),v=n.value;
    return v.from+(v.to-v.from)*Math.min(1,Math.max(0,(this.clock.now-v.start)/(v.duration||1e-12)));
  }
  boot(){this.engine.ctx.loadbang();this.send('control/am-load',0,[]);this.flush();}
  flush(){let count=0;while(this.defer.length){if(++count>1000)throw new Error('Defer loop');this.defer.shift()();}}
  command(...atoms){this.broadcast('Automixer_v20',atoms);this.flush();}
  ui(id,value){this.send('ui/'+id,0,Array.isArray(value)?value:[value]);this.flush();}
  state(id){return this.nodes.get('ui/'+id).value;}
  line(n){return this.nodes.get('control/am-line-'+String(n).padStart(2,'0')).value;}
  advance(t){this.clock.advance(t);this.flush();}
}
module.exports={Clock,engine,Network,tokens,clone};
