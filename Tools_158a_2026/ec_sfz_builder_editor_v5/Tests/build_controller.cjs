// EC SFZ Builder v5 — rebuild the self-contained Max controller.
const fs=require('fs'),path=require('path');
const root=path.resolve(__dirname,'..');
const components=['ec_sfz_core.js','ec_sfz_catalog.js','ec_sfz_panes.js','ec_sfz_tables.js','ec_sfz_mapper.js','ec_sfz_audition.js','ec_sfz_controller_source.js'];
const header='/* EC SFZ Builder v5 — bundled Max controller; file-dialog repair.\n'+
 '   Keep this file beside _ec_sfz_builder_editor.maxpat and Support/.\n'+
 '   Edit Support source files, then run node Tests/build_controller.cjs.\n'+
 '   No runtime include/require or patcher access during global evaluation. */\n'+
 'autowatch=1;inlets=5;outlets=1;\n';
const output=header+components.map(name=>'\n// BEGIN '+name+'\n'+fs.readFileSync(path.join(root,'Support',name),'utf8')+'\n// END '+name+'\n').join('');
const target=path.join(root,'ec_sfz_builder_v5.js');
if(process.argv.includes('--check')){
 if(!fs.existsSync(target)||fs.readFileSync(target,'utf8')!==output)throw Error('Controller bundle is out of date. Run node Tests/build_controller.cjs.');
 console.log('PASS controller bundle matches its sources');
}else{fs.writeFileSync(target,output);console.log('Built ec_sfz_builder_v5.js');}
