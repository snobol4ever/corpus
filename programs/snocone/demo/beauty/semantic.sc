//---------------------------------------------------------------------------------------------------
// Semantic building routines. These functions are called while building the parser
// patterns, not during pattern matching.
//---------------------------------------------------------------------------------------------------
OPSYN('~', 'shift', 2);   // TODO SB-6.E.7-B — Snocone infix-operator OPSYN runtime
OPSYN('&', 'reduce', 2);  // TODO SB-6.E.7-B — Snocone infix-operator OPSYN runtime
//---------------------------------------------------------------------------------------------------
function shift(p, t) {
    shift = EVAL("p . thx . *Shift('" t "', thx)");
    return;
}
//---------------------------------------------------------------------------------------------------
function reduce(t, n) {
    reduce = EVAL("epsilon . *Reduce(" t ", " n ")");
    return;
}
//---------------------------------------------------------------------------------------------------
function pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}
//---------------------------------------------------------------------------------------------------
function nPush() {
    nPush = epsilon . *PushCounter();
    return;
}
//---------------------------------------------------------------------------------------------------
function nInc() {
    nInc = epsilon . *IncCounter();
    return;
}
//---------------------------------------------------------------------------------------------------
function nDec() {
    nDec = epsilon . *DecCounter();
    return;
}
//---------------------------------------------------------------------------------------------------
function nTop() {
    nTop = TopCounter();
    return;
}
//---------------------------------------------------------------------------------------------------
function nPop() {
    nPop = epsilon . *PopCounter();
    return;
}
