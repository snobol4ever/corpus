// counter.sc — faithful Snocone port of beauty/counter.inc.
// A stack of counters. To be used with conditional assignment within pattern matching.
// These routines are useful for counting items on the stack at multiple nesting levels which
// are suitable for reduction on the stack.
// Global: $'#N' -- link_counter()

struct link_counter { next, value }

function InitCounter() {
    $'#N' = ;
    return;
}

function PushCounter() {
    OUTPUT = GT(xTrace, 4) 'PushCounter()';
    $'#N' = link_counter($'#N', 0);
    PushCounter = .dummy;
    nreturn;
}

function IncCounter() {
    value($'#N') = value($'#N') + 1;
    OUTPUT = GT(xTrace, 4) value($'#N') ' = IncCounter()';
    IncCounter = .dummy;
    nreturn;
}

function DecCounter() {
    value($'#N') = value($'#N') - 1;
    OUTPUT = GT(xTrace, 4) value($'#N') ' = DecCounter()';
    DecCounter = .dummy;
    nreturn;
}

function PopCounter() {
    OUTPUT = GT(xTrace, 4) 'PopCounter()';
    if (~($'#N' = DIFFER($'#N') next($'#N'))) { freturn; }
    PopCounter = .dummy;
    nreturn;
}

function TopCounter() {
    if (~(TopCounter = DIFFER($'#N') value($'#N'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopCounter ' = TopCounter()';
    return;
}

// A stack of XML or HTML begin and end tags. To be used with unconditional assignment within
// pattern matching.
// Global: $'@B' -- link_tag()
//         $'@E' -- link_tag()

struct link_tag { next, value }

function InitBegTag() {
    $'@B' = ;
    return;
}

function PushBegTag(t) {
    OUTPUT = GT(xTrace, 4) 'PushBegTag(' upr(t) ')';
    $'@B' = link_tag($'@B', upr(t));
    if (PushBegTag = IDENT(t) .value($'@B')) { nreturn; }
    PushBegTag = DIFFER(t) .dummy;
    nreturn;
}

function PopBegTag() {
    OUTPUT = GT(xTrace, 4) (DIFFER($'@B') value($'@B'), 'FAIL') ' = PopBegTag()';
    if (~($'@B' = DIFFER($'@B') next($'@B'))) { freturn; }
    PopBegTag = .dummy;
    nreturn;
}

function TopBegTag() {
    if (~(TopBegTag = DIFFER($'@B') value($'@B'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopBegTag ' = TopBegTag()';
    return;
}

function DumpBegTag(b, list, v) {
    DumpBegTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    b = $'@B';
    while (v = DIFFER(b) value(b)) {
        list = list (DIFFER(list) ', ', '') v;
        b = next(b);
    }
    OUTPUT = '@B = (' list ')';
    nreturn;
}

function InitEndTag() {
    $'@E' = ;
    return;
}

function PushEndTag(t) {
    OUTPUT = GT(xTrace, 4) 'PushEndTag(' upr(t) ')';
    $'@E' = link_tag($'@E', upr(t));
    if (PushEndTag = IDENT(t) .value($'@E')) { nreturn; }
    PushEndTag = DIFFER(t) .dummy;
    nreturn;
}

function PopEndTag() {
    OUTPUT = GT(xTrace, 4) (DIFFER($'@E') value($'@E'), 'FAIL') ' = PopEndTag()';
    if (~($'@E' = DIFFER($'@E') next($'@E'))) { freturn; }
    PopEndTag = .dummy;
    nreturn;
}

function TopEndTag() {
    if (~(TopEndTag = DIFFER($'@E') value($'@E'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopEndTag ' = TopEndTag()';
    return;
}

function DumpEndTag(e, list, v) {
    DumpEndTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    e = $'@E';
    while (v = DIFFER(e) value(e)) {
        list = list (DIFFER(list) ', ', '') v;
        e = next(e);
    }
    OUTPUT = '@E = (' list ')';
    nreturn;
}

// Name-stack — companion to the counter stack for compound-functor names.
// Solves the p_name clobbering bug: when parsing nested compounds like
// arg(1, foo(a,b), X), the inner foo(a,b) sets p_name='foo', clobbering
// the outer 'arg'. Solution: push the functor name before entering args,
// read it from the name-stack in reduce_compound.
// Global: $'#PN' -- link_name()

struct link_name { next, value }

function PushName(n) {
    $'#PN' = link_name($'#PN', n);
    PushName = .dummy;
    nreturn;
}

function TopName() {
    if (~(TopName = DIFFER($'#PN') value($'#PN'))) { freturn; }
    return;
}

function PopName() {
    if (~($'#PN' = DIFFER($'#PN') next($'#PN'))) { freturn; }
    PopName = .dummy;
    nreturn;
}
