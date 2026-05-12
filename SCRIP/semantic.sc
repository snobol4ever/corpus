
OPSYN('~', 'shift', 2);
OPSYN('&', 'reduce', 2);

function _qtag(t) {
    if (SIZE(t) == 0)                    { _qtag = "''"; return; }
    if (IDENT(SUBSTR(t, 1, 1), "'"))     { _qtag = t;    return; }   // already 'tag'
    if (IDENT(SUBSTR(t, 1, 1), '"'))     { _qtag = t;    return; }
    _qtag = SQize(t);
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


function foldop(t) {
    foldop = EVAL("epsilon . *FoldOp(" _qtag(t) ")");
    return;
}

function pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}

function nPush() { nPush = epsilon . *PushCounter(); return; }
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


function reduce_prim(tag) {
    reduce_prim = EVAL("epsilon . *ReducePrim(" tag ")");
    return;
}


function reduce_call() {
    reduce_call = epsilon . *ReduceCall();
    return;
}
