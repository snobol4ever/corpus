
OPSYN('~', 'shift', 2);
OPSYN('&', 'reduce', 2);

// _qtag
function _qtag(t) {
    if (SIZE(t) == 0)                    { _qtag = "''"; return; }
    if (IDENT(SUBSTR(t, 1, 1), "'"))     { _qtag = t;    return; }   // already 'tag'
    if (IDENT(SUBSTR(t, 1, 1), '"'))     { _qtag = t;    return; }
    _qtag = SQize(t);
    return;
}

// shift
function shift(p, t) {
    shift = EVAL("p . thx . *Shift(" _qtag(t) ", thx)");
    return;
}

// reduce
function reduce(t, n) {
    reduce = EVAL("epsilon . *Reduce(" _qtag(t) ", " n ")");
    return;
}


// foldop
function foldop(t) {
    foldop = EVAL("epsilon . *FoldOp(" _qtag(t) ")");
    return;
}

// pop
function pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}

// nPush
function nPush() { nPush = epsilon . *PushCounter(); return; }
// PushNameFrom
function PushNameFrom(varname) {
    PushName($varname);
    PushNameFrom = .dummy;
    nreturn;
}
// nPushName
function nPushName(varname) { nPushName = EVAL("epsilon . thx . *PushNameFrom('" varname "')"); return; }
// nInc
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
// nDec
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
// nTop
function nTop()  { nTop  = TopCounter();             return; }
// nPop
function nPop()  { nPop  = epsilon . *PopCounter();  return; }

// reduce_opsyn
function reduce_opsyn(op, n) {
    reduce_opsyn = EVAL("epsilon . *ReduceOpsyn('" op "', " n ")");
    return;
}


// reduce_prim
function reduce_prim(tag) {
    reduce_prim = EVAL("epsilon . *ReducePrim(" tag ")");
    return;
}


// reduce_call
function reduce_call() {
    reduce_call = epsilon . *ReduceCall();
    return;
}
