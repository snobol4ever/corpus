// semantic.sc — Snocone port of semantic.inc.
// Depends: stack.sc, counter.sc, ShiftReduce.sc.
// Semantic action patterns called at parser-construction time (not match time).
// Provides the Compiland spine: nPush() ARBNO(*Command) reduce('Parse','nTop()') nPop()

epsilon = '';

// OPSYN deferred to PARSER-SN-INFRA-10. Until then, drivers call shift(p,t) and
// reduce(t,n) directly (matches beauty.sc lines 81-99 which use the function form).
// OPSYN('~', 'shift',  2);   // TODO SB-6.E.7-B — Snocone infix-operator OPSYN runtime
// OPSYN('&', 'reduce', 2);   // TODO SB-6.E.7-B — Snocone infix-operator OPSYN runtime

function shift(p, t) {
    shift = EVAL("p . thx . *Shift('" t "', thx)");
    return;
}

function reduce(t, n) {
    reduce = EVAL("epsilon . *Reduce(" t ", " n ")");
    return;
}

function pop() {
    pop = epsilon . *Pop('');
    return;
}

function nPush() { nPush = epsilon . *PushCounter(); return; }
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
function nTop()  { nTop  = TopCounter(); return; }
function nPop()  { nPop  = epsilon . *PopCounter();  return; }
