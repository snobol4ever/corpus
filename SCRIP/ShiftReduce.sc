
function Shift(t, v, s) {
    v ? (POS(0) whitespace) = ;
    s = tree(t, v);
    Push(s);
    OUTPUT = GT(xTrace, 3) 'Shift(' t ', ' v ')';
    if (Shift = IDENT(v) .v(s)) { nreturn; }
    Shift = DIFFER(v) .dummy;
    nreturn;
}

function Reduce(t, n, c, i, r, empty) {
    Reduce = .dummy;
    if (IDENT(DATATYPE(t), 'EXPRESSION')) {
        if (~(t = EVAL(t))) { nreturn; }
    }
    if (IDENT(DATATYPE(n), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; }
    }
    OUTPUT = GT(xTrace, 3) 'Reduce(' t ', ' n ')';
    if (IDENT(n, 0)) {
        empty = ;
        r = tree(t, empty, 0);
        Push(r);
        nreturn;
    }
    c = ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) {
        c[i] = Pop();
    }
    empty = ;
    r = tree(t, empty, n, c);
    Push(r);
    nreturn;
}


function FoldOp(t, rhs, lhs) {
    FoldOp = .dummy;
    if (IDENT(DATATYPE(t), 'EXPRESSION')) {
        if (~(t = EVAL(t))) { nreturn; }
    }
    rhs = Pop();
    lhs = Pop();
    OUTPUT = GT(xTrace, 3) 'FoldOp(' t ') lhs.t=' t(lhs) ' rhs.t=' t(rhs);
    if (IDENT(t(lhs), t)) {
        Append(lhs, rhs);
        Push(lhs);
        nreturn;
    }
    Push(Tree(t, '', 2, lhs, rhs));
    nreturn;
}


function ReduceCall(n, args, i, fname, r) {
    ReduceCall = .dummy;
    n = TopCounter();
    args = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) { args[i] = Pop(); }
    fname = v(Pop());
    r = tree('AST_FNC', fname, n, args);
    Push(r);
    nreturn;
}


function ReducePrim(tag, n, args, i, r) {
    ReducePrim = .dummy;
    if (IDENT(DATATYPE(tag), 'EXPRESSION')) {
        if (~(tag = EVAL(tag))) { nreturn; }
    }
    n = TopCounter();
    args = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) { args[i] = Pop(); }
    r = tree(tag, '', n, args);
    Push(r);
    nreturn;
}


function ReduceOpsyn(op, n, c, i, r) {
    ReduceOpsyn = .dummy;
    if (IDENT(DATATYPE(n), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; }
    }
    c = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) { c[i] = Pop(); }
    r = tree('AST_OPSYN', op, n, c);
    Push(r);
    nreturn;
}
