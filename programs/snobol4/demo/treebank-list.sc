// treebank-list.sc — Penn Treebank s-expression parser (LISP-style, Snocone)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run treebank-list.sc < VBGinTASA.dat
//------------------------------------------------------------------------------
&ALPHABET POS(10) LEN(1) . nl;
//------------------------------------------------------------------------------
DATA('list(head,tail)');
//------------------------------------------------------------------------------
procedure list_reverse(lst, acc, cur) {
    acc = '';
    cur = lst;
    while (DIFFER(cur)) {
        acc = list(head(cur), acc);
        cur = tail(cur);
    }
    list_reverse = acc;
    return;
}
//------------------------------------------------------------------------------
procedure stk_push_frame(v) {
    stk = list(list(v, ''), stk);
    stk_push_frame = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_push_item(v) {
    head(stk) = list(v, head(stk));
    stk_push_item = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_pop_into_parent(child) {
    child = list_reverse(head(stk));
    stk = tail(stk);
    head(stk) = list(child, head(stk));
    stk_pop_into_parent = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_pop_final(var) {
    $var          = list_reverse(head(stk));
    stk           = tail(stk);
    stk_pop_final = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure init_list(v) {
    $v        = '';
    stk       = '';
    init_list = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
procedure push_list(v) { stk_push_frame(v);     push_list = .dummy; nreturn; }
procedure push_item(v) { stk_push_item(v);      push_item = .dummy; nreturn; }
procedure pop_list()   { stk_pop_into_parent(); pop_list  = .dummy; nreturn; }
procedure pop_final(v) { stk_pop_final(v);      pop_final = .dummy; nreturn; }
//------------------------------------------------------------------------------
delim  = SPAN(' ' && nl);
word   = NOTANY('( )' && nl) && BREAK('( )' && nl);
//------------------------------------------------------------------------------
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
//------------------------------------------------------------------------------
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
//------------------------------------------------------------------------------
procedure node_repr(node,   r, sep, c) {
    if (IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')) {
        node_repr = "'" && node && "'";
        return;
    }
    r   = '(';
    sep = '';
    c   = node;
    while (DIFFER(c)) {
        r   = r && sep && node_repr(head(c));
        sep = ', ';
        c   = tail(c);
    }
    node_repr = r && ')';
    return;
}
//------------------------------------------------------------------------------
procedure pp_node(node, indent, suffix,   r, pad, c, nxt) {
    r = node_repr(node);
    pad = DUPL(' ', indent);
    if (GT(80, indent + SIZE(r))) {
        OUTPUT = pad && r && suffix;
        return;
    }
    OUTPUT = pad && '( ' && "'" && head(node) && "',";
    c = tail(node);
    while (DIFFER(nxt = tail(c))) {
        pp_node(head(c), indent + 2, ',');
        c = nxt;
    }
    pp_node(head(c), indent + 2, ')' && suffix);
    return;
}
//------------------------------------------------------------------------------
procedure pp_bank() { pp_node(bank, 0, ''); return; }
//------------------------------------------------------------------------------
src = '';
while (DIFFER(line = INPUT))
    src = src && line && nl;
if (src ? treebank) pp_bank();
else OUTPUT = 'Pattern match failed';
