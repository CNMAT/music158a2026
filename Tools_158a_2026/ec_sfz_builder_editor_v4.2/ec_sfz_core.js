/* EC SFZ Builder v2 — source-preserving instrument model. ES5 / Max js.
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
    return {trim:trim,clone:clone,mask:mask,tokens:tokens,parse:parse,source:source,pretty:pretty,labelBlocks:labelBlocks,displayIds:displayIds,displayId:displayId,node:node,own:own,local:local,relations:relations,effective:effective,regions:regions,midi:midi,set:set,mapset:mapset,create:create,insertRegion:insertRegion,check:check,validValue:validValue,norm:norm,absolute:absolute,resolve:resolve,relative:relative,samplePath:samplePath,rebase:rebase,filenameRoot:filenameRoot,splitRanges:splitRanges};
}());
if(typeof module!=='undefined' && module.exports)module.exports=SfzCore;
