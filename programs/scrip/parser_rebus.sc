// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// Style: per GOAL-PARSER-REBUS.md ## Style Guidelines for parser_*.sc.
// note: Snocone runtime does not yet parse infix ~/&; using
//       function-call forms shift()/reduce() instead.  See
//       GOAL-PARSER-REBUS.md session #3 watermark Issue 3.
// note: driver locals Src/Line follow beauty.sc convention; cross-PARSER
//       convention drift, see GOAL-PARSER-REBUS.md G10 deferred note.
//
// Rung scope (this file): RB-0 atoms only.  Higher rungs (assign, if/while,
// function/record, match, alt) extend incrementally per the rung ladder.

&FULLSCAN = 1;

//===================================================================================================================
//  Lex tokens — atomic-token classifiers with no whitespace policy of their own.
//===================================================================================================================

White   = SPAN(' ' tab);
Gray    = *White | epsilon;

Id      = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_') | epsilon);
Integer = SPAN(digits);

DQ_str  = '"' BREAK('"') . rbStrBody '"';
SQ_str  = "'" BREAK("'") . rbStrBody "'";
String  = *DQ_str | *SQ_str;

//-------------------------------------------------------------------------------------------------------------------
//  Operator and keyword wrappers — beauty.sno § 50-58 + Rebus keywords.
//  Whitespace policy lives here, never in grammar productions.
//-------------------------------------------------------------------------------------------------------------------

$'('  = '('  *Gray;     $')'  = *Gray ')';
$','  = *Gray ',' *Gray;
$':=' = *Gray ':=' *Gray;
$'?'  = *Gray '?'  *Gray;
$'|'  = *Gray '|'  *Gray;
$'+'  = *Gray '+'  *Gray;
$'-'  = *Gray '-'  *Gray;
$'*'  = *Gray '*'  *Gray;
$'/'  = *Gray '/'  *Gray;

$'function' = 'function' *White;
$'end'      = *Gray 'end' *Gray;
$'record'   = 'record' *White;
$'if'       = 'if' *White;
$'then'     = *White 'then' *White;
$'while'    = 'while' *White;
$'do'       = *White 'do' *White;

//===================================================================================================================
//  Tag string constants — bare form; semantic.sc _qtag auto-quotes.
//===================================================================================================================

E_VAR        = 'E_VAR';
E_ILIT       = 'E_ILIT';
E_QLIT       = 'E_QLIT';
Parse        = 'Parse';
RB_FUNC_DECL = 'RB_FUNC_DECL';
RB_REC_DECL  = 'RB_REC_DECL';
RB_PARAMS    = 'RB_PARAMS';
RB_FIELDS    = 'RB_FIELDS';
RB_BODY      = 'RB_BODY';

nTop_count   = 'nTop()';

//===================================================================================================================
//  Match-time helpers.  Called only via build-time wrappers that return
//  pattern fragments — never invoked literally as `epsilon . *fn()` in a
//  grammar production.
//===================================================================================================================

function rb_push_qlit() {
    rb_push_qlit = .dummy;
    Push(tree(E_QLIT, rbStrBody));
    nreturn;
}

//-------------------------------------------------------------------------------------------------------------------
//  Build-time wrappers — return pattern fragments.
//-------------------------------------------------------------------------------------------------------------------

function RB_push_qlit() {
    RB_push_qlit = epsilon . *rb_push_qlit();
    return;
}

//===================================================================================================================
//  Grammar — atom level only (RB-0 scope).
//===================================================================================================================

atom = *String RB_push_qlit() | shift(*Integer, E_ILIT) | shift(*Id, E_VAR);

stmt = *Gray *atom *Gray nl;

//  func_body — n-ary fold over body stmts.  ARBNO backtracks cleanly when
//  the trailing 'end' nl in function_decl can't match — the last stmt that
//  consumed 'end' as a bare Id is rolled back, the body count decrements,
//  and the outer 'end' nl matches.  Verified 2026-05-04 via /tmp/test_basic.sc.

func_body = nPush() ARBNO(nInc() *stmt) reduce(RB_BODY, nTop_count) nPop();

//-------------------------------------------------------------------------------------------------------------------
//  Parameter / field list — both fold into n-ary lists; empty list folds to (TAG) with nTop()=0.
//-------------------------------------------------------------------------------------------------------------------

X_params  = nInc() shift(*Id, E_VAR) ($',' *X_params | epsilon);
opt_params = nPush() (*X_params | epsilon) reduce(RB_PARAMS, nTop_count) nPop();

X_fields  = nInc() shift(*Id, E_VAR) ($',' *X_fields | epsilon);
opt_fields = nPush() (*X_fields | epsilon) reduce(RB_FIELDS, nTop_count) nPop();

//-------------------------------------------------------------------------------------------------------------------
//  Top-level decls.
//-------------------------------------------------------------------------------------------------------------------

function_decl =
    $'function' shift(*Id, E_VAR) $'(' *opt_params $')' *Gray nl
    *func_body
    $'end' nl
    reduce(RB_FUNC_DECL, 3);

record_decl =
    $'record' shift(*Id, E_VAR) $'(' *opt_fields $')' *Gray nl
    reduce(RB_REC_DECL, 2);

func_cmd = nInc() *function_decl;
rec_cmd  = nInc() *record_decl;
blank    = nl;

Command  = *func_cmd | *rec_cmd | *blank;

Compiland = nPush() ARBNO(Command) reduce(Parse, nTop_count) nPop();

//===================================================================================================================
//  Post-parse lowering — walks surface tree and emits canonical STMT TDump lines.
//===================================================================================================================

rbLabelN = 0;

function rb_new_label() {
    rbLabelN = rbLabelN + 1;
    rb_new_label = 'rb_' rbLabelN;
    return;
}

function emit_subj(s) {
    TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, s)));
    return;
}

function emit_go(tgt) {
    TDump(Tree('STMT', '', 1, Tree(':go', tgt)));
    return;
}

function emit_lbl(lbl) {
    TDump(Tree('STMT', '', 1, Tree(':lbl', lbl)));
    return;
}

function lower_atom(x, k) {
    k = t(x);
    if (IDENT(k, 'E_VAR'))  lower_atom = tree(E_VAR, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'E_ILIT')) lower_atom = x;
    else if (IDENT(k, 'E_QLIT')) lower_atom = x;
    else lower_atom = x;
    return;
}

function lower_stmt(x) {
    emit_subj(lower_atom(x));
    return;
}

function lower_function_decl(x, nm, pm, bd, fname, pstr, i, lbl) {
    nm    = c(x)[1];
    pm    = c(x)[2];
    bd    = c(x)[3];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    pstr  = '';
    i = 0;
    while (i = LT(i, n(pm)) i + 1)
        pstr = pstr (GT(i, 1) ',', '') REPLACE(v(c(pm)[i]), &LCASE, &UCASE);
    emit_subj(Tree('E_FNC', 'DEFINE', 1, tree(E_QLIT, fname '(' pstr ')')));
    lbl = rb_new_label();
    emit_go(lbl);
    emit_lbl(fname);
    i = 0;
    while (i = LT(i, n(bd)) i + 1)
        lower_stmt(c(bd)[i]);
    emit_go('RETURN');
    emit_lbl(lbl);
    emit_subj(tree('E_FNC', fname));
    return;
}

function lower_record_decl(x, nm, fd, fname, fstr, i) {
    nm    = c(x)[1];
    fd    = c(x)[2];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    fstr  = '';
    i = 0;
    while (i = LT(i, n(fd)) i + 1)
        fstr = fstr (GT(i, 1) ',', '') REPLACE(v(c(fd)[i]), &LCASE, &UCASE);
    emit_subj(Tree('E_FNC', 'DATA', 1, tree(E_QLIT, fname '(' fstr ')')));
    return;
}

function lower_decl(x, k) {
    k = t(x);
    if (IDENT(k, 'RB_FUNC_DECL')) lower_function_decl(x);
    else if (IDENT(k, 'RB_REC_DECL'))  lower_record_decl(x);
    return;
}

//===================================================================================================================
//  Driver — D1: structured control only; no goto.
//===================================================================================================================

InitCounter();
InitStack();

Src = '';
while (Line = INPUT) Src = Src Line nl;

if (Src ? Compiland) {
    parseRoot = Pop();
    if (DIFFER(parseRoot)) {
        i = 0;
        while (i = LT(i, n(parseRoot)) i + 1) lower_decl(c(parseRoot)[i]);
    }
} else {
    OUTPUT = 'Parse Error';
}
