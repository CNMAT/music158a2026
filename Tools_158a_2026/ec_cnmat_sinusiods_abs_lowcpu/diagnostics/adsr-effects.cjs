/* Focused ADSR control-flow model for validate.cjs. Uses the supplied shape
   collection and real envelope JS. Models global fanout, scalar caches,
   function-to-message storage and loop gates; it is not native Max or DSP. */
module.exports=function({main,patch,objects,liveEngines,M,engine,eq,ok}){
 const prefix='ec_obj_112/', global=main.boxes.find(x=>x.box.varname==='ec_obj_112').box.patcher;
 // Execute the actual read-only factory dependency; do not use a synthetic
 // table or a cached coll that may not be present after a native save.
 const factory=engine('adsr_shapes');
 const lanes=[],state={fanouts:0,programUpdates:0,loopUpdates:0};
 const toList=x=>Array.isArray(x)?Array.from(x):[x];
 const scalar=x=>Number(toList(x)[0]);
 function program(v){
  const p=toList(v),out=[];let previous=0;
  for(let i=3;i+2<p.length;i+=3){out.push(p[i+1],p[i]-previous);previous=p[i];}
  return out;
 }
 function feed(e,inlet,selector,args){const prior=e.inlet;e.inlet=inlet;try{e[selector](...args);}finally{e.inlet=prior;}}
 function rebuild(lane){
  const points=toList(lane.ui.ec_points.value),duration=lane.duration;
  const value=[duration,0,1];
  for(let i=0;i<points.length;i++)value.push(i*duration/Math.max(1,points.length-1),points[i],0);
  lane.ui.ec_function.value=value;
  lane.cache=program(value);state.programUpdates++;
 }
 function output(lane,name){
  const o=lane.ui[name],v=toList(o.value),e=lane.engine;
  if(name==='ec_loop_toggle'){lane.gate=scalar(v);state.loopUpdates++;}
  else if(name==='ec_duration'){lane.duration=scalar(v);rebuild(lane);}
  else if(name==='ec_delay_ms')lane.delay=scalar(v);
  else if(name==='ec_count')feed(e,9,'msg_int',[scalar(v)]);
  else if(name==='ec_shape_smoothing_ms')feed(e,6,'msg_float',[scalar(v)]);
  else if(name==='ec_shape_menu'){
   lane.shape=scalar(v);
   factory.events.length=0;
   factory.msg_int(lane.shape*100+scalar(lane.ui.ec_count.value));
   const result=factory.events.find(x=>x[0]===0);
   if(result)feed(e,0,'list',Array.from(result[1]));
  }else if(name==='ec_points'){feed(e,3,'list',v);rebuild(lane);}
  else if(name==='ec_function'){lane.cache=program(v);state.programUpdates++;}
 }
 function watch(o,onOutput){
  const original=o.message;
  o.message=function(selector,...args){
   original.call(this,selector,...args);
   if(selector==='list'){this.value=args;onOutput();}
   else if(selector==='size'){this.attrs.size=Number(args[0]);}
   else if(selector==='bang'||selector==='int'||selector==='float')onOutput();
  };
 }
 for(let n=1;n<=12;n++){
  const id='ec_lane_bpatch_'+String(n).padStart(2,'0'),base=prefix+id+'/';
  const ui={};for(const m of M.ui.filter(x=>x.key.startsWith(base)))ui[m.path.at(-1)]=objects[m.key];
  const spec=M.engines.find(x=>x.key===base+'ec_shape_smoothing_engine'),e=liveEngines[spec.key];
  const lane={base,ui,engine:e,gate:0,duration:1000,shape:6,cache:[]};lanes.push(lane);
  // Check modeled terminal connections against the actual private lane patch.
  const p=patch(objects[prefix+id].b.name),lines=p.lines.map(x=>x.patchline);
  for(const [source,destination] of [
   [['loop-toggle',0],['loop-gate',0]],
   [['shape-smoothing-engine',0],['points',0]],
   [['function',1],['set-current',0]],
   [['set-current',0],['current-envelope',0]],
   [['trigger-button',0],['start-delay-order',0]],
   [['start-delay',0],['current-envelope',0]],
   [['start-delay-select',0],['current-envelope',0]],
   [['current-envelope',0],['line',0]]
  ])ok(lines.some(l=>JSON.stringify(l.source)===JSON.stringify(source)&&JSON.stringify(l.destination)===JSON.stringify(destination)),'modeled ADSR terminal cord exists: '+id+' '+source+' to '+destination);
  for(const [name,o] of Object.entries(ui))watch(o,()=>output(lane,name));
  const oldOut=e.outlet;
  e.outlet=function(port,...args){
   oldOut(port,...args);
   if(port!==0)return;
   if(args[0]==='size')lane.ui.ec_points.message('size',args[1]);
   else lane.ui.ec_points.message('list',...toList(args[0]));
  };
 }
 const globalTargets={ec_all_lane_shape_menu:'ec_shape_menu',ec_all_lane_loops_toggle:'ec_loop_toggle',ec_all_lane_smoothing_ms:'ec_shape_smoothing_ms',ec_all_lane_duration_ms:'ec_duration'};
 for(const [name,target] of Object.entries(globalTargets)){
  const b=global.boxes.find(x=>x.box.varname===name).box;
  ok(global.lines.some(x=>x.patchline.source[0]===b.id&&x.patchline.source[1]===0),'global '+name+' has fanout wiring');
  watch(objects[prefix+name],()=>{
   const value=scalar(objects[prefix+name].value);state.fanouts++;
   for(const lane of lanes)lane.ui[target].message(target.includes('duration')||target.includes('smoothing')?'float':'int',value);
  });
 }
 function coldStart(){
  for(const lane of lanes){
   lane.engine.ec_import(engine('envelope_memory').ec_export());
   for(const o of Object.values(lane.ui))o.value=0;
   lane.ui.ec_points.value=Array(48).fill(0);
   lane.ui.ec_function.value=[1000,0,1,0,0,0,1000,0,0];
   lane.ui.ec_count.value=48;lane.ui.ec_duration.value=1000;lane.ui.ec_shape_smoothing_ms.value=200;
   lane.gate=0;lane.delay=0;lane.duration=1000;lane.shape=6;lane.cache=[0,0,0,1000];
  }
  for(const name of Object.keys(globalTargets))objects[prefix+name].value=0;
 }
 function verify(d,label){
  for(const name of Object.keys(globalTargets))eq(scalar(objects[prefix+name].value),scalar(d.ui[prefix+name].value),label+' global '+name);
  for(const lane of lanes){
   const expected=d.ui,key=lane.base;
   eq(lane.gate,scalar(expected[key+'ec_loop_toggle'].value),label+' active loop gate '+key);
   eq(lane.delay,scalar(expected[key+'ec_delay_ms'].value),label+' pending-start delay cache '+key);
   eq(lane.duration,scalar(expected[key+'ec_duration'].value),label+' translator duration '+key);
   eq(lane.shape,scalar(expected[key+'ec_shape_menu'].value),label+' shape index '+key);
   eq(lane.cache,program(expected[key+'ec_function'].value),label+' cached envelope for next trigger '+key);
   eq(lane.engine.durations[0],scalar(expected[key+'ec_shape_smoothing_ms'].value),label+' smoothing engine '+key);
   eq(lane.ui.ec_points.value,toList(expected[key+'ec_points'].value),label+' sampled lane points '+key);
   ok(!lane.engine.tasks.some(t=>t.active),label+' no stale shape morph overwrites static preset '+key);
  }
 }
 return {coldStart,verify,state};
};
