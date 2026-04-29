// tree.sc — Snocone port of tree.inc
//
// Canonical reference: corpus/programs/snobol4/demo/beauty/tree.inc
// Tree datatype with t/v/n/c fields and a 9-procedure ADT:
//   Tree(t,v,c1..c8)        — variadic constructor (up to 8 children)
//   Append(x,y)             — y becomes rightmost child of x
//   Prepend(x,y)            — y becomes leftmost child of x
//   Insert(x,y,place)       — y becomes child at position `place`
//   Remove(x,place)         — drop the child at position `place`
//   Equal(x,y)              — strict (recursive) tree equality, IDENT-based
//   Equiv(x,y)              — relaxed equality (POS/RPOS substring match)
//   Find(xn,y,f)            — search subtree rooted at .xn, APPLY f at hits
//   Visit(x,fnc)            — preorder traversal, APPLY fnc at each node
//
// Per Lon (session #66): port every procedure regardless of whether the
// gate currently exercises it.  These are first-class canonical procedures.
//
// beauty.sc declares its own bVisit (separate from this Visit) so it can be
// kept inline; this Visit is the library version intended for general use
// when doParseTree/tree-mode flags select it.

struct tree { t, v, n, c }

// --------------------------------------------------------------------------- Insert / Append / Prepend / Remove

procedure Append(x, y) {
    Append = Insert(x, y, n(x) + 1);
    return;
}

procedure Prepend(x, y) {
    Prepend = Insert(x, y, 1);
    return;
}

// Insert(x, y, place) — return x with y inserted as the `place`-th child.
// Allocates a new c-array sized n(x)+1, copies the old children up to
// position place-1, places y at position place, then copies the rest.
// `c` and `i` are canonical locals.
procedure Insert(x, y, place,   c, i) {
    Insert = x;
    c = ARRAY('1:' && (n(x) + 1));
    for (i = 1; LT(i, place); i = i + 1) { c[i] = c(x)[i]; }
    c[place] = y;
    for (i = place; LE(i, n(x)); i = i + 1) { c[i + 1] = c(x)[i]; }
    n(x) = n(x) + 1;
    c(x) = c;
    return;
}

// Remove(x, place) — return x with the `place`-th child removed.
// If x had only one child, the new c-array is null (canonical guards on
// GT(n(x)-1, 0) — when no children remain, c becomes null).
procedure Remove(x, place,   c, i) {
    Remove = x;
    if (GT(n(x) - 1, 0)) { c = ARRAY('1:' && (n(x) - 1)); }
    else                 { c = ''; }
    for (i = 1; LT(i, place); i = i + 1) { c[i]     = c(x)[i]; }
    for (i = place + 1; LE(i, n(x)); i = i + 1) { c[i - 1] = c(x)[i]; }
    n(x) = n(x) - 1;
    c(x) = c;
    return;
}

// --------------------------------------------------------------------------- Tree(t,v,c1..c8)
// Variadic constructor.  Walks c8..c1, decrements nc while the slot is null,
// to find the actual child count.  Then builds tree(t, v, nc, c-array).
//
// Canonical uses $('c' nc) for indirect read; in Snocone this is
// $('c' && nc).  The unary $ is read-by-name; combined with concat we get
// the equivalent of dynamic variable lookup.
procedure Tree(t, v, n, c1, c2, c3, c4, c5, c6, c7, c8,   i, nc) {
    nc = 8;
    while (GT(nc, 0)) {
        if (~IDENT($('c' && nc))) { break; }
        nc = nc - 1;
    }
    if (GT(nc, 0)) {
        Tree = tree(t, v, nc, ARRAY('1:' && nc));
    } else {
        Tree = tree(t, v, '', '');
    }
    for (i = 1; LE(i, nc); i = i + 1) {
        c(Tree)[i] = $('c' && i);
    }
    return;
}

// --------------------------------------------------------------------------- Equal — strict tree equality
// epsilon *IDENT(x) *IDENT(y) succeeds iff both x and y are null;
// epsilon *IDENT(x) | *IDENT(y) succeeds iff either is null.
// In Snocone we express both branches as explicit IDENT calls.
procedure Equal(x, y,   i) {
    if (IDENT(x) && IDENT(y))               { return;  }
    if (IDENT(x) || IDENT(y))               { freturn; }
    if (~IDENT(t(x), t(y)))                 { freturn; }
    if (~IDENT(v(x), v(y)))                 { freturn; }
    if (~IDENT(n(x), n(y)))                 { freturn; }
    for (i = 1; LE(i, n(x)); i = i + 1) {
        if (~Equal(c(x)[i], c(y)[i]))       { freturn; }
    }
    return;
}

// --------------------------------------------------------------------------- Equiv — relaxed (substring) equality
// Canonical uses POS(0) ... RPOS(0) anchored matches as the equivalence
// test on the t/v/n string fields.  In Snocone we use IDENT (full-string
// equality on the field values).  Note: canonical does NOT recurse on null
// c(y) — the (DIFFER(c(y)) c(y)[i]) :F(RETURN) clause exits early if y
// has no children, treating x's extra structure as compatible.
procedure Equiv(x, y,   i) {
    if (~IDENT(t(x), t(y))) { freturn; }
    if (~IDENT(v(x), v(y))) { freturn; }
    if (~IDENT(n(x), n(y))) { freturn; }
    for (i = 1; LE(i, n(x)); i = i + 1) {
        if (~DIFFER(c(y))) { return; }
        if (~Equiv(c(x)[i], c(y)[i])) { freturn; }
    }
    return;
}

// --------------------------------------------------------------------------- Find(xn, y, f)
// xn is a NAME (the canonical $xn dereference returns the tree).
// Recursively descends; on each node where Equiv($xn, y) succeeds, calls
// APPLY(f, xn) to let the user act on the matching name.
// Returns success on first hit (i.e. APPLY(f, xn) success) or after the
// full search — canonical's :S(RETURN) on Equiv-AND-APPLY makes the first
// matching APPLY-success short-circuit; otherwise we recurse.
procedure Find(xn, y, f,   i) {
    if (~DIFFER($xn)) { return; }
    if (Equiv($xn, y) && APPLY(f, xn)) { return; }
    for (i = 1; LE(i, n($xn)); i = i + 1) {
        Find(.c($xn)[i], y, f);
    }
    return;
}

// --------------------------------------------------------------------------- Visit(x, fnc) — preorder traversal
// APPLY(fnc, x) at each node.  If APPLY fails, stop descending (canonical
// :F(RETURN)).  Otherwise recurse into all children in order.
procedure Visit(x, fnc,   i) {
    if (~APPLY(fnc, x)) { return; }
    for (i = 1; LE(i, n(x)); i = i + 1) {
        Visit(c(x)[i], fnc);
    }
    return;
}
