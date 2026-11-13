/* Automated CONTROL-LOGIC tests. Node mocks Max APIs; not a Max runtime test.
 * Run: node tests/test_loader.js from the package directory (Node is optional).
 */
'use strict';
const fs = require('fs'), vm = require('vm'), pathmod = require('path'), assert = require('assert');
const source = fs.readFileSync(process.env.MB_TEST_SOURCE || pathmod.join(__dirname, '..', 'multibuf_js_v2.js'), 'utf8');
function world() {
    const w = { files: {}, dirs: new Set(['/','/Samples','/Other','/Project']),
        colls: {}, buffers: {}, globals: {}, tasks: [], time: 0, instances: [], next: 1,
        ops: [], destructionAccesses: 0, inFlightDeletes: 0, folderSteps: [] };
    w.add = (path, ch=2, frames=48000, opts={}) => {
        w.files[path] = Object.assign({ channels: ch, frames, ms: frames/48, bytes: frames*ch*2+44 }, opts);
        let dir = pathmod.posix.dirname(path);
        while (dir && !w.dirs.has(dir)) {w.dirs.add(dir); dir=pathmod.posix.dirname(dir);}
    };
    w.schedule = (fn, delay) => { const t={fn, at:w.time+delay, valid:true}; w.tasks.push(t); return t; };
    w.pump = (limit=100000) => {
        let count=0;
        while (w.tasks.some(t=>t.valid)) {
            if (++count>limit) throw Error('task limit / possible runaway loop');
            w.tasks.sort((a,b)=>a.at-b.at);
            const t=w.tasks.shift(); if(!t.valid) continue;
            w.time=t.at; t.valid=false; t.fn();
        }
    };
    w.until = (predicate, limit=100000) => {
        let count=0;
        while(!predicate()) {
            if (++count>limit) throw Error('predicate did not become true');
            w.tasks.sort((a,b)=>a.at-b.at);
            const t=w.tasks.shift(); if(!t) throw Error('no tasks'); if(!t.valid)continue;
            w.time=t.at;t.valid=false;t.fn();
        }
    };
    return w;
}
function instance(w) {
    const outputs=[], id=w.next++; let ctx, dying=false, onOutput=null;
    function nativeOp(op) {
        w.ops.push({op,id,time:w.time});
        if(dying) { w.destructionAccesses++; throw Error('native patch access during destruction: '+op); }
    }
    class Obj {
        constructor(host, cls, a) {
            this.host=host;this.cls=cls;this.a=a;this.varname='';this.links=[];this.alive=true;
            if(cls==='buffer~') {this.name=a[0];this.data={channels:1,frames:0,ms:0};w.buffers[this.name]=this;}
            if(cls==='coll') this.collname=a[0];
        }
        get valid() { return this.alive; }
        get nextobject() { nativeOp('nextobject'); const i=this.host.objects.indexOf(this);return this.host.objects[i+1] || null; }
        send(out, a) { for(const l of this.links.filter(l=>l.out===out)) l.to.receive(a); }
        receive(a) {
            if(this.cls==='prepend') this.send(0,this.a.concat(a[0]==='bang'?[]:a));
            if(this.cls==='outlet') w.schedule(()=>{
                if(ctx && this.alive) deliver(a[0],a.slice(1),1);
            },0);
        }
        message(sel,...a) {
            nativeOp('message:'+this.cls+':'+sel);
            if(!this.alive) throw Error('removed object');
            if(this.cls==='buffer~') {
                if(sel==='set') {if(w.buffers[this.name]===this)delete w.buffers[this.name];this.name=a[0];w.buffers[this.name]=this;return;}
                if(sel==='dblclick') return;
                if(sel==='read'||sel==='import') {
                    const f=w.files[a[0]];
                    this.lastMessage=[sel,...a]; this.reading=true;
                    if(!f||f.corrupt) return;
                    w.schedule(()=>{
                        if(!this.alive)return;
                        this.reading=false;
                        this.data={frames:f.frames,channels:a[3]===1?1:f.channels,ms:f.ms};
                        this.send(1,['bang']);
                        if(f.doublebang)this.send(1,['bang']);
                    }, f.delay || 4);
                }
            } else if(this.cls==='coll' && sel==='dump') {
                for(const row of w.colls[this.collname]||[])this.send(0,row.length===1&&typeof row[0]==='string'?['symbol',row[0]]:row);
                this.send(3,['bang']);
            }
        }
    }
    const host={objects:[],get firstobject(){nativeOp('firstobject');return this.objects[0]||null;},
        getnamed(n){nativeOp('getnamed');return this.objects.find(o=>o.varname===n)||null;},
        newdefault(x,y,c,...a){nativeOp('newdefault:'+c);const o=new Obj(this,c,a);this.objects.push(o);return o;},
        connect(from,out,to,input){nativeOp('connect');from.links.push({out,to,input});},
        remove(o){nativeOp('remove');if(!o)return;
            if(o.reading) { w.inFlightDeletes++; throw Error('deleting an unresolved native read'); }
            if(!o.alive)throw Error('double native deletion');
            this.objects=this.objects.filter(x=>x!==o);o.alive=false;
            for(const x of this.objects)x.links=x.links.filter(l=>l.to!==o);
            if(o.cls==='buffer~'&&w.buffers[o.name]===o)delete w.buffers[o.name];}
    };
    const outlet=host.newdefault(0,0,'outlet');outlet.varname='mb_feedback';
    const root={filepath:'/Project/demo.maxpat',parentpatcher:null};
    const patcher={parentpatcher:root,filepath:'/Package/multibuf_js_v2.maxpat',
        getnamed(n){nativeOp('parent.getnamed');return n==='mb_runtime'?{valid:true,subpatcher:()=>host}:null;}};
    function resolve(p) {
        p=String(p).replace(/\\/g,'/');
        if(p.startsWith('/')||p.includes(':')) return pathmod.posix.normalize(p);
        return Object.keys(w.files).find(x=>pathmod.posix.basename(x)===p) || p;
    }
    class File {
        constructor(p){const full=resolve(p);this.isopen=!!w.files[full];this.filename=pathmod.posix.basename(full);this.foldername=pathmod.posix.dirname(full);this.eof=this.isopen?w.files[full].bytes:0;}
        close(){}
    }
    class Folder {
        constructor(p){this.pathname=resolve(p).replace(/\/$/, '') || '/';this.index=0;this.items=[];
            if(w.dirs.has(this.pathname)) {
                for(const dir of w.dirs) if(pathmod.posix.dirname(dir)===this.pathname&&dir!==this.pathname)this.items.push({name:pathmod.posix.basename(dir),type:'fold'});
                for(const file of Object.keys(w.files))if(pathmod.posix.dirname(file)===this.pathname)this.items.push({name:pathmod.posix.basename(file),type:'WAVE'});
            }}
        get end(){return this.index>=this.items.length;}get filename(){return this.items[this.index]?.name||'';}
        get filetype(){return this.items[this.index]?.type||'';}get count(){return this.items.length;}
        next(){w.folderSteps.push({id,time:w.time});this.index++;}close(){this.closed=true;}
    }
    class BufferRef {
        constructor(name){nativeOp('BufferRef');this.name=name;}
        framecount(){return w.buffers[this.name]?.data.frames||0;}
        channelcount(){return w.buffers[this.name]?.data.channels||0;}
        length(){return w.buffers[this.name]?.data.ms||0;}
        freepeer(){}
    }
    function Global(name){if(!w.globals[name])w.globals[name]={};return w.globals[name];}
    class Task {
        constructor(fn,obj){this.fn=fn;this.obj=obj;this.t=null;this.valid=true;}
        schedule(ms){if(!this.valid)throw Error('invalid task');this.cancel();this.t=w.schedule(()=>this.fn.call(this.obj),ms);}
        cancel(){if(this.t)this.t.valid=false;}
        freepeer(){if(!this.valid)throw Error('double task free');this.cancel();this.valid=false;}
    }
    ctx={Task,File,Folder,Buffer:BufferRef,Global,jsarguments:['multibuf_js_v2.js',id],
        patcher,box:{valid:true},arrayfromargs:a=>Array.from(a),outlet:(...a)=>{outputs.push(a);if(onOutput)onOutput(a);},post:()=>{},
        inlet:0,messagename:'',console};
    vm.createContext(ctx);vm.runInContext(source,ctx,{filename:'multibuf_js_v2.js'});
    function deliver(sel,a=[],inlet=0) {
        ctx.inlet=inlet;ctx.messagename=sel;
        // Model Max's named-function dispatch including the private-function rule.
        const method=ctx[sel];
        if(typeof method==='function' && !['list','int','float'].includes(sel)) {
            if(method.local)throw Error('js function '+sel+' is private');
            method.apply(ctx,a);
        } else if(sel==='int')ctx.msg_int(a[0]);
        else if(sel==='float')ctx.msg_float(a[0]);
        else if(sel==='list')ctx.list.apply(ctx,a);
        else ctx.anything.apply(ctx,a);
    }
    function destroyNative() {
        // Native parent ownership, deliberately NOT a JS Patcher.remove call.
        for(const o of host.objects) {o.alive=false;if(o.cls==='buffer~'&&w.buffers[o.name]===o)delete w.buffers[o.name];}
        host.objects=[];
    }
    function dispose(order='js-first') {
        dying=true;
        if(order==='native-first')destroyNative();
        ctx.notifydeleted();
        if(order!=='native-first')destroyNative();
    }
    const ins={ctx,host,outputs,send:deliver,dispose,destroyNative,
        guardDestruction:()=>{dying=true;},
        setOutputHook:fn=>{onOutput=fn;},
        messages:s=>outputs.filter(a=>a[0]===2&&Array.isArray(a[1])&&a[1][0]===s).map(a=>Array.from(a[1])),
        names:()=>Array.from(ctx.entryOrder),
        bangs:()=>outputs.filter(a=>a[0]===1&&a[1]==='bang').length};
    w.instances.push(ins);ctx.loadbang();return ins;
}
const results=[];
function test(name,fn){try{fn();results.push({name,pass:true});console.log('PASS '+name);}catch(e){results.push({name,pass:false,error:e.stack});console.error('FAIL '+name+'\n'+e.stack);}}
function basics(){const w=world();w.add('/Samples/bell.wav',2);return [w,instance(w)];}

test('default all-channel native read; filename includes extension',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();assert.deepStrictEqual(l.names(),['bell.wav']);assert.equal(l.bangs(),1);assert.equal(w.buffers['bell.wav'].data.channels,2);assert.deepStrictEqual(w.buffers['bell.wav'].lastMessage,['read','/Samples/bell.wav',0,-1,0]);assert.deepStrictEqual(l.messages('done')[0].slice(2),[1,0,0,0]);});
test('slashless commands dispatch without private-function conflicts',()=>{const[w,l]=basics();for(const[s,a]of[['extension',[0]],['status',[]],['mono',[1]],['settings',[]],['file',['/Samples/bell.wav']]])l.send(s,a);w.pump();assert.deepStrictEqual(l.names(),['bell']);assert.equal(w.buffers.bell.data.channels,1);});
test('spaces / punctuation / Unicode are single exact name atoms',()=>{const w=world(),l=instance(w);const n='bell; 雨 $1, "high".wav';w.add('/Samples/'+n);l.send('/file',['/Samples/'+n]);w.pump();assert.deepStrictEqual(l.names(),[n]);assert.equal(l.bangs(),1);});
test('duplicate same file skips, without extra success bang',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.bangs(),1);assert.deepStrictEqual(l.messages('done')[1].slice(2),[0,0,1,0]);});
test('same basename different folder rejected with both full paths',()=>{const[w,l]=basics();w.add('/Other/bell.wav',1);l.send('/file',['/Samples/bell.wav']);l.send('/file',['/Other/bell.wav']);w.pump();const e=l.messages('error')[0];assert.equal(e[2],'name_collision');assert.equal(e[4],'/Other/bell.wav');assert.equal(e[5],'/Samples/bell.wav');assert.equal(w.buffers['bell.wav'].data.channels,2);});
test('native empty foreign buffer is not overwritten by loader',()=>{const[w,l]=basics();w.buffers['bell.wav']={data:{channels:1,frames:0,ms:0}};l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.bangs(),0);assert.equal(l.messages('error')[0][2],'name_collision');});
test('different loader instances reserve names while loading',()=>{const w=world();w.add('/Samples/bell.wav',2,48000,{delay:100});w.add('/Other/bell.wav',1);const a=instance(w),b=instance(w);a.send('/file',['/Samples/bell.wav']);w.until(()=>!!a.ctx.pending);b.send('/file',['/Other/bell.wav']);w.pump();assert.equal(a.bangs(),1);assert.equal(b.bangs(),0);assert.equal(b.messages('error')[0][2],'name_collision');});
test('folder filtering, hidden files, stable alphabetic order',()=>{const w=world(),l=instance(w);for(const n of ['z.wav','A.wav','b.aif','.hidden.wav','notes.txt'])w.add('/Samples/'+n);l.send('/folder',['/Samples']);w.pump();assert.deepStrictEqual(l.names(),['A.wav','b.aif','z.wav']);assert.equal(l.bangs(),3);assert.equal(l.messages('done').length,1);});
test('folder type alias WAVE limits selection to wav',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav');w.add('/Samples/b.aif');l.send('/folder',['/Samples','WAVE']);w.pump();assert.deepStrictEqual(l.names(),['a.wav']);});
test('MPG3 legacy filter uses import with automatic channel count',()=>{const w=world(),l=instance(w);w.add('/Samples/song.mp3');w.add('/Samples/a.wav');l.send('/folder',['/Samples','MPG3']);w.pump();assert.deepStrictEqual(l.names(),['song.mp3']);assert.deepStrictEqual(w.buffers['song.mp3'].lastMessage,['import','/Samples/song.mp3',0,-1,0]);});
test('recursive is off by default and opt-in includes subdirectories',()=>{const w=world(),l=instance(w);w.add('/Samples/top.wav');w.add('/Samples/sub/low.wav');l.send('/folder',['/Samples']);w.pump();assert.deepStrictEqual(l.names(),['top.wav']);l.send('/recursive',[1]);l.send('/folder',['/Samples']);w.pump();assert.deepStrictEqual(l.names(),['top.wav','low.wav']);});
test('missing path fails without phantom registry entry',()=>{const[w,l]=basics();l.send('/file',['/no/file.wav']);w.pump();assert.equal(l.names().length,0);assert.equal(l.messages('error')[0][2],'file_not_found');});
test('empty existing folder distinguished by parent directory',()=>{const w=world(),l=instance(w);w.dirs.add('/Samples/Empty');l.send('/folder',['/Samples/Empty']);w.pump();assert.equal(l.messages('emptyfolder').length,1);assert.deepStrictEqual(l.messages('done')[0].slice(2),[0,0,0,0]);});
test('invalid folder reports inability to confirm empty directory',()=>{const[w,l]=basics();l.send('/folder',['/NotThere']);w.pump();assert.equal(l.messages('error')[0][2],'folder_empty_or_unavailable');assert.equal(l.messages('done')[0][3],1);});
test('timeout does not emit a loaded event or successful registry entry',()=>{const[w,l]=basics();w.files['/Samples/bell.wav'].corrupt=true;l.send('/timeout',[15]);l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.bangs(),0);assert.equal(l.names().length,0);assert.equal(l.messages('error')[0][2],'load_timeout');assert.equal(Object.keys(w.buffers).length,1);assert(l.ctx.pending.waiting);assert.equal(l.messages('done').length,0);assert.equal(w.inFlightDeletes,0);});
test('failed refresh preserves the old native buffer and data',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();const old=w.buffers['bell.wav'];w.files['/Samples/bell.wav'].corrupt=true;l.send('/timeout',[15]);l.send('/refresh');w.pump();assert.strictEqual(w.buffers['bell.wav'],old);assert.equal(l.bangs(),1);assert.equal(l.names().length,1);});
test('successful refresh replaces data, preserves name and index',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();const old=w.buffers['bell.wav'];w.add('/Samples/bell.wav',4,96000);l.send('/refresh');w.pump();assert.notStrictEqual(w.buffers['bell.wav'],old);assert.equal(w.buffers['bell.wav'].data.channels,4);assert.equal(w.buffers['bell.wav'].data.frames,96000);assert.deepStrictEqual(l.names(),['bell.wav']);assert.equal(l.bangs(),2);});
test('queued refresh snapshots entries at execution, not message arrival',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);l.send('/refresh');w.pump();assert.equal(l.bangs(),2);assert.equal(l.messages('done').length,2);});
test('mono config captured for each queued batch',()=>{const w=world(),l=instance(w);w.add('/Samples/stereo.wav',2);w.add('/Samples/first.wav',4);l.send('/file',['/Samples/stereo.wav']);l.send('/mono',[1]);l.send('/file',['/Samples/first.wav']);w.pump();assert.equal(w.buffers['stereo.wav'].data.channels,2);assert.equal(w.buffers['first.wav'].data.channels,1);});
test('stop cancels remaining files, lets in-flight native read finish',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav',2,48000,{delay:100});w.add('/Samples/b.wav');l.send('/folder',['/Samples']);w.until(()=>!!l.ctx.pending);l.send('/stop');w.pump();assert.deepStrictEqual(l.names(),['a.wav']);assert.equal(l.bangs(),1);assert.equal(l.messages('done')[0][5],1);});
test('clear during read waits, discards in-flight sample, removes everything',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav',2,48000,{delay:100});l.send('/folder',['/Samples']);w.until(()=>!!l.ctx.pending);l.send('/clear');w.pump();assert.equal(l.names().length,0);assert.equal(l.bangs(),0);assert.equal(l.messages('cleared').length,1);assert.equal(Object.keys(w.buffers).length,0);});
test('capacity rejects excess buffers without counter rollover',()=>{const w=world(),l=instance(w);for(const n of ['a','b','c'])w.add('/Samples/'+n+'.wav');l.send('/maxbuffers',[2]);l.send('/folder',['/Samples']);w.pump();assert.equal(l.names().length,2);assert.equal(l.messages('done')[0][3],1);});
test('extension stripping exposes collisions instead of renumbering',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav');w.add('/Samples/a.aif');l.send('/extension',[0]);l.send('/folder',['/Samples']);w.pump();assert.deepStrictEqual(l.names(),['a']);assert.equal(l.messages('error')[0][2],'name_collision');});
test('prefix allows equal filenames from separate collections',()=>{const[w,l]=basics();w.add('/Other/bell.wav');l.send('/file',['/Samples/bell.wav']);l.send('/prefix',['B_']);l.send('/file',['/Other/bell.wav']);w.pump();assert.deepStrictEqual(l.names(),['bell.wav','B_bell.wav']);});
test('native coll first-value paths, including a spaced path',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav');w.add('/Samples/with spaces.wav');w.colls.myfiles=[['/Samples/a.wav',42],['/Samples/with spaces.wav']];l.send('/coll',['myfiles']);w.pump();assert.deepStrictEqual(l.names(),['a.wav','with spaces.wav']);assert.equal(l.messages('done').length,1);});
test('multicoll gathers two child collections in one batch',()=>{const w=world(),l=instance(w);w.add('/Samples/a.wav');w.add('/Samples/b.wav');w.colls.sets=[['A'],['B']];w.colls.A=[['/Samples/a.wav']];w.colls.B=[['/Samples/b.wav']];l.send('/multicoll',['sets']);w.pump();assert.deepStrictEqual(l.names(),['a.wav','b.wav']);assert.equal(l.messages('done').length,1);});
test('menu uses separate status outlet clear / append messages',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();l.send('/menu');w.pump();assert.deepStrictEqual(l.messages('menu'),[['menu','clear'],['menu','append','bell.wav']]);assert.equal(l.bangs(),1);});
test('duplicate native completion bangs cannot double-count a load',()=>{const[w,l]=basics();w.files['/Samples/bell.wav'].doublebang=true;l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.bangs(),1);assert.equal(l.messages('loaded').length,1);});
test('zero-frame audio rejected even after native completion bang',()=>{const[w,l]=basics();w.add('/Samples/bell.wav',2,0,{bytes:44});l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.bangs(),0);assert.equal(l.messages('error')[0][2],'empty_or_invalid_audio');});
test('legacy middle-inlet index, dump; third inlet controls verbosity',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();l.send('int',[1],2);l.send('dump',[],2);l.send('int',[1],3);w.pump();assert.equal(l.ctx.cfg.verbose,1);assert.equal(l.outputs.filter(x=>x[0]===0&&x[1]==='symbol').length,3);});
test('clearing releases cross-instance claims',()=>{const w=world();w.add('/Samples/bell.wav');const a=instance(w),b=instance(w);a.send('/file',['/Samples/bell.wav']);w.pump();a.send('/clear');w.pump();b.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(b.bangs(),1);});
test('closing delegates native destruction and releases tasks and claims',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();l.dispose();w.pump();assert.equal(w.destructionAccesses,0);assert.equal(Object.keys(w.buffers).length,0);assert.equal(w.tasks.filter(t=>t.valid).length,0);const other=instance(w);other.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(other.bangs(),1);});
test('malformed arguments and unsupported samplor mode are explicit errors',()=>{const[w,l]=basics();for(const[s,a]of[['/mono',[2]],['/timeout',[-1]],['/file',['unquoted','space.wav']],['/samplor',[1]],['FullPacket',[1,2]]])l.send(s,a);w.pump();assert.equal(l.messages('error').length,5);assert.equal(l.names().length,0);});
test('Windows paths retain drive and full path for native load',()=>{const w=world(),l=instance(w);w.add('C:/Audio Library/bell.wav');l.send('/file',['C:\\Audio Library\\bell.wav']);w.pump();assert.equal(l.bangs(),1);assert.equal(w.buffers['bell.wav'].lastMessage[1],'C:/Audio Library/bell.wav');});
test('explicit relative paths resolve beside saved top-level patch',()=>{const w=world(),l=instance(w);w.add('/Project/samples/bell.wav');l.send('/file',['./samples/bell.wav']);w.pump();assert.equal(l.bangs(),1);assert.equal(w.buffers['bell.wav'].lastMessage[1],'/Project/samples/bell.wav');});
test('no recurring Task remains when loading is finished',()=>{const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(w.tasks.filter(t=>t.valid).length,0);assert.equal(l.ctx.pending,null);assert.equal(l.ctx.batch,null);});

test('startup does not enumerate or mutate the runtime graph',()=>{
    const[w,l]=basics(); const before=w.ops.length; w.pump();
    const ops=w.ops.slice(before).map(o=>o.op);
    assert(!ops.some(o=>o==='firstobject'||o==='nextobject'||o==='remove'||o.startsWith('newdefault:')));
    assert.equal(l.host.objects.length,1);assert.equal(l.messages('ready').length,1);
});
test('startup leaves unrelated or accidentally saved boxes untouched',()=>{
    const[w,l]=basics();const extra=l.host.newdefault(0,0,'buffer~','foreign_saved_buffer');w.pump();
    assert(extra.alive);assert.equal(l.bangs(),0);
});
test('notifydeleted alone never calls native destruction',()=>{
    const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();const o=w.buffers['bell.wav'];
    const before=w.ops.length;l.ctx.notifydeleted();
    assert(o.alive);assert.equal(w.ops.length,before);assert.equal(l.ctx.dead,true);
    l.destroyNative();
});
test('native-first destruction cannot cause stale patcher access',()=>{
    const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();l.dispose('native-first');w.pump();
    assert.equal(w.destructionAccesses,0);assert.equal(l.ctx.host,null);
});
test('direct freebang shutdown and notifydeleted are idempotent',()=>{
    const[w,l]=basics();w.pump();l.guardDestruction();
    l.send('_mbshutdown');l.ctx.notifydeleted();l.ctx.notifydeleted();
    assert(l.ctx.dead);assert.equal(w.destructionAccesses,0);assert(!l.ctx.worker.valid);assert(!l.ctx.watchdog.valid);
    l.destroyNative();w.pump();
});
test('close before deferred initialization cancels all loader tasks',()=>{
    const[w,l]=basics();l.dispose();w.pump();assert.equal(w.destructionAccesses,0);
    assert.equal(l.messages('ready').length,0);assert.equal(w.tasks.filter(x=>x.valid).length,0);
});
test('close during native read ignores late native callbacks',()=>{
    const[w,l]=basics();w.files['/Samples/bell.wav'].delay=100;l.send('/file',['/Samples/bell.wav']);
    w.until(()=>!!l.ctx.pending);l.dispose();const outputs=l.outputs.length;w.pump();
    assert.equal(w.inFlightDeletes,0);assert.equal(w.destructionAccesses,0);assert.equal(l.outputs.length,outputs);
});
test('stray queued callbacks after shutdown are ignored',()=>{
    const[w,l]=basics();w.pump();l.dispose();const n=l.outputs.length;
    l.send('_mbdone',[42],1);l.send('/folder',['/Samples']);l.ctx.timedout();l.ctx.tick();w.pump();
    assert.equal(l.outputs.length,n);assert.equal(w.destructionAccesses,0);
});
test('timeout retains private target; late completion discards without success',()=>{
    const[w,l]=basics();w.files['/Samples/bell.wav'].delay=100;l.send('/timeout',[10]);l.send('/file',['/Samples/bell.wav']);
    w.until(()=>l.messages('error').length>0);assert(l.ctx.pending);assert(l.ctx.pending.node.alive);
    assert.equal(w.inFlightDeletes,0);assert.equal(l.messages('done').length,0);
    w.pump();assert.equal(l.bangs(),0);assert.equal(l.messages('error').length,1);assert.equal(l.messages('readsettled').length,1);
    assert.deepStrictEqual(l.messages('done')[0].slice(2),[0,1,0,1]);assert.equal(Object.keys(w.buffers).length,0);
});
test('a timed-out decoder blocks additional loads instead of queueing them',()=>{
    const[w,l]=basics();w.files['/Samples/bell.wav'].corrupt=true;l.send('/timeout',[10]);l.send('/file',['/Samples/bell.wav']);w.pump();
    l.send('/file',['/Samples/bell.wav']);w.pump();assert.equal(l.ctx.requests.length,0);
    assert(l.messages('error').some(e=>e[2]==='native_read_unresolved'));assert.equal(w.inFlightDeletes,0);
});
test('clear after timeout cannot delete a potentially active decoder',()=>{
    const[w,l]=basics();w.files['/Samples/bell.wav'].corrupt=true;l.send('/timeout',[10]);l.send('/file',['/Samples/bell.wav']);w.pump();
    l.send('/clear');w.pump();assert(l.ctx.pending);assert(l.ctx.clearRequested);assert.equal(l.messages('cleared').length,0);
    assert.equal(w.inFlightDeletes,0);l.dispose();
});
test('clear after timeout completes only after late native completion',()=>{
    const[w,l]=basics();w.files['/Samples/bell.wav'].delay=100;l.send('/timeout',[10]);l.send('/file',['/Samples/bell.wav']);
    w.until(()=>l.messages('waiting').length>0);l.send('/clear');w.pump();
    assert.equal(w.inFlightDeletes,0);assert.equal(l.messages('cleared').length,1);assert.equal(l.bangs(),0);
});
test('timeout cancels queued batches rather than starting overlapping reads',()=>{
    const[w,l]=basics();w.add('/Other/second.wav');w.files['/Samples/bell.wav'].delay=100;
    l.send('/timeout',[10]);l.send('/file',['/Samples/bell.wav']);l.send('/file',['/Other/second.wav']);w.pump();
    assert.equal(l.messages('cancelled').length,1);assert.equal(l.messages('loading').length,1);assert.equal(l.bangs(),0);
});
test('clear releases at most eight owned buffers per worker turn',()=>{
    const w=world(),l=instance(w);for(let i=0;i<35;i++)w.add('/Samples/n'+i+'.wav');l.send('/folder',['/Samples']);w.pump();
    const before=w.ops.length;l.send('/clear');w.pump();const times={};
    for(const op of w.ops.slice(before))if(op.op==='remove')times[op.time]=(times[op.time]||0)+1;
    assert(Math.max(...Object.values(times))<=8);assert(Object.keys(times).length>=5);assert.equal(l.names().length,0);
});
test('clear does not remove unrelated native objects',()=>{
    const[w,l]=basics();w.pump();const e=l.host.newdefault(0,0,'buffer~','external');
    l.send('/file',['/Samples/bell.wav']);w.pump();l.send('/clear');w.pump();assert(e.alive);
    assert(w.buffers.external);assert.equal(l.names().length,0);
});
test('empty-folder parent validation yields every 128 entries',()=>{
    const w=world(),l=instance(w);for(let i=0;i<1200;i++)w.dirs.add('/Samples/D'+i);w.dirs.add('/Samples/Empty');
    l.send('/folder',['/Samples/Empty']);w.pump();const counts={};
    for(const s of w.folderSteps)counts[s.time]=(counts[s.time]||0)+1;
    assert(Math.max(...Object.values(counts))<=128);assert.equal(l.messages('emptyfolder').length,1);
});
test('100 repeated create-load-close cycles leave no buffers or live tasks',()=>{
    const w=world();w.add('/Samples/a.wav');
    for(let i=0;i<100;i++){const l=instance(w);l.send('/folder',['/Samples']);w.pump();assert.equal(l.bangs(),1);l.dispose(i%2?'native-first':'js-first');w.pump();}
    assert.equal(Object.keys(w.buffers).length,0);assert.equal(w.destructionAccesses,0);assert.equal(w.inFlightDeletes,0);
    assert.equal(w.tasks.filter(t=>t.valid).length,0);
});
test('version query identifies the v2 build',()=>{
    const[w,l]=basics();l.send('/version');w.pump();assert.deepStrictEqual(l.messages('version')[0],['version','multibuf_js_v2','2.0.0']);
});


test('downstream close during loading status cannot issue a native read',()=>{
    const[w,l]=basics();l.setOutputHook(a=>{if(a[0]===2&&a[1][0]==='loading')l.dispose();});
    l.send('/file',['/Samples/bell.wav']);w.pump();
    assert.equal(w.destructionAccesses,0);assert.equal(w.ops.filter(o=>o.op==='message:buffer~:read').length,0);
});
test('shutdown closes an active folder iterator without native patch access',()=>{
    const w=world(),l=instance(w);for(let i=0;i<400;i++)w.add('/Samples/n'+i+'.wav');
    l.send('/folder',['/Samples']);w.until(()=>!!(l.ctx.scan&&l.ctx.scan.folder));const f=l.ctx.scan.folder;
    l.dispose();w.pump();assert(f.closed);assert.equal(w.destructionAccesses,0);
});
test('shutdown closes an empty-folder parent probe',()=>{
    const w=world(),l=instance(w);w.dirs.add('/Samples/Empty');l.send('/folder',['/Samples/Empty']);
    w.until(()=>!!(l.ctx.scan&&l.ctx.scan.probe));const f=l.ctx.scan.probe.folder;
    l.dispose();w.pump();assert(f.closed);assert.equal(w.destructionAccesses,0);
});
test('late callback after refresh timeout keeps the original public buffer',()=>{
    const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);w.pump();const old=w.buffers['bell.wav'];
    w.add('/Samples/bell.wav',4,96000,{delay:100});l.send('/timeout',[10]);l.send('/refresh');w.pump();
    assert.strictEqual(w.buffers['bell.wav'],old);assert.equal(l.bangs(),1);assert.equal(w.inFlightDeletes,0);
    assert.equal(l.messages('readsettled').length,1);
});
test('shutdown during chunked clear stops subsequent scripted deletion',()=>{
    const w=world(),l=instance(w);for(let i=0;i<40;i++)w.add('/Samples/n'+i+'.wav');l.send('/folder',['/Samples']);w.pump();
    l.send('/clear');w.until(()=>l.names().length<40);assert(l.names().length>0);l.dispose();w.pump();
    assert.equal(w.destructionAccesses,0);assert.equal(Object.keys(w.buffers).length,0);
});
test('completed native buffer removed externally is rejected using valid guard',()=>{
    const[w,l]=basics();l.send('/file',['/Samples/bell.wav']);
    w.until(()=>!!l.ctx.pending&&!l.ctx.pending.node.reading);l.host.remove(l.ctx.pending.node);w.pump();
    assert.equal(l.bangs(),0);assert(l.messages('error').some(e=>e[2]==='buffer_object_missing'));
});

const failed=results.filter(x=>!x.pass);
console.log(`\n${results.length-failed.length}/${results.length} control-logic tests passed.`);
if(process.argv.includes('--json'))fs.writeFileSync(pathmod.join(__dirname,'results.json'),JSON.stringify({kind:'Node mock-Max control-logic tests; NOT native Max execution',passed:results.length-failed.length,total:results.length,results},null,2));
process.exitCode=failed.length?1:0;
