/* EC SFZ Builder v5 — bundled Max controller; file-dialog repair.
   Keep this file beside _ec_sfz_builder_editor.maxpat and Support/.
   Edit Support source files, then run node Tests/build_controller.cjs.
   No runtime include/require or patcher access during global evaluation. */
autowatch=1;inlets=5;outlets=1;

// BEGIN ec_sfz_core.js
/* EC SFZ Builder v5 — source-preserving instrument model. ES5 / Max js.
   No Max/UI/file APIs here: the same model can drive a future graphical mapper.
   Supported structural headers: control/global/group/region. Unknown opcodes survive.
   Includes, macros and other headers stay in text mode; never flatten them silently. */
var SfzCore = (function () {
    function trim(s) { return String(s).replace(/^\s+|\s+$/g, ''); }
    function clone(x) { return JSON.parse(JSON.stringify(x)); }
    function mask(s) {
        var a=s.split(''), comments=[], i=0, start, closed;
        while(i<s.length) {
            if(s.substr(i,2)==='//') {
                start=i; while(i<s.length && s.charAt(i)!=='\n') a[i++]=' ';
                comments.push({start:start,end:i});
            } else if(s.substr(i,2)==='/*') {
                start=i; a[i++]=' '; a[i++]=' '; closed=false;
                while(i<s.length) {
                    if(s.substr(i,2)==='*/') {a[i++]=' ';a[i++]=' ';closed=true;break;}
                    if(s.charAt(i)!=='\n' && s.charAt(i)!=='\r')a[i]=' ';i++;
                }
                if(!closed)throw new Error('Unclosed /* comment.');
                comments.push({start:start,end:i});
            } else i++;
        }
        return {text:a.join(''),comments:comments};
    }
    function tokens(body) {
        var m=mask(body), rx=/(^|\s)([A-Za-z_][A-Za-z_0-9]*)[ \t]*=[ \t]*/g, a=[], q, i,j,end,nl;
        while((q=rx.exec(m.text)))a.push({key:q[2],start:q.index+q[1].length,vs:rx.lastIndex});
        for(i=0;i<a.length;i++) {
            end=i+1<a.length?a[i+1].start:body.length;
            nl=body.indexOf('\n',a[i].vs);if(nl>=0 && nl<end)end=nl;
            for(j=0;j<m.comments.length;j++)if(m.comments[j].start>=a[i].vs && m.comments[j].start<end)end=m.comments[j].start;
            while(end>a[i].vs && /\s/.test(body.charAt(end-1)))end--;
            a[i].ve=end;a[i].value=body.substring(a[i].vs,end);
        }
        return a;
    }
    function parse(s) {
        s=String(s); var clean=mask(s).text, rx=/<([A-Za-z_][A-Za-z_0-9]*)>/g, q, marks=[],doc={preamble:'',nodes:[],next:1,blocked:[]};
        if(/^\s*#\s*(include|define)\b/m.test(clean) || /\$[A-Za-z_]/.test(clean))doc.blocked.push('Includes/macros require text mode.');
        while((q=rx.exec(clean)))marks.push({type:q[1],start:q.index,end:rx.lastIndex});
        doc.preamble=s.substring(0,marks.length?marks[0].start:s.length);
        if(trim(mask(doc.preamble).text))doc.blocked.push('Text or directives before the first header are not represented by the tables.');
        for(var i=0;i<marks.length;i++) {
            q=marks[i];
            if(!/^(control|global|group|region)$/.test(q.type))doc.blocked.push('Header <'+q.type+'> requires text mode.');
            doc.nodes.push({id:doc.next++,type:q.type,header:s.substring(q.start,q.end),body:s.substring(q.end,i+1<marks.length?marks[i+1].start:s.length)});
        }
        return doc;
    }
    function source(d) {var s=d.preamble;for(var i=0;i<d.nodes.length;i++)s+=d.nodes[i].header+d.nodes[i].body;return s;}
    function pretty(d) {
        if(d.blocked.length)return d;
        for(var ni=0;ni<d.nodes.length;ni++){
            var n=d.nodes[ni],b=stripBlockLabel(n.body),ts=tokens(b);
            for(var ti=ts.length-1;ti>=0;ti--){
                var start=ts[ti].start,left=start;
                while(left>0 && /[ \t]/.test(b.charAt(left-1)))left--;
                if(left===0 || b.charAt(left-1)!=='\n')b=b.substring(0,left)+'\n'+b.substring(start);
            }
            if(b.charAt(0)!=='\n')b='\n'+b;
            n.body=b.replace(/[ \t]+$/,'').replace(/\n*$/,'\n\n');
        }
        labelBlocks(d,true);return d;
    }
    // Only this exact generated prefix is managed; user comments remain intact.
    var BLOCK_LABEL=/^[ \t\r\n]*\/\/ (?:Region ID \d+; Group ID (?:\d+|none)|Group ID \d+)[ \t]*(?:\r?\n|$)/;
    function stripBlockLabel(body) {return String(body).replace(BLOCK_LABEL,'');}
    // Visible numbering is per header type and follows document order.
    // Keep n.id unique across ALL blocks: editing and inheritance use that ID.
    function displayIds(d) {
        var counts={},ids={},i,n;
        for(i=0;i<d.nodes.length;i++){
            n=d.nodes[i];counts[n.type]=(counts[n.type]||0)+1;ids[n.id]=counts[n.type];
        }
        return ids;
    }
    function displayId(d,id) {return displayIds(d)[id];}
    function labelBlocks(d,all) {
        if(d.blocked.length)return d;
        var rel=relations(d),numbers=displayIds(d);
        for(var i=0;i<d.nodes.length;i++){
            var n=d.nodes[i];if(n.type!=='region'&&n.type!=='group')continue;
            if(!all&&!BLOCK_LABEL.test(n.body))continue;
            var body=stripBlockLabel(n.body).replace(/^[ \t]*\r?\n/,'');
            var label=n.type==='group'?'Group ID '+numbers[n.id]:'Region ID '+numbers[n.id]+'; Group ID '+(numbers[rel[n.id].group]||'none');
            n.body=' // '+label+'\n'+body;
        }
        return d;
    }
    function node(d,id) {for(var i=0;i<d.nodes.length;i++)if(d.nodes[i].id===Number(id))return d.nodes[i];throw new Error('Block no longer exists.');}
    function own(n) {var ts=tokens(n.body),o={};for(var i=0;i<ts.length;i++)o[ts[i].key]=ts[i].value;return o;}
    function relations(d) {
        var g=null,group=null,control=null,out={};
        for(var i=0;i<d.nodes.length;i++) {
            var n=d.nodes[i];
            if(n.type==='control')control=n.id;
            if(n.type==='global'){g=n.id;group=null;}
            if(n.type==='group')group=n.id;
            out[n.id]={global:g,group:group,control:control};
        }
        return out;
    }
    function applied(n,o) {
        var ts=tokens(n.body);for(var i=0;i<ts.length;i++) {
            o[ts[i].key]=ts[i].value;
            if(ts[i].key==='key'){o.lokey=ts[i].value;o.hikey=ts[i].value;o.pitch_keycenter=ts[i].value;}
        }return o;
    }
    function effective(d,id) {
        var n=node(d,id),r=relations(d)[id],o={};
        if(n.type!=='control') {
            if(r.global && r.global!==id)applied(node(d,r.global),o);
            if(n.type==='region' && r.group)applied(node(d,r.group),o);
        }return applied(n,o);
    }
    function local(n) {return applied(n,{});}
    function regions(d) {return d.nodes.filter(function(n){return n.type==='region';});}
    function midi(v) {
        v=trim(v);if(/^\d+$/.test(v))return Number(v);
        var m=/^([A-Ga-g])([#b]?)(-?\d+)$/.exec(v);if(!m)return NaN;
        var pitches={C:0,D:2,E:4,F:5,G:7,A:9,B:11};
        return (Number(m[3])+1)*12+pitches[m[1].toUpperCase()]+(m[2]==='#'?1:m[2]==='b'?-1:0);
    }
    var numeric={
        key:[0,127,1],lokey:[0,127,1],hikey:[0,127,1],pitch_keycenter:[0,127,1],lovel:[1,127,1],hivel:[1,127,1],
        volume:[-144,24,0],pan:[-100,100,0],tune:[-100,100,0],transpose:[-127,127,1],pitch_keytrack:[-1200,1200,0],
        amp_veltrack:[-100,100,0],ampeg_delay:[0,100,0],ampeg_attack:[0,100,0],ampeg_hold:[0,100,0],ampeg_decay:[0,100,0],ampeg_sustain:[0,100,0],ampeg_release:[0,100,0],
        loop_start:[0,4294967295,1],loop_end:[0,4294967295,1],offset:[0,4294967295,1],end:[0,4294967295,1],
        delay:[0,100,0],count:[0,4294967295,1],seq_length:[1,100,1],seq_position:[1,100,1],
        group:[0,4294967295,1],off_by:[0,4294967295,1],lorand:[0,1,0],hirand:[0,1,0],
        cutoff:[0,100000,0],resonance:[0,40,0],locc64:[0,127,1],hicc64:[0,127,1],
        bend_up:[0,9600,0],bend_down:[-9600,0,0],cutoff_oncc1:[-9600,9600,0]
    };
    var enums={loop_mode:['no_loop','one_shot','loop_continuous','loop_sustain'],trigger:['attack','release','release_key','first','legato'],off_mode:['fast','normal'],fil_type:['lpf_1p','hpf_1p','lpf_2p','hpf_2p','bpf_2p','brf_2p','lpf_4p','hpf_4p','lpf_6p','hpf_6p','pink']};
    function validValue(k,v) {
        if(!/^[A-Za-z_][A-Za-z_0-9]*$/.test(k))throw new Error('Invalid opcode name: '+k);
        v=trim(v);if(v==='')return '';
        if(/[\r\n<>]/.test(v) || /\/\*|\/\//.test(v) || /\s\w+\s*=/.test(v))throw new Error('Enter only the value for '+k+'.');
        var rule=numeric[k],num;
        if(rule) {
            num=/^(key|lokey|hikey|pitch_keycenter)$/.test(k)?midi(v):Number(v);
            if(!isFinite(num) || num<rule[0] || num>rule[1] || (rule[2] && Math.floor(num)!==num))throw new Error(k+' expects '+(rule[2]?'an integer':'a number')+' '+rule[0]+' to '+rule[1]+'.');
        }
        if(enums[k] && enums[k].indexOf(v)<0)throw new Error(k+': choose '+enums[k].join(', ')+'.');
        if(k==='sample'||k==='default_path') {
            if(/["=$#]/.test(v))throw new Error(k+': use a literal path without quotes, =, $ or #.');
            v=v.replace(/\\/g,'/');
        }
        return v;
    }
    function set(n,k,v,comment) {
        v=validValue(k,v);var ts=tokens(n.body),hits=[],i;
        for(i=0;i<ts.length;i++)if(ts[i].key===k)hits.push(ts[i]);
        if(hits.length===1 && hits[0].value===v)return;
        for(i=hits.length-1;i>=0;i--) {
            var t=hits[i];
            if(v!=='' && i===hits.length-1)n.body=n.body.substring(0,t.vs)+v+n.body.substring(t.ve);
            else n.body=n.body.substring(0,t.start)+n.body.substring(t.ve);
        }
        if(!hits.length && v!=='')n.body+=(/\n$/.test(n.body)?'':'\n')+k+'='+v+(comment?' // '+comment.replace(/[\r\n]/g,' '):'')+'\n';
    }
    function mapset(n,k,v) {
        if(/^(lokey|hikey|pitch_keycenter)$/.test(k) && own(n).hasOwnProperty('key')) {
            var o=local(n);set(n,'key','');set(n,'lokey',o.lokey);set(n,'hikey',o.hikey);set(n,'pitch_keycenter',o.pitch_keycenter);
        }
        set(n,k,v);
    }
    function create(d,type,body,at) {
        if(d.blocked.length)throw new Error(d.blocked.join(' '));
        var n={id:d.next++,type:type,header:'<'+type+'>',body:body===undefined?'\n':body};
        if(at===undefined)at=d.nodes.length;
        if(at===0 && d.preamble && !/\n$/.test(d.preamble))d.preamble+='\n';
        if(at>0 && !/\n$/.test(d.nodes[at-1].body))d.nodes[at-1].body+='\n';
        d.nodes.splice(at,0,n);return n;
    }
    function insertRegion(d,groupId,values) {
        var at=d.nodes.length;
        if(groupId) {
            var group=node(d,groupId);if(group.type!=='group')throw new Error('Import target must be a group.');
            at=d.nodes.indexOf(group)+1;while(at<d.nodes.length && d.nodes[at].type==='region')at++;
        }
        var parts=[],k,v;
        for(k in values)if(values.hasOwnProperty(k)){v=validValue(k,values[k]);if(v!=='')parts.push(k+'='+v);}
        return create(d,'region','\n'+parts.join('\n')+'\n\n',at);
    }
    // Rebuild from the applied model: deletes, edits, Undo and imports cannot
    // leave a stale allocation map. Velocity layers still reserve the whole key.
    function keyUsageAll(d) {
        var out={},global=null,group=null,gid=0,groupNumber=0,i,j,n,o,lo,hi,u;
        function bucket(id,number) {
            if(!out[id])out[id]={group:id,used:[],free:[],available:[],regions:0,shared:0,invalid:[],
                start:number===2?127:number===3?84:0,step:number===2||number===3?-1:1};
            return out[id];
        }
        bucket(0);
        for(i=0;i<d.nodes.length;i++) {
            n=d.nodes[i];
            if(n.type==='global'){global=n;group=null;gid=0;}
            if(n.type==='group'){group=n;gid=n.id;bucket(gid,++groupNumber);}
            if(n.type!=='region')continue;
            u=bucket(gid);u.regions++;o={};
            if(global)applied(global,o);if(group)applied(group,o);applied(n,o);
            lo=midi(o.lokey===undefined?'0':o.lokey);hi=midi(o.hikey===undefined?'127':o.hikey);
            if(!isFinite(lo)||!isFinite(hi)||Math.floor(lo)!==lo||Math.floor(hi)!==hi||lo<0||hi>127||lo>hi){u.invalid.push(n.id);continue;}
            for(j=lo;j<=hi;j++)u.used[j]=(u.used[j]||0)+1;
        }
        for(i in out)if(out.hasOwnProperty(i)) {
            u=out[i];
            for(j=0;j<128;j++){if(!u.used[j])u.free.push(j);else if(u.used[j]>1)u.shared++;}
            // Group numbers follow the displayed <group> order, not private
            // block IDs. Group 3 stops at 0; it never wraps into 85..127.
            for(j=u.start;j>=0&&j<128;j+=u.step)if(!u.used[j])u.available.push(j);
        }
        return out;
    }
    function keyUsage(d,groupId) {
        if(d.blocked.length)throw new Error(d.blocked.join(' '));
        var u=keyUsageAll(d)[Number(groupId)||0];
        if(!u)throw new Error('Choose an existing group.');
        if(u.invalid.length)throw new Error('Correct invalid key ranges in the destination group before adding samples.');
        return u;
    }
    function freeKeys(d,groupId,count) {
        var u=keyUsage(d,groupId),free=u.available;
        if(count<1||Math.floor(count)!==count)throw new Error('Sample count must be a positive integer.');
        if(count>free.length)throw new Error('Destination group has '+free.length+' available MIDI keys in its '+(u.step<0?u.start+' down to 0':'0 up to 127')+' placement range; '+count+' needed. No samples were added. Free keys or choose another group.');
        return free.slice(0,count);
    }
    function duplicateRegion(d,id) {
        var original=node(d,id);if(original.type!=='region')throw new Error('Select a region.');
        var gid=relations(d)[id].group||0,u=keyUsage(d,gid),o=effective(d,id);
        var lo=midi(o.lokey===undefined?'0':o.lokey),hi=midi(o.hikey===undefined?'127':o.hikey);
        var root=midi(o.pitch_keycenter===undefined?'60':o.pitch_keycenter),width=hi-lo+1,k,j,found=-1;
        if(!isFinite(root)||root<0||root>127)throw new Error('Correct the root key before duplicating this region.');
        for(var anchor=u.start;anchor>=0&&anchor<128;anchor+=u.step) {
            k=u.step<0?anchor-width+1:anchor;
            if(k<0||k+width>128)continue;
            if(root+k-lo<0||root+k-lo>127)continue;
            for(j=0;j<width&&!u.used[k+j];j++){}
            if(j===width){found=k;break;}
        }
        if(found<0)throw new Error('No free range of '+width+' keys fits this duplicate in its group. Free a range first.');
        // Prepare all values before insertion, preserving non-mapping opcodes.
        var copy=clone(original);mapset(copy,'lokey',String(found));mapset(copy,'hikey',String(found+width-1));
        mapset(copy,'pitch_keycenter',String(root+found-lo));
        return create(d,'region',copy.body,d.nodes.indexOf(original)+1);
    }
    // A group copy is a new layer: preserve mappings and every local opcode.
    // Insert beside the source so its global/control inheritance stays intact.
    function duplicateGroup(d,id) {
        if(d.blocked.length)throw new Error(d.blocked.join(' '));
        var original=node(d,id);
        if(original.type!=='group')throw new Error('Choose a group in Opcodes for Scope, or Edit selected on one of its regions.');
        var start=d.nodes.indexOf(original),end=start+1,i,copy,groupCopy,regionCopies=[];
        while(end<d.nodes.length&&d.nodes[end].type!=='group'&&d.nodes[end].type!=='global'){
            if(d.nodes[end].type!=='region')throw new Error('This group crosses a <'+d.nodes[end].type+'> block. Duplicate it in SFZ Program to preserve its path context.');
            end++;
        }
        // Capture before inserting, including custom opcodes and user comments.
        var originals=d.nodes.slice(start,end);
        for(i=0;i<originals.length;i++){
            copy=create(d,originals[i].type,originals[i].body,end+i);
            if(i===0)groupCopy=copy;else regionCopies.push(copy);
        }
        labelBlocks(d,false);
        return {group:groupCopy,regions:regionCopies};
    }
    function check(d) {
        var errors=[],warnings=[],i,j,ts,n,o,ids=regions(d),numbers=displayIds(d);
        for(i=0;i<d.nodes.length;i++) {
            n=d.nodes[i];ts=tokens(n.body);var seen={};
            for(j=0;j<ts.length;j++) {
                if(!trim(ts[j].value))errors.push('<'+n.type+'> #'+numbers[n.id]+': '+ts[j].key+' has no value.');
                if(seen[ts[j].key])warnings.push('<'+n.type+'> #'+numbers[n.id]+': duplicate '+ts[j].key+'; last value is displayed.');
                seen[ts[j].key]=true;
            }
        }
        for(i=0;i<ids.length;i++) {
            n=ids[i];o=effective(d,n.id);var label='Region '+numbers[n.id]+': ';
            if(!o.sample)errors.push(label+'no sample assigned or inherited.');
            if(midi(o.lokey===undefined?'0':o.lokey)>midi(o.hikey===undefined?'127':o.hikey))errors.push(label+'low key exceeds high key.');
            if(Number(o.lovel===undefined?1:o.lovel)>Number(o.hivel===undefined?127:o.hivel))errors.push(label+'low velocity exceeds high velocity.');
            if(o.loop_start!==undefined&&o.loop_end!==undefined&&Number(o.loop_start)>Number(o.loop_end))errors.push(label+'loop start exceeds loop end.');
            if(o.seq_length!==undefined&&o.seq_position!==undefined&&Number(o.seq_position)>Number(o.seq_length))errors.push(label+'sequence position exceeds length.');
            if(o.resonance!==undefined&&o.cutoff===undefined)warnings.push(label+'resonance is set without cutoff; this can silence the filter in sfizz. Set cutoff (for example 20000 Hz).');
        }
        if(!ids.length)warnings.push('No regions yet.');
        if(!d.blocked.length){
            var usage=keyUsageAll(d),gid,u;
            for(gid in usage)if(usage.hasOwnProperty(gid)){
                u=usage[gid];
                if(u.shared)warnings.push((Number(gid)?'Group '+numbers[gid]:'No group')+': '+u.shared+' MIDI keys are shared by multiple regions. This may be an intentional layer; automatic additions skip these keys.');
            }
        }
        return {errors:errors,warnings:warnings};
    }
    function norm(p) {
        p=String(p).replace(/\\/g,'/');var lead=p.charAt(0)==='/'?'/':'',a=p.split('/'),out=[];
        for(var i=0;i<a.length;i++){if(!a[i]||a[i]==='.')continue;if(a[i]==='..'&&out.length&&out[out.length-1]!=='..'&&!/:$/.test(out[out.length-1]))out.pop();else out.push(a[i]);}
        return lead+out.join('/');
    }
    function absolute(p) {return /^(\/|[^/]+:\/)/.test(String(p).replace(/\\/g,'/'));}
    function resolve(base,p) {return norm(absolute(p)?p:base+'/'+p);}
    function relative(base,target) {
        base=norm(base);target=norm(target);var a=base.split('/'),b=target.split('/'),i=0,out=[];
        if(a[0]!==b[0])throw new Error('Use a destination on the same drive as the samples.');
        while(i<a.length&&i<b.length&&a[i]===b[i])i++;
        for(var j=i;j<a.length;j++)if(a[j])out.push('..');return out.concat(b.slice(i)).join('/')||'.';
    }
    function samplePath(d,id,base) {
        var o=effective(d,id),r=relations(d)[id],prefix=r.control?own(node(d,r.control)).default_path||'':'',p=o.sample||'';
        if(!p || p.charAt(0)==='*')return p;
        if(absolute(p))return norm(p);
        return resolve(base,prefix+p);
    }
    function rebase(d,oldBase,newBase) {
        if(d.blocked.length)throw new Error('Save As with path changes is unavailable for includes/macros/unsupported headers. Use the same folder.');
        var rels=relations(d),i,n,o,prefix;
        for(i=0;i<d.nodes.length;i++) {
            n=d.nodes[i];o=own(n);
            if(o.sample && o.sample.charAt(0)!=='*') {
                prefix=rels[n.id].control?own(node(d,rels[n.id].control)).default_path||'':'';
                set(n,'sample',relative(newBase,resolve(oldBase,absolute(o.sample)?o.sample:prefix+o.sample)));
            }
        }
        for(i=0;i<d.nodes.length;i++)if(d.nodes[i].type==='control')set(d.nodes[i],'default_path','');
    }
    function filenameRoot(p) {
        var name=p.replace(/^.*[\\/]/,'').replace(/\.[^.]+$/,''),m=/(?:^|[_\s-])([A-Ga-g][#b]?-?\d+)$/.exec(name);
        if(m)return midi(m[1]);m=/(?:^|[_\s-])(\d{1,3})$/.exec(name);return m?Number(m[1]):NaN;
    }
    function splitRanges(roots) {
        var sorted=roots.slice().sort(function(a,b){return a-b;}),map={},i;
        for(i=0;i<sorted.length;i++) {
            if(!isFinite(sorted[i])||sorted[i]<0||sorted[i]>127||Math.floor(sorted[i])!==sorted[i])throw new Error('Every sample needs a MIDI root from 0 to 127.');
            if(i && sorted[i]===sorted[i-1])throw new Error('Pitched split requires unique roots. Import velocity layers into separate groups.');
            map[sorted[i]]={lo:i?Math.floor((sorted[i-1]+sorted[i])/2)+1:0,hi:i<sorted.length-1?Math.floor((sorted[i]+sorted[i+1])/2):127};
        }return map;
    }
    return {trim:trim,clone:clone,mask:mask,tokens:tokens,parse:parse,source:source,pretty:pretty,labelBlocks:labelBlocks,displayIds:displayIds,displayId:displayId,node:node,own:own,local:local,relations:relations,effective:effective,regions:regions,midi:midi,set:set,mapset:mapset,create:create,insertRegion:insertRegion,keyUsageAll:keyUsageAll,keyUsage:keyUsage,freeKeys:freeKeys,duplicateRegion:duplicateRegion,duplicateGroup:duplicateGroup,check:check,validValue:validValue,norm:norm,absolute:absolute,resolve:resolve,relative:relative,samplePath:samplePath,rebase:rebase,filenameRoot:filenameRoot,splitRanges:splitRanges};
}());
if(typeof module!=='undefined' && module.exports)module.exports=SfzCore;

// END ec_sfz_core.js

// BEGIN ec_sfz_catalog.js
/* EC SFZ Builder v5 — Annotated Tutorial 02 reference. Headers are not opcodes. */
var REFERENCE=[
  {
    "category": "Headers and paths",
    "name": "<control>",
    "example": "<control>",
    "comment": "File-level settings such as default_path.",
    "detail": "Place before the instrument regions. Headers are not opcodes."
  },
  {
    "category": "Headers and paths",
    "name": "<global>",
    "example": "<global>",
    "comment": "Defaults inherited by following groups and regions.",
    "detail": ""
  },
  {
    "category": "Headers and paths",
    "name": "<group>",
    "example": "<group>",
    "comment": "Shared settings for following regions, until the next group.",
    "detail": "A new group resets the previous group settings; global defaults remain."
  },
  {
    "category": "Headers and paths",
    "name": "<region>",
    "example": "<region>",
    "comment": "Begin a playable region; inherit global and group settings.",
    "detail": "Every matching region can sound. Overlapping regions create layers."
  },
  {
    "category": "Headers and paths",
    "name": "sample",
    "example": "sample=My Sound.wav",
    "comment": "Audio file path, relative to the SFZ file.",
    "detail": "Spaces in filenames are allowed; do not add surrounding quotes."
  },
  {
    "category": "Headers and paths",
    "name": "default_path",
    "example": "default_path=samples/",
    "comment": "Prefix added to sample paths; place under <control>.",
    "detail": "Use the trailing slash. Generated folder-list paths already include subfolders."
  },
  {
    "category": "Key and pitch",
    "name": "key",
    "example": "key=60",
    "comment": "Set lokey, hikey and pitch_keycenter to the same note.",
    "detail": "MIDI 60 alone triggers this sample at its original pitch."
  },
  {
    "category": "Key and pitch",
    "name": "lokey",
    "example": "lokey=48",
    "comment": "Lowest triggering MIDI note, inclusive; normally 0-127.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "hikey",
    "example": "hikey=84",
    "comment": "Highest triggering MIDI note, inclusive; normally 0-127.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "pitch_keycenter",
    "example": "pitch_keycenter=60",
    "comment": "Root: MIDI note that plays the sample at original pitch.",
    "detail": "Root pitch does not restrict the playable key range."
  },
  {
    "category": "Key and pitch",
    "name": "pitch_keytrack",
    "example": "pitch_keytrack=100",
    "comment": "Pitch change in cents per key; 100 = normal semitones.",
    "detail": "0 disables keyboard transposition."
  },
  {
    "category": "Key and pitch",
    "name": "transpose",
    "example": "transpose=12",
    "comment": "Transpose the sample by semitones; 12 = one octave up.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "tune",
    "example": "tune=-7",
    "comment": "Fine tuning in cents; 100 cents = one semitone.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "bend_up",
    "example": "bend_up=200",
    "comment": "Pitch-wheel upward range in cents; 200 = two semitones.",
    "detail": ""
  },
  {
    "category": "Key and pitch",
    "name": "bend_down",
    "example": "bend_down=-200",
    "comment": "Pitch-wheel downward range in cents; negative values bend down.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "trigger",
    "example": "trigger=attack",
    "comment": "Choose when a region starts.",
    "detail": "attack = note-on; first = first held key; legato = overlapping key. release waits for pedal-up when sustained; release_key starts at key-up."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_mode",
    "example": "loop_mode=no_loop",
    "comment": "Choose looping and response to note-off.",
    "detail": "no_loop = play once, obey release; one_shot = ignore note-off. loop_continuous repeats through release; loop_sustain exits at release."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_start",
    "example": "loop_start=0",
    "comment": "First frame of the sample loop, counted from zero.",
    "detail": "Frames, not milliseconds. Inactive when looping is disabled."
  },
  {
    "category": "Playback and note-off",
    "name": "loop_end",
    "example": "loop_end=47999",
    "comment": "Last frame of the loop, inclusive.",
    "detail": "Example: frames 0-47999 make a one-second loop at 48 kHz; verify your sample length."
  },
  {
    "category": "Playback and note-off",
    "name": "offset",
    "example": "offset=0",
    "comment": "Start playback at this zero-based sample-frame offset.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "end",
    "example": "end=47999",
    "comment": "Last sample frame to play, inclusive.",
    "detail": "Omit to use the whole soundfile; values must fit the sample."
  },
  {
    "category": "Playback and note-off",
    "name": "delay",
    "example": "delay=0.1",
    "comment": "Delay the start of the region by this many seconds.",
    "detail": ""
  },
  {
    "category": "Playback and note-off",
    "name": "count",
    "example": "count=2",
    "comment": "Play the sample this many times; implies one_shot.",
    "detail": "Envelopes do not restart for each repetition."
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_delay",
    "example": "ampeg_delay=0",
    "comment": "Envelope delay before attack, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_attack",
    "example": "ampeg_attack=0.01",
    "comment": "Envelope rise from its starting level to peak, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_hold",
    "example": "ampeg_hold=0",
    "comment": "Time at the envelope peak before decay, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_decay",
    "example": "ampeg_decay=0.3",
    "comment": "Time from peak toward the sustain level, in seconds.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_sustain",
    "example": "ampeg_sustain=70",
    "comment": "Held amplitude level, 0-100 percent; not a duration.",
    "detail": ""
  },
  {
    "category": "Amplitude envelope",
    "name": "ampeg_release",
    "example": "ampeg_release=0.5",
    "comment": "Fade time after note release, in seconds.",
    "detail": "A finite sample may end first; one_shot ignores note-off."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "lovel",
    "example": "lovel=1",
    "comment": "Lowest triggering note-on velocity, inclusive; 1-127.",
    "detail": ""
  },
  {
    "category": "Velocity, gain and pan",
    "name": "hivel",
    "example": "hivel=63",
    "comment": "Highest triggering note-on velocity, inclusive; 1-127.",
    "detail": "Adjacent layers could use 1-63 and 64-127."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "amp_veltrack",
    "example": "amp_veltrack=100",
    "comment": "Velocity-to-amplitude amount: 100 normal, 0 fixed level.",
    "detail": "This is separate from velocity-based region selection."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "volume",
    "example": "volume=-6",
    "comment": "Gain offset in dB; 0 unchanged, negative quieter.",
    "detail": "-6 dB is about half the signal amplitude, not half perceived loudness."
  },
  {
    "category": "Velocity, gain and pan",
    "name": "pan",
    "example": "pan=0",
    "comment": "Stereo position: -100 left, 0 center, +100 right.",
    "detail": ""
  },
  {
    "category": "Velocity, gain and pan",
    "name": "output",
    "example": "output=0",
    "comment": "Stereo pair index: 0=ch1/2, 1=ch3/4, 2=ch5/6, 3=ch7/8.",
    "detail": "Place under <region>, or under <group>/<global> for inherited routing. With this patch’s sfizz~ @outputs 8, use 0, 1, 2 or 3. Channels are 1=L1, 2=R1, 3=L2, 4=R2, 5=L3, 6=R3, 7=L4, 8=R4. @outputs counts individual audio channels; output= chooses a stereo pair starting at 0. To hear output=1, connect channels 3/4 to your listening path and replay a note. For N allocated channels, complete pair indices run from 0 through floor(N/2)-1; the documented maximum @outputs 1024 allows output=511 (channels 1023/1024). Default is output=0. Source: https://docs.cycling74.com/reference/sfizz~/"
  },
  {
    "category": "Sequences and voice groups",
    "name": "seq_length",
    "example": "seq_length=3",
    "comment": "Number of steps in a repeating round-robin sequence.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "seq_position",
    "example": "seq_position=1",
    "comment": "Step at which this region plays; steps start at 1.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "group",
    "example": "group=2",
    "comment": "Assign a voice group number for choking other voices.",
    "detail": "The group opcode is different from the <group> header."
  },
  {
    "category": "Sequences and voice groups",
    "name": "off_by",
    "example": "off_by=2",
    "comment": "Stop this voice when a new voice in group 2 starts.",
    "detail": "Put off_by on the sound to be stopped, such as an open hi-hat."
  },
  {
    "category": "Sequences and voice groups",
    "name": "off_mode",
    "example": "off_mode=fast",
    "comment": "How a choked voice ends: fast or normal envelope release.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "lorand",
    "example": "lorand=0",
    "comment": "Low random-selection boundary, inclusive, between 0 and 1.",
    "detail": ""
  },
  {
    "category": "Sequences and voice groups",
    "name": "hirand",
    "example": "hirand=0.5",
    "comment": "High random-selection boundary, exclusive.",
    "detail": "Use 0-0.5 and 0.5-1 for two equal random zones; unlike fixed round robin."
  },
  {
    "category": "Filters and controllers",
    "name": "fil_type",
    "example": "fil_type=lpf_2p",
    "comment": "Filter type; lpf_2p is a two-pole low-pass filter.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "cutoff",
    "example": "cutoff=5000",
    "comment": "Filter cutoff frequency in Hz.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "resonance",
    "example": "resonance=3",
    "comment": "Filter resonance amount in dB; raise cautiously.",
    "detail": ""
  },
  {
    "category": "Filters and controllers",
    "name": "cutoff_oncc1",
    "example": "cutoff_oncc1=2400",
    "comment": "Mod-wheel (CC1) cutoff modulation depth in cents.",
    "detail": "2400 cents spans two octaves of cutoff frequency."
  },
  {
    "category": "Filters and controllers",
    "name": "locc64",
    "example": "locc64=64",
    "comment": "Minimum CC64 value to allow a new note to trigger.",
    "detail": "64-127 is normally sustain pedal down; this selects regions, not pedal behavior."
  },
  {
    "category": "Filters and controllers",
    "name": "hicc64",
    "example": "hicc64=127",
    "comment": "Maximum CC64 value to allow a new note to trigger.",
    "detail": ""
  }
];
var CATEGORIES=["All opcodes", "Headers and paths", "Key and pitch", "Playback and note-off", "Amplitude envelope", "Velocity, gain and pan", "Sequences and voice groups", "Filters and controllers"];

// END ec_sfz_catalog.js

// BEGIN ec_sfz_panes.js
/* EC SFZ Builder v5 — Local jweb transport. Source for the bundled ec_sfz_builder_v5.js; ES5. */
var PANE_CONFIG={"sample_text":{"readonly":1,"wrap":0,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Soundfiles: click to select; Shift-click for a range; Command/Ctrl-click for separate samples.","mode":"samples"},"reference_text":{"readonly":1,"wrap":1,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Annotated SFZ opcode index"},"editor":{"readonly":0,"wrap":1,"font":"Menlo","fontsize":12.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"SFZ program \u2014 edit, scroll, then Apply text"},"report":{"readonly":1,"wrap":1,"font":"Menlo","fontsize":10.0,"background":[1,1,1,1],"foreground":[0,0,0,1],"label":"Validation results"}};
var paneReady={},paneText={},paneSerial=0,requestSerial=0,paneReply=null,paneTimer=null;
function isPane(n){return PANE_CONFIG.hasOwnProperty(n);}
function loadPanes(){for(var n in PANE_CONFIG)if(PANE_CONFIG.hasOwnProperty(n))msg(n,'readfile',supportFile('ec_sfz_textpane.html'));}
function paneSet(n,v){paneText[n]=String(v);if(paneReady[n])paneFlush(n);}
function paneFlush(n){
    if(!paneText.hasOwnProperty(n))return;
    var s=encodeURIComponent(paneText[n]),id=++paneSerial,count=Math.ceil(s.length/512);
    msg(n,'ec_begin',id,count);for(var i=0;i<count;i++)msg(n,'ec_chunk',id,i,'x'+s.substr(i*512,512));msg(n,'ec_end',id);
}
function paneAbort(reason){
    var fromMapper=pending&&pending.action==='mapper',fromSamples=pending&&pending.action==='import_selected';
    if(paneTimer)paneTimer.cancel();paneTimer=null;pending=null;paneReply=null;
    tableGridRelease();msg('editor','ec_release');if(fromSamples)msg('sample_text','ec_samples_done');status(reason);if(fromMapper){mapperSync();mapperSend('map_done',0);}
}
function requestProgram(){
    if(!paneReady.editor){pending=null;status('Editor is loading. Keep the Support folder beside the patch, then try again.');mapperSend('map_done',0);return;}
    pending.request=++requestSerial;paneReply=null;
    paneTimer=new Task(function(){paneAbort('Editor did not respond. Draft retained; try the action again.');},this);paneTimer.schedule(15000);
    tableGridRequest(pending.request);
}
function webpane(name,event){
    var a=arr(arguments).slice(2),i;
    if(!isPane(name))return;
    try{
        if(event==='ready'){
            paneReady[name]=true;msg(name,'ec_config','x'+encodeURIComponent(JSON.stringify(PANE_CONFIG[name])));paneFlush(name);return;
        }
        if(name==='sample_text'&&event.indexOf('samples_')===0){samplePaneEvent(event,a);return;}
        if(event==='error'){paneAbort('Text pane: '+decodeURIComponent(String(a[0]).substring(1)));return;}
        if(name!=='editor'||!pending||Number(a[0])!==pending.request)return;
        if(event==='begin'){
            var count=Number(a[1]);if(count<0||count>30000||Math.floor(count)!==count)throw new Error('Invalid editor transfer size.');
            paneReply={id:Number(a[0]),count:count,parts:[]};return;
        }
        if(event==='chunk'&&paneReply){i=Number(a[1]);if(i<0||i>=paneReply.count)throw new Error('Invalid editor chunk.');paneReply.parts[i]=String(a[2]).substring(1);return;}
        if(event==='end'&&paneReply){
            for(i=0;i<paneReply.count;i++)if(typeof paneReply.parts[i]!=='string')throw new Error('Incomplete editor transfer; draft retained.');
            var value=decodeURIComponent(paneReply.parts.join('')).replace(/\r\n?/g,'\n');
            if(encodeUTF8(value).length>MAX_TEXT_BYTES)throw new Error('Program exceeds the 2 MB limit.');
            var p=pending;pending=null;paneReply=null;if(paneTimer)paneTimer.cancel();paneTimer=null;
            // Finish this capture BEFORE dispatch. A native Open/Save dialog
            // can return its path synchronously and start the next capture.
            // A finally-release after dispatch would erase that new wait.
            tableGridRelease();msg('editor','ec_release');
            dispatch(p.action,p.args,value);
        }
    }catch(e){if(name==='sample_text'){samplePaneIncoming=null;msg(name,'ec_samples_done');status('Sample selection: '+e.message);}else paneAbort('Action stopped: '+e.message);}
}

// Sample catalogs use the same bounded text transport, with explicit row identity.
var samplePaneVersion=0,samplePaneSignature='',samplePaneIncoming=null;
function paneSampleList(names,lines,folder,notice){
    var signature=JSON.stringify([folder,names]);
    if(signature!==samplePaneSignature){samplePaneSignature=signature;samplePaneVersion++;samplePaneIncoming=null;}
    paneSet('sample_text',JSON.stringify({version:samplePaneVersion,lines:lines,notice:notice||''}));
}
function samplePaneEvent(event,a){
    var id=Number(a[0]),i;
    if(event==='samples_begin'){
        var count=Number(a[2]);
        if(!isFinite(id)||Math.floor(id)!==id||count<1||count>256||Math.floor(count)!==count)throw new Error('Invalid selection transfer.');
        samplePaneIncoming={id:id,version:Number(a[1]),count:count,parts:[]};return;
    }
    if(!samplePaneIncoming||samplePaneIncoming.id!==id)return;
    if(event==='samples_chunk'){
        i=Number(a[1]);var part=String(a[2]);
        if(i<0||i>=samplePaneIncoming.count||Math.floor(i)!==i||part.charAt(0)!=='x'||part.length>513)throw new Error('Invalid selection chunk.');
        samplePaneIncoming.parts[i]=part.substring(1);return;
    }
    if(event==='samples_end'){
        var incoming=samplePaneIncoming;samplePaneIncoming=null;
        for(i=0;i<incoming.count;i++)if(typeof incoming.parts[i]!=='string')throw new Error('Incomplete selection. Please try again.');
        var indices=JSON.parse(decodeURIComponent(incoming.parts.join('')));
        addSelectedSamples(incoming.version,indices);
    }
}

// END ec_sfz_panes.js

// BEGIN ec_sfz_tables.js
/* EC SFZ Builder v5 — Stable cell editors for sections 2/3. Included by the Max ES5 controller.
   jit.cellblock still stores drafts and supplies the existing compiler/dump API.
   The visible jweb grid owns its in-cell inputs; no floating native editor. */
var tableGridNames=['regions','opcodes'],tableGridReady={},tableGridStates={};
var tableGridRevision=0,tableGridSerial=0,tableGridIncoming={},tableGridWait=null;
function loadTableGrids(){
    tableGridReady={};tableGridIncoming={};tableGridWait=null;
    for(var i=0;i<tableGridNames.length;i++)msg(tableGridNames[i]+'_view','readfile',supportFile('ec_sfz_table.html'));
}
function tableGridColor(o,key,fallback){
    try{var a=o.getattr(key);if(a&&a.length===4)return arr(a);}catch(e){}
    return fallback;
}
function tableGridStyle(name){
    var o=ui(name),font='Arial',size=12,height=26;
    try{font=o.getboxattr('fontname')||font;size=Number(o.getboxattr('fontsize'))||size;height=Number(o.getattr('rowheight'))||height;}catch(e){}
    return {font:String(font),fontsize:size,rowheight:Math.max(20,height),
        background:tableGridColor(o,'bgcolor',[1,1,1,1]),foreground:tableGridColor(o,'textcolor',[0,0,0,1]),
        header:tableGridColor(o,'headercolor',[0.87,0.87,0.87,1]),grid:tableGridColor(o,'gridlinecolor',[0.65,0.65,0.65,1]),
        selected:tableGridColor(o,'hcellcolor',[0.82,0.87,0.96,1]),
        border:tableGridColor(o,'bordercolor',name==='regions'?[0.25098,0.20392,0.93725,1]:[0.45,0.45,0.45,1])};
}
function tableGridPublish(){
    var revision=++tableGridRevision;
    for(var t=0;t<tableGridNames.length;t++){
        var name=tableGridNames[t],isRegion=name==='regions',count=isRegion?regionIds.length:opcodeRows.length;
        var cells=tableDump(name),heads=isRegion?COLS.slice():['Use','Opcode','Value','Comment / units'],rows=[];
        for(var r=1;r<=count;r++){
            var values=[];for(var c=0;c<heads.length;c++)values.push(cells.hasOwnProperty(c+','+r)?String(cells[c+','+r]):'');
            rows.push(values);
        }
        tableGridStates[name]={revision:revision,name:name,scope:isRegion?0:scopeId,headers:heads,rows:rows,
            widths:isRegion?WIDTHS.slice():opcodeWidths(),readonly:!!doc.blocked.length,
            editable:isRegion?[2,3,4,5,6,7,8,9,10,11]:[0,2],style:tableGridStyle(name),
            selected:isRegion?regionIds.indexOf(selectedRegion)+1:opcodeRows.indexOf(selectedOpcode)+1};
        tableGridFlush(name);
    }
}
function tableGridFlush(name){
    if(!tableGridReady[name]||!tableGridStates[name])return;
    var s=encodeURIComponent(JSON.stringify(tableGridStates[name])),id=++tableGridSerial,count=Math.ceil(s.length/512);
    msg(name+'_view','grid_begin',id,count);
    for(var i=0;i<count;i++)msg(name+'_view','grid_chunk',id,i,'x'+s.substr(i*512,512));
    msg(name+'_view','grid_end',id);
}
function tableGridSelect(name,col,row){
    if(rendering||collecting||pending)return;
    if(name==='regions'&&row>0&&regionIds[row-1]){
        selectedRegion=regionIds[row-1];
        settext('selected_label','Selected region '+C.displayId(doc,selectedRegion)+' — use Edit selected for its opcodes.');mapperSync();
    }else if(name==='opcodes')selectOpcodeCell(col,row);
    if(tableGridStates[name])tableGridStates[name].selected=row;
}
function tableGridValidate(name,data){
    var state=tableGridStates[name];
    if(!state||Number(data.revision)!==state.revision)throw new Error('The table changed. Select the current cell and try again.');
    if(Object.prototype.toString.call(data.edits)!=='[object Array]')throw new Error('Invalid cell edits.');
    var seen={},out=[];
    for(var i=0;i<data.edits.length;i++){
        var e=data.edits[i],c=Number(e.col),r=Number(e.row),k=c+','+r;
        if(!isFinite(c)||!isFinite(r)||Math.floor(c)!==c||Math.floor(r)!==r||r<1||r>state.rows.length||
           state.readonly||state.editable.indexOf(c)<0||seen[k]||typeof e.value!=='string'||
           /[\r\n\x00]/.test(e.value)||e.value.length>65536)throw new Error('Invalid or read-only table cell.');
        seen[k]=true;out.push({col:c,row:r,value:e.value});
    }
    return out;
}
function tableGridApply(name,edits){
    var state=tableGridStates[name];
    for(var i=0;i<edits.length;i++){
        var e=edits[i];cell(name,e.col,e.row,e.value);state.rows[e.row-1][e.col]=e.value;
    }
}
function tableGridRequest(id){
    // A separate snapshot handshake captures an active input before Compile,
    // Save, Copy/Delete, scope changes, or mapper actions can read the tables.
    for(var i=0;i<tableGridNames.length;i++)if(!tableGridReady[tableGridNames[i]]){
        paneAbort('Tables are loading. Keep the Support folder beside the patch, then try again.');return;
    }
    tableGridWait={id:id,replies:{}};
    for(i=0;i<tableGridNames.length;i++)msg(tableGridNames[i]+'_view','grid_get',id);
}
function tableGridRelease(){
    tableGridWait=null;
    for(var i=0;i<tableGridNames.length;i++)msg(tableGridNames[i]+'_view','grid_release');
}
function tableGridReceive(name,data){
    if(data.kind!=='edit'&&data.kind!=='snapshot')throw new Error('Invalid table operation.');
    if(data.kind==='snapshot'&&(!tableGridWait||!pending||Number(data.request)!==tableGridWait.id||pending.request!==tableGridWait.id))return;
    var edits=tableGridValidate(name,data);
    if(data.kind==='edit'){tableGridApply(name,edits);return;}
    tableGridWait.replies[name]=edits;
    for(var i=0;i<tableGridNames.length;i++)if(!tableGridWait.replies.hasOwnProperty(tableGridNames[i]))return;
    var wait=tableGridWait;tableGridWait=null;
    for(i=0;i<tableGridNames.length;i++)tableGridApply(tableGridNames[i],wait.replies[tableGridNames[i]]);
    msg('editor','ec_get',wait.id);
}
function webtable(name,event){
    if(tableGridNames.indexOf(name)<0)return;
    var a=arr(arguments).slice(2),transfer,i,id=Number(a[0]);
    try{
        if(event==='ready'){tableGridReady[name]=true;tableGridFlush(name);return;}
        if(event==='select'){
            var state=tableGridStates[name],col=Number(a[1]),row=Number(a[2]);
            if(state&&Number(a[0])===state.revision&&Math.floor(col)===col&&Math.floor(row)===row&&col>=0&&col<state.headers.length&&row>0&&row<=state.rows.length)tableGridSelect(name,col,row);
            return;
        }
        if(event==='error')throw new Error(decodeURIComponent(String(a[0]).substring(1)));
        if(event==='begin'){
            var count=Number(a[1]);
            if(!isFinite(id)||Math.floor(id)!==id||!isFinite(count)||count<1||count>30000||Math.floor(count)!==count)throw new Error('Invalid table transfer size.');
            tableGridIncoming[name]={id:id,count:count,parts:[]};return;
        }
        transfer=tableGridIncoming[name];if(!transfer||transfer.id!==id)return;
        if(event==='chunk'){
            i=Number(a[1]);var part=String(a[2]);
            if(!isFinite(i)||Math.floor(i)!==i||i<0||i>=transfer.count||part.charAt(0)!=='x'||part.length>513)throw new Error('Invalid table chunk.');
            transfer.parts[i]=part.substring(1);return;
        }
        if(event==='end'){
            delete tableGridIncoming[name];
            for(i=0;i<transfer.count;i++)if(typeof transfer.parts[i]!=='string')throw new Error('Incomplete table edit; try again.');
            tableGridReceive(name,JSON.parse(decodeURIComponent(transfer.parts.join(''))));
        }
    }catch(e){
        delete tableGridIncoming[name];
        if(tableGridWait)paneAbort('Table: '+e.message);else status('Table: '+e.message);
    }
}

// END ec_sfz_tables.js

// BEGIN ec_sfz_mapper.js
/* EC SFZ Builder v5 — Graphical mapper / Max ES5 host. Shares the table model and undo history. */
var mapperReady=false,mapperRevision=0,mapperSignature='',mapperSerial=0;
var mapperLastStatus='',mapperNotes={},mapperWatchdog=null,mapperLoadedSource='',mapperResetSerial=0;
function mapperObject(){var w=ui('mapper_window');return w&&w.subpatcher?w.subpatcher().getnamed('mapper_view'):null;}
function mapperSend(){var o=mapperObject();if(o)o.message.apply(o,arr(arguments));}
function loadMapper(){mapperReady=false;mapperSend('readfile',supportFile('ec_sfz_mapper.html'));}
function mapperStatus(s){mapperLastStatus=String(s);if(mapperReady)mapperSend('map_status','x'+encodeURIComponent(mapperLastStatus));}
function mapperNumber(o,k,fallback){return o[k]===undefined?fallback:(/key/.test(k)?C.midi(o[k]):Number(o[k]));}
function mapperState(){
    if(!doc)return null;
    var signature=C.source(doc)+'\u0000'+catalogDir+'\u0000'+files.join('\u0000')+'\u0000'+scanBusy+'\u0000'+mapperResetSerial;
    if(signature!==mapperSignature){mapperSignature=signature;mapperRevision++;}
    var regs=C.regions(doc),relations=C.relations(doc),numbers=C.displayIds(doc),regions=[],groups=[],warnings=[],i,n,o,r;
    for(i=0;i<doc.nodes.length;i++)if(doc.nodes[i].type==='group')groups.push({id:doc.nodes[i].id,displayId:numbers[doc.nodes[i].id]});
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.effective(doc,n.id);
        r={id:n.id,displayId:numbers[n.id],group:relations[n.id].group||0,groupDisplayId:numbers[relations[n.id].group]||0,sample:o.sample||'(no sample)',
            lokey:mapperNumber(o,'lokey',0),hikey:mapperNumber(o,'hikey',127),
            lovel:mapperNumber(o,'lovel',1),hivel:mapperNumber(o,'hivel',127),
            pitch_keycenter:mapperNumber(o,'pitch_keycenter',60),local:C.local(n)};
        r.editable=isFinite(r.lokey)&&isFinite(r.hikey)&&r.lokey>=0&&r.hikey<=127&&r.lokey<=r.hikey&&
            isFinite(r.lovel)&&isFinite(r.hivel)&&r.lovel>=1&&r.hivel<=127&&r.lovel<=r.hivel;
        r.rootLabel=o.pitch_keycenter===undefined?'60':String(o.pitch_keycenter);
        if(!r.editable)warnings.push('Region '+numbers[n.id]+': key/velocity values cannot be drawn; edit its SFZ text.');
        regions.push(r);
    }
    for(i=0;i<doc.nodes.length;i++)if(doc.nodes[i].type==='control'){
        o=C.own(doc.nodes[i]);if(Number(o.note_offset)||Number(o.octave_offset))warnings.push('Control note/octave offset active: grid shows raw SFZ key numbers.');
    }
    var usage=C.keyUsageAll(doc),allocation={},gid,u;
    for(gid in usage)if(usage.hasOwnProperty(gid)){
        u=usage[gid];allocation[gid]={regions:u.regions,free:u.available.length,next:u.available.length?u.available[0]:null,start:u.start,step:u.step,shared:u.shared,invalid:!!u.invalid.length};
    }
    return {revision:mapperRevision,reset:mapperResetSerial,regions:regions,groups:groups,selected:selectedRegion,allocation:allocation,
        scopeGroup:scopeId&&relations[scopeId]?relations[scopeId].group||0:0,
        files:files,catalog:catalogDir,scanning:scanBusy,blocked:doc.blocked.join(' '),warnings:warnings,
        filename:fileName,preview:auditionIsPreview,auditionIssue:auditionIssue,loaded:loadedPath?(auditionIsPreview?'Current instrument':basename(loadedPath)):'',needsLoad:!!loadedPath&&mapperLoadedSource!==C.source(doc),
        lowVelocity:lowVelocity,highVelocity:highVelocity,status:mapperLastStatus};
}
function mapperSync(){
    if(!mapperReady||!doc)return;
    var state=mapperState(),s=encodeURIComponent(JSON.stringify(state)),id=++mapperSerial,count=Math.ceil(s.length/512);
    mapperSend('map_begin',id,count);for(var i=0;i<count;i++)mapperSend('map_chunk',id,i,'x'+s.substr(i*512,512));mapperSend('map_end',id);
}
function mapperNotesOff(){
    if(mapperWatchdog)mapperWatchdog.cancel();mapperWatchdog=null;
    for(var p in mapperNotes)if(mapperNotes.hasOwnProperty(p))note(Number(p),0);
    mapperNotes={};mapperSend('map_notes_clear');
}
function mapperHeartbeat(){
    if(mapperWatchdog)mapperWatchdog.cancel();
    mapperWatchdog=new Task(mapperNotesOff,this);mapperWatchdog.schedule(2000);
}
function mapper(event){
    var a=arr(arguments).slice(1);
    if(event==='ready'){mapperReady=true;mapperSync();return;}
    if(event==='refresh'){mapperSync();return;}
    if(event==='closed'||event==='release'||(event==='focus'&&!Number(a[0]))){mapperNotesOff();return;}
    if(event==='heartbeat'){mapperHeartbeat();return;}
    if(event==='panic'){panic();return;}
    if(event==='note'){
        var p=clamp(a[0],0,127),v=clamp(a[1],0,127);
        if(v){testPitch=p;setvalue('pitch_num',p);setvalue('velocity_num',v);testVelocity=v;if(loadedPath){mapperNotes[p]=1;mapperHeartbeat();}}
        else delete mapperNotes[p];
        incoming(p,v);return;
    }
    if(event!=='action')return;
    if(!initialized||pending){mapperStatus('Finish the pending action, then try again.');mapperSend('map_done',0);return;}
    go.apply(this,['mapper'].concat(a));
}
function mapperInsertSample(next,index,encodedName,viewGroup){
    if(scanBusy)throw new Error('Wait for the folder scan.');
    if(!baseDir||!catalogDir)throw new Error('Load the sound folder on the home page first.');
    if(index<0||index>=files.length||Math.floor(index)!==index||decodeURIComponent(String(encodedName).substring(1))!==files[index])throw new Error('The sample list changed. Select the sound again.');
    if(lowVelocity>highVelocity)throw new Error('Low velocity exceeds high velocity.');
    var gid=0,anchor=null,i,target;
    // View is the explicit import destination, independent of the selected
    // region or the home-page opcode scope. All groups uses document order.
    viewGroup=viewGroup===undefined?'all':String(viewGroup);
    if(viewGroup==='all'){
        for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='group'){gid=next.nodes[i].id;break;}
        if(!gid)gid=C.create(next,'group',' // Imported samples\n').id;
    }else if(viewGroup==='0'){
        // Preserve the existing No group view: append to its first ungrouped
        // region run, before a later <group> can change the inheritance.
        var relations=C.relations(next);
        for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='region'&&!relations[next.nodes[i].id].group){
            anchor=next.nodes[i];
            while(i+1<next.nodes.length&&next.nodes[i+1].type==='region')anchor=next.nodes[++i];
            break;
        }
        if(!anchor)throw new Error('No ungrouped regions remain. Choose a group or All groups.');
    }else{
        if(!/^\d+$/.test(viewGroup))throw new Error('Choose a valid group in View.');
        target=C.node(next,Number(viewGroup));
        if(target.type!=='group')throw new Error('Choose a group in View.');
        gid=target.id;
    }
    var key=C.freeKeys(next,gid,1)[0];
    var control=C.relations(next)[gid||anchor.id].control,prefix=control?C.own(C.node(next,control)).default_path||'':'';
    if(prefix&&!/[\\/]$/.test(prefix))throw new Error('End default_path with / before adding samples.');
    var sampleBase=prefix?C.resolve(baseDir,prefix):baseDir;
    var added=C.insertRegion(next,gid,{sample:C.relative(sampleBase,C.resolve(catalogDir,files[index])),
        pitch_keycenter:String(key),lokey:String(key),hikey:String(key),
        lovel:String(lowVelocity),hivel:String(highVelocity),loop_mode:'one_shot'});
    if(anchor){next.nodes.pop();next.nodes.splice(next.nodes.indexOf(anchor)+1,0,added);}
    return added;
}
function mapperDispatch(args,text){
    var succeeded=true;
    try{
        if(text!==lastEditor)throw new Error('SFZ text has unapplied edits. Use Apply text or Revert text in the builder first.');
        if(diffTables().length)throw new Error('Table edits are pending. Press Return, then Compile tables or Revert tables first.');
        mapperState();if(Number(args[0])!==mapperRevision)throw new Error('The instrument changed. Mapper refreshed; try the edit again.');
        var action=String(args[1]),id=Number(args[2]),next,n,values,k,changed=false;
        if(action==='command'){
            var cmd=String(args[2]);if(['undo','compile'].indexOf(cmd)<0)throw new Error('Unknown mapper command.');
            dispatch(cmd,[],text);return;
        }
        assertModel();
        if(action==='select'){
            n=C.node(doc,id);if(n.type!=='region')throw new Error('Select a region.');
            selectedRegion=id;scopeId=id;renderScopeMenu();renderTables();
            msg('regions','select',0,regionIds.indexOf(id)+1);status('Selected region '+C.displayId(doc,id)+'.');return;
        }
        next=C.clone(doc);
        if(action==='map'){
            n=C.node(next,id);if(n.type!=='region')throw new Error('Select a region.');
            values=JSON.parse(decodeURIComponent(String(args[3]).substring(1)));
            for(k in values)if(values.hasOwnProperty(k)){
                if(['lokey','hikey','lovel','hivel','pitch_keycenter'].indexOf(k)<0)throw new Error('Unsupported mapping field.');
                C.mapset(n,k,String(values[k]));changed=true;
            }
        }else if(action==='add_sample'){
            n=mapperInsertSample(next,id,args[3],args[4]);id=n.id;changed=true;
        }else if(action==='duplicate'||action==='delete'){
            n=C.node(next,id);if(n.type!=='region')throw new Error('Select a region.');
            var at=next.nodes.indexOf(n);
            if(action==='duplicate'){n=C.duplicateRegion(next,id);id=n.id;}
            else{next.nodes.splice(at,1);id=C.regions(next).length?C.regions(next)[0].id:0;}
            changed=true;
        }else throw new Error('Unknown mapper action.');
        if(!changed||C.source(next)===C.source(doc))return;
        var check=C.check(next);if(check.errors.length)throw new Error(check.errors.join('\n'));
        snapshot();doc=next;selectedRegion=id;scopeId=id||(doc.nodes.length?doc.nodes[0].id:0);
        C.pretty(doc);renderAll();checkProject();
        if(action==='add_sample'){selectedSample=Number(args[2]);setvalue('sample_menu',selectedSample);testPitch=Number(C.own(n).lokey);setvalue('pitch_num',testPitch);status('Added '+files[selectedSample]+' at MIDI '+testPitch+'.');}
        else status(action==='delete'?'Region removed. Its keys are available again; Undo restores it.':action==='duplicate'?'Region duplicated into the lowest available range in its group.':'Mapping updated for audition.');
    }catch(e){succeeded=false;status('Mapper: '+e.message);report(String(e.message));}
    finally{mapperSync();mapperSend('map_done',succeeded?1:0);}
}

// END ec_sfz_mapper.js

// BEGIN ec_sfz_audition.js
/* EC SFZ Builder v5 — Automatic preview and MIDI-device selection. Legacy Max js / ES5. */
var auditionFileName='.ec_sfz_preview_'+new Date().getTime()+'_'+Math.floor(Math.random()*1000000000)+'.sfz';
var auditionPath='',auditionTempPath='',auditionSignature='',auditionIssue='',auditionIsPreview=false;
var midiDevices=[],midiDevice='',midiRefreshChoice='',midiRefreshEnabled=0,midiListTask=null;

function blankDocument(){return C.parse('// New SFZ instrument\n// Blank table values inherit settings or use sampler defaults.\n\n<global>\nvolume=0.0\nampeg_release=0.2\n');}
function resolvedFilePath(path){
    // File.foldername is Max's resolved absolute parent folder. Do not pass a
    // Tempfolder: alias to sfizz or depend on a synchronous message returning
    // from conformpath into this same js object.
    var f=new File(path,'read'),folder;
    if(!f.isopen)throw new Error('Cannot read '+path);
    try{folder=C.norm(f.foldername||'');}finally{f.close();}
    if(!C.absolute(folder)||/^(Tempfolder|C74|~):/i.test(folder))throw new Error('Cannot resolve file folder: '+path);
    return C.resolve(folder,basename(path));
}
function previewRelative(base,target){
    // Windows drive letters are case-insensitive. Keep all filename spelling.
    if(/^[a-z]:\//i.test(base)&&/^[a-z]:\//i.test(target)){
        base=base.charAt(0).toUpperCase()+base.substring(1);
        target=target.charAt(0).toUpperCase()+target.substring(1);
    }
    try{return C.relative(base,target);}catch(e){e.previewCrossVolume=true;throw e;}
}
function auditionSource(previewBase){
    if(!previewBase)throw new Error('The preview folder has not been resolved.');
    var next=C.clone(doc),regs=C.regions(doc),i,n,o,path,cache={};
    // Give each region its effective sample, relative to the ACTUAL preview
    // file. sfizz~ documents relative sample paths for SFZ file loading.
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.effective(doc,n.id);path=o.sample||'';
        if(path&&path.charAt(0)!=='*'){
            if(!baseDir&&!C.absolute(path))throw new Error('Load a sound folder before auditioning relative sample paths.');
            path=C.samplePath(doc,n.id,baseDir);
            if(!cache.hasOwnProperty('$'+path))cache['$'+path]=resolvedFilePath(path);
            path=previewRelative(previewBase,cache['$'+path]);
        }
        if(path)C.set(C.node(next,n.id),'sample',path);
    }
    for(i=0;i<next.nodes.length;i++){
        n=next.nodes[i];
        if(n.type==='control')C.set(n,'default_path','');
        if(n.type!=='region')C.set(n,'sample','');
    }
    return C.source(next);
}
function createPreviewFile(path){
    // The first write establishes a real file so File.foldername can resolve it.
    // This private filename never replaces a named user instrument.
    writeBytes(path,encodeUTF8('// Internal EC SFZ preview\n<region> sample=*silence end=0\n'));
    return resolvedFilePath(path);
}
function prepareAudition(){
    var path,text,tempError,haveTemp=false;
    try{
        if(!auditionTempPath)auditionTempPath=createPreviewFile('Tempfolder:/'+auditionFileName);
        path=auditionTempPath;haveTemp=true;text=auditionSource(dirname(path));
    }catch(e){
        tempError=e;
        // A relative path cannot cross Windows drives / Max volume roots.
        // Keep a small, private sidecar beside the instrument in that case.
        // This also allows preview if Max's temporary folder is unavailable.
        if(!baseDir||(haveTemp&&!e.previewCrossVolume))throw tempError;
        path=C.resolve(baseDir,auditionFileName);
        if(!exists(path))path=createPreviewFile(path);else path=resolvedFilePath(path);
        text=auditionSource(dirname(path));
    }
    var bytes=encodeUTF8(text);
    if(bytes.length>MAX_TEXT_BYTES)throw new Error('Audition copy exceeds the 2 MB limit.');
    writeBytes(path,bytes); // closes the file before sfizz receives read
    if(readUTF8(path)!==text)throw new Error('Audition copy could not be verified.');
    return path;
}
function stopAudition(skipReset){
    panic();loadedPath='';mapperLoadedSource='';auditionIsPreview=false;
    if(!skipReset)outlet(0,'read',supportFile('ec_sfz_empty.sfz'));
}
function auditionSync(){
    if(!doc)return;
    var source=C.source(doc),signature=baseDir+'\u0000'+source;
    if(signature===auditionSignature)return;
    auditionIssue='';
    if(!C.regions(doc).length&&!doc.blocked.length){
        if(loadedPath)stopAudition();auditionSignature=signature;
        settext('loaded_label','No samples yet. Load a sound folder, then Add samples.');return;
    }
    try{
        if(doc.blocked.length)throw new Error('Text mode: use Save and load for testing.');
        var check=C.check(doc);if(check.errors.length)throw new Error(check.errors[0]);
        var path=prepareAudition();
        // Always name the file explicitly. readagain can follow a manually
        // loaded instrument rather than the preview tracked by the builder.
        panic();outlet(0,'read',path);auditionPath=path;loadedPath=path;
        auditionSignature=signature;mapperLoadedSource=source;auditionIsPreview=true;
        settext('loaded_label','Preview load requested. Enable Audio and play a mapped key.');
    }catch(e){
        stopAudition();auditionSignature='';auditionIssue=e.message;
        settext('loaded_label','Preview: '+auditionIssue);
        report('Automatic preview: '+auditionIssue+'\nUse Save and load for testing if the preview folder is unavailable.');
    }
}
function auditionHint(p,v){
    if(!loadedPath){status(auditionIssue||'Load a sound folder and Add samples, then enable Audio.');return;}
    if(doc.blocked.length)return;
    var regs=C.regions(doc),mapped=false,i,o;
    for(i=0;i<regs.length;i++){
        o=C.effective(doc,regs[i].id);
        if(p>=C.midi(o.lokey===undefined?'0':o.lokey)&&p<=C.midi(o.hikey===undefined?'127':o.hikey)&&v>=Number(o.lovel||1)&&v<=Number(o.hivel||127)){mapped=true;break;}
    }
    if(!mapped)status('No region at MIDI '+p+' / velocity '+v+'. Play a mapped key, or adjust its key/velocity range.');
}
function chooseTestNote(){
    var regs=C.regions(doc);if(!regs.length)return;
    var n=regs[0],o=C.effective(doc,n.id),lo=C.midi(o.lokey===undefined?'0':o.lokey),hi=C.midi(o.hikey===undefined?'127':o.hikey),root=C.midi(o.pitch_keycenter===undefined?'60':o.pitch_keycenter);
    if(!isFinite(lo)||lo<0||lo>127)return;
    testPitch=isFinite(root)&&root>=lo&&root<=hi?root:lo;
    testVelocity=clamp(testVelocity,Number(o.lovel||1),Number(o.hivel||127));
    setvalue('pitch_num',testPitch);setvalue('velocity_num',testVelocity);
}
function midiports(event){
    var name=textvalue(arr(arguments).slice(1));
    if(event==='clear'){
        if(!midiListTask)midiRefreshChoice=midiDevice;
        // Refresh the list without interrupting the selected port or resetting the toggle.
        midiDevices=[];msg('midi_device_menu','clear');msg('midi_device_menu','append','Choose MIDI device…');setvalue('midi_device_menu',0);
    }else if(event==='append'&&name&&name!=='all'&&name!=='none'){
        if(midiDevices.indexOf(name)<0){midiDevices.push(name);msg('midi_device_menu','append',name);}
    }
    if(midiListTask)midiListTask.cancel();midiListTask=new Task(finishMidiPorts,this);midiListTask.schedule(1);
}
function finishMidiPorts(){
    midiListTask=null;
    var index=midiDevices.indexOf(midiRefreshChoice);
    if(index>=0){midiDevice=midiRefreshChoice;setvalue('midi_device_menu',index+1);msg('midi_notein','port',midiDevice);}
    else{
        midiDevice='';msg('midi_notein','port','none');
        if(midiRefreshChoice){msg('midi_toggle','int',0);panic();status('MIDI device disconnected. Choose a device and enable MIDI input.');}
    }
    midiRefreshChoice=midiDevice;
}
function midiportname(){
    panic();midiDevice=textvalue(arguments);
    if(midiDevice==='Choose MIDI device…')midiDevice='';
    // Use the actual menu name, not a second index-to-name lookup.
    // The native branch already selected the notein port.
    midiRefreshChoice=midiDevice;
    status(midiDevice?'MIDI device: '+midiDevice+'. '+(midiEnabled?'Input enabled.':'Enable MIDI input to play.'):'Choose a MIDI input device.');
}
function mididevice(index){msg('midi_device_menu','int',Number(index));}
function midienable(n){
    // Notification only: native patch cords own the gate and note-off/clear sequence.
    midiEnabled=Number(n)?1:0;
    if(!midiEnabled)panic();
    status(midiEnabled?(midiDevice?'MIDI input on: '+midiDevice+'.':'MIDI input on. Choose a device in the menu.'):'MIDI input off.');
}
function midi(n){msg('midi_toggle','int',Number(n)?1:0);}
function external(p,v){
    // Compatibility entry point; physical notein now bypasses JavaScript entirely.
    if(!midiEnabled||!midiDevice)return;
    msg('midi_keyboard','list',clamp(p,0,127),clamp(v,0,127));
}

// END ec_sfz_audition.js

// BEGIN ec_sfz_controller_source.js
/* EC SFZ Builder v5 — controller source for Tests/build_controller.cjs.
   Inlets: commands, literal program, region table, opcode table, literal filename.
   One outlet: read / MIDI messages for sfizz~.
   Tutorial folder: Examples/Demo/single-sample-demo/; shared sample: human-gliss.wav.
   go demo2 / go tutorial 1 opens single-sample-demo.sfz.
   go tutorial N opens numbered lessons; go tutorial_next / tutorial_prev
   follows the files present. go tutorial_scan refreshes the lesson menu.
   go duplicate_group copies the scope's entire group; go import_newgroup
   adds the current folder catalog to a new group without rescanning. */
autowatch=1;inlets=5;outlets=1;
// The distributed controller is bundled: helpers exist before startup messages.
// Resolve resource paths only when a function runs after patcher construction.
function supportFile(name){
    var p=this.patcher&&String(this.patcher.filepath||'').replace(/\\/g,'/');
    if(!p||p.lastIndexOf('/')<0)throw new Error('Open the saved builder patch from its extracted folder.');
    return p.substring(0,p.lastIndexOf('/'))+'/Support/'+name;
}
var C=SfzCore,doc=null,baseDir='',catalogDir='',fileName='My-Instrument.sfz';
var scopeId=0,selectedRegion=0,scopeIds=[],regionIds=[],regionBaseline={},opcodeRows=[],opcodeBaseline={};
var selectedOpcode='',selectedOpcodeScope=0,selectedOpcodeDoc=null;
var files=[],selectedSample=0,scanBusy=false,scanQueue=[],scanFolder=null,scanRel='',scanDepth=0,scanTask=null,scanSeen={};
var recursive=1,importMode=1,rootMode=0,startRoot=0,rootStep=1,lowVelocity=1,highVelocity=127;
var selectedRef=0,referenceItems=[],categoryIndex=0,initialized=false,pending=null,collecting='',capture={},rendering=false;
var lastEditor='',lastSaved='',undoStack=[],loadedPath='',testPitch=60,testVelocity=100,testDuration=500,midiEnabled=0,noteJobs=[];
var MAX_TEXT_BYTES=2*1024*1024;
var saveDialogOpen=false,saveDialogLoad=false;
var tutorialLessons=[],tutorialStep=0;
var COLS=['ID','Group','sample','pitch_keycenter','lokey','hikey','lovel','hivel','tune','volume','pan','loop_mode'];
var WIDTHS=[38,48,230,116,52,52,50,50,48,53,45,112];
function ui(n){return this.patcher.getnamed(n);}
function msg(n){var o=ui(n);if(o)o.message.apply(o,arrayfromargs(arguments).slice(1));}
function settext(n,v){if(isPane(n))paneSet(n,v);else msg(n,'set',String(v));}
function setvalue(n,v){msg(n,'set',v);}
function status(s){settext('status',s);mapperStatus(s);}
function report(s){settext('report',s);}
function arr(a){return arrayfromargs(a);}
function clamp(v,a,b){return Math.max(a,Math.min(b,Math.round(Number(v)||0)));}
function textvalue(a){return arr(a).join(' ');}
function patchDir(){var p=C.norm(this.patcher.filepath||'');return p.substring(0,p.lastIndexOf('/'));}
function dirname(p){p=C.norm(p);return p.substring(0,p.lastIndexOf('/'));}
function basename(p){p=C.norm(p);return p.substring(p.lastIndexOf('/')+1);}
function receive(v){
    if(inlet===4){fileName=C.trim(v);return;}
    if(inlet===1 && pending){var p=pending;pending=null;dispatch(p.action,p.args,String(v).replace(/\r\n?/g,'\n'));}
}
function text(){receive(textvalue(arguments));}
function bang(){if(inlet===1||inlet===4)receive('');}
function list(){
    var a=arr(arguments);
    if(inlet===2||inlet===3){tableInput(a);return;}
    if(inlet===1||inlet===4)receive(a.join(' '));
}
function anything(){
    var a=arr(arguments);
    if(inlet===1||inlet===4)receive(messagename==='symbol'?a.join(' '):[messagename].concat(a).join(' '));
    else if(inlet===2||inlet===3){if(/^\d+$/.test(messagename))tableInput([Number(messagename)].concat(a));}
}
function go(action){
    if(!initialized||pending)return;
    pending={action:String(action),args:arr(arguments).slice(1)};
    // Capture the row identity before the asynchronous Program-pane reply.
    if(action==='copy_opcode_regions'||action==='delete_opcode')pending.args=[selectedOpcodeDoc===doc?selectedOpcodeScope:0,selectedOpcode];
    msg('filename_input','bang');requestProgram();
}
function tutorialDir(){return C.norm(patchDir()+'/Examples/Demo/single-sample-demo');}
function tutorialMsg(name){
    var window=ui('tutorial_window');if(!window||!window.subpatcher)return;
    var object=window.subpatcher().getnamed(name);if(object)object.message.apply(object,arr(arguments).slice(1));
}
function tutorialLabel(entry){var n=String(entry.number);return (n.length<2?'0':'')+n+' — '+entry.file;}
function tutorialUI(note){
    tutorialMsg('tutorial_menu','clear');tutorialMsg('tutorial_menu','append','Choose a tutorial lesson…');
    var selected=0,current=null;
    for(var i=0;i<tutorialLessons.length;i++){
        tutorialMsg('tutorial_menu','append',tutorialLabel(tutorialLessons[i]));
        if(tutorialLessons[i].number===tutorialStep){selected=i+1;current=tutorialLessons[i];}
    }
    tutorialMsg('tutorial_menu','set',selected);
    tutorialMsg('tutorial_current','set',current?'Last tutorial loaded: '+tutorialLabel(current):'Choose a lesson to begin.');
    tutorialMsg('tutorial_folder','set','Folder: '+tutorialDir());
    tutorialMsg('tutorial_status','set',note||tutorialLessons.length+' tutorial lessons found. Shared sample: human-gliss.wav.');
}
function tutorialIndexOf(number){for(var i=0;i<tutorialLessons.length;i++)if(tutorialLessons[i].number===number)return i;return -1;}
function tutorialScan(){
    var folder=new Folder(tutorialDir()),found=[],seen={},match,name,number;
    try{
        folder.typelist=[];
        while(!folder.end){
            name=String(folder.filename||'');var type=String(folder.filetype||'').toLowerCase();folder.next();
            if(type==='fold')continue;
            // Accept the doubled "sample" spelling as well as the normal prefix.
            match=/^single-sample-(?:sample-)?demo(\d*)\.sfz$/i.exec(name);if(!match)continue;
            number=match[1]?Number(match[1]):1;
            if(!isFinite(number)||number<1||number>9999)continue;
            if(seen[number])throw new Error('Two tutorial files have lesson number '+number+': '+seen[number]+' and '+name+'. Keep one file per lesson number.');
            seen[number]=name;found.push({number:number,file:name,path:tutorialDir()+'/'+name});
        }
    }finally{folder.close();}
    found.sort(function(a,b){return a.number-b.number;});tutorialLessons=found;
    tutorialUI();
    if(!found.length)throw new Error('No tutorial SFZ files found in '+tutorialDir()+'. Start with single-sample-demo.sfz, then single-sample-demo02.sfz, etc.');
    return found;
}
function tutorialindex(n){
    n=Number(n)-1;if(!isFinite(n)||Math.floor(n)!==n||n<0||n>=tutorialLessons.length)return;
    go('tutorial',tutorialLessons[n].number);
}
function loadTutorial(number){
    number=Number(number);if(!isFinite(number)||number<1||number>9999||Math.floor(number)!==number)throw new Error('Use a tutorial lesson number from 1 to 9999.');
    var index=tutorialIndexOf(number);
    if(index<0)throw new Error('Tutorial lesson '+number+' was not found in '+tutorialDir()+'.');
    var entry=tutorialLessons[index],incoming=C.parse(readUTF8(entry.path));
    if(!exists(tutorialDir()+'/human-gliss.wav'))throw new Error('Tutorial sample is missing: '+tutorialDir()+'/human-gliss.wav');
    snapshot();doc=incoming;baseDir=tutorialDir();catalogDir=baseDir;fileName=entry.file;
    // Load the authored SFZ unchanged and list exactly the one shared sample.
    cancelscan();files=['human-gliss.wav'];selectedSample=0;renderSampleMenu();
    scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;
    lastSaved=C.source(doc);chooseTestNote();loadOpenedInstrument(entry.path);tutorialStep=number;
    renderAll();checkProject();
    var note='Tutorial '+number+' requested: '+entry.file+'. Enable Audio, then play MIDI '+testPitch+'.';
    status(note);tutorialUI(note);
}
function tutorialAction(action,args){
    tutorialScan();
    if(action==='tutorial_scan'){status('Found '+tutorialLessons.length+' tutorial lessons. Choose one in the tutorial window.');return;}
    var number=args.length?Number(args[0]):1,index;
    if(action==='tutorial_reload')number=tutorialStep||tutorialLessons[0].number;
    else if(action==='tutorial_next'||action==='tutorial_prev'||action==='tutorial_previous'){
        if(!tutorialStep)number=tutorialLessons[0].number;
        else{
            index=tutorialIndexOf(tutorialStep);
            if(index<0){
                // A lesson can be removed while the patch is open: continue by number.
                if(action==='tutorial_next'){index=0;while(index<tutorialLessons.length&&tutorialLessons[index].number<=tutorialStep)index++;}
                else{index=tutorialLessons.length-1;while(index>=0&&tutorialLessons[index].number>=tutorialStep)index--;}
            }else index+=action==='tutorial_next'?1:-1;
            if(index<0||index>=tutorialLessons.length){
                var edge=action==='tutorial_next'?'last':'first';
                var note='Already at the '+edge+' available tutorial lesson.';status(note);tutorialUI(note);return;
            }
            number=tutorialLessons[index].number;
        }
    }
    loadTutorial(number);
}
function opened(){go('open_path',textvalue(arguments));}
function opencancelled(){status('Open cancelled. Your current instrument is unchanged.');}
function folder(){go('folder_path',textvalue(arguments));}
function saveaspath(){var load=saveDialogLoad;saveDialogOpen=false;saveDialogLoad=false;go('saveas_path',textvalue(arguments),load?1:0);}
function savecancelled(){saveDialogOpen=false;saveDialogLoad=false;status('Save cancelled. Your edits are still in the builder.');}
function beginSaveDialog(load){
    var name=safeName(C.trim(fileName)||'My-Instrument.sfz');
    fileName=name;settext('filename_input',name);saveDialogOpen=true;saveDialogLoad=!!load;
    msg('save_dialog','name',name);
    if(baseDir)msg('save_dialog','setpath',baseDir);else msg('save_dialog','setpath');
    msg('save_dialog','bang');
}
function scopeindex(n){if(!rendering)go('scope',Number(n));}
function region_table_data(){tableInput(arr(arguments),2);}
function opcode_table_data(){tableInput(arr(arguments),3);}
function instrument_filename(){
    // textedit -> prepend instrument_filename sends: text <literal contents>.
    // Remove only the transport selector, never words inside the filename.
    var a=arr(arguments);if(a[0]==='text')a.shift();
    fileName=C.trim(a.join(' '));
}
function tableInput(a,channel){
    if(!initialized||rendering||a.length<2)return;
    var inputNumber=channel===undefined?inlet:channel;
    var col=Number(a[0]),row=Number(a[1]),v=a.slice(2).join(' ');
    if(collecting){capture[col+','+row]=v;return;}
    if(inputNumber===2 && row>0 && regionIds[row-1]){
        selectedRegion=regionIds[row-1];settext('selected_label','Selected region '+C.displayId(doc,selectedRegion)+' — use Edit selected for its opcodes.');mapperSync();
    }
    if(inputNumber===3)selectOpcodeCell(col,row);
}
function clearOpcodeSelection(){selectedOpcode='';selectedOpcodeScope=0;selectedOpcodeDoc=null;}
function renderOpcodeSelection(){settext('selected_opcode_label',selectedOpcode?'Selected opcode: '+selectedOpcode:'Select an opcode row to copy/delete.');}
function selectOpcodeCell(col,row){
    if(rendering||collecting)return;
    col=Number(col);row=Number(row);
    if(doc&&scopeId&&col>=0&&col<4&&Math.floor(col)===col&&row>0&&Math.floor(row)===row&&opcodeRows[row-1]){
        selectedOpcode=opcodeRows[row-1];selectedOpcodeScope=scopeId;selectedOpcodeDoc=doc;
    }else clearOpcodeSelection();
    renderOpcodeSelection();
}
function opcode_selection(){
    if(!initialized)return;
    // jit.cellblock's third outlet emits "sync select column row".
    var a=arr(arguments);if(a[0]==='sync')a.shift();
    if(a[0]==='select')selectOpcodeCell(a[1],a[2]);
}
// Compatibility with older patches: view events never repaint an active editor.
function table_view(name){}
function tableDump(name){collecting=name;capture={};msg(name,'dump');collecting='';return capture;}
function diffTables(){
    var reg=tableDump('regions'),ops=tableDump('opcodes'),changes=[],i,j,k,v,b,enabled;
    for(i=0;i<regionIds.length;i++)for(j=2;j<COLS.length;j++){
        k=j+','+(i+1);v=reg.hasOwnProperty(k)?C.trim(reg[k]):'';b=regionBaseline[k]||'';
        if(v!==b)changes.push({id:regionIds[i],key:COLS[j],value:v,map:true});
    }
    for(i=0;i<opcodeRows.length;i++){
        k='0,'+(i+1);enabled=ops.hasOwnProperty(k)?C.trim(ops[k]):'0';
        if(enabled!=='0'&&enabled!=='1')throw new Error('Use column accepts 0 or 1.');
        k='2,'+(i+1);v=enabled==='1'?(ops.hasOwnProperty(k)?C.trim(ops[k]):''):'';
        b=opcodeBaseline[k]||'';
        if(v!==b)changes.push({id:scopeId,key:opcodeRows[i],value:v,map:false});
    }
    return changes;
}
function snapshot(){undoStack.push({doc:C.clone(doc),base:baseDir,catalog:catalogDir,files:files.slice(),name:fileName,scope:scopeId,selected:selectedRegion,lesson:tutorialStep});if(undoStack.length>40)undoStack.shift();}
function applyTableChangesTo(next,changes){
    var seen={},i,ch,key;
    for(i=0;i<changes.length;i++){
        ch=changes[i];key=ch.id+':'+ch.key;
        if(seen.hasOwnProperty(key)&&seen[key]!==ch.value)throw new Error('Conflicting table edits for '+ch.key+'. Revert tables and edit one view at a time.');
        seen[key]=ch.value;
        if(ch.map)C.mapset(C.node(next,ch.id),ch.key,ch.value);else C.set(C.node(next,ch.id),ch.key,ch.value);
    }
}
function applyChanges(changes){
    if(!changes.length)return false;
    if(doc.blocked.length)throw new Error(doc.blocked.join(' '));
    var next=C.clone(doc);applyTableChangesTo(next,changes);
    var result=C.check(next);if(result.errors.length)throw new Error(result.errors.join('\n'));
    snapshot();if(selectedOpcodeDoc===doc)selectedOpcodeDoc=next;doc=next;return true;
}
function copyRegionOpcode(region,key,value){
    var ref=referenceFor(key);
    if(/^(lokey|hikey|pitch_keycenter)$/.test(key))C.mapset(region,key,value);
    else{
        // key is shorthand for all three mapping fields. Later local fields
        // must not silently defeat the requested key assignment.
        if(key==='key'){
            var own=C.own(region);
            if(own.key===value&&!own.hasOwnProperty('lokey')&&!own.hasOwnProperty('hikey')&&!own.hasOwnProperty('pitch_keycenter'))return;
            C.set(region,'key','');C.set(region,'lokey','');C.set(region,'hikey','');C.set(region,'pitch_keycenter','');
        }
        C.set(region,key,value,ref?ref.comment:'');
    }
}
function opcodeRowAction(action,changes,args){
    assertModel();
    var id=args.length>=2?Number(args[0]):selectedOpcodeScope;
    var key=args.length>=2?String(args[1]):selectedOpcode;
    if((args.length<2&&selectedOpcodeDoc!==doc)||!id||id!==scopeId||!key||!C.own(C.node(doc,id)).hasOwnProperty(key))
        throw new Error('Click an opcode row in section 3 first.');
    var source=C.node(doc,id),copying=action==='copy_opcode_regions',next=C.clone(doc),i,n,count=0,value;
    if(copying&&source.type!=='group')throw new Error('For Copy opcode to regions, choose a <group> scope and select its opcode row.');
    // Deleting a row also discards any draft for that row, even an invalid
    // value; other drafts join this single undoable operation.
    var drafts=[];
    for(i=0;i<changes.length;i++)if(copying||changes[i].id!==id||changes[i].key!==key)drafts.push(changes[i]);
    applyTableChangesTo(next,drafts);
    if(copying){
        var own=C.own(C.node(next,id));
        if(!own.hasOwnProperty(key)||C.trim(own[key])==='')throw new Error('The selected opcode is disabled or empty. Set Use to 1 and enter its Value before copying.');
        value=own[key];var rel=C.relations(next),regs=C.regions(next);
        for(i=0;i<regs.length;i++)if(rel[regs[i].id].group===id){copyRegionOpcode(regs[i],key,value);count++;}
        if(!count)throw new Error('This group has no regions to receive the opcode.');
        var valid=C.check(next);if(valid.errors.length)throw new Error(valid.errors.join('\n'));
    }else C.set(C.node(next,id),key,'');
    if(C.source(next)===C.source(doc)){status('All regions in this group already contain '+key+'='+value+'.');return;}
    snapshot();doc=next;
    if(copying){selectedOpcode=key;selectedOpcodeScope=id;selectedOpcodeDoc=doc;}else clearOpcodeSelection();
    renderAll();checkProject();
    status(copying?'Copied '+key+'='+value+' to all '+count+' regions in group '+C.displayId(doc,id)+'. Local values replaced; Undo restores them.':
        'Deleted '+key+' from '+scopeLabel(id)+'. Inherited/default settings now apply; Undo restores it.');
}
function dispatch(action,args,text){
    if(action==='mapper'){mapperDispatch(args,text);return;}
    try{
        var changes=diffTables(),textChanged=text!==lastEditor,changed=false;
        if(action==='revert_text'){settext('editor',lastEditor);status('Program text restored from the model. Table drafts are retained.');return;}
        if(action==='revert_tables'){renderTables();status('Table drafts restored from the model. Program text is retained.');return;}
        if(action==='undo'){
            if(textChanged||changes.length)throw new Error('Apply or revert the current drafts before Undo.');
            if(!undoStack.length)throw new Error('No applied change to undo.');
            var old=undoStack.pop();doc=old.doc;baseDir=old.base;catalogDir=old.catalog;fileName=old.name;scopeId=old.scope;selectedRegion=old.selected;tutorialStep=old.lesson||0;tutorialUI();
            cancelscan();files=old.files.slice();selectedSample=0;renderSampleMenu();renderAll();status('Restored previous applied state. Disk files are unchanged.');return;
        }
        if(action==='apply_text'){
            if(changes.length)throw new Error('Table drafts are pending. Apply them first, or Revert tables before applying text.');
            if(!textChanged){status('Program text already matches the model.');return;}
            var parsed=C.parse(text);snapshot();doc=parsed;scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;
            renderAll();checkProject();status(doc.blocked.length?'Text applied in TEXT MODE: '+doc.blocked.join(' '):'Text applied. Tables now reflect the program.');return;
        }
        if(textChanged)throw new Error('Program text has unapplied edits. Click Apply text or Revert text before using tables or saving.');
        if(action==='copy_opcode_regions'||action==='delete_opcode'){opcodeRowAction(action,changes,args);return;}
        if(action==='import_selected'){
            var selectedFiles=validateSampleSelection(args[0],JSON.parse(String(args[1])));
            importSamples(selectedFiles,false,Number(args[2]),changes);return;
        }
        changed=applyChanges(changes);
        if(changed)renderAll();
        if(action==='demo2'||action==='tutorial'||action==='tutorial_next'||action==='tutorial_prev'||action==='tutorial_previous'||action==='tutorial_reload'||action==='tutorial_scan'){
            tutorialAction(action,args);return;
        }
        if(action==='compile'){if(!doc.blocked.length){if(!changed)snapshot();C.pretty(doc);}renderAll();checkProject();status('Compiled '+C.regions(doc).length+' regions. Program window updated; use Save to write the file.');return;}
        if(action==='check'){checkProject();return;}
        if(action==='choosefolder'){msg('folder_dialog','bang');return;}
        if(action==='open_dialog'){msg('open_dialog','bang');return;}
        if(action==='save'||action==='saveas_dialog'||action==='save_dialog_load'){beginSaveDialog(action==='save_dialog_load');return;}
        if(action==='folder_path'){
            catalogDir=C.norm(args[0]);if(!C.regions(doc).length){snapshot();baseDir=catalogDir;}
            renderPaths();startScan();return;
        }
        if(action==='new'){
            snapshot();doc=blankDocument();
            fileName='My-Instrument.sfz';if(catalogDir)baseDir=catalogDir;scopeId=doc.nodes[0].id;selectedRegion=0;clearSampleMemory();renderAll();checkProject();status('New blank instrument. Load a sound folder to begin.');return;
        }
        if(action==='clear_samples'){
            assertModel();snapshot();
            doc.nodes=doc.nodes.filter(function(n){return n.type!=='region';});
            for(var si=0;si<doc.nodes.length;si++)C.set(doc.nodes[si],'sample','');
            selectedRegion=0;
            if(scopeId&&!doc.nodes.some(function(n){return n.id===scopeId;}))scopeId=doc.nodes.length?doc.nodes[doc.nodes.length-1].id:0;
            clearSampleMemory();renderAll();checkProject();status('All samples cleared. Disk files are unchanged. Undo restores the previous samples.');return;
        }
        if(action==='demo'){
            snapshot();baseDir=patchDir()+'/Examples/Demo';catalogDir=baseDir;fileName='My_Demo.sfz';doc=C.parse(readUTF8(baseDir+'/Table_Compiler_Demo.sfz'));C.pretty(doc);
            selectedRegion=C.regions(doc)[0].id;scopeId=selectedRegion;chooseTestNote();loadOpenedInstrument(baseDir+'/Table_Compiler_Demo.sfz');renderAll();startScan();status('Demo load requested. Enable Audio, then click Note (MIDI '+testPitch+').');return;
        }
        if(action==='open_path'){
            var path=C.norm(args[0]),incoming=C.parse(readUTF8(path));snapshot();doc=incoming;baseDir=dirname(path);catalogDir=baseDir;fileName=basename(path);
            scopeId=doc.nodes.length?doc.nodes[0].id:0;selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;lastSaved=C.source(doc);chooseTestNote();loadOpenedInstrument(path);renderAll();startScan();checkProject();status('Instrument load requested. Enable Audio, then click Note (MIDI '+testPitch+').');return;
        }
        if(action==='scope'){
            scopeId=scopeIds[Number(args[0])]||scopeId;renderTables();renderScopeMenu();status('Opcode table: '+scopeLabel(scopeId));return;
        }
        if(action==='edit_selected'){
            if(!selectedRegion)throw new Error('Select a region row first.');scopeId=selectedRegion;renderTables();renderScopeMenu();return;
        }
        if(action==='newgroup'){
            assertModel();snapshot();scopeId=C.create(doc,'group',' // New group\n').id;renderAll();status('New group selected. Imports will go into this group.');return;
        }
        if(action==='duplicate_group'){
            duplicateScopeGroup();return;
        }
        if(action==='import_newgroup'){
            importSamples(files.slice(),true);return;
        }
        if(action==='addglobal'||action==='addcontrol'){
            assertModel();var type=action==='addglobal'?'global':'control',found=null;
            for(var f=0;f<doc.nodes.length;f++)if(doc.nodes[f].type===type){found=doc.nodes[f];break;}
            if(!found){snapshot();found=C.create(doc,type,'\n',type==='control'?0:(doc.nodes.length&&doc.nodes[0].type==='control'?1:0));}
            scopeId=found.id;renderAll();return;
        }
        if(action==='duplicate'){
            assertModel();if(!selectedRegion)throw new Error('Select a region row.');var next=C.clone(doc),copy=C.duplicateRegion(next,selectedRegion);snapshot();doc=next;selectedRegion=copy.id;scopeId=copy.id;renderAll();status('Region duplicated into the lowest available range in its group.');return;
        }
        if(action==='delete'){
            assertModel();if(!selectedRegion)throw new Error('Select a region row.');snapshot();doc.nodes.splice(doc.nodes.indexOf(C.node(doc,selectedRegion)),1);selectedRegion=C.regions(doc).length?C.regions(doc)[0].id:0;scopeId=selectedRegion||(doc.nodes.length?doc.nodes[0].id:0);renderAll();status('Region removed. Undo restores it.');return;
        }
        if(action==='import_one'||action==='import_all'){importSamples(action==='import_one'?[files[selectedSample]]:files.slice());return;}
        if(action==='add_opcode'){
            assertModel();if(!scopeId)throw new Error('Select or create a scope first.');var ref=referenceItems[selectedRef];if(!ref)throw new Error('Choose an opcode.');
            var target=C.node(doc,scopeId);if(ref.name==='default_path'&&target.type!=='control')throw new Error('default_path belongs under <control>. Use Control first.');
            if(target.type==='control'&&ref.name!=='default_path')throw new Error('Select global, group or region for performance opcodes.');
            if(C.own(target).hasOwnProperty(ref.name)){status('Opcode already present. Edit its Value cell.');return;}
            snapshot();C.set(target,ref.name,ref.example.substring(ref.example.indexOf('=')+1),ref.comment);renderAll();
            var where=target.type!=='region'?'Region Table shows local values; blank cells inherit this scope.':(COLS.indexOf(ref.name)>=2||ref.name==='key')?'Region Table updated.':'Shown in section 3 and SFZ text; Region Table has fixed common columns.';
            status('Added '+ref.name+'. '+where+' Edit its Value, then Compile tables.');return;
        }
        if(action==='copy_samples'){msg('sample_text','select');status('Sample lines selected. Press Cmd-C / Ctrl-C.');return;}
        if(action==='copy_program'){msg('editor','select');return;}
        if(action==='save_load'||action==='saveas_path'){
            if(action==='save_load'&&!baseDir){beginSaveDialog(true);return;}
            var targetPath=action==='saveas_path'?C.norm(args[0]):baseDir+'/'+safeName(fileName);
            if(!/\.sfz$/i.test(targetPath))targetPath+='.sfz';
            saveProject(targetPath);if(action==='save_load'||Number(args[1])===1)loadInstrument(targetPath);return;
        }
        if(action==='load_saved'){if(!baseDir)throw new Error('Choose an SFZ folder or Open SFZ first.');var saved=baseDir+'/'+safeName(fileName);if(!exists(saved))throw new Error('Save the SFZ first.');loadInstrument(saved);return;}
        throw new Error('Unknown action: '+action);
    }catch(e){
        status('Action stopped: '+e.message);report(String(e.message));
        if(/^(save|saveas_dialog|save_dialog_load|save_load|saveas_path|open_dialog|open_path|load_saved)$/.test(action)&&typeof error==='function')error('EC SFZ Builder: '+e.message+'\n');
        if(action==='demo2'||action.indexOf('tutorial')===0)tutorialMsg('tutorial_status','set',String(e.message));
    }
    finally{if(action==='import_selected')msg('sample_text','ec_samples_done');}
}
function assertModel(){if(doc.blocked.length)throw new Error(doc.blocked.join(' '));}
function scopeLabel(id,numbers){
    if(!id)return 'No scope';var n=C.node(doc,id),o=C.own(n);return '<'+n.type+'> #'+(numbers||C.displayIds(doc))[id]+(n.type==='region'?'  '+(o.sample||'(inherited sample)'):'');
}
function renderPaths(){settext('project_path','SFZ folder: '+baseDir);settext('folder_path',catalogDir||'Choose a sound folder');settext('filename_input',fileName);if(!scanBusy)showSampleLines();}
function renderScopeMenu(){
    rendering=true;scopeIds=[];msg('scope_menu','clear');var numbers=C.displayIds(doc);
    for(var i=0;i<doc.nodes.length;i++){scopeIds.push(doc.nodes[i].id);msg('scope_menu','append',scopeLabel(doc.nodes[i].id,numbers));}
    if(scopeIds.indexOf(scopeId)<0)scopeId=scopeIds.length?scopeIds[0]:0;
    setvalue('scope_menu',Math.max(0,scopeIds.indexOf(scopeId)));rendering=false;
}
function cell(name,col,row,value){msg(name,'set',col,row,String(value));}
function referenceFor(key){for(var i=0;i<REFERENCE.length;i++)if(REFERENCE[i].name===key)return REFERENCE[i];return null;}
function opcodeWidths(){
    var width=900,o=ui('opcodes_view')||ui('opcodes');
    try{var rect=o.getboxattr('presentation_rect');if(rect&&Number(rect[2])>0)width=Number(rect[2]);}catch(e){}
    // Reserve room for the vertical scrollbar and border, even before overflow.
    return [42,150,170,Math.max(60,Math.floor(width)-20-362)];
}
function renderTables(){
    if(selectedOpcodeDoc!==doc||selectedOpcodeScope!==scopeId)clearOpcodeSelection();
    rendering=true;msg('regions','hscroll',1);msg('regions','vscroll',1);msg('opcodes','hscroll',1);msg('opcodes','vscroll',1);var regs=C.regions(doc),rels=C.relations(doc),numbers=C.displayIds(doc),i,j,n,o,key,value;
    regionIds=[];regionBaseline={};msg('regions','clear','all');msg('regions','rows',Math.max(2,regs.length+1));msg('regions','cols',COLS.length);
    msg('regions','readonly',doc.blocked.length?1:0);
    for(j=0;j<COLS.length;j++){cell('regions',j,0,COLS[j]);msg('regions','col',j,'width',WIDTHS[j]);msg('regions','col',j,'readonly',j<2||doc.blocked.length?1:0);}
    for(i=0;i<regs.length;i++){
        n=regs[i];o=C.local(n);regionIds.push(n.id);cell('regions',0,i+1,numbers[n.id]);cell('regions',1,i+1,numbers[rels[n.id].group]||'—');
        for(j=2;j<COLS.length;j++){value=o.hasOwnProperty(COLS[j])?o[COLS[j]]:'';cell('regions',j,i+1,value);regionBaseline[j+','+(i+1)]=value;}
    }
    opcodeRows=[];opcodeBaseline={};msg('opcodes','clear','all');msg('opcodes','cols',4);msg('opcodes','readonly',doc.blocked.length?1:0);
    var heads=['Use','Opcode','Value','Comment / units'];var widths=opcodeWidths();
    for(j=0;j<4;j++){cell('opcodes',j,0,heads[j]);msg('opcodes','col',j,'width',widths[j]);msg('opcodes','col',j,'readonly',j===1||j===3||doc.blocked.length?1:0);}
    if(scopeId){
        n=C.node(doc,scopeId);o=C.own(n);var seen={},ts=C.tokens(n.body);
        for(i=0;i<ts.length;i++)if(!seen[ts[i].key]){opcodeRows.push(ts[i].key);seen[ts[i].key]=true;}
        msg('opcodes','rows',Math.max(2,opcodeRows.length+1));
        for(i=0;i<opcodeRows.length;i++){
            key=opcodeRows[i];var ref=referenceFor(key);cell('opcodes',0,i+1,1);cell('opcodes',1,i+1,key);cell('opcodes',2,i+1,o[key]);cell('opcodes',3,i+1,ref?ref.comment:'Custom opcode: retained exactly; consult sfizz documentation.');opcodeBaseline['2,'+(i+1)]=o[key];
        }
        var eff=C.effective(doc,scopeId);settext('scope_details',scopeLabel(scopeId)+' | Blank cells inherit. Click an opcode row for Copy/Delete.');
    }else{msg('opcodes','rows',2);settext('scope_details','Create a group or import a sample.');}
    settext('selected_label',selectedRegion?'Selected region '+numbers[selectedRegion]:'Select a region row, then Edit selected.');
    var selectedRow=opcodeRows.indexOf(selectedOpcode);
    // Preserve the logical row selection without moving the native inline
    // editor onto the read-only Opcode label during a table rebuild.
    if(selectedRow<0)clearOpcodeSelection();
    renderOpcodeSelection();
    rendering=false;tableGridPublish();mapperSync();
}
function renderAll(){C.labelBlocks(doc,false);auditionSync();renderPaths();renderScopeMenu();renderTables();lastEditor=C.source(doc);settext('editor',lastEditor);settext('model_count',C.regions(doc).length+' regions  |  '+(doc.blocked.length?'TEXT MODE':'TABLE MODE'));}
function category(n){
    categoryIndex=clamp(n,0,CATEGORIES.length-1);var lines=[];referenceItems=[];
    for(var i=0;i<REFERENCE.length;i++)if(!categoryIndex||REFERENCE[i].category===CATEGORIES[categoryIndex]){
        var r=REFERENCE[i];lines.push(r.example+'\n// '+r.comment+(r.detail?'\n// '+r.detail:'')+'\n');if(r.name.charAt(0)!=='<')referenceItems.push(r);
    }
    settext('reference_text',lines.join('\n'));msg('opcode_menu','clear');for(i=0;i<referenceItems.length;i++)msg('opcode_menu','append',referenceItems[i].name);selectedRef=0;setvalue('opcode_menu',0);
}
function refindex(n){selectedRef=clamp(n,0,Math.max(0,referenceItems.length-1));}
function sampleindex(n){selectedSample=clamp(n,0,Math.max(0,files.length-1));}
function importmode(n){importMode=clamp(n,0,2);}
function rootmode(n){rootMode=clamp(n,0,2);}
function rootstart(n){startRoot=clamp(n,0,127);}
function rootstep(n){rootStep=clamp(n,1,127);}
function lovel(n){lowVelocity=clamp(n,1,127);mapperSync();}
function hivel(n){highVelocity=clamp(n,1,127);mapperSync();}
function recursive_scan(n){recursive=Number(n)?1:0;startScan();}
function rescan(){startScan();}
function cancelscan(){if(scanTask)scanTask.cancel();scanTask=null;if(scanFolder)scanFolder.close();scanFolder=null;scanBusy=false;scanQueue=[];scanSeen={};scanRel='';scanDepth=0;}
function renderSampleMenu(){msg('sample_menu','clear');for(var i=0;i<files.length;i++)msg('sample_menu','append',files[i]);setvalue('sample_menu',0);settext('sample_count',files.length+' sounds');}
function clearSampleMemory(skipReset){
    cancelscan();files=[];selectedSample=0;catalogDir='';renderSampleMenu();
    stopAudition(skipReset);auditionSignature='';auditionIssue='';lastSaved='';mapperResetSerial++;
    settext('loaded_label','No instrument loaded for playback.');
}

function startScan(){
    cancelscan();files=[];selectedSample=0;renderSampleMenu();paneSampleList([],[],catalogDir,catalogDir?'Scanning…':'Load a sound folder to choose samples.');
    if(!catalogDir){mapperSync();return;}scanQueue=[{rel:'',depth:0}];scanSeen={};scanBusy=true;scanTask=new Task(scanStep,this);scanTask.schedule(1);mapperSync();
}
function scanStep(){
    if(!scanBusy)return;
    try{
        var budget=120;
        while(budget--){
            if(!scanFolder){if(!scanQueue.length){finishScan();return;}var next=scanQueue.shift();scanRel=next.rel;scanDepth=next.depth;if(scanSeen[scanRel])continue;scanSeen[scanRel]=1;scanFolder=new Folder(catalogDir+'/'+scanRel);scanFolder.typelist=[];}
            if(scanFolder.end){scanFolder.close();scanFolder=null;continue;}
            var name=String(scanFolder.filename||''),type=String(scanFolder.filetype||'').toLowerCase();scanFolder.next();if(!name||name.charAt(0)==='.')continue;
            if(type==='fold'){if(recursive&&scanDepth<20)scanQueue.push({rel:scanRel+name+'/',depth:scanDepth+1});}
            else if(/\.(wav|wave|aif|aiff|flac|ogg)$/i.test(name))files.push(scanRel+name);
            if(files.length>10000)throw new Error('Folder exceeds 10,000 samples. Choose a smaller folder.');
        }
        scanTask.schedule(2);
    }catch(e){cancelscan();status('Folder scan: '+e.message);mapperSync();}
}
function finishScan(){
    scanBusy=false;scanTask=null;files.sort(function(a,b){var aa=a.toLowerCase(),bb=b.toLowerCase();return aa<bb?-1:aa>bb?1:a<b?-1:a>b?1:0;});
    renderSampleMenu();showSampleLines();settext('sample_count',files.length+' sounds — paths relative to the SFZ folder');status(files.length?'Folder ready. Add selected and Add all use the destination group’s placement order (1: 0 up; 2: 127 down; 3: 84 down).':'No supported sounds found in this folder.');mapperSync();
}
function showSampleLines(){var lines=[];for(var i=0;i<files.length;i++){var p=C.resolve(catalogDir,files[i]);try{p=C.relative(baseDir,p);}catch(e){}lines.push('sample='+p);}paneSampleList(files,lines,catalogDir,'');}
function validateSampleSelection(version,indices){
    if(scanBusy)throw new Error('Wait for the folder scan.');
    if(Number(version)!==samplePaneVersion||samplePaneSignature!==JSON.stringify([catalogDir,files]))throw new Error('The sound folder changed. Select samples from the current list.');
    if(Object.prototype.toString.call(indices)!=='[object Array]'||!indices.length||indices.length>10000)throw new Error('Select one or more samples from the soundfile list.');
    var seen={},ordered=[],i,index;
    for(i=0;i<indices.length;i++){
        index=indices[i];
        if(typeof index!=='number'||!isFinite(index)||Math.floor(index)!==index||index<0||index>=files.length)throw new Error('Invalid sample selection. Select samples again.');
        if(!seen.hasOwnProperty(index)){seen[index]=1;ordered.push(index);}
    }
    ordered.sort(function(a,b){return a-b;});
    return ordered.map(function(n){return files[n];});
}
function addSelectedSamples(version,indices){
    try{
        if(!initialized)throw new Error('The builder is still loading.');
        if(pending)throw new Error('Wait for the current action, then add the selected samples.');
        validateSampleSelection(version,indices);
        go('import_selected',Number(version),JSON.stringify(indices),scopeId);
        if(!pending)msg('sample_text','ec_samples_done');
    }catch(e){msg('sample_text','ec_samples_done');status('Action stopped: '+e.message);}
}
// Both home-page add buttons use the same allocation policy as the mapper.
function importSamples(list,newGroup,destinationScope,draftChanges){
    assertModel();if(scanBusy)throw new Error('Wait for the folder scan.');if(!list.length||!list[0])throw new Error('Choose a sound folder with samples.');
    if(!baseDir||!catalogDir)throw new Error('Load the sound folder on the home page first.');
    if(lowVelocity>highVelocity)throw new Error('Low velocity exceeds high velocity.');
    var next=C.clone(doc),destination=typeof destinationScope==='number'?destinationScope:scopeId;
    if(draftChanges&&draftChanges.length){applyTableChangesTo(next,draftChanges);var checked=C.check(next);if(checked.errors.length)throw new Error(checked.errors.join('\n'));}
    var rel=C.relations(next),target=destination?C.node(next,destination):null,groupId=0,anchor=null,i;
    if(newGroup)groupId=C.create(next,'group',' // Imported samples\n').id;
    else if(target&&target.type==='group')groupId=target.id;
    else if(target&&target.type==='region'){
        groupId=rel[target.id].group||0;
        if(!groupId){i=next.nodes.indexOf(target);anchor=target;while(i+1<next.nodes.length&&next.nodes[i+1].type==='region')anchor=next.nodes[++i];}
    }else for(i=0;i<next.nodes.length;i++)if(next.nodes[i].type==='group'){groupId=next.nodes[i].id;break;}
    if(!groupId&&!anchor)groupId=C.create(next,'group',' // Imported samples\n').id;
    // Reserve the entire batch before committing anything. Repeated Add all
    // follows the destination group’s direction, skipping occupied keys.
    var keys=C.freeKeys(next,groupId,list.length);
    var controlId=C.relations(next)[groupId||(anchor&&anchor.id)].control,prefix=controlId?C.own(C.node(next,controlId)).default_path||'':'';
    if(prefix && !/[\\/]$/.test(prefix))throw new Error('End default_path with / before using folder import.');
    var sampleBase=prefix?C.resolve(baseDir,prefix):baseDir,last;
    for(i=0;i<list.length;i++){
        last=C.insertRegion(next,groupId,{sample:C.relative(sampleBase,C.resolve(catalogDir,list[i])),
            key:String(keys[i]),lovel:String(lowVelocity),hivel:String(highVelocity),loop_mode:'one_shot'});
        if(anchor){next.nodes.pop();next.nodes.splice(next.nodes.indexOf(anchor)+1,0,last);anchor=last;}
    }
    snapshot();doc=next;scopeId=newGroup?groupId:last.id;selectedRegion=last.id;
    testPitch=keys[0];setvalue('pitch_num',testPitch);
    renderAll();checkProject();
    status('Added '+list.length+' '+(list.length===1?'sample':'samples')+' to '+(groupId?'group '+C.displayId(doc,groupId):'No group')+
        ' at available MIDI '+(list.length===1?'key '+keys[0]:'keys (first '+keys[0]+', last '+keys[keys.length-1]+')')+'. One sample per key.');
}
function duplicateScopeGroup(){
    assertModel();
    var target=scopeId?C.node(doc,scopeId):null,groupId=0;
    if(target&&target.type==='group')groupId=target.id;
    else if(target&&target.type==='region')groupId=C.relations(doc)[target.id].group||0;
    if(!groupId)throw new Error('Choose a <group> in Opcodes for Scope, or use Edit selected on a region in that group.');
    var sourceNumber=C.displayId(doc,groupId),next=C.clone(doc),copy=C.duplicateGroup(next,groupId);
    var result=C.check(next);if(result.errors.length)throw new Error(result.errors.join('\n'));
    snapshot();doc=next;scopeId=copy.group.id;selectedRegion=copy.regions.length?copy.regions[0].id:0;
    renderAll();checkProject();
    status('Copied group '+sourceNumber+' to new group '+C.displayId(doc,copy.group.id)+' ('+copy.regions.length+' regions). Mappings and settings retained; both groups can play together.');
}
function wavRoot(path){
    if(!/\.wav(e)?$/i.test(path))throw new Error('WAV root mode requires a WAV file: '+basename(path));
    var f=new File(path,'read');if(!f.isopen)throw new Error('Cannot read '+path);
    function u32(b,p){return (b[p]&255)+(b[p+1]&255)*256+(b[p+2]&255)*65536+(b[p+3]&255)*16777216;}
    function tag(b,p){return String.fromCharCode(b[p],b[p+1],b[p+2],b[p+3]);}
    try{
        var h=f.readbytes(12);if(h.length!==12||tag(h,0)!=='RIFF'||tag(h,8)!=='WAVE')throw new Error('Expected RIFF/WAVE: '+basename(path));
        while(f.position+8<=f.eof){h=f.readbytes(8);var size=u32(h,4),next=f.position+size+(size%2);if(next>f.eof+1)break;
            if(tag(h,0)==='smpl'&&size>=36){var data=f.readbytes(36);return u32(data,12);}f.position=next;
        }
        throw new Error('No WAV smpl root metadata in '+basename(path)+'. Use filename or start/step mode.');
    }finally{f.close();}
}
function safeName(name){name=C.trim(name);if(!name||/[\\/:*?"<>|\r\n]/.test(name)||name==='.'||name==='..')throw new Error('Use a simple SFZ filename without folders.');return /\.sfz$/i.test(name)?name:name+'.sfz';}
function projectCheck(d,base){
    var r=C.check(d),regs=C.regions(d),numbers=C.displayIds(d);for(var i=0;i<regs.length;i++){var p=C.samplePath(d,regs[i].id,base);if(p&&p.charAt(0)!=='*'&&p.indexOf('$')<0&&!exists(p))r.warnings.push('Missing sample, region '+numbers[regs[i].id]+': '+p);}
    r.summary=regs.length+' regions; '+r.errors.length+' errors; '+r.warnings.length+' warnings.';
    return r;
}
function checkProject(){var r=projectCheck(doc,baseDir);report(r.summary+'\n'+r.errors.map(function(s){return 'ERROR: '+s;}).concat(r.warnings.map(function(s){return 'NOTE: '+s;})).join('\n')+(doc.blocked.length?'\nText mode: table edits disabled. Includes/macros are not expanded by this checker.':''));return r;}
function saveProject(path){
    if(!C.trim(C.source(doc)))throw new Error('Cannot save an empty program.');
    var next=C.clone(doc),newBase=dirname(path);if(C.norm(newBase)!==C.norm(baseDir))C.rebase(next,baseDir,newBase);
    var result=projectCheck(next,newBase);if(!next.blocked.length&&result.errors.length)throw new Error(result.errors.join('\n'));
    var bytes=encodeUTF8(C.source(next));if(bytes.length>MAX_TEXT_BYTES)throw new Error('The SFZ exceeds the 2 MB editor limit.');
    if(exists(path)){var prior=readBytes(path);if(prior.join(',')!==bytes.join(','))writeBytes(path+'.bak',prior);}
    writeBytes(path,bytes);if(readBytes(path).join(',')!==bytes.join(','))throw new Error('Save verification failed. Keep the editor open and use the .bak if needed.');
    if(newBase!==baseDir)snapshot();doc=next;baseDir=newBase;fileName=basename(path);lastSaved=C.source(doc);renderAll();checkProject();
    status('Saved '+path+(result.warnings.length?' — review warnings.':'')+' Previous contents retained in .bak when replaced.');
}
function loadInstrument(path){
    var source=readUTF8(path),parsed=C.parse(source);
    if(!C.regions(parsed).length&&!parsed.blocked.length){
        stopAudition();auditionSignature=baseDir+'\u0000'+C.source(doc);
        settext('loaded_label','Blank SFZ: no sample regions to play.');mapperSync();return;
    }
    panic();outlet(0,'read',path);loadedPath=path;mapperLoadedSource=source;
    auditionIsPreview=false;auditionIssue='';auditionSignature=baseDir+'\u0000'+C.source(doc);
    mapperSync();settext('loaded_label','Load requested: '+basename(path)+' — check Max Console for sfizz messages.');
}
function loadOpenedInstrument(path){
    // Open/Demo already parsed this exact file. Labels/formatting in the editor
    // do not require replacing the original file with a temporary audition copy.
    C.labelBlocks(doc,false);loadInstrument(path);mapperLoadedSource=C.source(doc);
}
function note(p,v){outlet(0,'midievent',144,clamp(p,0,127),clamp(v,0,127));}
function pitch(n){testPitch=clamp(n,0,127);}
function velocity(n){testVelocity=clamp(n,1,127);}
function duration(n){testDuration=clamp(n,20,30000);}
function keyboard_input(p,v){
    testPitch=clamp(p,0,127);
    if(Number(v)>0){testVelocity=clamp(v,1,127);setvalue('velocity_num',testVelocity);auditionHint(testPitch,testVelocity);}
    // The native keyboard route has already sent this note to sfizz~.
}
function incoming(p,v){if(Number(v)>0)auditionHint(Number(p),Number(v));if(loadedPath)note(p,v);}
function timed(){panic();if(!loadedPath){status(auditionIssue||'Load a sound folder and Add samples before auditioning.');return;}var p=testPitch;note(p,testVelocity);var t=new Task(function(){note(p,0);},this);noteJobs.push(t);t.schedule(testDuration);}
function panic(){mapperNotesOff();msg('main_keyboard','clear');var kw=ui('keyboard_window');if(kw&&kw.subpatcher){var kb=kw.subpatcher().getnamed('popup_keyboard');if(kb)kb.message('clear');}for(var i=0;i<noteJobs.length;i++)noteJobs[i].cancel();noteJobs=[];outlet(0,'midievent',176,64,0);outlet(0,'midievent',176,123,0);outlet(0,'midievent',176,120,0);}
function initialize(){
    if(initialized)return;
    try{supportFile('ec_sfz_textpane.html');}catch(e){
        var message='Builder startup: '+e.message;
        if(typeof error==='function')error(message+'\n');
        var label=ui('status');if(label)label.message('set',message);
        return;
    }
    initialized=true;loadPanes();loadTableGrids();loadMapper();msg('scala_reference','read',patchDir()+'/Reference/SCALA_scale-list_for_SFZ.txt');
    doc=blankDocument();baseDir='';catalogDir='';fileName='My-Instrument.sfz';scopeId=doc.nodes[0].id;selectedRegion=0;
    category(0);setvalue('import_mode',1);setvalue('root_mode',0);setvalue('start_root',0);setvalue('root_step',1);setvalue('low_velocity',1);setvalue('high_velocity',127);setvalue('recursive',1);setvalue('pitch_num',0);testPitch=0;setvalue('velocity_num',100);setvalue('duration_num',500);setvalue('midi_toggle',0);
    clearSampleMemory(true);renderAll();undoStack=[];
    midiDevices=[];midiDevice='';midiEnabled=0;msg('midi_gate','int',0);msg('midi_notein','port','none');msg('midi_refresh','bang');
    status('Blank instrument. Load a sound folder, Add samples, enable Audio, then play.');
    report('Placement: group 1 starts at 0 upward; group 2 at 127 downward; group 3 at 84 downward. Audition updates automatically.\nCompile table edits; Apply text for handwritten edits. Save keeps your SFZ.');
}
function close(){if(!initialized)return;if(midiListTask)midiListTask.cancel();panic();cancelscan();if(paneTimer)paneTimer.cancel();}
function notifydeleted(){if(!initialized)return;if(midiListTask)midiListTask.cancel();if(mapperWatchdog)mapperWatchdog.cancel();if(paneTimer)paneTimer.cancel();for(var i=0;i<noteJobs.length;i++)noteJobs[i].cancel();cancelscan();}

// UTF-8 file transport: literal bytes, independent of Max message punctuation.
function encodeUTF8(s) {
    var out=[],i,c,d;
    for(i=0;i<s.length;i++) {
        c=s.charCodeAt(i);
        if(c>=0xD800 && c<=0xDBFF && i+1<s.length) { d=s.charCodeAt(i+1); if(d>=0xDC00&&d<=0xDFFF){c=0x10000+((c-0xD800)<<10)+(d-0xDC00);i++;} }
        if(c<128) out.push(c);
        else if(c<2048) out.push(192|(c>>6),128|(c&63));
        else if(c<65536) out.push(224|(c>>12),128|((c>>6)&63),128|(c&63));
        else out.push(240|(c>>18),128|((c>>12)&63),128|((c>>6)&63),128|(c&63));
    }
    return out;
}
function decodeUTF8(bytes) {
    var out=[],i=0,c,n,x,j;
    while(i<bytes.length) {
        c=bytes[i++]&255;
        if(c<128) {out.push(String.fromCharCode(c));continue;}
        if(c>=194&&c<224){n=1;x=c&31;}else if(c>=224&&c<240){n=2;x=c&15;}else if(c>=240&&c<245){n=3;x=c&7;}else throw new Error('File is not valid UTF-8. Save it as UTF-8 plain text.');
        if(i+n>bytes.length) throw new Error('Incomplete UTF-8 sequence.');
        for(j=0;j<n;j++){c=bytes[i++]&255;if((c&192)!==128)throw new Error('Invalid UTF-8 text.');x=(x<<6)|(c&63);}
        if(x<=65535)out.push(String.fromCharCode(x));else {x-=65536;out.push(String.fromCharCode(0xD800+(x>>10),0xDC00+(x&1023)));}
    }
    return out.join('').replace(/^\uFEFF/,'');
}
function readBytes(path) {
    var f=new File(path,'read'), bytes=[];
    if(!f.isopen) throw new Error('Cannot read '+path);
    try {
        if(f.eof>MAX_TEXT_BYTES) throw new Error('Text file exceeds the 2 MB editor limit.');
        while(f.position<f.eof) { var b=f.readbytes(Math.min(4096,f.eof-f.position)); bytes=bytes.concat(b); }
    } finally { f.close(); }
    return bytes;
}
function readUTF8(path) { return decodeUTF8(readBytes(path)).replace(/\r\n?/g,'\n'); }
function writeBytes(path,bytes) {
    var f=new File(path,'write',['TEXT']); if(!f.isopen) throw new Error('Cannot write '+path);
    try { f.position=0; f.eof=0; for(var i=0;i<bytes.length;i+=4096) f.writebytes(bytes.slice(i,i+4096)); f.eof=f.position; } finally { f.close(); }
}
function exists(path) { var f=new File(path,'read'); var yes=!!f.isopen; if(yes)f.close(); return yes; }

// END ec_sfz_controller_source.js
