/* Test-only preservation adapter for the additive message-space update.
   Exactly three appended gallery objects may be removed for comparison with
   the original automixer baseline. Existing engine/audio objects are not exempted. */
'use strict';
const fs=require('fs'),path=require('path'),assert=require('assert');
const manifest=JSON.parse(fs.readFileSync(path.join(__dirname,'diagnostics/automixer_message_space_manifest_v20.json'),'utf8'));
const clone=x=>JSON.parse(JSON.stringify(x));
function stripGallery(gallery){
  const q=clone(gallery),ids=manifest.gallery_addition_ids;
  assert.deepStrictEqual(q.boxes.slice(-ids.length).map(e=>e.box.id),ids,'Only the declared appended gallery objects may be ignored for baseline comparison.');
  assert(!q.lines.some(e=>ids.includes(e.patchline.source[0])||ids.includes(e.patchline.destination[0])),'New gallery launchers must not alter existing gallery cords.');
  q.boxes=q.boxes.slice(0,-ids.length);return q;
}
function stripGalleryBox(b){const q=clone(b);q.patcher=stripGallery(q.patcher);return q;}
function stripStandalone(document){const q=clone(document);q.patcher=stripGallery(q.patcher);return q;}
function stripMaster(document){const q=clone(document);const b=q.patcher.boxes.find(e=>e.box.id==='send-message-space-v20').box;b.patcher=stripGallery(b.patcher);return q;}
module.exports={manifest,stripGallery,stripGalleryBox,stripStandalone,stripMaster};
