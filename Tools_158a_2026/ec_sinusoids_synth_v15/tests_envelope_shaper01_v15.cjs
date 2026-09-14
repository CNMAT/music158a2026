// Revised baseline contains two different embedded shapers and a separately edited standalone.
const fs=require('fs'),path=require('path'),assert=require('assert'),vm=require('vm');
const read=n=>JSON.parse(fs.readFileSync(path.join(__dirname,n))).patcher;
const boxes=p=>Object.fromEntries(p.boxes.map(x=>[x.box.id,x.box]));
const main=read('_ec_sinusoids_synth_stage_v15.maxpat'),m=boxes(main);
const shapers=[read('Envelope-Shaper_01_v15.maxpat'),m['obj-21'].patcher,m['envelope-shaper01'].patcher];
const c={outlet:()=>{}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(__dirname,'dynamic_shape_library_v15.js'),'utf8'),c);
for(const p of shapers){const b=boxes(p),wired=(s,o,d)=>p.lines.some(({patchline:l})=>l.source[0]===s&&l.source[1]===o&&l.destination[0]===d);
 assert.deepStrictEqual(b['obj-function'].range||[0,1],[0,1]);assert.deepStrictEqual(b['obj-multislider'].setminmax,[0,1]);
 assert.deepStrictEqual(b['obj-shape-menu-norm'].items,m['syn-amp-shape-menu'].items);
 const data=b['obj-shape-coll-norm'].coll_data.data;assert.equal(data.length,24);
 for(let i=0;i<24;i++){assert.equal(data[i].key,i);assert.deepStrictEqual(data[i].value,i?Array.from(c.templates[i-1]):Array(48).fill(0));}
 assert(Object.values(boxes(b['obj-round-output'].patcher)).some(x=>x.text==='vexpr int($f1 * 100.) / 100.'));
 assert.equal(b['obj-load-trigger'].text,'t b b b');assert(wired('obj-loadbang',0,'env-init-defer'));assert(wired('env-init-defer',0,'obj-load-trigger'));assert(wired('obj-load-trigger',2,'obj-shape-count-48'));assert(wired('obj-shape-count-48',0,'obj-count-slider'));assert.equal(Number(b['obj-shape-count-48'].text)+3,48);
}
console.log('PASS: revised standalone and both embedded shapers retain 24 exact templates, normalized ranges, hundredths truncation and explicit 48-point startup.');
