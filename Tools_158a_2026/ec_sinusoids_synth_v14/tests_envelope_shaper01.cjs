const fs=require('fs'),path=require('path'),assert=require('assert'),vm=require('vm');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n))).patcher;
const stage=read('_ec_sinusoids_synth_stage_14.maxpat'),env=read('Envelope-Shaper_01.maxpat');
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const s=boxes(stage),e=boxes(env),embedded=s['envelope-shaper01'].patcher;
function graph(p){const b=boxes(p);assert.equal(Object.keys(b).length,p.boxes.length);for(const {patchline:l} of p.lines){assert(b[l.source[0]]&&b[l.destination[0]]);assert(l.source[1]<b[l.source[0]].numoutlets);assert(l.destination[1]<b[l.destination[0]].numinlets);}for(const v of Object.values(b))if(v.patcher)graph(v.patcher);}
graph(stage);graph(env);
assert.deepStrictEqual(e['obj-shape-menu-norm'].items,s['syn-amp-shape-menu'].items);
const context={outlet:()=>{}};vm.createContext(context);vm.runInContext(fs.readFileSync(path.join(__dirname,'dynamic_shape_library_14.js'),'utf8'),context);
const data=e['obj-shape-coll-norm'].coll_data.data;assert.equal(data.length,24);
for(let i=0;i<24;i++){assert.equal(data[i].key,i);assert.equal(data[i].value.length,48);assert(data[i].value.every(v=>Number.isFinite(v)&&v>=0&&v<=1));assert.deepStrictEqual(data[i].value,i?Array.from(context.templates[i-1]):Array(48).fill(0));}
assert.deepStrictEqual(e['obj-function'].range,[0,1]);assert.deepStrictEqual(e['obj-multislider'].setminmax,[0,1]);
assert.equal(e['obj-shape-count-48'].text,'45');assert.equal(e['obj-round-output'].patcher.boxes[1].box.text,'vexpr int($f1 * 100.) / 100.');
assert(!Object.values(e).some(b=>/127|rounded-integers/.test(b.text||'')||/127/.test(b.id)));
assert(stage.lines.some(({patchline:l})=>l.source[0]==='envelope-shaper01'&&l.destination[0]==='obj-function-list-gate'));
assert(!Object.values(boxes(embedded)).some(b=>b.text==='send gain-envelope'));
const expected=JSON.parse(JSON.stringify(env));expected.boxes=expected.boxes.filter(x=>x.box.id!=='obj-4');expected.lines=expected.lines.filter(x=>x.patchline.destination[0]!=='obj-4');assert.deepStrictEqual(embedded,expected);
function overlap(p){const b=Object.values(boxes(p)).filter(b=>b.patching_rect&&b.maxclass!=='panel');for(let i=0;i<b.length;i++)for(let j=i+1;j<b.length;j++){const [x,y,w,h]=b[i].patching_rect,[X,Y,W,H]=b[j].patching_rect;assert(!(Math.min(x+w,X+W)-Math.max(x,X)>.01&&Math.min(y+h,Y+H)-Math.max(y,Y)>.01),b[i].id+' overlaps '+b[j].id);}}
overlap(stage);overlap(env);
console.log('PASS: recursive graph/port validation; all 24 exact stage-14 templates, including zero; normalized ranges; standalone and embedded hundredths truncation paths; embedded routing without duplicate broadcast; standalone/embedded equivalence; no top-level object rectangle overlaps.');
