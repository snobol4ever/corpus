// treebank-list.sc — Penn Treebank s-expression parser (LISP-style, Snocone)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run treebank-list.sc < VBGinTASA.dat
//
// LISP-style cons-list: children PREPENDED to head, list_reverse corrects
// order at pop time.  Mirrors treebank-list.sno exactly.
// Compare: treebank-array.sc (TABLE-based, append at end, no reversal).
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

//--- Linked list DATA type --------------------------------------------------

DATA('list(head,tail)');

//--- list_reverse(lst) -------------------------------------------------------

procedure list_reverse(lst,   acc, cur) {
    acc = '';
    cur = lst;
    while (DIFFER(cur)) {
        acc = list(head(cur), acc);
        cur = tail(cur);
    }
    list_reverse = acc;
    return;
}

//--- Stack primitives --------------------------------------------------------

procedure stk_push_frame(v) {
    stk            = list(list(v, ''), stk);
    stk_push_frame = .dummy;
    return;
}

procedure stk_push_item(v) {
    head(stk)     = list(v, head(stk));
    stk_push_item = .dummy;
    return;
}

procedure stk_pop_into_parent(  child) {
    child               = list_reverse(head(stk));
    stk                 = tail(stk);
    head(stk)           = list(child, head(stk));
    stk_pop_into_parent = .dummy;
    return;
}

procedure stk_pop_final(var) {
    $var          = list_reverse(head(stk));
    stk           = tail(stk);
    stk_pop_final = .dummy;
    return;
}

//--- Pattern-callable side-effect procedures ---------------------------------
//    Each is nreturn so the . operator captures a NAME, not a value.

procedure init_list(v) {
    $v        = '';
    stk       = '';
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

//--- treebank ----------------------------------------------------------------

treebank =
    POS(0)
    && (epsilon . *init_list('bank'))
    && (epsilon . *push_list('BANK'))
    && ARBNO(
        (epsilon . *push_list('ROOT'))
        && ARBNO(*group)
        && *delim
        && (epsilon . *pop_list())
    )
    && (epsilon . *pop_final('bank'))
    && RPOS(0);

//--- pp_node: recursive pretty-printer --------------------------------------

procedure pp_node(node, indent,   child, nxt, pad) {
    pad = DUPL(' ', indent);
    if (IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')) {
        OUTPUT = pad && node;
        return;
    }
    OUTPUT = pad && '(' && head(node);
    child  = tail(node);
    while (DIFFER(child)) {
        nxt   = tail(child);
        dummy = pp_node(head(child), indent + 3);
        child = nxt;
    }
    OUTPUT = pad && ')';
    return;
}

procedure pp_bank() {
    dummy   = pp_node(bank, 0);
    pp_bank = .dummy;
    return;
}

//--- Main: slurp stdin, match, print ----------------------------------------

src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && nl;
}
if (src ? treebank) {
    dummy = pp_bank();
} else {
    OUTPUT = 'Pattern match failed';
}
