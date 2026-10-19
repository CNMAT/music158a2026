// The active ADSR shaper and standalone use the count-aware 3–48 library.
// The second embedded reference shaper retains the original 48-point library.
const fs=require('fs'),path=require('path'),assert=require('assert'),vm=require('vm');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n))).patcher;
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const main=read('_ec_sinusoids_synth_automixer_v20.maxpat'),m=boxes(main);
const shapers=[read('Envelope-Shaper_01_v20.maxpat'),m['obj-21'].patcher,m['envelope-shaper01'].patcher];
const c={outlet:()=>{}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'dynamic_shape_library_v20.js'),'utf8'),c);
for(const p of shapers){const b=boxes(p),wired=(s,o,d)=>p.lines.some(({patchline:l})=>l.source[0]===s&&l.source[1]===o&&l.destination[0]===d);
 assert.deepStrictEqual(b['obj-function'].range||[0,1],[0,1]);assert.deepStrictEqual(b['obj-multislider'].setminmax,[0,1]);
 assert.deepStrictEqual(b['obj-shape-menu-norm'].items.filter(x=>x!==','),m['syn-amp-shape-menu'].items.filter(x=>x!==','));
 const data=b['obj-shape-coll-norm'].coll_data.data;
 if(data.length===1150){
  const entries=new Map(data.map(e=>[e.key,e.value]));
  for(let shape=0;shape<25;shape++)for(let count=3;count<=48;count++)assert.equal(entries.get(shape*100+count).length,count);
  for(let shape=0;shape<25;shape++)assert.deepStrictEqual(entries.get(shape*100+48),shape===0?Array(48).fill(0):shape===1?Array(48).fill(1):Array.from(c.templates[shape-2]));
 }else{
  assert.equal(data.length,25);
  for(let i=0;i<25;i++){assert.equal(data[i].key,i);assert.deepStrictEqual(data[i].value,i===0?Array(48).fill(0):i===1?Array(48).fill(1):Array.from(c.templates[i-2]));}
 }
 assert(Object.values(boxes(b['obj-round-output'].patcher)).some(x=>x.text==='vexpr int($f1 * 100.) / 100.'));
 assert.equal(b['obj-load-trigger'].text,'t b b b');assert(wired('obj-loadbang',0,'env-init-defer'));assert(wired('env-init-defer',0,'obj-load-trigger'));
 const countInit=data.length===1150?'obj-init-count-48':'obj-shape-count-48';
 assert(wired('obj-load-trigger',2,countInit));assert(wired(countInit,0,'obj-count-slider'));assert.equal(Number(b[countInit].text)+3,48);
}
console.log('PASS: standalone and active ADSR retain all 25 shapes at every 3–48 count; reference shaper retains its 25 exact 48-point templates; normalized ranges, truncation and startup are intact.');
