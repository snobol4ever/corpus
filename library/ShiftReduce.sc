//---------------------------------------------------------------------------------------------------
// Shift(t,v) -- push a tree of type t with value v onto the stack
//
// Reduce(t, n) -- pop n trees from the stack and push a tree of type t that contains these
// n trees as children in the order they were stacked. If either the t or n parameters are
// unevaluated expressions they will be evaluated on-the-fly here within this routine. If the
// evaluation of an unevaluated expression fails then there is no reduction of the stack.
//---------------------------------------------------------------------------------------------------
function Shift(t, v, s) {
    v ? (POS(0) whitespace) = ;
    s = tree(t, v);
    Push(s);
    OUTPUT = GT(xTrace, 3) 'Shift(' t ', ' v ')';
    // OUTPUT = GT(xTrace, 4) ' = ' TLump(s, 1024);
    if (Shift = IDENT(v) .v(s)) nreturn;
    Shift = DIFFER(v) .dummy;
    nreturn;
}
//---------------------------------------------------------------------------------------------------
function Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (IDENT(DATATYPE(t), 'EXPRESSION'))
        if (~(t = EVAL(t))) nreturn;
    if (IDENT(DATATYPE(n), 'EXPRESSION'))
        if (~(n = EVAL(n))) nreturn;
    OUTPUT = GT(xTrace, 3) 'Reduce(' t ', ' n ')';
    c = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1)
        c[i] = Pop();
    r = tree(t, '', n, c);   // TODO SB-6.E.7-K — faithful is tree(t,,n,c)
    // (GT(xTrace, 4) TDump(r))
    Push(r);
    nreturn;
}
