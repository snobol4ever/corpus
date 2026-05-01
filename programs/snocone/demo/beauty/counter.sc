// counter.sc — Snocone port of counter.inc
//
// Canonical reference: corpus/programs/snobol4/demo/beauty/counter.inc
// 16 procedures: 6 counter-stack + 5 BegTag + 5 EndTag.
// Per Lon (session #66): every procedure ports regardless of whether it is
// referenced at default settings — the BegTag/EndTag families are gated on
// xTrace > 4 and XML/HTML tag-tracking modes, but they are first-class
// canonical procedures and must be present.
//
// Globals:
//   $'#N' — link_counter() head — counter stack
//   $'@B' — link_tag()     head — XML/HTML begin-tag stack
//   $'@E' — link_tag()     head — XML/HTML end-tag   stack
//
// Notes on the port:
// - DumpBegTag/DumpEndTag in canonical have no formal params, three locals
//   (b/e, list, v). The Snocone parser does not accept a leading-comma
//   "(,locals)" form; we declare the locals as ordinary parameters, which
//   in SNOBOL4 semantics initialize to null on entry — the desired
//   behavior. Callers always invoke the dump procs with zero arguments.

struct link_counter { next, value }
struct link_tag     { next, value }

// --------------------------------------------------------------------------- counter-stack family

function InitCounter() { $'#N' = ''; return; }

function PushCounter() {
    OUTPUT = GT(xTrace, 4)   'PushCounter()';
    $'#N' = link_counter($'#N', 0);
    PushCounter = .dummy;
    nreturn;
}

function IncCounter() {
    value($'#N') = value($'#N') + 1;
    OUTPUT = GT(xTrace, 4)   (value($'#N')   ' = IncCounter()');
    IncCounter = .dummy;
    nreturn;
}

function DecCounter() {
    value($'#N') = value($'#N') - 1;
    OUTPUT = GT(xTrace, 4)   (value($'#N')   ' = DecCounter()');
    DecCounter = .dummy;
    nreturn;
}

function PopCounter() {
    OUTPUT = GT(xTrace, 4)   'PopCounter()';
    if (DIFFER($'#N')) { $'#N' = next($'#N'); PopCounter = .dummy; nreturn; }
    else { freturn; }
}

function TopCounter() {
    if (DIFFER($'#N')) {
        TopCounter = value($'#N');
        OUTPUT = GT(xTrace, 4)   (TopCounter   ' = TopCounter()');
        return;
    }
    else { freturn; }
}

// --------------------------------------------------------------------------- begin-tag stack family
// $'@B' holds a stack of XML/HTML begin tags via link_tag().

function InitBegTag() { $'@B' = ''; return; }

function PushBegTag(t) {
    OUTPUT = GT(xTrace, 4)   ('PushBegTag('   upr(t)   ')');
    $'@B' = link_tag($'@B', upr(t));
    if (IDENT(t)) { PushBegTag = .value($'@B'); nreturn; }
    else          { PushBegTag = .dummy;        nreturn; }
}

function PopBegTag() {
    OUTPUT = GT(xTrace, 4)   ((DIFFER($'@B')   value($'@B') | 'FAIL')   ' = PopBegTag()');
    if (DIFFER($'@B')) { $'@B' = next($'@B'); PopBegTag = .dummy; nreturn; }
    else               { freturn; }
}

function TopBegTag() {
    if (DIFFER($'@B')) {
        TopBegTag = value($'@B');
        OUTPUT = GT(xTrace, 4)   (TopBegTag   ' = TopBegTag()');
        return;
    }
    else { freturn; }
}

// DumpBegTag has zero formal args + three canonical locals (b, list, v).
// The locals are declared as parameters; SNOBOL4 zero-arg invocation
// initializes them to null, which is the canonical local-init behavior.
function DumpBegTag(b, list, v) {
    DumpBegTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    b = $'@B';
    list = '';
    while (DIFFER(b)) {
        v = value(b);
        if (DIFFER(list)) { list = list   ', '   v; }
        else              { list = v; }
        b = next(b);
    }
    OUTPUT = '@B = ('   list   ')';
    nreturn;
}

// --------------------------------------------------------------------------- end-tag stack family
// $'@E' holds a stack of XML/HTML end tags via link_tag().

function InitEndTag() { $'@E' = ''; return; }

function PushEndTag(t) {
    OUTPUT = GT(xTrace, 4)   ('PushEndTag('   upr(t)   ')');
    $'@E' = link_tag($'@E', upr(t));
    if (IDENT(t)) { PushEndTag = .value($'@E'); nreturn; }
    else          { PushEndTag = .dummy;        nreturn; }
}

function PopEndTag() {
    OUTPUT = GT(xTrace, 4)   ((DIFFER($'@E')   value($'@E') | 'FAIL')   ' = PopEndTag()');
    if (DIFFER($'@E')) { $'@E' = next($'@E'); PopEndTag = .dummy; nreturn; }
    else               { freturn; }
}

function TopEndTag() {
    if (DIFFER($'@E')) {
        TopEndTag = value($'@E');
        OUTPUT = GT(xTrace, 4)   (TopEndTag   ' = TopEndTag()');
        return;
    }
    else { freturn; }
}

// DumpEndTag — same locals-as-params idiom as DumpBegTag.
function DumpEndTag(e, list, v) {
    DumpEndTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    e = $'@E';
    list = '';
    while (DIFFER(e)) {
        v = value(e);
        if (DIFFER(list)) { list = list   ', '   v; }
        else              { list = v; }
        e = next(e);
    }
    OUTPUT = '@E = ('   list   ')';
    nreturn;
}
