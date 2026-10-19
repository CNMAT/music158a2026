/* ec_scale_tuning_mapper.js -- v1.2.0, 2026-10-16
   Max [js] (legacy ES5). Standalone: no packages or includes.
   See README.txt and SOURCES.txt for units, message contract and provenance.
   Outlet order per event: metadata (2), Hz (1), midicents (0).
   Tone-profile ratings are measured fit ratings, normalized here as a
   compositional probability model; they are not observed transition counts. */
inlets = 2;
outlets = 4;
setinletassist(0, "Midicents, midi <note>, degree <index>, bang, or configuration messages");
setinletassist(1, "nodeweights <list> / nodes controls (bare lists are node weights)");
setoutletassist(0, "Mapped/generated midicents; 6000 = MIDI 60");
setoutletassist(1, "Frequency in Hz; follows reference <Hz>, default A4=440");
setoutletassist(2, "tone <degree> <period> <context> <degree probability> <reason>; midievent");
setoutletassist(3, "Status, catalog, warnings and errors");

var Mapper = (function () {
    var VERSION = "1.2.0", EPS = 1e-8, MAX_DEGREES = 256;
    var scales = {}, scaleOrder = [], aliases = {
        ionian: "major", aeolian: "natural_minor", minor: "natural_minor",
        "whole-tone": "whole_tone", "e-hex": "augmented_hexatonic",
        octatonic: "octatonic_wh", messiaen3rd: "messiaen_3", messiaen5th: "messiaen_5"
    };
    var KK = {
        kk_major: [6.35, 2.23, 3.48, 2.33, 4.38, 4.09, 2.52, 5.19, 2.39, 3.66, 2.29, 2.88],
        kk_minor: [6.33, 2.68, 3.52, 5.38, 2.60, 3.53, 2.54, 4.75, 3.98, 2.69, 3.34, 3.17]
    };
    var tunings = {
        just_major_5limit: {scale: "major", ratios: [1, 9/8, 5/4, 4/3, 3/2, 5/3, 15/8]},
        pythagorean_major: {scale: "major", ratios: [1, 9/8, 81/64, 4/3, 3/2, 27/16, 243/128]},
        just_minor_5limit: {scale: "natural_minor", ratios: [1, 9/8, 6/5, 4/3, 3/2, 8/5, 9/5]}
    };
    function add(id, pcs, category, note) {
        scales[id] = {id: id, nominal: pcs.map(function(x){return x*100;}),
            ids: pcs.map(function(x){return "pc"+x;}), period:1200,
            category:category || "Western pitch collection", note:note || "12-TET pitch template; no melodic grammar."};
        scaleOrder.push(id);
    }
    add("major", [0,2,4,5,7,9,11]); add("natural_minor", [0,2,3,5,7,8,10]);
    add("dorian", [0,2,3,5,7,9,10]); add("phrygian", [0,1,3,5,7,8,10]);
    add("lydian", [0,2,4,6,7,9,11]); add("mixolydian", [0,2,4,5,7,9,10]);
    add("locrian", [0,1,3,5,6,8,10]); add("harmonic_minor", [0,2,3,5,7,8,11]);
    add("melodic_minor_ascending", [0,2,3,5,7,9,11]); add("harmonic_major", [0,2,4,5,7,8,11]);
    add("major_pentatonic", [0,2,4,7,9]); add("minor_pentatonic", [0,3,5,7,10]);
    add("major_blues", [0,2,3,4,7,9]); add("minor_blues", [0,3,5,6,7,10]);
    add("whole_tone", [0,2,4,6,8,10]); add("octatonic_wh", [0,2,3,5,6,8,9,11]);
    add("octatonic_hw", [0,1,3,4,6,7,9,10]); add("augmented_hexatonic", [0,3,4,7,8,11]);
    add("chromatic", [0,1,2,3,4,5,6,7,8,9,10,11]);
    add("lydian_dominant", [0,2,4,6,7,9,10]); add("altered", [0,1,3,4,6,8,10]);
    add("phrygian_dominant", [0,1,4,5,7,8,10]);
    add("messiaen_1", [0,2,4,6,8,10]); add("messiaen_2", [0,1,3,4,6,7,9,10]);
    add("messiaen_3", [0,2,3,4,6,7,8,10,11]); add("messiaen_4", [0,1,2,5,6,7,8,11]);
    add("messiaen_5", [0,1,5,6,7,11]); add("messiaen_6", [0,2,4,5,6,8,10,11]);
    add("messiaen_7", [0,1,2,3,5,6,7,8,9,11]);
    var cn = "Chinese pentatonic model", cnNote = "12-TET modal pitch collection, as represented in the CNMAT pedagogy tuner; not a complete performance model.";
    add("gong_12tet", [0,2,4,7,9], cn, cnNote); add("shang_12tet", [0,2,5,7,10], cn, cnNote);
    add("jue_12tet", [0,3,5,8,10], cn, cnNote); add("zhi_12tet", [0,2,5,7,9], cn, cnNote);
    add("yu_12tet", [0,3,5,7,10], cn, cnNote);
    add("rast_24edo_model", [0,2,3.5,5,7,9,10.5], "Arabic pitch approximation", "Quarter-tone pedagogical approximation of Rast; variable intonation and sayr are not modelled.");
    add("bayati_24edo_model", [0,1.5,3,5,7,8,10], "Arabic pitch approximation", "Quarter-tone Bayati/Nahawand pitch model; no claim of fixed authentic intonation or complete maqam grammar.");
    add("hijaz_12tet_model", [0,1,4,5,7,8,10], "Arabic pitch approximation", "12-TET Hijaz/Nahawand pitch model; no claim of fixed authentic intonation or complete maqam grammar.");
    function addDocumented(id,cents,period,note) {
        scales[id]={id:id,nominal:cents,ids:cents.map(function(x,i){return "d"+(i+1);}),period:period,category:"Documented tuning model",kind:"documented_model",note:note};scaleOrder.push(id);
    }
    addDocumented("hirajoshi_ellis_112",[0,185,337,683,790],1200,"Scala hirajoshi.scl; historical observation attributed there to Helmholtz/Ellis p.519 no.112. Specific model, not universal Japanese tuning.");
    addDocumented("hirajoshi_ellis_111",[0,193,357,719,801],1199,"Scala hirajoshi3.scl; historical observation attributed there to Helmholtz/Ellis p.519 no.111. Preserves the 1199-cent period.");
    addDocumented("pelog_ksatria",[0,153,315,552,706,848,1058],1200,"Scala pelog1.scl: Saih pitu, Ksatria, Den Pasar. Archive reference tonic 312.5 Hz; mapper tonic remains user-controlled.");
    addDocumented("slendro_kanyut_mesem",[0,222.974,475.590,711.842,937.091],1200,"Scala slendro_ky1.scl: Kyahi Kanyut Mesem, Mangku Nagaran, Solo. Archive reference tonic 291 Hz; mapper tonic remains user-controlled.");

    // Display aliases retain the requested modal order without duplicate scales.
    var modeOrder = ["phrygian","natural_minor","dorian","major","mixolydian","lydian"];
    scaleOrder = modeOrder.concat(scaleOrder.filter(function(x){return modeOrder.indexOf(x)<0;}));
    var menuOrder = scaleOrder.map(function(x){return x==="major"?"ionian":x==="natural_minor"?"aeolian":x;});
    var melodyDefaults = {melodic:1,stepchance:0.90,recovery:0.98,leapavoid:0.97,maxrun:3,turnbias:0.90,recoverycents:480,octaveshift:0};
    var state, configs, assigned, nodeW, activeNode, lastInput, lastPitch, held, rngState, melody;
    function clone(x) {return JSON.parse(JSON.stringify(x));}
    function fail(s) {throw new Error(s);}
    function num(x) {if (typeof x !== "number" || !isFinite(x)) fail("Expected a finite number"); return x;}
    function integer(x) {num(x); if(Math.floor(x)!==x)fail("Expected an integer"); return x;}
    function bounded(x, lo, hi) {num(x); if(x<lo||x>hi)fail("Value outside "+lo+".."+hi);return x;}
    function symbol(x) {x=String(x);if(!/^[A-Za-z0-9_.-]+$/.test(x)||x==="__proto__"||x==="constructor"||x==="prototype")fail("Use a simple name: letters, numbers, underscore, dot or dash");return x;}
    function own(o,k) {return Object.prototype.hasOwnProperty.call(o,k);}
    function sum(a) {var s=0;for(var i=0;i<a.length;i++)s+=a[i];return s;}
    function normalize(a) {var s=sum(a);if(!(s>0)||!isFinite(s))fail("Weights must have positive finite total");return a.map(function(x){return x/s;});}
    function weights(a,n) {if(a.length!==n)fail("Expected "+n+" weights, received "+a.length);for(var i=0;i<n;i++)bounded(a[i],0,1e100);normalize(a);return a.slice();}
    function centsOK(a,p) {
        bounded(p,1,48000);if(!a.length||a.length>MAX_DEGREES)fail("Use 1..256 degrees");
        for(var i=0;i<a.length;i++){num(a[i]);if(a[i]<0||a[i]>=p||(i&&a[i]<=a[i-1]))fail("Cents must increase strictly within [0, period)");}
    }
    function status(tag,a) {outlet(3,[tag].concat(a||[]));}
    function error(e) {status("error",[String(e.message||e)]);}
    function hz(mc) {var h=state.reference*Math.pow(2,(mc-6900)/1200);if(!isFinite(h)||h<=0)fail("Pitch cannot be represented as positive finite Hz");return h;}
    function rawProfile(c,name) {
        if(name==="uniform")return c.cents.map(function(){return 1;});
        if(!own(KK,name))fail("Unknown profile: "+name);
        return c.nominal.map(function(x){var pc=x/100;if(pc!==Math.floor(pc)||pc<0||pc>11)fail("KK profiles require nominal 12-TET pitch classes; use custom weights for this scale");return KK[name][pc];});
    }
    function setProfile(c,name,a) {
        if(name==="auto")name=c.scale==="major"?"kk_major":c.scale==="natural_minor"?"kk_minor":"uniform";
        c.profile=name;c.weights=name==="custom"?weights(a,c.cents.length):rawProfile(c,name);
        c.profileSource=name.indexOf("kk_")===0?"Krumhansl_Kessler_1982_fit_ratings":name==="uniform"?"uniform_model":"user_supplied";
    }
    function fromScale(name,tonic) {
        name=aliases[name]||name;if(!own(scales,name))fail("Unknown scale: "+name);
        var s=scales[name],c={name:name,scale:name,nominal:s.nominal.slice(),cents:s.nominal.slice(),ids:s.ids.slice(),period:s.period,tonic:tonic,tuning:s.kind||"equal",profile:"uniform",weights:[],profileSource:"uniform_model"};
        setProfile(c,"auto");return c;
    }
    function tune(c,name) {
        if(name==="equal"||name==="template"){c.cents=c.nominal.slice();c.tuning=own(scales,c.scale)&&scales[c.scale].kind?scales[c.scale].kind:"equal";return;}
        if(!own(tunings,name))fail("Unknown tuning: "+name);
        var t=tunings[name];if(c.scale!==t.scale||c.period!==1200)fail(name+" requires "+t.scale+" with a 1200-cent period");
        c.cents=t.ratios.map(function(x){return 1200*Math.log(x)/Math.LN2;});c.tuning=name;
    }
    function validConfig(c) {
        if(!c||typeof c!=="object")fail("Invalid configuration");
        symbol(c.name);symbol(c.scale);symbol(c.tuning);symbol(c.profile);symbol(c.profileSource);
        bounded(c.tonic,-48000,48000);centsOK(c.cents,c.period);centsOK(c.nominal,c.period);
        if(c.nominal.length!==c.cents.length||!c.ids||c.ids.length!==c.cents.length)fail("Configuration degree counts differ");
        var seen={};for(var i=0;i<c.ids.length;i++){symbol(c.ids[i]);if(own(seen,c.ids[i]))fail("Duplicate degree ID");seen[c.ids[i]]=true;}
        weights(c.weights,c.cents.length);
        if(c.profile!=="custom"){
            var canonical=rawProfile(c,c.profile);if(JSON.stringify(c.weights)!==JSON.stringify(canonical))fail("Named profile weights do not match their source; use custom weights");
        }
        c.profileSource=own(KK,c.profile)?"Krumhansl_Kessler_1982_fit_ratings":c.profile==="uniform"?"uniform_model":"user_supplied";
        return c;
    }
    function defaults() {
        state={base:fromScale("major",6000),mapping:"nearest",reference:440,registerMin:0,registerMax:0,octave:"tonic",strength:1,stepbias:0,repeats:1,nodesmode:"off",hysteresis:0.05,keybase:60};
        for(var key in melodyDefaults)if(own(melodyDefaults,key))state[key]=melodyDefaults[key];
        configs={};var c=clone(state.base);c.name="major_12tet";configs[c.name]=c;
        c=clone(c);tune(c,"just_major_5limit");c.name="major_just";configs[c.name]=c;
        c=fromScale("natural_minor",6000);c.name="minor_12tet";configs[c.name]=c;
        c=fromScale("major_pentatonic",6000);c.name="pentatonic_12tet";configs[c.name]=c;
        c=fromScale("dorian",6000);c.name="dorian_12tet";configs[c.name]=c;
        assigned=[clone(configs.major_12tet),clone(configs.major_just)];nodeW=[0.5,0.5];activeNode=0;
        lastInput=null;lastPitch=null;held={};rngState=0;melody=null;
    }
    function expectedNodes() {return state.nodesmode==="degrees"?state.base.cents.length:assigned.length;}
    function resetNodeWeights() {var n=expectedNodes();nodeW=[];for(var i=0;i<n;i++)nodeW.push(1/n);activeNode=0;}
    function commit(c) {validConfig(c);state.base=c;if(state.nodesmode==="degrees")resetNodeWeights();dump();}
    function probabilities(c) {
        // Combine spatial weights in log space before scaling: a strong
        // exponent must not erase the only spatially enabled tiny weight.
        var logs=[],max=-Infinity;
        for(var i=0;i<c.weights.length;i++){
            var w=state.nodesmode==="degrees"?nodeW[i]:1;
            var v=c.weights[i]>0&&w>0?state.strength*Math.log(c.weights[i])+Math.log(w):-Infinity;
            logs.push(v);if(v>max)max=v;
        }
        if(max===-Infinity)fail("No positive effective profile weight");
        return normalize(logs.map(function(x){return x===-Infinity?0:Math.exp(x-max);}));
    }
    function compatible() {
        var a=assigned[0];for(var j=1;j<assigned.length;j++){
            var b=assigned[j];if(a.tonic!==b.tonic||a.period!==b.period||JSON.stringify(a.ids)!==JSON.stringify(b.ids)||JSON.stringify(a.nominal)!==JSON.stringify(b.nominal)||a.profile!==b.profile||JSON.stringify(a.weights)!==JSON.stringify(b.weights))fail("Tuning morph requires matching tonic, period, degree IDs, nominal degrees and profile");
        }
    }
    function modalCompatible() {
        var a=assigned[0];for(var j=1;j<assigned.length;j++){
            var b=assigned[j];if(a.tonic!==b.tonic||a.period!==b.period||a.cents.length!==b.cents.length)
                fail("Modal morph requires matching tonic, period and degree count");
        }
    }
    function modalNodes() {
        var names=["mixolydian","ionian","lydian","dorian","aeolian","phrygian"],next=[];
        for(var i=0;i<names.length;i++){
            var c=fromScale(names[i],state.base.tonic);c.name=names[i];setProfile(c,"uniform");next.push(c);
        }
        assigned=next;state.nodesmode="modal";nodeW=[0,1,0,0,0,0];activeNode=1;dump();
    }
    function dominant() {
        var best=0;for(var i=1;i<nodeW.length;i++)if(nodeW[i]>nodeW[best])best=i;
        if(activeNode>=nodeW.length||nodeW[best]>nodeW[activeNode]+state.hysteresis)activeNode=best;
        return activeNode;
    }
    function current() {
        if(state.nodesmode==="mixture")return assigned[dominant()];
        if(state.nodesmode==="modal"){
            modalCompatible();var m=clone(assigned[0]);m.name="modal_morph";m.scale="modal_morph";m.tuning="nodes_modal_morph";
            m.profile="custom";m.profileSource="user_supplied";
            var profiles=assigned.map(function(x){return normalize(x.weights);});
            for(var d=0;d<m.cents.length;d++){
                m.cents[d]=0;m.nominal[d]=0;m.weights[d]=0;m.ids[d]="d"+(d+1);
                for(var a=0;a<assigned.length;a++){
                    m.cents[d]+=nodeW[a]*assigned[a].cents[d];
                    m.nominal[d]+=nodeW[a]*assigned[a].nominal[d];
                    m.weights[d]+=nodeW[a]*profiles[a][d];
                }
            }
            return m;
        }
        if(state.nodesmode==="tuning"){
            compatible();var c=clone(assigned[0]);c.name="tuning_morph";c.tuning="nodes_morph";
            for(var i=0;i<c.cents.length;i++){c.cents[i]=0;for(var j=0;j<assigned.length;j++)c.cents[i]+=nodeW[j]*assigned[j].cents[i];}
            return c;
        }
        return state.base;
    }
    function rand() {if(!rngState)return Math.random();rngState=(rngState*16807)%2147483647;return (rngState-1)/2147483646;}
    function pick(p) {var x=rand(),acc=0,last=0;for(var i=0;i<p.length;i++){if(p[i]>0)last=i;acc+=p[i];if(x<acc)return i;}return last;}
    function mapped(mc,c) {
        num(mc);hz(mc);var n=c.cents.length;
        if(state.mapping==="degree"){
            var key=mc/100;integer(key);return atDegree(key-state.keybase,c);
        }
        var rel=mc-c.tonic,k=Math.floor(rel/c.period),r=rel-k*c.period,lo=-1,hi=n;
        for(var i=0;i<n;i++){if(c.cents[i]<=r+EPS)lo=i;if(hi===n&&c.cents[i]>=r-EPS)hi=i;}
        var low=lo<0?{i:n-1,k:k-1}:{i:lo,k:k},high=hi===n?{i:0,k:k+1}:{i:hi,k:k};
        function pitch(a){return c.tonic+a.k*c.period+c.cents[a.i];}
        var a=state.mapping==="ceiling"?high:state.mapping==="floor"?low:mc-pitch(low)<=pitch(high)-mc+EPS?low:high;
        return {mc:pitch(a),i:a.i,k:a.k,c:c,p:probabilities(c)[a.i]};
    }
    function atDegree(z,c) {integer(z);var n=c.cents.length,k=Math.floor(z/n),i=z-k*n;return {mc:c.tonic+k*c.period+c.cents[i],i:i,k:k,c:c,p:probabilities(c)[i]};}
    function emitOne(t,reason,emitPitch) {
        var h=hz(t.mc);outlet(2,["tone",t.i+1,t.k,t.c.name,t.p,reason]);
        if(reason!=="generate")anchorMelody(t.mc);
        if(emitPitch!==false){outlet(1,h);outlet(0,t.mc);}lastPitch=t.mc;
    }
    function mapList(a,remember) {
        if(!a.length)fail("Empty note list");var c=current(),tones=[],mc=[],freq=[];
        // Validate the whole transaction before any output.
        for(var i=0;i<a.length;i++){var t=mapped(a[i],c);tones.push(t);mc.push(t.mc);freq.push(hz(t.mc));}
        if(remember!==false)lastInput=a.slice();
        for(i=0;i<tones.length;i++)outlet(2,["tone",tones[i].i+1,tones[i].k,c.name,tones[i].p,"map"]);
        lastPitch=mc[mc.length-1];anchorMelody(lastPitch);outlet(1,mc.length===1?freq[0]:freq);outlet(0,mc.length===1?mc[0]:mc);
    }
    function anchorMelody(mc) {melody=mc===null?null:{mc:mc,direction:0,run:0,leap:false,third:false,large:false};}
    function nearestDegree(mc,c) {
        // Project the previous actual pitch onto this configuration's lattice.
        // This also works across nodes mixtures, unequal tunings and periods.
        var n=c.cents.length,k=Math.floor((mc-c.tonic)/c.period),best=0,d=Infinity;
        for(var j=k-1;j<=k+1;j++)for(var i=0;i<n;i++){
            var gap=Math.abs(c.tonic+j*c.period+c.cents[i]-mc);
            if(gap<d-EPS){d=gap;best=j*n+i;}
        }
        return best;
    }
    function motion(mc,z,origin) {
        var dc=melody?mc-melody.mc:0,dz=melody?z-origin:0,dir=dc>EPS?1:dc<-EPS?-1:0;
        var large=Math.abs(dc)>=state.recoverycents-EPS;
        var step=dir!==0&&Math.abs(dz)===1&&!large;
        return {dc:dc,dz:dz,dir:dir,step:step,large:large,
            leap:dir!==0&&!step&&(Math.abs(dz)>0||large),
            third:Math.abs(dz)===2&&!large};
    }
    function prefer(p,mask,amount) {
        var target=p.map(function(x,i){return mask[i]?x:0;});
        if(!amount||sum(target)<=0)return p;
        target=normalize(target);
        return p.map(function(x,i){return (1-amount)*x+amount*target[i];});
    }
    function primaryOctave(c) {return state.octave==="tonic"?Math.floor(c.tonic/1200)-1:state.octave;}
    function generate() {
        var c=state.nodesmode==="mixture"?assigned[pick(nodeW)]:current(),p=probabilities(c),candidates=[],base=[],q=[],i,k;
        // Decide the octave BEFORE melodic weighting, so step/recovery preferences
        // cannot suppress the requested shift probability. No accumulating drift.
        var shift=state.octaveshift>0&&rand()<state.octaveshift?(rand()<0.5?-1:1):0;
        var offset=1200*(primaryOctave(c)-(Math.floor(c.tonic/1200)-1)+shift);
        if(offset){c=clone(c);c.tonic+=offset;}
        var n=c.cents.length,origin=melody?nearestDegree(melody.mc,c):0;
        var copies=state.registerMax-state.registerMin+1;
        for(i=0;i<n;i++)if(p[i]>0){
            var rr=[];for(k=state.registerMin;k<=state.registerMax;k++)if(state.repeats||lastPitch===null||Math.abs(c.tonic+k*c.period+c.cents[i]-lastPitch)>EPS)rr.push(k);
            for(k=state.registerMin;k<=state.registerMax;k++){
                var mc=c.tonic+k*c.period+c.cents[i],m=motion(mc,k*n+i,origin),allowed=rr.indexOf(k)>=0;
                candidates.push({mc:mc,i:i,k:k,c:c,m:m});base.push(p[i]/copies);
                // Split each degree's mass across its available registers.
                var w=allowed?p[i]/rr.length:0;
                if(state.stepbias>0&&lastPitch!==null){var d=((mc-lastPitch)%c.period+c.period)%c.period;d=Math.min(d,c.period-d);w*=1-state.stepbias*d/(c.period/2);}
                q.push(w);
            }
        }
        if(sum(q)<=0){status("warning",["No candidate after repeat/legacy stepbias restrictions; using base distribution"]);q=base.slice();}
        q=normalize(q);
        if(state.melodic&&melody){
            var shaped=q.slice(),steps=[],recover=[];
            for(i=0;i<candidates.length;i++){
                var a=candidates[i].m;
                if(a.leap)shaped[i]/=Math.pow(Math.max(1,Math.abs(a.dz)-1),2);
                // Consecutive thirds in the same direction retain their weight.
                if(melody.leap&&a.leap&&!(melody.third&&a.third&&a.dir===melody.direction))shaped[i]*=1-state.leapavoid;
                if(a.dir&&a.dir===melody.direction&&melody.run>=state.maxrun)
                    shaped[i]*=Math.pow(1-state.turnbias,Math.min(16,melody.run-state.maxrun+1));
                steps.push(a.step);recover.push(a.step&&a.dir===-melody.direction);
            }
            if(sum(shaped)>0)q=normalize(shaped);
            q=prefer(q,steps,state.stepchance);
            // Recovery has priority; unavailable recovery leaves the other rules.
            if(melody.large)q=prefer(q,recover,state.recovery);
        }
        var chosen=candidates[pick(q)],interval=chosen.m,degreeMass=0;
        for(i=0;i<candidates.length;i++)if(candidates[i].i===chosen.i)degreeMass+=q[i];
        hz(chosen.mc); // Validate before changing transient history.
        var old=melody;
        melody={mc:chosen.mc,direction:interval.dir||(old?old.direction:0),
            run:interval.dir?(old&&interval.dir===old.direction?old.run+1:1):(old?old.run:0),
            leap:interval.leap,third:interval.third,large:interval.large};
        chosen.p=degreeMass;emitOne(chosen,"generate");
    }
    function parseRatio(x) {
        if(typeof x==="number"){bounded(x,1e-12,1e12);return x;}
        var s=String(x),m=/^(\d+(?:\.\d+)?)\/(\d+(?:\.\d+)?)$/.exec(s);
        if(!m)fail("Ratio must be positive number or numerator/denominator");var r=Number(m[1])/Number(m[2]);bounded(r,1e-12,1e12);return r;
    }
    function importScl(text,name) {
        // Keep a blank description line; comments alone are removed before it.
        var lines=text.replace(/^\uFEFF/,"").split(/\r\n|\n|\r/),rows=[],i;
        for(i=0;i<lines.length;i++)if(!/^\s*!/.test(lines[i]))rows.push(lines[i]);
        if(rows.length<2)fail("Invalid Scala header");var countText=rows[1].replace(/^\s+|\s+$/g,"");
        if(!/^\d+$/.test(countText))fail("Invalid Scala note count");var n=Number(countText);bounded(n,1,MAX_DEGREES);
        var values=[];for(i=2;i<rows.length&&values.length<n;i++){
            var line=rows[i].replace(/^\s+|\s+$/g,"");if(!line)continue;var token=line.split(/\s+/)[0],v;
            if(token.indexOf(".")>=0){if(!/^[+-]?(?:\d+\.?\d*|\.\d+)$/.test(token))fail("Invalid Scala cents");v=Number(token);}
            else v=1200*Math.log(parseRatio(/^\d+$/.test(token)?Number(token):token))/Math.LN2;
            num(v);values.push(v);
        }
        if(values.length!==n)fail("Scala pitch count does not match header");
        var period=values.pop(),cents=[0].concat(values);centsOK(cents,period);
        var c={name:"scala",scale:"scala",nominal:cents.slice(),cents:cents,ids:cents.map(function(x,i){return "d"+(i+1);}),period:period,tonic:state.base.tonic,tuning:"scala",profile:"uniform",weights:cents.map(function(){return 1;}),profileSource:"uniform_model"};
        commit(c);status("scala_loaded",[String(name||"text"),rows[0],n,period]);
    }
    function readScl(path) {
        if(!path)fail("read requires a .scl path; use the help patch file chooser");
        var f=new File(String(path),"read"),text="";if(!f.isopen)fail("Cannot open Scala file: "+path);
        try{if(f.eof>1048576)fail("Scala file exceeds 1 MiB");while(f.position<f.eof)text+=f.readline(65536)+"\n";}finally{f.close();}
        importScl(text,path);
    }
    function configStatus(c) {
        status("scale",[c.scale]);status("tuning",[c.tuning]);status("profile",[c.profile,c.profileSource]);status("tonic",[c.tonic]);status("period",[c.period]);
        var index=scaleOrder.indexOf(c.scale);status("scaleindex",[index<0?scaleOrder.length:index]);
    }
    function dump() {
        var c=current();status("version",[VERSION]);configStatus(c);status("mapping",[state.mapping]);status("nodesmode",[state.nodesmode]);
        status("cents",c.cents);status("probabilities",probabilities(c));status("nodeweights",nodeW);
        status("settings",["reference",state.reference,"register",state.registerMin,state.registerMax,"strength",state.strength,"stepbias",state.stepbias,"repeats",state.repeats,"keybase",state.keybase,"hysteresis",state.hysteresis]);
        for(var key in melodyDefaults)if(own(melodyDefaults,key))status(key,[state[key]]);
        status("octave",[primaryOctave(c)]);status("octavemode",[state.octave]);status("register",[state.registerMin,state.registerMax]);
        status("repeats",[state.repeats]);
    }
    function snapshot() {return {version:1,state:clone(state),configs:clone(configs),assigned:clone(assigned),nodeweights:nodeW.slice()};}
    function restore(x) {
        var o=typeof x==="string"?JSON.parse(x):clone(x);if(!o||o.version!==1)fail("Unsupported saved state");
        var s=o.state;validConfig(s.base);if(["nearest","floor","ceiling","degree"].indexOf(s.mapping)<0)fail("Invalid mapping");
        bounded(s.reference,1,20000);integer(s.registerMin);integer(s.registerMax);bounded(s.registerMin,-32,32);bounded(s.registerMax,s.registerMin,32);
        bounded(s.strength,0,16);bounded(s.stepbias,0,1);bounded(integer(s.repeats),0,1);bounded(integer(s.keybase),0,127);bounded(s.hysteresis,0,1);
        // Earlier v1 states acquire the new defaults without losing old settings.
        for(var mk in melodyDefaults)if(own(melodyDefaults,mk)&&!own(s,mk))s[mk]=melodyDefaults[mk];
        if(!own(s,"octave"))s.octave="tonic";
        if(s.octave!=="tonic")bounded(integer(s.octave),-5,9);
        bounded(s.octaveshift,0,1);
        bounded(integer(s.melodic),0,1);bounded(s.stepchance,0,1);bounded(s.recovery,0,1);bounded(s.leapavoid,0,1);
        bounded(integer(s.maxrun),1,32);bounded(s.turnbias,0,1);bounded(s.recoverycents,1,48000);
        if(["off","mixture","degrees","tuning","modal"].indexOf(s.nodesmode)<0)fail("Invalid nodes mode");
        if(!o.assigned||!o.assigned.length||o.assigned.length>64)fail("Use 1..64 assigned configurations");
        for(var i=0;i<o.assigned.length;i++)validConfig(o.assigned[i]);
        if(!o.configs||typeof o.configs!=="object"||Object.prototype.toString.call(o.configs)==="[object Array]")fail("Invalid stored configuration registry");
        for(var key in o.configs)if(own(o.configs,key)){symbol(key);validConfig(o.configs[key]);}
        var w=normalize(weights(o.nodeweights,s.nodesmode==="degrees"?s.base.cents.length:o.assigned.length));
        var old=snapshot(),oldNode=activeNode;
        state=clone(s);configs=clone(o.configs);assigned=clone(o.assigned);nodeW=w;activeNode=0;
        try{current();probabilities(current());}catch(e){state=old.state;configs=old.configs;assigned=old.assigned;nodeW=old.nodeweights;activeNode=oldNode;throw e;}
        lastInput=null;lastPitch=null;melody=null;dump();
    }
    function midinote(a) {
        var n=bounded(integer(a[0]),0,127),v=bounded(integer(a[1]),0,127),ch=a.length>2?bounded(integer(a[2]),1,16):1,key=ch+":"+n;
        if(v>0){var t=mapped(n*100,current());hz(t.mc);if(!own(held,key))held[key]=[];held[key].push(t.mc);outlet(2,["midievent",t.mc,v,ch,n]);emitOne(t,"noteon");}
        else {if(!own(held,key)||!held[key].length){status("warning",["Unmatched note-off",n,ch]);return;}var mc=held[key].shift();if(!held[key].length)delete held[key];outlet(2,["midievent",mc,0,ch,n]);}
    }
    function panic() {for(var key in held)if(own(held,key)){var parts=key.split(":"),a=held[key];for(var i=0;i<a.length;i++)outlet(2,["midievent",a[i],0,Number(parts[0]),Number(parts[1])]);}held={};}
    function command(name,a) {
        var c=clone(state.base),i,n;
        switch(name){
        case "bang": generate();break;
        case "midicents": case "note": case "map": mapList(a);break;
        case "midi": mapList(a.map(function(x){return num(x)*100;}));break;
        case "midinote": midinote(a);break;
        case "panic": panic();break;
        case "repeat": if(lastInput===null)fail("No mapped input to repeat");mapList(lastInput,false);break;
        case "degree": emitOne(atDegree(integer(a[0])-1,current()),"degree");break;
        case "keyboard": emitOne(atDegree(integer(a[0])-state.keybase,current()),"keyboard");break;
        case "keybase": state.keybase=bounded(integer(a[0]),0,127);dump();break;
        case "mapping": if(["nearest","ceiling","floor","degree"].indexOf(a[0])<0)fail("mapping nearest|ceiling|floor|degree");state.mapping=a[0];dump();break;
        case "scale": case "mode": case "preset": commit(fromScale(String(a[0]),c.tonic));break;
        case "tuning": tune(c,String(a[0]));commit(c);break;
        case "tonic": c.tonic=bounded(a[0],-48000,48000);commit(c);break;
        case "reference": state.reference=bounded(a[0],1,20000);dump();break;
        case "period": c.period=bounded(a[0],1,48000);commit(c);break;
        case "profile": setProfile(c,String(a[0]));commit(c);break;
        case "weights": setProfile(c,"custom",a);commit(c);break;
        case "strength": state.strength=bounded(a[0],0,16);dump();break;
        case "stepbias": state.stepbias=bounded(a[0],0,1);dump();break;
        case "melodic": state.melodic=bounded(integer(a[0]),0,1);anchorMelody(lastPitch);dump();break;
        case "stepchance": case "recovery": case "leapavoid": case "turnbias": case "octaveshift": state[name]=bounded(a[0],0,1);dump();break;
        case "octave":
            var oct=a[0]==="tonic"?"tonic":bounded(integer(a[0]),-5,9);
            state.octave=oct;state.registerMin=0;state.registerMax=0;anchorMelody(null);lastPitch=null;dump();break;
        case "maxrun": state.maxrun=bounded(integer(a[0]),1,32);dump();break;
        case "recoverycents": state.recoverycents=bounded(a[0],1,48000);dump();break;
        case "melodyreset":
            var anchor=a.length?num(a[0]):null;if(anchor!==null)hz(anchor);anchorMelody(anchor);lastPitch=anchor;status("melodyreset",[]);break;
        case "melodystate": status("melodystate",[JSON.stringify(melody)]);break;
        case "repeats": state.repeats=bounded(integer(a[0]),0,1);dump();break;
        case "register": var lo=bounded(integer(a[0]),-32,32),hi=bounded(integer(a[1]),lo,32);state.registerMin=lo;state.registerMax=hi;dump();break;
        case "cents":
            centsOK(a,c.period);c.scale="custom";c.name="custom";c.nominal=a.slice();c.cents=a.slice();c.ids=a.map(function(x,i){return "d"+(i+1);});c.tuning="custom";setProfile(c,"uniform");commit(c);break;
        case "tuningcents":
            if(a.length!==c.cents.length)fail("Tuning must have one value per degree");centsOK(a,c.period);c.cents=a.slice();c.tuning="custom";commit(c);break;
        case "ratios":
            if(a.length!==c.cents.length)fail("Ratios must have one value per degree, starting with 1/1");c.cents=a.map(function(x){return 1200*Math.log(parseRatio(x))/Math.LN2;});c.tuning="ratios";commit(c);break;
        case "edo":
            n=bounded(integer(a[0]),1,MAX_DEGREES);var per=a.length>1?bounded(a[1],1,48000):1200;
            c.scale="edo_"+n;c.name=c.scale;c.period=per;c.cents=[];c.ids=[];
            for(i=0;i<n;i++){c.cents.push(i*per/n);c.ids.push("d"+(i+1));}c.nominal=c.cents.slice();c.tuning="equal_division";setProfile(c,"uniform");commit(c);break;
        case "seed": case "seedlist":
            // Legacy integer pitch-class input, explicitly distinct from RNG and nodes.
            var seen={},pc=[];for(i=0;i<a.length;i++){var x=((integer(a[i])%12)+12)%12;if(!own(seen,x)){pc.push(x);seen[x]=true;}}
            pc.sort(function(x,y){return x-y;});if(!pc.length)fail("Empty seed list");
            c.period=1200;c.name="custom";c.scale="custom";c.cents=pc.map(function(x){return x*100;});c.nominal=c.cents.slice();c.ids=pc.map(function(x){return "pc"+x;});c.tuning="equal";setProfile(c,"uniform");commit(c);break;
        case "read": readScl(a.join(" "));break;
        case "store": var key=symbol(a[0]);c.name=key;configs[key]=clone(c);status("stored",[key]);break;
        case "recall": if(!own(configs,String(a[0])))fail("Unknown stored configuration");commit(clone(configs[a[0]]));break;
        case "nodeassign":
            i=bounded(integer(a[0]),1,64)-1;if(i>assigned.length)fail("Assign nodes consecutively from 1");
            if(a.length>1){if(!own(configs,String(a[1])))fail("Unknown stored configuration: "+a[1]);c=clone(configs[a[1]]);}
            var before=clone(assigned);assigned[i]=c;
            try{if(state.nodesmode==="tuning")compatible();if(state.nodesmode==="modal")modalCompatible();}catch(e){assigned=before;throw e;}
            if(nodeW.length!==expectedNodes())resetNodeWeights();status("nodeassigned",[i+1,c.name]);break;
        case "nodecount":
            n=bounded(integer(a[0]),1,64);var oldAssigned=clone(assigned);while(assigned.length<n)assigned.push(clone(c));assigned=assigned.slice(0,n);
            try{if(state.nodesmode==="tuning")compatible();if(state.nodesmode==="modal")modalCompatible();}catch(e){assigned=oldAssigned;throw e;}resetNodeWeights();dump();break;
        case "modalnodes": modalNodes();break;
        case "nodesmode":
            if(["off","mixture","degrees","tuning","modal"].indexOf(a[0])<0)fail("nodesmode off|mixture|degrees|tuning|modal");
            if(a[0]==="tuning")compatible();if(a[0]==="modal")modalCompatible();var oldMode=state.nodesmode;state.nodesmode=a[0];
            if(nodeW.length!==expectedNodes()||(oldMode==="degrees")!==(state.nodesmode==="degrees"))resetNodeWeights();dump();break;
        case "nodeweights":
            var w=weights(a,expectedNodes());w=normalize(w);
            if(state.nodesmode==="degrees"){var overlap=false;for(i=0;i<w.length;i++)if(w[i]>0&&state.base.weights[i]>0)overlap=true;if(!overlap)fail("No positive profile weight overlaps nodes; retaining previous node weights");}
            var oldActive=activeNode;nodeW=w;dominant();status("nodeweights",nodeW);
            if(state.nodesmode==="mixture"&&oldActive!==activeNode)configStatus(current());break;
        case "hysteresis": state.hysteresis=bounded(a[0],0,1);dump();break;
        case "randomseed": n=bounded(integer(a[0]),0,2147483646);rngState=n;status("randomseed",[n]);break;
        case "dump": dump();break;
        case "getstate": status("state",[JSON.stringify(snapshot())]);break;
        case "restore": restore(a.join(" "));break;
        case "reset": panic();defaults();dump();break;
        case "listpresets": case "listscales": status("scales",scaleOrder);break;
        case "listmenu": status("scalemenu",menuOrder);break;
        case "listtunings": status("tunings",["equal","just_major_5limit","pythagorean_major","just_minor_5limit","tuningcents","ratios","edo","read"]);break;
        case "listprofiles": status("profiles",["auto","kk_major","kk_minor","uniform","weights"]);break;
        case "listconfigs": var names=[];for(var k in configs)if(own(configs,k))names.push(k);status("configs",names);break;
        case "info": var id=aliases[String(a[0])]||String(a[0]);if(!own(scales,id))fail("Unknown scale");status("scaleinfo",[id,scales[id].category,scales[id].note]);break;
        default: if(own(scales,name)||own(aliases,name))commit(fromScale(name,c.tonic));else fail("Unknown message: "+name);
        }
    }
    defaults();
    return {command:command,error:error,dump:dump,snapshot:snapshot,restore:restore,importScl:importScl,catalog:function(){return clone(scales);},version:VERSION};
}());

function anything() {try{Mapper.command(String(messagename).toLowerCase(),arrayfromargs(arguments));}catch(e){Mapper.error(e);}}
function list() {try{Mapper.command(inlet===1?"nodeweights":"midicents",arrayfromargs(arguments));}catch(e){Mapper.error(e);}}
function msg_int(x) {try{Mapper.command(inlet===1?"nodeweights":"midicents",[x]);}catch(e){Mapper.error(e);}}
function msg_float(x) {msg_int(x);}
function bang() {try{if(inlet===1)Mapper.dump();else Mapper.command("bang",[]);}catch(e){Mapper.error(e);}}
function loadbang() {Mapper.dump();}
function getvalueof() {return JSON.stringify(Mapper.snapshot());}
function setvalueof(x) {try{Mapper.restore(String(x));}catch(e){Mapper.error(e);}}
function save() {embedmessage("restore",JSON.stringify(Mapper.snapshot()));}
