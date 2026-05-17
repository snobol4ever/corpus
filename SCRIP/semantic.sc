OPSYN('~', 'shift', 2);
OPSYN('&', 'reduce', 2);
/* ==================================================================================================================== */
/* qtag wraps a tag-name (e.g. 'TT_VAR') in the outer quotes needed by EVAL.
 *
 * Fast-paths (in order):
 *   1. empty             -> "''"
 *   2. already 'quoted'  -> return as-is
 *   3. already "quoted"  -> return as-is
 *   4. identifier-shape (no embedded `'`)  -> wrap in single quotes
 *
 * Only when the tag actually carries an embedded `'` do we fall through
 * to SQize, which knows how to escape.  This matters in practice because
 * every parser-side use of `shift(*X, 'TT_FOO')` and
 * `reduce('TT_FOO', n)` lands in fast-path 4: their tag strings are
 * identifier-shaped, never contain embedded quotes, so SQize is overkill.
 *
 * SL-2 follow-on (2026-05-17): added fast-path 4 to unblock all six
 * SCRIP-hosted parsers, which were hanging at load time when SQize
 * looped on identifier inputs.  The pure SQize bug is separate (tracked
 * as SL-3); qtag's fast-path avoids triggering it for the common case.
 *
 * The apos-check uses REPLACE rather than pattern matching because
 * SCRIP's runtime has a separate bug where BREAK("'") / ARB "'" /
 * ARB ANY("'") all spuriously succeed on inputs that contain no
 * apostrophe — a SCRIP-runtime issue tracked as SL-4.  REPLACE works. */
function qtag(t) {
    if (SIZE(t) == 0)                    { qtag = "''"; return; }
    if (IDENT(SUBSTR(t, 1, 1), "'"))     { qtag = t;    return; }   // already 'tag'
    if (IDENT(SUBSTR(t, 1, 1), '"'))     { qtag = t;    return; }   // already "tag"
    if (IDENT(REPLACE(t, "'", ""), t))   { qtag = "'" t "'"; return; }   // identifier-shape
    qtag = SQize(t);
    return;
}
/* ==================================================================================================================== */
function shift(p, t) {
    shift = EVAL("p . thx . *Shift(" qtag(t) ", thx)");
    return;
}
/* ==================================================================================================================== */
function reduce(t, n) {
    reduce = EVAL("epsilon . *Reduce(" qtag(t) ", " n ")");
    return;
}
/* ==================================================================================================================== */
function foldop(t) {
    foldop = EVAL("epsilon . *FoldOp(" qtag(t) ")");
    return;
}
/* ==================================================================================================================== */
function pop() {
    pop = epsilon . *Pop(.dummy);
    return;
}
/* ==================================================================================================================== */
function nPush() { nPush = epsilon . *PushCounter(); return; }
/* ==================================================================================================================== */
function PushNameFrom(varname) {
    PushName($varname);
    PushNameFrom = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function nPushName(varname) { nPushName = EVAL("epsilon . thx . *PushNameFrom('" varname "')"); return; }
/* ==================================================================================================================== */
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
/* ==================================================================================================================== */
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
/* ==================================================================================================================== */
function nTop()  { nTop  = TopCounter();             return; }
/* ==================================================================================================================== */
function nPop()  { nPop  = epsilon . *PopCounter();  return; }
/* ==================================================================================================================== */
function reduce_opsyn(op, n) {
    reduce_opsyn = EVAL("epsilon . *ReduceOpsyn('" op "', " n ")");
    return;
}
/* ==================================================================================================================== */
function reduce_prim(tag) {
    reduce_prim = EVAL("epsilon . *ReducePrim(" tag ")");
    return;
}
/* ==================================================================================================================== */
function reduce_call() {
    reduce_call = epsilon . *ReduceCall();
    return;
}
