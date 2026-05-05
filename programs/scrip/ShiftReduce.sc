// ShiftReduce.sc — faithful Snocone port of beauty/ShiftReduce.inc.
// Shift(t,v) -- push a tree of type t with value v onto the stack
//
// Reduce(t, n) -- pop n trees from the stack and push a tree of type t that contains these
// n trees as children in the order they were stacked. If either the t or n parameters are
// unevaluated expressions they will be evaluated on-the-fly here within this routine. If the
// evaluation of an unevaluated expression fails then there is no reduction of the stack.

function Shift(t, v, s) {
    v ? (POS(0) whitespace) = ;
    s = tree(t, v);
    Push(s);
    OUTPUT = GT(xTrace, 3) 'Shift(' t ', ' v ')';
    // OUTPUT = GT(xTrace, 4) ' = ' TLump(s, 1024);
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
    c = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) {
        c[i] = Pop();
    }
    empty = ;                              // tree(t,, n, c) — middle slot empty
    r = tree(t, empty, n, c);
    // (GT(xTrace, 4) TDump(r))
    Push(r);
    nreturn;
}

// FoldOp(t) -- iterative left-fold for binary operators that produce flat n-ary
// trees on same-tag chains.  Pop rhs, pop lhs.  If t(lhs) == t, append rhs as
// another child of lhs (flatten same-tag chain into n-ary).  Otherwise build
// fresh binary tree(t, '', 2, lhs, rhs) (mixed-op or first chain element).
// Push the result.  Mirrors C-frontend expr_binary_flatten() shape exactly.
//
// Used by `Expr6 = *Expr7 ARBNO(Expr6tail)` style left-recursive iterative
// grammar tiers where the parser tier produces flat n-ary at parse time
// instead of right-recursive nested binary that needs a post-parse rewrite
// pass to flatten.

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

// ReduceCall() -- reads TopCounter() internally at match time (not definition time).
// Pops n args from stack in order, pops fname E_VAR node, pushes E_FNC tree.
// Called via *ReduceCall (no parens) inside a pattern — fires at match time.

function ReduceCall(n, args, i, fname, r) {
    ReduceCall = .dummy;
    n = TopCounter();
    args = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) { args[i] = Pop(); }
    fname = v(Pop());
    r = tree('E_FNC', fname, n, args);
    Push(r);
    nreturn;
}

// ReducePrim(tag) -- reads TopCounter() internally at match time.
// Pops n args from stack, pushes tree(tag, '', n, args).
// tag is a pre-quoted string e.g. 'E_LEN'; evaluated via EVAL if EXPRESSION.

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

// ReduceOpsyn(op, n) -- like Reduce but stores op as the value of the E_OPSYN node.
// Used for & ~ @ opsyn binary operators where oracle emits (E_OPSYN op arg1 arg2).

function ReduceOpsyn(op, n, c, i, r) {
    ReduceOpsyn = .dummy;
    if (IDENT(DATATYPE(n), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; }
    }
    c = GE(n, 1) ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) { c[i] = Pop(); }
    r = tree('E_OPSYN', op, n, c);
    Push(r);
    nreturn;
}
