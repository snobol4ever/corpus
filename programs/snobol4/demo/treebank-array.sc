// treebank-array.sc — Penn Treebank s-expression parser (array style, Snocone)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run treebank-array.sc < VBGinTASA.dat
//
// TABLE-based implementation: each frame is a TABLE used as a dynamic array.
// Children are APPENDED at the end (integer keys 1..n).  No reversal needed.
// Mirrors Python list.append semantics and treebank-array.sno exactly.
// Compare: treebank-list.sc (LISP-style cons-list with reversal).
//
// Function names match Python exactly:
//   init_list(v)  push_list(v)  push_item(v)  pop_list()  pop_final(v)
//
// Each is a single nreturn procedure usable two ways:
//   (word . tag) . *push_list(tag)    — capture then push at match time
//   (epsilon . *push_list('BANK'))    — zero-width hook with literal

&TRIM     = 1;
&ANCHOR   = 0;
&FULLSCAN = 1;
&ALPHABET POS(10) LEN(1) . nl;

//--- Stack frame storage (TABLE-of-TABLEs, integer-keyed children) ----------
//
//  stk_tag[frame_id]       — tag string for this frame
//  stk_n[frame_id]         — current child count
//  stk_c[frame_id][1..n]   — children in left-to-right parse order
//  stk                     — cons-list of open frame_ids (the parse stack)
//  frame_id                — monotone counter, unique per push_list call

DATA('list(head,tail)');

//--- stk_push_frame(v) -------------------------------------------------------

procedure stk_push_frame(v) {
    frame_id          = frame_id + 1;
    stk_tag[frame_id] = v;
    stk_n[frame_id]   = 0;
    stk_c[frame_id]   = TABLE();
    stk               = list(frame_id, stk);
    stk_push_frame    = .dummy;
    return;
}

//--- stk_push_item(v) --------------------------------------------------------

procedure stk_push_item(v,   cur) {
    cur               = head(stk);
    stk_n[cur]        = stk_n[cur] + 1;
    stk_c[cur][stk_n[cur]] = v;
    stk_push_item     = .dummy;
    return;
}

//--- stk_pop_into_parent() ---------------------------------------------------
//  Pop current frame; append its frame_id as a child of the parent frame.

procedure stk_pop_into_parent(   child, par, n) {
    child              = head(stk);
    stk                = tail(stk);
    par                = head(stk);
    n                  = stk_n[par];
    stk_n[par]         = n + 1;
    stk_c[par][n + 1]  = child;
    stk_pop_into_parent = .dummy;
    return;
}

//--- stk_pop_final(var) ------------------------------------------------------
//  Pop the outermost frame; store its frame_id in $var.

procedure stk_pop_final(var,   child) {
    child          = head(stk);
    stk            = tail(stk);
    $var           = child;
    stk_pop_final  = .dummy;
    return;
}

//--- pp_node(f, indent) — walk the frame TABLE directly ---------------------

procedure pp_node(f, indent,   tag, n, i, pad) {
    pad = DUPL(' ', indent);
    if (IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')) {
        OUTPUT = pad && f;
        return;
    }
    tag    = stk_tag[f];
    n      = stk_n[f];
    OUTPUT = pad && '(' && tag;
    i      = 0;
    while (DIFFER(i = LT(i, n) i + 1)) {
        dummy = pp_node(stk_c[f][i], indent + 3);
    }
    OUTPUT = pad && ')';
    return;
}

procedure pp_bank() {
    dummy   = pp_node(bank, 0);
    pp_bank = .dummy;
    return;
}

//--- Pattern-callable side-effect procedures ---------------------------------

procedure init_list(v) {
    $v       = '';
    stk      = '';
    frame_id = 0;
    stk_tag  = TABLE();
    stk_n    = TABLE();
    stk_c    = TABLE();
    init_list = .dummy;
    nreturn;
}

procedure push_list(v) {
    dummy     = stk_push_frame(v);
    push_list = .dummy;
    nreturn;
}

procedure push_item(v) {
    dummy     = stk_push_item(v);
    push_item = .dummy;
    nreturn;
}

procedure pop_list() {
    dummy    = stk_pop_into_parent();
    pop_list = .dummy;
    nreturn;
}

procedure pop_final(v) {
    dummy     = stk_pop_final(v);
    pop_final = .dummy;
    nreturn;
}

//--- Sub-patterns ------------------------------------------------------------

delim  = SPAN(' ' && nl);
word   = NOTANY('( )' && nl) && BREAK('( )' && nl);

//--- group -------------------------------------------------------------------

group =
    '('
    && (word . tag) . *push_list(tag)
    && ARBNO(
        *delim
        && ( *group
           | (word . wrd) . *push_item(wrd)
           )
    )
    && (epsilon . *pop_list())
    && ')';

//--- Main: two-phase parse ---------------------------------------------------
//  Phase 1: BAL carves each top-level S-expression from src.
//  Phase 2: group parses each S-expression into the TABLE-based tree.
//  No single-pass treebank pattern needed — BAL handles outer structure.

spat = ('(' && BAL && ')') . item;

src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && nl;
}

dummy = init_list('bank');
dummy = stk_push_frame('BANK');

while (src ?= spat <- '') {
    dummy = stk_push_frame('ROOT');
    if (item ? group) {
        dummy = stk_pop_into_parent();
    } else {
        OUTPUT = 'Parse failed on: ' && item;
        dummy  = stk_pop_into_parent();
    }
}

dummy = stk_pop_final('bank');
dummy = pp_bank();
