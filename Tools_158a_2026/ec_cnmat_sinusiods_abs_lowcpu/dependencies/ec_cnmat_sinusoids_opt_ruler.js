var EC_NS = String(jsarguments[1]) + "-ec-cnmat-sinusoids-opt_";
/* Read-only jsui overlay aligned with partial bars. At dense counts labels are
 * thinned to avoid collisions, while retaining the first selected multiplier and the last index.
 * The patch sets ignoreclick=1 so editing still reaches the underlying multislider.
 */
autowatch=1;
inlets=1;
outlets=0;
mgraphics.init();
mgraphics.relative_coords=0;
mgraphics.autofill=0;
var components=32, labels=[], renderLimit=128;
function multipliers(){labels=arrayfromargs(arguments);components=labels.length;mgraphics.redraw();}
function renderlimit(value){renderLimit=Number(value);mgraphics.redraw();}
function msg_int(n){components=Math.max(2,Math.min(256,Math.round(Number(n))));mgraphics.redraw();}
function msg_float(n){msg_int(n);}
function paint(){
    var width=box.rect[2]-box.rect[0],pitch=width/components;
    var last=labels.length?labels[labels.length-1]:components;
    var step=Math.max(1,Math.ceil((String(last).length*6+6)/pitch));
    mgraphics.select_font_face("Arial");mgraphics.set_font_size(8);
    for(var i=0;i<components;i++){
        if(i!==0&&i!==components-1&&(i+1)%step!==0)continue;
        // Avoid squeezing a major label beside the final index at dense counts.
        if(i!==components-1&&components-1-i<step&&step>1)continue;
        var text=String(labels[i]===undefined?i+1:labels[i]),tw=mgraphics.text_measure(text)[0];
        var x=(i+.5)*pitch-tw/2;
        x=Math.max(0,Math.min(width-tw,x));
        if(i>=renderLimit)mgraphics.set_source_rgba(0.5,0.5,0.5,0.85);
        else mgraphics.set_source_rgba(0,0.7294117647,1,0.85);
        mgraphics.rectangle(x-1,0,tw+2,11);mgraphics.fill();
        mgraphics.set_source_rgba(0,0,0,1);mgraphics.move_to(x,9);mgraphics.show_text(text);
    }
}
function clear(){}
function append(){}
function set(){}
function anything(){}
