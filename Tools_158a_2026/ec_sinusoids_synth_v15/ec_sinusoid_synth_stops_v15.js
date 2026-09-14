/* Organ-inspired additive ranks; original spectral recipes, not measured pipe models.
 * Inlet 0: stop INDEX 0|1, registration NAME, apply, clear, beathz Hz, tail N.
 * Inlet 1: generator base Hz; inlet 2: Max Drift ERB.
 * Outlet 0: stoplayers + 3 x 256 values to shared memory-engine inlet 10.
 * Outlet 1: index/state display feedback; outlet 2: readable registration status.
 */
autowatch=1;inlets=3;outlets=3;
var sourceHz=110, maxERB=.5, beatHz=.2, harmonicTail=24;
var selected=[], names=['Principal 8\u2032','Octava 4\u2032','Doublette 2\u2032','Open Flute 8\u2032','Bourdon 8\u2032','Gamba 8\u2032','Trumpet 8\u2032','Nazard 2 2/3\u2032','Tierce 1 3/5\u2032','Larigot 1 1/3\u2032','Quint Mixture III','Celeste-inspired II','Flute 4\u2032','Flute 2\u2032'];
var ranks=[[[1,'principal',1]],[[2,'principal',.8]],[[4,'principal',.65]],[[1,'flute',1]],[[1,'stopped',1]],[[1,'string',1]],[[1,'reed',1]],[[3,'flute',.75]],[[5,'flute',.6]],[[6,'flute',.5]],[[4,'principal',.55],[6,'principal',.4],[8,'principal',.35]],[[1,'string',1]],[[2,'flute',.8]],[[4,'flute',.65]]];
var registrations={PrincipalChorus:[0,1,2,10],CornetV:[3,12,13,7,8],SesquialteraII:[7,8],FluteQuint:[4,7],CelesteII:[11],ReedChorus:[6,0,1,2],OpenFlute:[3],StoppedFlute:[4],String8:[5],SharpMixture:[10]};
for(var i=0;i<names.length;i++)selected[i]=false;
function erb(f){return 24.7*(1+.00437*f);}
function spectrum(type,h){
    if(type==='principal')return Math.pow(h,-1.35)*Math.exp(-(h-1)/18);
    if(type==='flute')return Math.pow(h,-2.6)*Math.exp(-(h-1)/9);
    if(type==='stopped')return h%2?Math.pow(h,-2.0)*Math.exp(-(h-1)/12):0;
    if(type==='string')return (h===1?.45:1)*Math.pow(h,-.9)*Math.exp(-(h-1)/22);
    if(type==='reed')return Math.pow(h,-.8)*Math.exp(-(h-1)/20)*(1+.65*Math.exp(-Math.pow((h-4)/2.0,2)));
    return 0;
}
function status(text){outlet(2,'set',text);}
function stop(index,value){index=Number(index);if(index!==Math.floor(index)||index<0||index>=names.length)return;selected[index]=Number(value)!==0;}
function registration(name){
    name=String(name);if(!registrations.hasOwnProperty(name)){status('Unknown registration: '+name);return;}
    for(var i=0;i<names.length;i++){selected[i]=registrations[name].indexOf(i)>=0;outlet(1,i,selected[i]?1:0);}
    apply();
}
function clear(){for(var i=0;i<names.length;i++){selected[i]=false;outlet(1,i,0);}apply();}
function beathz(x){x=Number(x);if(isFinite(x))beatHz=Math.max(0,Math.min(5,x));}
function tail(x){x=Number(x);if(isFinite(x))harmonicTail=Math.round(Math.max(1,Math.min(256,x)));}
function scalar(x){x=Number(x);if(!isFinite(x))return;if(inlet===1)sourceHz=Math.max(1,Math.min(23000,x));if(inlet===2)maxERB=Math.max(0,Math.min(1,x));}
function msg_float(x){scalar(x);}function msg_int(x){scalar(x);}
function apply(){
    var amplitude=[],anchor=[],drift=[],wantBeat=[],i,j,h,n,p,r,clamped=0,hiddenMax=0,active=[];
    for(i=0;i<256;i++){amplitude[i]=0;anchor[i]=0;drift[i]=0;wantBeat[i]=false;}
    for(i=0;i<names.length;i++)if(selected[i]){
        active.push(names[i]);
        for(j=0;j<ranks[i].length;j++){
            r=ranks[i][j];
            for(h=1;h<=harmonicTail;h++){
                n=r[0]*h;if(n>256)break;p=r[2]*spectrum(r[1],h);if(p<=0)continue;
                amplitude[n-1]+=p;hiddenMax=Math.max(hiddenMax,n);
                if(i===11){anchor[n-1]+=p;wantBeat[n-1]=true;}
            }
        }
    }
    // Fixed linear-amplitude sum across both banks supports predictable recipe comparisons.
    var sum=0;for(i=0;i<256;i++)sum+=amplitude[i]+anchor[i];
    var scale=sum>0?.8/sum:0;
    for(i=0;i<256;i++){
        amplitude[i]*=scale;anchor[i]*=scale;
        if(wantBeat[i]&&i>0&&beatHz>0){
            var range=maxERB*erb(sourceHz*(i+1));
            if(range>0){drift[i]=Math.min(1,beatHz/range);if(beatHz>range)clamped++;}
            else clamped++;
        }
    }
    outlet(0,['stoplayers'].concat(drift,amplitude,anchor));
    status((active.length?active.join(' + '):'No stops: flat zero')+' | highest populated index '+hiddenMax+' | total amplitude sum 0.8 when nonempty | beat-limited slots '+clamped);
}
function loadbang(){status('Select stops then APPLY, or click a named registration. No sound is changed on opening.');}
