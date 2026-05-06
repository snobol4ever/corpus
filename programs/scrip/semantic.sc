// semantic.sc — faithful Snocone port of beauty/semantic.inc.
// Semantic building routines. These functions are called while building the parser
// patterns, not during pattern matching.

OPSYN('~', 'shift', 2);
OPSYN('&', 'reduce', 2);

// PARSER-SN-INFRA-11c fix (2026-05-03): auto-quote bare tag args.
// Callers may pass `reduce('P', 1)` (bare) or `reduce("'P'", 1)` (pre-quoted).
// We detect the pre-quoted form by checking the first char (single or double
// quote) and re-emit verbatim; bare tags get wrapped via SQize (qize.sc),
// which produces a complete quoted literal including outer quotes.
// Same hardening on `shift`'s tag arg.
function _qtag(t) {
    if (SIZE(t) == 0)                    { _qtag = "''"; return; }
    if (IDENT(SUBSTR(t, 1, 1), "'"))     { _qtag = t;    return; }   // already 'tag'
    if (IDENT(SUBSTR(t, 1, 1), '"'))     { _qtag = t;    return; }   // already "tag"
    _qtag = SQize(t);                                                // produces 'tag'
    return;
}

function shift(p, t) {
    shift = EVAL("p . thx . *Shift(" _qtag(t) ", thx)");
    return;
}

function reduce(t, n) {
    reduce = EVAL("epsilon . *Reduce(" _qtag(t) ", " n ")");
    return;
}

// foldop(t) -- pattern-builder for iterative left-fold flatten-or-binary.
// Pairs with FoldOp(t) in ShiftReduce.sc.  Used inside Expr_n ARBNO(Expr_n_tail)
// grammar shapes to produce flat n-ary same-tag chains and binary mixed-op
// chains, mirroring the C frontend's expr_binary_flatten() shape.

function foldop(t) {
    foldop = EVAL("epsilon . *FoldOp(" _qtag(t) ")");
    return;
}

function pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}

function nPush() { nPush = epsilon . *PushCounter(); return; }
// nPushName: push the functor name onto the name-stack at the same time as nPush.
// Use: Atom . p_name nPushN('p_name') args ... nPop() Reduce_compound_ns
function PushNameFrom(varname) {
    PushName($varname);
    PushNameFrom = .dummy;
    nreturn;
}
function nPushName(varname) { nPushName = EVAL("epsilon . thx . *PushNameFrom('" varname "')"); return; }
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
function nTop()  { nTop  = TopCounter();             return; }
function nPop()  { nPop  = epsilon . *PopCounter();  return; }

function reduce_opsyn(op, n) {
    reduce_opsyn = EVAL("epsilon . *ReduceOpsyn('" op "', " n ")");
    return;
}

// reduce_prim(tag) -- pattern-builder that fires ReducePrim(tag) at match time.
// tag is a pre-quoted string constant (e.g. E_LEN = "'E_LEN'").

function reduce_prim(tag) {
    reduce_prim = EVAL("epsilon . *ReducePrim(" tag ")");
    return;
}

// reduce_call() -- pattern-builder that fires ReduceCall() at match time.
// ReduceCall reads TopCounter() internally — no arg needed.

function reduce_call() {
    reduce_call = epsilon . *ReduceCall();
    return;
}
