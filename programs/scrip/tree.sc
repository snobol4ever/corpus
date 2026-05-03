// tree.sc — faithful Snocone port of beauty/tree.inc.
// tree: a general purpose tree datatype
//    t: type of tree (unique identification)
//    v: value of tree (for leaf node)
//    n: number of children (for internal node)
//    c: array of children trees
// Append(x,y)       -- insert y tree as the rightmost child of x tree
// Prepend(x,y)      -- insert y tree as the leftmost child of x tree
// Insert(x,y,place) -- insert y tree as child of x tree at the designated place
// Remove(x,place)   -- remove the child tree at the designated place

struct tree { t, v, n, c }

function Append(x, y) {
    Append = Insert(x, y, n(x) + 1);
    return;
}

function Prepend(x, y) {
    Prepend = Insert(x, y, 1);
    return;
}

function Insert(x, y, place, c, i) {
    Insert = x;
    c = ARRAY('1:' n(x) + 1);
    i = 0;
    while (i = LT(i, place - 1) i + 1) {
        c[i] = c(x)[i];
    }
    c[i + 1] = y;
    while (i = LT(i, n(x)) i + 1) {
        c[i + 1] = c(x)[i];
    }
    n(x) = n(x) + 1;
    c(x) = c;
    return;
}

function Remove(x, place, c, i) {
    Remove = x;
    c = GT(n(x) - 1, 0) ARRAY('1:' n(x) - 1);
    i = 0;
    while (i = LT(i, place - 1) i + 1) {
        c[i] = c(x)[i];
    }
    i = i + 1;
    while (i = LT(i, n(x)) i + 1) {
        c[i - 1] = c(x)[i];
    }
    n(x) = n(x) - 1;
    c(x) = c;
    return;
}

// Tree(t, v, n, c1..c8) — variadic constructor, counts non-NULL c-args.
function Tree(t, v, n, c1, c2, c3, c4, c5, c6, c7, c8, i, nc) {
    nc = 8;
    while (nc = GT(nc, 0) IDENT($('c' nc)) nc - 1) {
        ;
    }
    Tree = tree(t, v,
                (GT(nc, 0) nc, NULL),
                (GT(nc, 0) ARRAY('1:' nc), NULL));
    i = 0;
    while (i = LT(i, nc) i + 1) {
        c(Tree)[i] = $('c' i);
    }
    return;
}

function Equal(x, y, i) {
    if (epsilon *IDENT(x) *IDENT(y)) { return; }
    if (~(epsilon *IDENT(x) | *IDENT(y))) { freturn; }
    if (~IDENT(t(x), t(y))) { freturn; }
    if (~IDENT(v(x), v(y))) { freturn; }
    if (~IDENT(n(x), n(y))) { freturn; }
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        if (~Equal(c(x)[i], c(y)[i])) { freturn; }
    }
    return;
}

function Equiv(x, y, i) {
    if (~(t(x) ? (POS(0) t(y) RPOS(0)))) { freturn; }
    if (~(v(x) ? (POS(0) v(y) RPOS(0)))) { freturn; }
    if (~(n(x) ? (POS(0) n(y) RPOS(0)))) { freturn; }
    i = 0;
    while (1) {
        i = i + 1;
        if (~(DIFFER(c(y)) c(y)[i])) { return; }
        if (~Equiv(c(x)[i], c(y)[i])) { freturn; }
    }
}

function Find(xn, y, f, i) {
    if (~DIFFER($xn)) { return; }
    if (Equiv($xn, y) APPLY(f, xn)) { return; }
    i = 0;
    while (i = LT(i, n($xn)) i + 1) {
        Find(.c($xn)[i], y, f);
    }
    return;
}

// Visit(x, fnc) -- pre-order traversal, apply fnc at each node.
function Visit(x, fnc, i) {
    if (~APPLY(fnc, x)) { return; }
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        Visit(c(x)[i], fnc);
    }
    return;
}
