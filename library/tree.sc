// tree.sc — Snocone port of tree.inc
// General purpose tree datatype.
// Fields: t=type, v=value, n=nchildren, c=children array.
// Convenience constructors: MakeLeaf(type,val), MakeNode(type,val,n,kids).

struct tree { t, v, n, c }

function MakeLeaf(type, val)            { MakeLeaf = tree(type, val, 0, ''); return; }
function MakeNode(type, val, nc, kids)  { MakeNode = tree(type, val, nc, kids); return; }
function Append(x, y)                   { Append = Insert(x, y, n(x) + 1); return; }
function Prepend(x, y)                  { Prepend = Insert(x, y, 1); return; }

function Insert(x, y, place, c, i) {
    Insert = x;
    c = ARRAY('1:'   (n(x) + 1));
    i = 0;
    while (LT(i, place - 1)) {
        i = i + 1;
        c[i] = c(x)[i];
    }
    c[i + 1] = y;
    while (LT(i, n(x))) {
        i = i + 1;
        c[i + 1] = c(x)[i];
    }
    n(x) = n(x) + 1;
    c(x) = c;
    return;
}

function Remove(x, place, c, i) {
    Remove = x;
    if (GT(n(x) - 1, 0)) {
        c = ARRAY('1:'   (n(x) - 1));
    } else c = '';
    i = 0;
    while (LT(i, place - 1)) {
        i = i + 1;
        c[i] = c(x)[i];
    }
    i = i + 1;
    while (LT(i, n(x))) {
        i = i + 1;
        c[i - 1] = c(x)[i];
    }
    n(x) = n(x) - 1;
    c(x) = c;
    return;
}

function Equal(x, y, i) {
    // Both null → equal
    if (IDENT(x, '')   IDENT(y, '')) { return; }
    // One null → not equal
    if ((IDENT(x, ''), IDENT(y, ''))) { freturn; }
    if (~IDENT(t(x), t(y))) { freturn; }
    if (~IDENT(v(x), v(y))) { freturn; }
    if (~IDENT(n(x), n(y))) { freturn; }
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        if (~Equal(c(x)[i], c(y)[i])) { freturn; }
    }
    return;
}

function Visit(x, fnc, i) {
    if (~APPLY(fnc, x)) { return; }
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        Visit(c(x)[i], fnc);
    }
    return;
}
