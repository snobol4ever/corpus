// treebank-array.sc — Penn Treebank s-expression parser (array style, Snocone)
// ENG 685, Lon Cherryholmes Sr.
// Run: scrip --ir-run treebank-array.sc < VBGinTASA.dat
//------------------------------------------------------------------------------
&ALPHABET POS(10) LEN(1) . nl;
//------------------------------------------------------------------------------
DATA('list(head,tail)');
//------------------------------------------------------------------------------
procedure stk_push_frame(v) {
    frame_id          = frame_id + 1;
    stk_tag[frame_id] = v;
    stk_n[frame_id]   = 0;
    stk_c[frame_id]   = TABLE();
    stk               = list(frame_id, stk);
    stk_push_frame    = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_push_item(v,   cur) {
    cur                 = head(stk);
    stk_n[cur]          = stk_n[cur] + 1;
    stk_c[cur][stk_n[cur]] = v;
    stk_push_item       = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_pop_into_parent(   child, par, n) {
    child               = head(stk);
    stk                 = tail(stk);
    par                 = head(stk);
    n                   = stk_n[par];
    stk_n[par]          = n + 1;
    stk_c[par][n + 1]   = child;
    stk_pop_into_parent = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure stk_pop_final(var,   child) {
    child               = head(stk);
    stk                 = tail(stk);
    $var                = child;
    stk_pop_final       = .dummy;
    return;
}
//------------------------------------------------------------------------------
procedure node_repr(f,   r, i, n, tag) {
    if (IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')) {
        node_repr = "'" && f && "'";
        return;
    }
    tag = stk_tag[f];
    n   = stk_n[f];
    r   = "('" && tag && "'";
    i   = 0;
    while (DIFFER(i = LT(i, n) i + 1)) {
        r = r && ', ' && node_repr(stk_c[f][i]);
    }
    node_repr = r && ')';
    return;
}
//------------------------------------------------------------------------------
procedure pp_node(f, indent, suffix,   r, pad, tag, n, i) {
    if (IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')) {
        OUTPUT = DUPL(' ', indent) && "'" && f && "'" && suffix;
        return;
    }
    r   = node_repr(f);
    pad = DUPL(' ', indent);
    if (GT(80, indent + SIZE(r))) {
        OUTPUT = pad && r && suffix;
        return;
    }
    tag = stk_tag[f];
    n   = stk_n[f];
    OUTPUT = pad && '( ' && "'" && tag && "',";
    i = 0;
    while (DIFFER(i = LT(i, n - 1) i + 1)) {
        dummy = pp_node(stk_c[f][i], indent + 2, ',');
    }
    dummy = pp_node(stk_c[f][n], indent + 2, ')' && suffix);
    return;
}
//------------------------------------------------------------------------------
procedure pp_bank() {
    dummy   = pp_node(bank, 0, '');
    pp_bank = .dummy;
    return;
}
//------------------------------------------------------------------------------
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
spat = ('(' && BAL && ')') . item;
src = '';
while (DIFFER(line = INPUT)) {
    src = src && line && nl;
}
init_list('bank');
stk_push_frame('BANK');
while (src ?= spat <- '') {
    stk_push_frame('ROOT');
    if (item ? group) {
        stk_pop_into_parent();
    } else {
        OUTPUT = 'Parse failed on: ' && item;
        stk_pop_into_parent();
    }
}
stk_pop_final('bank');
pp_bank();
