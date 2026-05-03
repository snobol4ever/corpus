// ShiftReduce.sc — Snocone port of ShiftReduce.inc.
// Depends: stack.sc (Push/Pop/Top/InitStack), tree.sc (struct tree).
// Shift(t,v) -- push a tree of type t with value v onto the stack.
// Reduce(t,n) -- pop n trees and push a parent tree of type t.
// Style follows the validated Snocone dialect from corpus/programs/include-sc/.
// Note: leading-whitespace stripping omitted — callers pass clean token values.

function Shift(t, v) {
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

function Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (IDENT(DATATYPE(t), 'EXPRESSION')) {
        if (~(t = EVAL(t))) { nreturn; }
    }
    if (IDENT(DATATYPE(n), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; }
    }
    if (GE(n, 1)) {
        c = ARRAY('1:'   n);
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
