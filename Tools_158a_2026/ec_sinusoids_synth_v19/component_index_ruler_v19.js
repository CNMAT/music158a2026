/* Read-only jsui overlay aligned with partial bars. At dense counts labels are
 * thinned to avoid collisions, while retaining 1 (fundamental) and the last index.
 * The patch sets ignoreclick=1 so editing still reaches the underlying multislider.
 */
autowatch=1;
inlets=1;
outlets=0;
mgraphics.init();
mgraphics.relative_coords=0;
mgraphics.autofill=0;
var components=32;
function msg_int(n){components=Math.max(2,Math.min(256,Math.round(Number(n))));mgraphics.redraw();}
function msg_float(n){msg_int(n);}
function paint(){
    var width=box.rect[2]-box.rect[0],pitch=width/components;
    var step=Math.max(1,Math.ceil(16/pitch));
    mgraphics.select_font_face("Arial");mgraphics.set_font_size(8);
    for(var i=0;i<components;i++){
        if(i!==0&&i!==components-1&&(i+1)%step!==0)continue;
        // Avoid squeezing a major label beside the final index at dense counts.
        if(i!==components-1&&components-1-i<step&&step>1)continue;
        var text=String(i+1),tw=mgraphics.text_measure(text)[0];
        var x=(i+.5)*pitch-tw/2;
        x=Math.max(0,Math.min(width-tw,x));
        mgraphics.set_source_rgba(0,0.7294117647,1,0.85);
        mgraphics.rectangle(x-1,0,tw+2,11);mgraphics.fill();
        mgraphics.set_source_rgba(0,0,0,1);mgraphics.move_to(x,9);mgraphics.show_text(text);
    }
}
function clear(){}
function append(){}
function set(){}
function anything(){}
