// ShiftReduce.sc — Snocone port of ShiftReduce.inc
// Depends: stack.sc (Push/Pop/Top/InitStack), tree.sc (struct tree, MakeLeaf/MakeNode)
// xTrace must be set by caller (0 = no debug output).
// Note: EVAL/EXPRESSION handling omitted — not needed for non-dynamic callers.
// Note: 'v POS(0) whitespace =' (strip leading ws) omitted — callers pass clean values.

procedure Shift(t, v) {
    _s = tree(t, v, 0, '');
    Push(_s);
    if (IDENT(v, '')) {
        Shift = .value(_s);
        nreturn;
    } else {
        Shift = .dummy;
        nreturn;
    }
}

procedure Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (GE(n, 1)) {
        c = ARRAY('1:' && n);
    } else {
        c = '';
    }
    i = n + 1;
    while (GT(i, 1)) {
        i = i - 1;
        c[i] = Pop('');
    }
    r = tree(t, '', n, c);
    Push(r);
    nreturn;
}
