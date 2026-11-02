/* Stable cell editors for sections 2/3. Included by the Max ES5 controller.
   jit.cellblock still stores drafts and supplies the existing compiler/dump API.
   The visible jweb grid owns its in-cell inputs; no floating native editor. */
var tableGridNames=['regions','opcodes'],tableGridReady={},tableGridStates={};
var tableGridRevision=0,tableGridSerial=0,tableGridIncoming={},tableGridWait=null;
function loadTableGrids(){
    tableGridReady={};tableGridIncoming={};tableGridWait=null;
    for(var i=0;i<tableGridNames.length;i++)msg(tableGridNames[i]+'_view','readfile',patchDir()+'/ec_sfz_table.html');
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
        paneAbort('Tables are loading. Keep ec_sfz_table.html beside the patch, then try again.');return;
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
