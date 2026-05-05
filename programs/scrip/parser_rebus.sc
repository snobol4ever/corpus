// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per declaration via post-parse lowering and TDump.
//
// Naming: non-terminals from Rebus grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Rung RB-1: atoms, assignment, functions, records.  Gate: PASS=18 FAIL=20.
&FULLSCAN = 1;

/*====================================================================================================================*/
//  Lex tokens — atomic-token classifiers with no whitespace policy of their own.
/*====================================================================================================================*/

White   = (  SPAN(' ' tab) FENCE('#' BREAK(nl) | epsilon)
          |  '#' BREAK(nl)
          );
Gray    = White | epsilon;
$' '    = Gray;
$'  '   = White;

Id      = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_') | epsilon);
Integer = SPAN(digits);

DQ_str  = '"' BREAK('"') . strbody '"';
SQ_str  = "'" BREAK("'") . strbody "'";
String  = *DQ_str | *SQ_str;

/*--------------------------------------------------------------------------------------------------------------------*/
//  Operator and keyword wrappers — beauty.sno § 50-58 + Rebus keywords.
//  Whitespace policy lives here, never in grammar productions.
/*--------------------------------------------------------------------------------------------------------------------*/
$'('        =       '('        $' ';  $')'        = $' ' ')';
$','        = $' '  ','        $' ';
$':='       = $' '  ':='       $' ';
$'?'        = $' '  '?'        $' ';
$'|'        = $' '  '|'        $' ';
$'+'        = $' '  '+'        $' ';  $'-'        = $' ' '-'  $' ';
$'*'        = $' '  '*'        $' ';  $'/'        = $' ' '/'  $' ';
$'function' = $' '  'function' $'  '; $'end'      = $' ' 'end';
$'record'   = $' '  'record'   $'  ';
$'if'       = $' '  'if'       $'  '; $'then'     = $' ' 'then' $'  ';
$'while'    = $' '  'while'    $'  '; $'do'       = $' ' 'do'   $'  ';
/*====================================================================================================================*/
//  Tag string constants — bare form; semantic.sc _qtag auto-quotes.
/*====================================================================================================================*/

E_VAR        = 'E_VAR';
E_ILIT       = 'E_ILIT';
E_QLIT       = 'E_QLIT';
E_ALT        = 'E_ALT';
E_FNC        = 'E_FNC';
Parse        = 'Parse';
FUNC_DECL = 'FUNC_DECL';
REC_DECL  = 'REC_DECL';
PARAMS    = 'PARAMS';
FIELDS    = 'FIELDS';
BODY      = 'BODY';
ASSIGN    = 'ASSIGN';
ALT       = 'ALT';
MATCH     = 'MATCH';
IF        = 'IF';
WHILE     = 'WHILE';
CALL      = 'CALL';

nTop_count   = 'nTop()';

/*====================================================================================================================*/
//  Match-time helpers.  Called only via build-time wrappers that return
//  pattern fragments — never invoked literally as `epsilon . *fn()` in a
//  grammar production.
/*====================================================================================================================*/

function push_qlit() {
    push_qlit = .dummy;
    Push(tree(E_QLIT, strbody));
    nreturn;
}

/*--------------------------------------------------------------------------------------------------------------------*/
//  Build-time wrappers — return pattern fragments.
/*--------------------------------------------------------------------------------------------------------------------*/

function Push_qlit() {
    Push_qlit = epsilon . *push_qlit();
    return;
}

/*====================================================================================================================*/
//  Grammar — RB-0 atom + RB-1 assignment + RB-2/3/4/5 (if/while/call/match/alt).
//  Precedence (loose→tight): if/while > match (?) > assign (:=) > alt (|) > atom.
//  alt is left-associative binary per oracle; match and assign each take a
//  single alt_expr on either side.
/*====================================================================================================================*/

//  bare_call — Id() with no args; matches BEFORE plain Id so the latter falls back.
bare_call = shift(*Id, E_VAR) $'(' $')' reduce(CALL, 1);

atom = *String Push_qlit() | shift(*Integer, E_ILIT) | *bare_call | shift(*Id, E_VAR);

//  alt_expr — left-associative `|` chain.  beauty.sno-style left-recursion via
//  iterative FENCE'd accumulator: start with one atom, then ARBNO of `|` atom`
//  with a reduce after each — yielding ((a|b)|c) shape per oracle.
alt_expr = *atom ARBNO($'|' *atom reduce(ALT, 2));

//  expr — alt_expr optionally followed by `:= alt_expr` (assign).
expr = *alt_expr ($':=' *alt_expr reduce(ASSIGN, 2) | epsilon);

//  match_or_expr — expr optionally followed by `? alt_expr` (match).
match_or_expr = *expr ($'?' *alt_expr reduce(MATCH, 2) | epsilon);

//  if_stmt / while_stmt — surface shapes; lowering generates synthetic labels.
if_stmt    = $'if'    *match_or_expr $'then' *match_or_expr reduce(IF,    2);
while_stmt = $'while' *match_or_expr $'do'   *match_or_expr reduce(WHILE, 2);

stmt = $' ' (*if_stmt | *while_stmt | *match_or_expr) $' ' nl;

//  func_body — n-ary fold over body stmts.  Uses tail-recursive shape (per
//  parser_icon.sc Procbody idiom) so that 'end' is preempt-matched BEFORE
//  stmt can consume it as a bare identifier.  ARBNO was replaced because
//  shift(*Id, E_VAR) is a side-effect that is not undone on pattern backtrack,
//  causing a spurious (STMT :subj (E_VAR END)) node in the body tree.
//
//  func_end        — matches the closing 'end' + optional whitespace + newline.
//  func_body_stmt  — one body stmt: try func_end first (terminates recursion);
//                    if not end, match a stmt and recurse.
//  func_body       — wraps the recursion in an n-ary counter scope.

func_end      = $'end' $' ' nl;
func_body_stmt = (*func_end | nInc() *stmt *func_body_stmt);
func_body     = nPush() *func_body_stmt reduce(BODY, nTop_count) nPop();

/*--------------------------------------------------------------------------------------------------------------------*/
//  Parameter / field list — both fold into n-ary lists; empty list folds to (TAG) with nTop()=0.
/*--------------------------------------------------------------------------------------------------------------------*/

X_params  = nInc() shift(*Id, E_VAR) ($',' *X_params | epsilon);
opt_params = nPush() (*X_params | epsilon) reduce(PARAMS, nTop_count) nPop();

X_fields  = nInc() shift(*Id, E_VAR) ($',' *X_fields | epsilon);
opt_fields = nPush() (*X_fields | epsilon) reduce(FIELDS, nTop_count) nPop();

/*--------------------------------------------------------------------------------------------------------------------*/
//  Top-level decls.
/*--------------------------------------------------------------------------------------------------------------------*/

function_decl =
    $'function' shift(*Id, E_VAR) $'(' *opt_params $')' $' ' nl
    *func_body
    reduce(FUNC_DECL, 3);

record_decl =
    $'record' shift(*Id, E_VAR) $'(' *opt_fields $')' $' ' nl
    reduce(REC_DECL, 2);

func_cmd = nInc() *function_decl;
rec_cmd  = nInc() *record_decl;
blank    = nl;

Command  = *func_cmd | *rec_cmd | *blank;

Compiland = nPush() ARBNO(Command) reduce(Parse, nTop_count) nPop();

/*====================================================================================================================*/
//  Post-parse lowering — walks surface tree and emits canonical STMT TDump lines.
/*====================================================================================================================*/

label_n = 0;

function new_label() {
    label_n = label_n + 1;
    new_label = 'rb_' label_n;
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

//  emit_assign — render (STMT :eq :subj <lhs> :repl <rhs>) per parser_snocone.sc
//  sc_decompose_stmt's E_ASSIGN shape (lines 81-93).

function emit_assign(lhs, rhs) {
    TDump(Tree('STMT', '', 3,
               Tree(':eq',   ''),
               Tree(':subj', '', 1, lhs),
               Tree(':repl', '', 1, rhs)));
    return;
}

//  emit_match — render (STMT :subj <lhs> :pat <rhs>) per oracle.
function emit_match(lhs, rhs) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, lhs),
               Tree(':pat',  '', 1, rhs)));
    return;
}

//  emit_subj_goSF — (STMT :subj (E_NUL) :goS sLbl :goF fLbl) — if/while test stmt.
function emit_subj_goSF(s, sLbl, fLbl) {
    TDump(Tree('STMT', '', 3,
               Tree(':subj', '', 1, s),
               Tree(':goS', sLbl),
               Tree(':goF', fLbl)));
    return;
}

//  lower_atom — recursively lower an expression tree.  Handles ALT (build
//  E_ALT recursively) and CALL (emit (E_FNC name) — bare call no args).
function lower_atom(x, k, lhs, rhs) {
    k = t(x);
    if (IDENT(k, 'E_VAR'))       lower_atom = tree(E_VAR, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'E_ILIT')) lower_atom = x;
    else if (IDENT(k, 'E_QLIT')) lower_atom = x;
    else if (IDENT(k, 'ALT')) {
        lhs = lower_atom(c(x)[1]);
        rhs = lower_atom(c(x)[2]);
        lower_atom = Tree(E_ALT, '', 2, lhs, rhs);
    }
    else if (IDENT(k, 'CALL')) {
        lower_atom = tree(E_FNC, REPLACE(v(c(x)[1]), &LCASE, &UCASE));
    }
    else lower_atom = x;
    return;
}

function lower_stmt(x, k, lblS, lblF, lblM) {
    k = t(x);
    if (IDENT(k, 'ASSIGN'))      emit_assign(lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'MATCH'))  { emit_match(lower_atom(c(x)[1]), lower_atom(c(x)[2])); }
    else if (IDENT(k, 'IF')) {
        lblS = new_label();
        lblF = new_label();
        lblM = new_label();
        emit_subj_goSF(tree('E_NUL', ''), lblS, lblF);
        emit_lbl(lblS);
        lower_stmt(c(x)[1]);
        emit_go(lblM);
        emit_lbl(lblF);
        lower_stmt(c(x)[2]);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'WHILE')) {
        lblS = new_label();   // top-of-loop label
        lblM = new_label();   // success branch label
        lblF = new_label();   // exit label
        emit_lbl(lblS);
        emit_subj_goSF(tree('E_NUL', ''), lblM, lblF);
        emit_lbl(lblM);
        lower_stmt(c(x)[1]);
        emit_go(lblS);
        emit_lbl(lblF);
        // body (c[2]) intentionally NOT emitted — match oracle bug-for-bug
    }
    else                            emit_subj(lower_atom(x));
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
    lbl = new_label();
    emit_go(lbl);
    emit_lbl(fname);
    i = 0;
    while (i = LT(i, n(bd)) i + 1)
        lower_stmt(c(bd)[i]);
    emit_go('RETURN');
    emit_lbl(lbl);
    if (IDENT(fname, 'MAIN')) emit_subj(tree('E_FNC', fname));
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
    if (IDENT(k, 'FUNC_DECL')) lower_function_decl(x);
    else if (IDENT(k, 'REC_DECL'))  lower_record_decl(x);
    return;
}

/*====================================================================================================================*/
//  Driver — D1: structured control only; no goto.
/*====================================================================================================================*/

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
