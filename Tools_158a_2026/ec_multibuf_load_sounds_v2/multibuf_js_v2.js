/* multibuf_js_v2.js — filename-named native buffer~ manager.
 * Version 2.0.0: native lifecycle belongs to Max during teardown.
 * Host: [multibuf_js_v2], supplied abstraction. Legacy [js] engine, ES5.
 * Reimplements the sample-loading purpose of the supplied CNMAT multibuf.
 * Original Max patchers are not modified. No sample data passes through JS.
 * See README.md for messages, defaults, lifecycle, and testing limitations.
 */
autowatch = 0;
inlets = 4;   // commands / native callbacks / legacy query / verbose
outlets = 3;  // names / per-file success bang / structured status

var SELF = this;
var BUILD = "2.0.0";
var OWNER = "mbv2_" + (jsarguments.length > 1 ? String(jsarguments[1]) :
    String(new Date().getTime()) + "_" + Math.floor(Math.random() * 1000000));
// Shared with v1 to retain name-collision protection across installed versions.
var CLAIMS = new Global("multibuf_js_v1_name_claims");
var cfg = { mono: 0, extension: 1, prefix: "", recursive: 0,
    timeout: 30000, maxbuffers: 10000, verbose: 0, method: "auto",
    types: ["wav", "aif", "aiff", "aifc", "flac", "mp3", "ogg", "m4a", "caf", "au", "snd"] };
var host = null, feedback = null, initialized = false, dead = false;
var entries = {}, entryOrder = [], ownedClaims = {};
var requests = [], batch = null, pending = null, gather = null, scan = null;
var nextBatch = 0, nextToken = 0, clearRequested = false;
var signals = [], timerScheduled = false;
var worker = new Task(tick, SELF);
var watchdog = new Task(timedout, SELF);
var COLLECT_LIMIT = 100000;

function key(s) { return "$" + String(s); }
function claimkey(s) { return "n_" + encodeURIComponent(String(s)); }
function args(a) { return arrayfromargs(a); }
function atomstr(a) { return String(a); }
function emitstatus(a) { if (!dead) outlet(2, a); }
function nameout(n) { if (!dead) outlet(0, "symbol", String(n)); }
function notice(s) { if (cfg.verbose && !dead) post("multibuf_js_v2: " + s + "\n"); }
function err(code, name, path, detail) {
    emitstatus(["error", batch ? batch.id : 0, code, name || "-", path || "-", detail || "-"]);
    notice(code + ": " + (path || name || detail || ""));
}
function settingscopy() {
    return { mono: cfg.mono, extension: cfg.extension, prefix: cfg.prefix,
        recursive: cfg.recursive, timeout: cfg.timeout, maxbuffers: cfg.maxbuffers,
        method: cfg.method, types: cfg.types.slice(0) };
}
function wake() {
    if (dead || timerScheduled) return;
    timerScheduled = true;
    worker.schedule(1);
}
function loadbang() { wake(); }
// Called by the host's DIRECT freebang connection (never defer this signal).
// Closing an embedded editor window is NOT object destruction: do not use closebang.
function _mbshutdown() { shutdown(); }
function notifydeleted() { shutdown(); }
function shutdown() {
    if (dead) return;
    dead = true; // gate all callbacks BEFORE releasing any resources
    timerScheduled = false;
    try { worker.cancel(); } catch (e1) {}
    try { watchdog.cancel(); } catch (e2) {}
    closescanner();
    // Never traverse, remove, rename or query Max objects during destruction.
    // The containing native patcher owns all runtime objects and frees them.
    // Only independent JS/Task/File/Global bookkeeping is released here.
    for (var k in ownedClaims) if (ownedClaims.hasOwnProperty(k)) unclaim(ownedClaims[k]);
    requests = []; signals = []; entries = {}; entryOrder = [];
    batch = null; pending = null; gather = null; scan = null;
    host = null; feedback = null; initialized = false; clearRequested = false;
    try { worker.freepeer(); } catch (e3) {}
    try { watchdog.freepeer(); } catch (e4) {}
}
function liveobject(o) {
    if (!o) return false;
    try { return !!o.valid; } catch (e) { return false; }
}
function closescanner() {
    if (!scan) return;
    if (scan.folder) { try { scan.folder.close(); } catch (e1) {} }
    if (scan.probe && scan.probe.folder) { try { scan.probe.folder.close(); } catch (e2) {} }
    scan = null;
}
function ensurehost() {
    if (dead) return false;
    if (initialized) return true;
    try {
        var h = SELF.patcher.getnamed("mb_runtime");
        if (!liveobject(h)) throw new Error("missing_runtime");
        host = h.subpatcher();
        feedback = host.getnamed("mb_feedback");
        if (!liveobject(feedback)) throw new Error("missing_feedback");
        // Deliberately no firstobject/nextobject sweep and no startup deletion.
        // Only explicit loads create native boxes; only owned references are removed.
        initialized = true;
        emitstatus(["ready", "multibuf_js_v2", OWNER, BUILD]);
        return true;
    } catch (e) {
        err("host_required", "-", "-", "Use the supplied multibuf_js_v2 abstraction, not a bare js box.");
        requests = []; signals = [];
        return false;
    }
}
function anything() { receive(String(messagename), args(arguments)); }
function list() {
    var a = args(arguments);
    if (a.length && typeof a[0] === "string") receive(String(a.shift()), a);
    else receive("list", a);
}
function msg_int(v) {
    if (inlet === 3) command("verbose", [v]);
    else receive("get", [v]);
}
function msg_float(v) { msg_int(v); }
function bang() { receive("dump", []); }
function receive(sel, a) {
    if (dead) return;
    if (inlet === 1) {
        // This inlet is fed only by the abstraction's deferred native callbacks.
        signals.push({ selector: sel, values: a }); wake(); return;
    }
    if (inlet === 3) { command("verbose", a.length ? a : [sel]); return; }
    if (inlet === 2 && sel === "symbol" && a.length) { command("get", [a[0]]); return; }
    if (sel.charAt(0) === "/") sel = sel.substring(1);
    if (sel === "symbol" && a.length === 1) { command("file", a); return; }
    command(sel, a);
}
function validbit(a) { return a.length === 1 && (Number(a[0]) === 0 || Number(a[0]) === 1); }
function onepath(a, commandName) {
    if (a.length !== 1 || typeof a[0] !== "string" || !a[0].length) {
        err("arguments", "-", "-", commandName + " requires one path symbol. Quote spaces."); return null;
    }
    if (/[\r\n\x00]/.test(a[0])) { err("invalid_path", "-", a[0], "Control characters are not supported."); return null; }
    return a[0];
}
function typesparse(a) {
    var out = [], seen = {}, map = {
        "wave": ["wav"], "aiff": ["aif", "aiff", "aifc"], "mpg3": ["mp3"],
        "mp3": ["mp3"], "all": ["*"]
    };
    for (var i = 0; i < a.length; i++) {
        var s = String(a[i]).toLowerCase().replace(/^\./, ""), v = map[s] || [s];
        for (var j = 0; j < v.length; j++) {
            if (!/^(\*|[a-z0-9]+)$/.test(v[j])) return null;
            if (!seen[key(v[j])]) { out.push(v[j]); seen[key(v[j])] = true; }
        }
    }
    return out.length ? out : null;
}
function command(sel, a) {
    if (dead) return;
    var n, p, t, s;
    if (sel === "version") { emitstatus(["version", "multibuf_js_v2", BUILD]); return; }
    if (sel === "mono" || sel === "extension" || sel === "recursive" || sel === "verbose") {
        if (!validbit(a)) { err("arguments", "-", "-", sel + " expects 0 or 1."); return; }
        cfg[sel] = Number(a[0]); emitstatus(["setting", sel, cfg[sel]]); return;
    }
    if (sel === "prefix") {
        if (a.length > 1) { err("arguments", "-", "-", "prefix expects zero or one symbol."); return; }
        s = a.length ? String(a[0]) : "";
        if (/[\r\n\x00\/\\:]/.test(s)) { err("invalid_prefix", s, "-", "Use a plain name prefix, not a path."); return; }
        cfg.prefix = s; emitstatus(["setting", "prefix", s || "(none)"]); return;
    }
    if (sel === "timeout" || sel === "maxbuffers") {
        n = Number(a[0]);
        if (a.length !== 1 || !isFinite(n) || Math.floor(n) !== n ||
            n < (sel === "timeout" ? 0 : 1) || n > (sel === "timeout" ? 3600000 : 100000)) {
            err("arguments", "-", "-", sel + " expects a valid integer; see help."); return;
        }
        if (sel === "maxbuffers" && n < entryOrder.length) {
            err("capacity_below_loaded_count", "-", "-", String(entryOrder.length)); return;
        }
        cfg[sel] = n; emitstatus(["setting", sel, n]); return;
    }
    if (sel === "method") {
        s = String(a[0]);
        if (a.length !== 1 || !/^(auto|read|import)$/.test(s)) { err("arguments", "-", "-", "method auto|read|import"); return; }
        cfg.method = s; emitstatus(["setting", "method", s]); return;
    }
    if (sel === "types") {
        t = typesparse(a);
        if (!t) { err("arguments", "-", "-", "types wav aif aiff ... or types all"); return; }
        cfg.types = t; emitstatus(["setting", "types"].concat(t)); return;
    }
    if (sel === "settings") {
        for (s in cfg) if (cfg.hasOwnProperty(s)) emitstatus(["setting", s].concat(s === "prefix" ? [cfg[s] || "(none)"] : cfg[s]));
        return;
    }
    if (sel === "samplor") {
        if (a.length === 1 && String(a[0]) === "off") { emitstatus(["setting", "samplor", "off"]); return; }
        err("legacy_mode_not_supported", "-", "-", "Version 1 uses filename naming; samplor numeric naming is not implemented."); return;
    }
    if (sel === "FullPacket") {
        err("unpack_osc_first", "-", "-", "Send ordinary /file or /folder Max messages, not odot FullPacket bundles."); return;
    }
    if (sel === "file" || sel === "coll" || sel === "multicoll") {
        p = onepath(a, sel); if (p === null) return;
        enqueue({ kind: sel, path: p, options: settingscopy(), refresh: false }); return;
    }
    if (sel === "folder") {
        if (!a.length) { err("arguments", "-", "-", "folder requires a path."); return; }
        p = onepath([a[0]], sel); if (p === null) return;
        s = settingscopy();
        if (a.length > 1) { t = typesparse(a.slice(1)); if (!t) { err("arguments", "-", p, "Invalid folder type filter."); return; } s.types = t; }
        enqueue({ kind: "folder", path: p, options: s, refresh: false }); return;
    }
    if (sel === "refresh") {
        if (!a.length) {
            enqueue({ kind: "refresh", path: "(loaded buffers)", options: settingscopy(), refresh: true });
        } else {
            p = onepath(a, sel); if (p !== null) enqueue({ kind: "folder", path: p, options: settingscopy(), refresh: true });
        }
        return;
    }
    if (sel === "stop" || sel === "clear") {
        if (a.length) { err("arguments", "-", "-", sel + " takes no arguments."); return; }
        if (sel === "clear") clearRequested = true;
        cancelrequests(); wake(); return;
    }
    if (sel === "dump" || sel === "dumpinfo" || sel === "menu" || sel === "length" || sel === "status" || sel === "get") {
        signals.push({ selector: "query", values: [sel].concat(a) }); wake(); return;
    }
    if (sel === "remove") {
        p = onepath(a, sel); if (p === null) return;
        if (batch || requests.length || clearRequested) { err("busy", p, "-", "Stop or wait for done before removing a buffer."); return; }
        signals.push({ selector: "remove", values: [p] }); wake(); return;
    }
    // Original coll's buffer-N index queries remain available at the middle inlet.
    if (inlet === 2 && /^buffer-\d+$/.test(sel)) { command("get", [Number(sel.substring(7))]); return; }
    err("unknown_message", sel, "-", "See the message reference in the help patch.");
}
function enqueue(r) {
    if (pending && pending.waiting) {
        err("native_read_unresolved", pending.name, pending.path,
            "No new load until the previous native read completes. See the Max Console."); return;
    }
    if (clearRequested) { err("clear_pending", "-", r.path, "Wait for cleared before starting another load."); return; }
    r.id = ++nextBatch;
    requests.push(r);
    emitstatus(["queued", r.id, r.kind, r.path]); wake();
}
function cancelrequests() {
    var q = requests; requests = [];
    for (var i = 0; i < q.length; i++) emitstatus(["cancelled", q[i].id, q[i].kind, q[i].path]);
    if (batch) {
        batch.cancelled = 1;
        batch.jobs = []; batch.index = 0;
        closescanner();
        if (gather) { removegather(); }
        emitstatus(["stopping", batch.id, pending ? "waiting_for_current_native_read" : "no_read_in_flight"]);
    }
}
function tick() {
    timerScheduled = false;
    if (dead || !ensurehost()) return;
    try {
        if (signals.length) {
            var signal = signals.shift(); dispatchsignal(signal); wake(); return;
        }
        if (clearRequested && !pending) {
            if (batch) finishbatch();
            if (dead) return;
            var result = clearstep();
            if (dead) return;
            if (result === 0) { wake(); return; }
            clearRequested = false;
            if (result > 0) emitstatus(["cleared", 0]);
            else emitstatus(["clear_failed", entryOrder.length]);
            return;
        }
        if (pending) return;
        if (batch && batch.cancelled) { finishbatch(); wake(); return; }
        if (!batch) {
            if (!requests.length) return;
            startbatch(requests.shift()); wake(); return;
        }
        if (scan) { scanstep(); wake(); return; }
        if (gather) return;
        if (batch.collections && batch.collections.length) { startcoll(batch.collections.shift(), "files"); return; }
        if (!batch.prepared) {
            batch.prepared = true;
            if (batch.kind === "folder") batch.jobs.sort(jobcompare);
            emitstatus(["begin", batch.id, batch.kind, batch.jobs.length, batch.path]);
            wake(); return;
        }
        if (batch.index < batch.jobs.length) { beginfile(batch.jobs[batch.index++]); if (!pending) wake(); return; }
        finishbatch(); wake();
    } catch (e) {
        err("internal_exception", "-", "-", String(e));
        if (pending) failpending("internal_exception", String(e));
        closescanner();
        if (gather) removegather();
        if (batch) { batch.failed++; batch.cancelled = 1; }
        wake();
    }
}
function startbatch(r) {
    batch = { id: r.id, kind: r.kind, path: r.path, options: r.options,
        refresh: r.refresh, jobs: r.jobs || [], index: 0, loaded: 0, failed: 0,
        skipped: 0, cancelled: 0, prepared: false, collections: [] };
    if (r.kind === "file") batch.jobs.push({ path: r.path });
    else if (r.kind === "refresh") {
        for (var i = 0; i < entryOrder.length; i++) {
            var e = entries[key(entryOrder[i])]; batch.jobs.push({ path: e.path, forcedName: e.name });
        }
    } else if (r.kind === "folder") {
        scan = { todo: [{ path: resolveinput(r.path), depth: 0 }], folder: null,
            current: null, visited: {}, examined: 0 };
        emitstatus(["scanning", batch.id, r.path]);
    } else if (r.kind === "coll" || r.kind === "multicoll") startcoll(r.path, r.kind === "multicoll" ? "collections" : "files");
}
function finishbatch() {
    if (!batch) return;
    var b = batch; batch = null;
    emitstatus(["done", b.id, b.loaded, b.failed, b.skipped, b.cancelled]);
}
function isabs(s) { return s.charAt(0) === "/" || s.indexOf(":") >= 0 || /^\\\\/.test(s); }
function normalize(s) { return String(s).replace(/\\/g, "/"); }
function basename(s) {
    s = normalize(s).replace(/\/+$/, "");
    var i = s.lastIndexOf("/");
    if (i >= 0) return s.substring(i + 1);
    i = s.lastIndexOf(":"); return i >= 0 ? s.substring(i + 1) : s;
}
function dirname(s) {
    s = normalize(s).replace(/\/+$/, "");
    var i = s.lastIndexOf("/");
    if (i === 0) return "/";
    if (i >= 0) return s.substring(0, i + 1);
    i = s.lastIndexOf(":"); return i >= 0 ? s.substring(0, i + 1) : "";
}
function joinpath(a, b) { return String(a).replace(/\/+$/, "") + "/" + String(b).replace(/^\/+/, ""); }
function fileextension(s) {
    s = basename(s); var i = s.lastIndexOf("."); return i > 0 ? s.substring(i + 1).toLowerCase() : "";
}
function resolveinput(p) {
    p = normalize(p);
    if (isabs(p)) return p;
    // Explicit relative paths are anchored to the top-level saved patch.
    // Bare names retain Max's native search-path behavior for legacy /file use.
    if (p.indexOf("/") < 0 && p.charAt(0) !== ".") return p;
    var root = SELF.patcher, count = 0;
    while (root.parentpatcher && count++ < 64) root = root.parentpatcher;
    return root.filepath ? joinpath(dirname(root.filepath), p) : p;
}
function resolvefile(p) {
    var f = null;
    try {
        f = new File(resolveinput(p), "read");
        if (!f.isopen) return null;
        var n = basename(f.filename), path = f.foldername ? joinpath(f.foldername, n) : resolveinput(p);
        var size = f.eof;
        return { path: normalize(path), filename: n, bytes: size };
    } finally { if (f) { try { f.close(); } catch (e) {} } }
}
function acceptfile(name, types) {
    if (!name || name.charAt(0) === ".") return false;
    var ext = fileextension(name);
    for (var i = 0; i < types.length; i++) if (types[i] === "*" || types[i] === ext) return true;
    return false;
}
// An empty/invalid folder is checked against its parent incrementally.
// The old implementation could inspect 100000 parent entries in one JS call.
function startemptycheck(s, canonical) {
    var parent = dirname(canonical), leaf = basename(canonical);
    s.probe = { folder: null, path: canonical, leaf: leaf, examined: 0 };
    if (!parent || parent === canonical || !leaf) return;
    try { s.probe.folder = new Folder(parent); } catch (e) {}
}
function emptycheckstep(s) {
    var p = s.probe, found = false, count = 0;
    try {
        if (p.folder) {
            while (!p.folder.end && count++ < 128 && p.examined++ < COLLECT_LIMIT) {
                if (String(p.folder.filename) === p.leaf &&
                        String(p.folder.filetype).toLowerCase() === "fold") { found = true; break; }
                p.folder.next();
            }
            if (!found && !p.folder.end && p.examined < COLLECT_LIMIT) return;
        }
    } catch (e1) {}
    if (p.folder) { try { p.folder.close(); } catch (e2) {} }
    s.probe = null;
    if (found) emitstatus(["emptyfolder", batch.id, p.path]);
    else { batch.failed++; err("folder_empty_or_unavailable", "-", p.path,
        "No entries; parent check could not confirm an empty directory."); }
}
function scanstep() {
    var s = scan, count = 0;
    if (s.probe) { emptycheckstep(s); return; }
    if (!s.folder) {
        if (!s.todo.length) { scan = null; return; }
        s.current = s.todo.shift();
        var path = s.current.path;
        if (s.current.depth > 32) { batch.failed++; err("folder_depth_limit", "-", path, "Maximum recursion depth is 32."); return; }
        s.folder = new Folder(path);
        var canonical = s.folder.pathname ? normalize(s.folder.pathname) : path;
        if (s.visited[key(canonical)]) { s.folder.close(); s.folder = null; return; }
        s.visited[key(canonical)] = true;
        s.current.path = canonical;
        if (s.folder.end) {
            s.folder.close(); s.folder = null;
            startemptycheck(s, canonical); return;
        }
    }
    while (!s.folder.end && count++ < 128) {
        if (++s.examined > COLLECT_LIMIT) {
            batch.failed++; err("scan_limit", "-", batch.path, "100000 directory entries; no partial folder load performed.");
            s.folder.close(); scan = null; batch.jobs = []; return;
        }
        var name = String(s.folder.filename), ft = String(s.folder.filetype).toLowerCase();
        if (name && name.charAt(0) !== ".") {
            var full = joinpath(s.current.path, name);
            if (ft === "fold") {
                if (batch.options.recursive) s.todo.push({ path: full, depth: s.current.depth + 1 });
            } else if (acceptfile(name, batch.options.types)) batch.jobs.push({ path: full });
        }
        s.folder.next();
    }
    if (s.folder.end) { s.folder.close(); s.folder = null; }
}
function jobcompare(a, b) {
    var x = basename(a.path).toLowerCase(), y = basename(b.path).toLowerCase();
    if (x < y) return -1; if (x > y) return 1;
    return a.path < b.path ? -1 : a.path > b.path ? 1 : 0;
}
function safeRemove(o) {
    if (dead || !host) return false;
    if (!liveobject(o)) return true; // absent/already freed: no native call
    try { host.remove(o); return true; }
    catch (e) { err("object_cleanup_failed", "-", "-", String(e)); return false; }
}
function makenode(classname, a) {
    a = a || [];
    var y = 70 + ((++nextToken) % 24) * 24;
    if (!a.length) return host.newdefault(20, y, classname);
    if (a.length === 1) return host.newdefault(20, y, classname, a[0]);
    if (a.length === 2) return host.newdefault(20, y, classname, a[0], a[1]);
    if (a.length === 3) return host.newdefault(20, y, classname, a[0], a[1], a[2]);
    throw new Error("unsupported_internal_argument_count");
}
function connectcallback(object, outletnum, selector, token) {
    var p = makenode("prepend", [selector, token]);
    host.connect(object, outletnum, p, 0); host.connect(p, 0, feedback, 0);
    return p;
}
function startcoll(name, kind) {
    var token = ++nextToken;
    gather = { token: token, name: name, kind: kind, rows: [], node: null, rownode: null, endnode: null };
    try {
        // Creating a named coll can refer to existing data or a coll-format file.
        gather.node = makenode("coll", [name, "@embed", 0]);
        gather.rownode = connectcallback(gather.node, 0, "_mbcollrow", token);
        gather.endnode = connectcallback(gather.node, 3, "_mbcollend", token);
        gather.node.message("dump");
        if (batch.options.timeout > 0) watchdog.schedule(batch.options.timeout);
    } catch (e) {
        batch.failed++; err("coll_error", name, "-", String(e)); removegather(); wake();
    }
}
function removegather() {
    if (!gather) return;
    watchdog.cancel();
    safeRemove(gather.rownode); safeRemove(gather.endnode); safeRemove(gather.node);
    gather = null;
}
function dispatchsignal(s) {
    var a = s.values, sel = s.selector;
    if (sel === "query") { query(String(a[0]), a.slice(1)); return; }
    if (sel === "remove") {
        if (batch || requests.length) { err("busy", a[0], "-", "Wait for done."); return; }
        var e = entries[key(a[0])];
        if (!e) { err("not_loaded", a[0], "-", ""); return; }
        if (removeentry(e)) emitstatus(["removed", e.name]); return;
    }
    if (sel === "_mbdone") {
        if (pending && Number(a[0]) === pending.token) {
            pending.completionSeen = true;
            if (pending.failureReported) {
                var ended = pending;
                pending = null;
                safeRemove(ended.cb); safeRemove(ended.node);
                if (!ended.old) unclaim(ended.name);
                emitstatus(["readsettled", batch ? batch.id : 0, ended.name, "discarded_after_error"]);
            } else completepending();
        }
        return;
    }
    if (sel === "_mbcollrow" && gather && Number(a[0]) === gather.token) {
        var v = a.slice(1);
        if (v[0] === "symbol" || v[0] === "list") v.shift();
        if (gather.rows.length >= COLLECT_LIMIT) {
            batch.failed++; err("coll_limit", gather.name, "-", "100000 collection rows."); removegather(); batch.cancelled = 1; return;
        }
        if (v.length && typeof v[0] === "string") gather.rows.push(v[0]);
        else { batch.failed++; err("invalid_coll_row", gather.name, "-", "First value must be a path or collection-name symbol."); }
        return;
    }
    if (sel === "_mbcollend" && gather && Number(a[0]) === gather.token) {
        var rows = gather.rows.slice(0), kind = gather.kind, name = gather.name;
        removegather();
        if (!rows.length) emitstatus(["emptycoll", batch.id, name]);
        if (kind === "collections") {
            var seen = {};
            for (var i = 0; i < rows.length; i++) if (!seen[key(rows[i])]) { seen[key(rows[i])] = true; batch.collections.push(rows[i]); }
        } else for (var j = 0; j < rows.length; j++) batch.jobs.push({ path: rows[j] });
        return;
    }
}
function getclaim(name) {
    var value;
    try { value = CLAIMS[claimkey(name)]; } catch (e) { return null; }
    if (typeof value !== "string" || value.indexOf("\n") < 0) return null;
    var i = value.indexOf("\n"); return { owner: value.substring(0, i), path: value.substring(i + 1) };
}
function reserve(name, path) { CLAIMS[claimkey(name)] = OWNER + "\n" + path; ownedClaims[key(name)] = name; }
function unclaim(name) {
    var c = getclaim(name);
    if (c && c.owner === OWNER) { try { CLAIMS[claimkey(name)] = ""; } catch (e) {} }
    delete ownedClaims[key(name)];
}
function metadata(name) {
    var b = new Buffer(name), m;
    try {
        var frames = Number(b.framecount()), channels = Number(b.channelcount()), ms = Number(b.length());
        m = { frames: frames, channels: channels, ms: ms, sr: ms > 0 ? Math.round(frames * 1000 / ms) : 0 };
    } finally {
        // Release the JS companion reference only, not the native buffer~ box.
        if (b && b.freepeer) b.freepeer();
    }
    return m;
}
function foreigncollision(name, owned) {
    var c = getclaim(name);
    if (c && c.owner !== OWNER) return c.path;
    if (c && c.owner === OWNER && !owned && !(pending && pending.name === name)) unclaim(name);
    if (!owned) {
        try { var m = metadata(name); if (m.channels > 0 || m.frames > 0) return "(existing Max buffer; source path unavailable)"; } catch (e) {}
    }
    return null;
}
function derivedname(file, opt) {
    var n = file.filename;
    if (!opt.extension) { var i = n.lastIndexOf("."); if (i > 0) n = n.substring(0, i); }
    return opt.prefix + n;
}
function beginfile(job) {
    var f;
    try { f = resolvefile(job.path); } catch (e) { f = null; }
    if (!f) { batch.failed++; err("file_not_found", "-", job.path, "No sample was created."); return; }
    var n = job.forcedName || derivedname(f, batch.options), old = entries[key(n)];
    if (!n || /[\r\n\x00]/.test(n)) { batch.failed++; err("invalid_name", n, f.path, ""); return; }
    if (old) {
        if (old.path !== f.path) { batch.failed++; err("name_collision", n, f.path, old.path); return; }
        if (!batch.refresh) { batch.skipped++; emitstatus(["skipped", batch.id, "already_loaded", n, f.path]); return; }
    }
    var collision = foreigncollision(n, old);
    if (collision) { batch.failed++; err("name_collision", n, f.path, collision); return; }
    if (!old && entryOrder.length >= batch.options.maxbuffers) { batch.failed++; err("capacity", n, f.path, String(batch.options.maxbuffers)); return; }
    if (!f.bytes) { batch.failed++; err("empty_file", n, f.path, "Zero bytes."); return; }
    var token = ++nextToken, temp = "__" + OWNER + "_pending_" + token;
    reserve(n, f.path);
    pending = { token: token, temp: temp, name: n, path: f.path, node: null, cb: null, old: old || null,
        readIssued: false, completionSeen: false, waiting: false, failureReported: false };
    try {
        pending.node = makenode("buffer~", [temp]);
        if (!liveobject(pending.node)) throw new Error("buffer_creation_failed");
        pending.node.varname = "mb_native_" + token;
        pending.cb = connectcallback(pending.node, 1, "_mbdone", token);
        var ext = fileextension(f.path), method = batch.options.method;
        if (method === "auto") method = /^(wav|aif|aiff|aifc|au|snd)$/.test(ext) ? "read" : "import";
        pending.method = method;
        emitstatus(["loading", batch.id, n, f.path]);
        notice("loading " + f.path);
        if (dead || !pending) return; // downstream output may have freed this instance
        if (batch.options.timeout > 0) watchdog.schedule(batch.options.timeout);
        // Explicit duration -1 resizes to the file; channels 0 follows its header.
        // Explicit channels 1 requests its first channel, not a JS downmix.
        pending.readIssued = true;
        pending.node.message(method, f.path, 0, -1, batch.options.mono ? 1 : 0);
    } catch (e2) { failpending("native_load_error", String(e2)); }
}
function timedout() {
    if (dead) return;
    if (pending) failpending("load_timeout", "No valid completion arrived before the configured timeout; this does not identify the decoder's error.");
    else if (gather) { batch.failed++; err("coll_timeout", gather.name, "-", "No dump completion."); removegather(); }
    wake();
}
function failpending(code, detail) {
    if (dead || !pending) return;
    watchdog.cancel();
    var p = pending;
    if (!p.failureReported) {
        p.failureReported = true;
        if (batch) batch.failed++;
        err(code, p.name, p.path, detail);
        if (dead) return;
    }
    if (p.readIssued && !p.completionSeen) {
        // A timeout is NOT cancellation of the native decoder. Never delete its
        // target on a timer. Cancel other work, retain it privately, and wait.
        p.waiting = true;
        cancelrequests();
        emitstatus(["waiting", batch ? batch.id : 0, "native_read", p.name, p.path]);
        return;
    }
    pending = null;
    safeRemove(p.cb); safeRemove(p.node);
    if (!p.old) unclaim(p.name);
    wake();
}
function completepending() {
    if (dead || !pending || !pending.completionSeen) return;
    watchdog.cancel();
    var p = pending, m;
    if (!liveobject(p.node) || (p.old && !liveobject(p.old.node))) {
        failpending("buffer_object_missing", "A managed native buffer was removed externally."); return;
    }
    try { m = metadata(p.temp); } catch (e) { failpending("metadata_error", String(e)); return; }
    if (!isFinite(m.frames) || m.frames <= 0 || m.channels < 1 || m.ms <= 0) {
        failpending("empty_or_invalid_audio", "A completion bang arrived without nonempty audio metadata."); return;
    }
    if (batch.options.mono && m.channels !== 1) { failpending("channel_mismatch", "Requested mono; received " + m.channels + " channels."); return; }
    if (clearRequested) {
        pending = null; safeRemove(p.cb); safeRemove(p.node); if (!p.old) unclaim(p.name);
        emitstatus(["discarded", batch.id, p.name, "clear_pending"]); return;
    }
    var collision = foreigncollision(p.name, p.old);
    if (collision) { failpending("name_collision_at_commit", collision); return; }
    // A refresh preserves the old buffer until the replacement passed validation.
    // It is not an audio-rate crossfade: do not refresh a buffer during playback.
    var backup = "__" + OWNER + "_backup_" + p.token;
    try {
        if (p.old) p.old.node.message("set", backup);
        p.node.message("set", p.name);
        var check = metadata(p.name);
        if (check.frames !== m.frames || check.channels !== m.channels) throw new Error("rename_validation_failed");
    } catch (e2) {
        try { p.node.message("set", p.temp); } catch (e3) {}
        if (p.old) { try { p.old.node.message("set", p.name); } catch (e4) {} }
        failpending("commit_error", String(e2)); return;
    }
    if (p.old) safeRemove(p.old.node);
    else entryOrder.push(p.name);
    safeRemove(p.cb);
    entries[key(p.name)] = { name: p.name, path: p.path, node: p.node,
        channels: m.channels, frames: m.frames, ms: m.ms, sr: m.sr,
        mono: batch.options.mono, method: p.method };
    pending = null;
    batch.loaded++;
    emitstatus(["loaded", p.name, p.path, m.channels, m.frames, m.ms, m.sr, batch.id]);
    nameout(p.name);
    if (!dead) outlet(1, "bang");
}
function removeentry(e) {
    if (dead || !e || !safeRemove(e.node)) return false;
    unclaim(e.name); delete entries[key(e.name)];
    for (var i = entryOrder.length - 1; i >= 0; i--) if (entryOrder[i] === e.name) entryOrder.splice(i, 1);
    return true;
}
function clearstep() {
    // Keep the UI responsive: free at most eight owned buffers per worker turn.
    // Do not sweep the native object list: Max owns that list, not JavaScript.
    var count = 0;
    while (!dead && entryOrder.length && count++ < 8) {
        if (!removeentry(entries[key(entryOrder[entryOrder.length - 1])] )) return -1;
    }
    if (entryOrder.length) return 0;
    entries = {}; return 1;
}
function getentry(v) {
    if (typeof v === "number" || /^buffer-\d+$/.test(String(v))) {
        var n = typeof v === "number" ? v : Number(String(v).substring(7));
        return n >= 1 && n <= entryOrder.length && Math.floor(n) === n ? entries[key(entryOrder[n - 1])] : null;
    }
    return entries[key(String(v))] || null;
}
function query(sel, a) {
    var i, e;
    if (sel === "dump") {
        for (i = 0; i < entryOrder.length; i++) nameout(entryOrder[i]);
        emitstatus(["dumpdone", entryOrder.length]); return;
    }
    if (sel === "menu") {
        emitstatus(["menu", "clear"]);
        for (i = 0; i < entryOrder.length; i++) emitstatus(["menu", "append", entryOrder[i]]);
        emitstatus(["menudone", entryOrder.length]); return;
    }
    if (sel === "length") { outlet(0, entryOrder.length); emitstatus(["count", entryOrder.length]); return; }
    if (sel === "status") {
        emitstatus(["status", entryOrder.length, batch ? batch.id : 0, requests.length, pending ? 1 : 0, clearRequested ? 1 : 0]);
        if (pending && pending.waiting) emitstatus(["waiting", batch ? batch.id : 0, "native_read", pending.name, pending.path]);
        return;
    }
    if (sel === "dumpinfo") {
        for (i = 0; i < entryOrder.length; i++) { e = entries[key(entryOrder[i])]; emitstatus(["buffer", i + 1, e.name, e.path, e.channels, e.frames, e.ms, e.sr]); }
        emitstatus(["dumpdone", entryOrder.length]); return;
    }
    if (sel === "get") {
        if (a.length !== 1 || !(e = getentry(a[0]))) { err("not_loaded", a.join(" "), "-", "Use a buffer name or 1-based index."); return; }
        nameout(e.name);
    }
}

// Keep utility functions private to Max's message dispatcher.
key.local = claimkey.local = args.local = atomstr.local = emitstatus.local = nameout.local = 1;
notice.local = err.local = settingscopy.local = wake.local = shutdown.local = liveobject.local = closescanner.local = ensurehost.local = 1;
receive.local = validbit.local = onepath.local = typesparse.local = command.local = enqueue.local = 1;
cancelrequests.local = tick.local = startbatch.local = finishbatch.local = isabs.local = normalize.local = 1;
basename.local = dirname.local = joinpath.local = fileextension.local = resolveinput.local = resolvefile.local = 1;
acceptfile.local = startemptycheck.local = emptycheckstep.local = scanstep.local = jobcompare.local = safeRemove.local = makenode.local = 1;
connectcallback.local = startcoll.local = removegather.local = dispatchsignal.local = getclaim.local = 1;
reserve.local = unclaim.local = metadata.local = foreigncollision.local = derivedname.local = beginfile.local = 1;
timedout.local = failpending.local = completepending.local = removeentry.local = clearstep.local = getentry.local = query.local = 1;
