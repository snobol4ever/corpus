// semantic.sc — Snocone port of semantic.inc
//
// Semantic building routines. These functions are called while BUILDING
// the parser patterns, not during pattern matching.
//
// Snocone has no OPSYN, so the canonical SNOBOL4
//     OPSYN('~', 'shift', 2)
//     OPSYN('&', 'reduce', 2)
// cannot be expressed here. Callers in beauty.sc must use the function
// forms shift(p, t) and reduce(t, n) directly instead of the operator
// forms 'pat ~ name' and '"name" & expr'.
//
// epsilon is assumed pre-defined globally (see beauty.sc / global.sc).

procedure shift(p, t,   omega) {
    // Canonical: EVAL sees the literal name 'p', resolves it dynamically to
    // the pattern value in this function's scope — same as SNOBOL4's
    //   shift_ shift = EVAL("p . thx . *Shift('" t "', thx)")
    omega = "p . thx . *Shift('" && t && "', thx)";
    shift = EVAL(omega);
    return;
}

procedure reduce(t, n,   omega) {
    // Canonical: EVAL sees 'tag' as quoted string literal, n as SNOBOL4 expression.
    // t is always a string tag name (e.g. '=', 'ExprList').
    // n is either an integer literal (2, 1, 7) or a SNOBOL4 expression
    // (e.g. '*(GT(nTop(), 1) nTop())') which EVAL evaluates dynamically.
    omega = "epsilon . *Reduce('" && t && "', " && n && ")";
    reduce = EVAL(omega);
    return;
}

procedure pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}

procedure nPush() {
    nPush = epsilon . *PushCounter();
    return;
}

procedure nInc() {
    nInc = epsilon . *IncCounter();
    return;
}

procedure nDec() {
    nDec = epsilon . *DecCounter();
    return;
}

procedure nTop() {
    nTop = TopCounter();
    return;
}

procedure nPop() {
    nPop = epsilon . *PopCounter();
    return;
}
