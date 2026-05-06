// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per declaration via post-parse lowering and TDump.
//
// Naming: non-terminals from Rebus grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Rungs RB-0..RB-5 + RB-FW-1 + RB-FW-2 LANDED.  Gate: PASS=57 FAIL=0.
//
// Documented deviations from Style Guidelines (## Style Guidelines for
// parser_*.sc, GOAL-PARSER-REBUS.md):
//
//   G3 — Snocone runtime does not yet parse infix ~/& binary operators
//        (T_2TILDE/T_2AMP declared but no grammar productions); using
//        function-call forms shift()/reduce() instead.  See
//        GOAL-PARSER-REBUS.md session #3 watermark Issue 3.
//   G10 — Driver locals use UpperCamel `Src`/`Line` per beauty.sc
//        convention (lines 547-557) rather than lowerCamel.  Held
//        pending cross-PARSER convention decision.
//
// Bug fixes in this version (RB-FW-2 fixes):
//   BUG-RB-FW2-A — Operator wrappers ($'^', $'**', $'%', $'='/$'~='/etc.,
//        $'||'/$'&') were defined AFTER the grammar productions that use
//        them.  In Snocone, $'op' names are evaluated at definition time,
//        so they were unbound (epsilon) at grammar build time, causing
//        $'^' to match vacuously and $'=' family to be missing entirely.
//        Fix: moved all operator wrappers into the single wrappers block
//        before any grammar production.
//   BUG-RB-FW2-B — Flow-control keywords ($'return', $'exit', $'fail',
//        $'stop', $'next') lacked trailing $' ' (Gray).  The space
//        between the keyword and its argument (e.g. 'return x') was not
//        consumed, causing stmt to fail on the remaining ' x' text.
//        Fix: added trailing $' ' to all five wrappers.
//   BUG-RB-FW2-C — opt_locals did not consume the newline after the
//        semicolon of 'local x, y;'.  func_body then saw a leading nl
//        that stmt could not parse (stmt expects optional spaces not nl).
//        Fix: added $' ' nl inside opt_locals's FENCE branch.
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
$'['        =       '['        $' ';  $']'        = $' ' ']';
$'.'        = $' '  '.'        $' ';
$','        = $' '  ','        $' ';
$':='       = $' '  ':='       $' ';
$'?'        = $' '  '?'        $' ';
$'|'        = $' '  '|'        $' ';
$'+'        = $' '  '+'        $' ';  $'-'        = $' ' '-'  $' ';
$'*'        = $' '  '*'        $' ';  $'/'        = $' ' '/'  $' ';
// note: '^' is a plain literal here; ANY('^') was used previously but plain '^' works correctly.
$'^'        = $' '  '^'        $' ';  $'**'       = $' ' '**' $' ';
$'%'        = $' '  '%'        $' ';
// Comparison operators — ordered longest-first to avoid prefix match.
$'~=='      = $' '  '~=='      $' ';  $'=='       = $' ' '=='  $' ';
$'<<='      = $' '  '<<='      $' ';  $'>>='      = $' ' '>>=' $' ';
$'<<'       = $' '  '<<'       $' ';  $'>>'       = $' ' '>>'  $' ';
$'<='       = $' '  '<='       $' ';  $'>='       = $' ' '>='  $' ';
$'<'        = $' '  '<'        $' ';  $'>'        = $' ' '>'   $' ';
$'~='       = $' '  '~='       $' ';  $'='        = $' ' '='   $' ';
// String / pattern concat.
$'||'       = $' '  '||'       $' ';  $'&'        = $' ' '&'   $' ';
$'function' = $' '  'function' $'  '; $'end'      = $' ' 'end';
$'record'   = $' '  'record'   $'  ';
$'if'       = $' '  'if'       $'  '; $'then'     = $' ' 'then' $'  ';
$'else'     = $' '  'else'     $'  ';
$'unless'   = $' '  'unless'   $'  ';
$'while'    = $' '  'while'    $'  '; $'do'       = $' ' 'do'   $'  ';
$'until'    = $' '  'until'    $'  ';
$'repeat'   = $' '  'repeat'   $'  ';
// note: flow-control keywords get trailing $' ' (Gray) so the space before an argument is absorbed.
$'return'   = $' '  'return'   $' ';
$'exit'     = $' '  'exit'     $' ';
$'fail'     = $' '  'fail'     $' ';
$'stop'     = $' '  'stop'     $' ';
$'next'     = $' '  'next'     $' ';
$'local'    = $' '  'local'    $'  ';
$'initial'  = $' '  'initial'  $'  ';
$';'        = $' '  ';'        $' ';
/*====================================================================================================================*/
//  Tag string constants — bare form; semantic.sc _qtag auto-quotes.
/*====================================================================================================================*/

E_VAR        = 'E_VAR';
E_ILIT       = 'E_ILIT';
E_QLIT       = 'E_QLIT';
E_ALT        = 'E_ALT';
E_FNC        = 'E_FNC';
E_ADD        = 'E_ADD';
E_SUB        = 'E_SUB';
E_MUL        = 'E_MUL';
E_DIV        = 'E_DIV';
E_MNS        = 'E_MNS';
E_CAT        = 'E_CAT';
E_POW        = 'E_POW';
E_NUL        = 'E_NUL';
E_IDX        = 'E_IDX';
CMP_EQ       = 'CMP_EQ'; CMP_NE = 'CMP_NE';
CMP_LT       = 'CMP_LT'; CMP_LE = 'CMP_LE';
CMP_GT       = 'CMP_GT'; CMP_GE = 'CMP_GE';
CMP_SEQ      = 'CMP_SEQ'; CMP_SNE = 'CMP_SNE';
CMP_SLT      = 'CMP_SLT'; CMP_SLE = 'CMP_SLE';
CMP_SGT      = 'CMP_SGT'; CMP_SGE = 'CMP_SGE';
REMDR        = 'REMDR';
Parse        = 'Parse';
FUNC_DECL = 'FUNC_DECL';
REC_DECL  = 'REC_DECL';
PARAMS    = 'PARAMS';
FIELDS    = 'FIELDS';
LOCALS    = 'LOCALS';
BODY      = 'BODY';
ASSIGN    = 'ASSIGN';
ALT       = 'ALT';
MATCH     = 'MATCH';
IF        = 'IF';
IFELSE    = 'IFELSE';
WHILE     = 'WHILE';
UNLESS    = 'UNLESS';
UNTIL     = 'UNTIL';
REPEAT    = 'REPEAT';
CALL      = 'CALL';
RB_RETURN = 'RB_RETURN';
RB_RETURN_VAL = 'RB_RETURN_VAL';
RB_FAIL   = 'RB_FAIL';
RB_STOP   = 'RB_STOP';
RB_EXIT   = 'RB_EXIT';
RB_NEXT   = 'RB_NEXT';
RB_INITIAL = 'RB_INITIAL';

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

function decompose_call(nargs, kids, fname, call, i) {
    //  Stack (top first): arg_N, ..., arg_1, E_VAR_fname
    //  nTop() = N (args only; fname not counted by nInc).
    nargs = nTop();
    kids  = ARRAY('1:' nargs + 1);
    i = 0;
    while (i = LT(i, nargs + 1) i + 1) kids[i] = Pop();
    //  kids[1]=arg_N (first popped=top), ..., kids[nargs]=arg_1, kids[nargs+1]=E_VAR_fname
    fname = REPLACE(v(kids[nargs + 1]), &LCASE, &UCASE);
    call  = tree(E_FNC, fname);
    //  Append args in order: arg_1 first → arg_N last (kids[nargs] down to kids[1])
    i = nargs;
    while (GE(i, 1)) { call = Append(call, kids[i]); i = i - 1; }
    Push(call);
    decompose_call = .dummy;
    nreturn;
}

function push_call_id() {
    push_call_id = .dummy;
    Push(tree(E_VAR, REPLACE(rbCallName, &LCASE, &UCASE)));
    nreturn;
}

function Decompose_call() {
    Decompose_call = epsilon . *decompose_call();
    return;
}

function Push_call_id() {
    Push_call_id = epsilon . *push_call_id();
    return;
}

//  Field-access helper: pops the base E_VAR node, combines with rbFieldName
//  to produce E_VAR BASE.FIELD (uppercase dot-joined, per oracle).
rbFieldName = '';
function push_field_access(base, baseName, combined) {
    push_field_access = .dummy;
    base     = Pop();
    baseName = REPLACE(v(base), &LCASE, &UCASE);
    combined = baseName '.' REPLACE(rbFieldName, &LCASE, &UCASE);
    Push(tree(E_VAR, combined));
    nreturn;
}
function Push_field_access() {
    Push_field_access = epsilon . *push_field_access();
    return;
}


//  Grammar — RB-0 atom + RB-1 assignment + RB-2/3/4/5 (if/while/call/match/alt).
//  Precedence (loose→tight): if/while > match (?) > assign (:=) > alt (|) > atom.
//  alt is n-ary flat per oracle; match and assign each take a single alt_expr
//  on either side.
/*====================================================================================================================*/

//  primary — id, call, int, string, paren.
rbCallName = '';

X_args   = nInc() *alt_expr FENCE($',' *X_args | epsilon);

call_or_id = FENCE(  (*Id . rbCallName) $'(' nPush() Push_call_id()
                     FENCE(*X_args | epsilon) $')' Decompose_call() nPop()
                   | shift(*Id, E_VAR)
                  );

primary = FENCE(  *String  Push_qlit()
                | shift(*Integer, E_ILIT)
                | *call_or_id
                | '(' *expr ')'
               );

//  postfix_expr — subscript a[i] and field r.field; left-associative chain.
//  a[i] → E_IDX(a, i).  r.field → E_VAR R.FIELD (uppercase dot-join).
postfix_expr = *primary
               FENCE(  $'[' *alt_expr $']' reduce(E_IDX, 2)
                         FENCE($'[' *alt_expr $']' reduce(E_IDX, 2) | epsilon)
                      | $'.' (*Id . rbFieldName) Push_field_access()
                         FENCE($'.' (*Id . rbFieldName) Push_field_access() | epsilon)
                      | epsilon
                     );

//  unary_expr — unary minus; right-associative.
unary_expr = FENCE(  $'-' *unary_expr reduce(E_MNS, 1)
                   | *postfix_expr
                  );

//  pow_expr — exponentiation; right-associative.  Match lhs once, then
//  optionally match operator + rhs.  Avoids duplicate stack pushes in FENCE.
pow_expr = *unary_expr FENCE(  $'**' *pow_expr reduce(E_POW, 2)
                              | $'^'  *pow_expr reduce(E_POW, 2)
                              | epsilon
                             );

//  mul_expr — * / % (left-associative chain).
mul_expr = *pow_expr
           ( $'*' *pow_expr reduce(E_MUL, 2) ($'*' *pow_expr reduce(E_MUL, 2) | epsilon)
           | $'/' *pow_expr reduce(E_DIV, 2) ($'/' *pow_expr reduce(E_DIV, 2) | epsilon)
           | $'%' *pow_expr reduce(REMDR,  2) ($'%' *pow_expr reduce(REMDR,  2) | epsilon)
           | epsilon
           );

//  add_expr — + - (left-associative chain).
add_expr = *mul_expr
           ( $'+' *mul_expr reduce(E_ADD, 2) ($'+' *mul_expr reduce(E_ADD, 2) | epsilon)
           | $'-' *mul_expr reduce(E_SUB, 2) ($'-' *mul_expr reduce(E_SUB, 2) | epsilon)
           | epsilon
           );

//  cmp_expr — comparisons; map to E_FNC(EQ/NE/LT/LE/GT/GE, lhs, rhs) in lowering.
cmp_expr = *add_expr FENCE(  $'='   *add_expr reduce(CMP_EQ,  2)
                             | $'~='  *add_expr reduce(CMP_NE,  2)
                             | $'<='  *add_expr reduce(CMP_LE,  2)
                             | $'<'   *add_expr reduce(CMP_LT,  2)
                             | $'>='  *add_expr reduce(CMP_GE,  2)
                             | $'>'   *add_expr reduce(CMP_GT,  2)
                             | $'=='  *add_expr reduce(CMP_SEQ, 2)
                             | $'~==' *add_expr reduce(CMP_SNE, 2)
                             | $'<<=' *add_expr reduce(CMP_SLE, 2)
                             | $'>>=' *add_expr reduce(CMP_SGE, 2)
                             | $'<<'  *add_expr reduce(CMP_SLT, 2)
                             | $'>>'  *add_expr reduce(CMP_SGT, 2)
                             | epsilon
                            );

//  cat_expr — || (string concat) and & (pattern concat); both lower to E_CAT.
cat_expr = *cmp_expr
           ( $'||' *cmp_expr reduce(E_CAT, 2) ($'||' *cmp_expr reduce(E_CAT, 2) | epsilon)
           | $'&'  *cmp_expr reduce(E_CAT, 2) ($'&'  *cmp_expr reduce(E_CAT, 2) | epsilon)
           | epsilon
           );

//  alt_expr — n-ary `|` chain per beauty.sc idiom; yields flat (E_ALT a b c).
//  nInc() counts each operand; reduce with nTop() folds to flat n-ary tree.
//  Single-operand case: nTop()=1, reduce to (ALT x) which lower_atom unwraps.
X_alt = nInc() *cat_expr FENCE($'|' *X_alt | epsilon);
alt_expr = nPush() *X_alt reduce(ALT, nTop_count) nPop();

//  expr — alt_expr optionally followed by `:= alt_expr` (assign).
expr = *alt_expr FENCE($':=' *alt_expr reduce(ASSIGN, 2) | epsilon);

//  match_or_expr — expr optionally followed by `? alt_expr` (match).
match_or_expr = *expr FENCE($'?' *alt_expr reduce(MATCH, 2) | epsilon);

//  if_stmt / while_stmt / unless_stmt / until_stmt / repeat_stmt — surface shapes.
//  if with else is 3-child IFELSE (cond, then, else); without else is 2-child IF.
if_stmt    = $'if'     *match_or_expr $'then' FENCE(*match_or_expr $'else' *match_or_expr reduce(IFELSE, 3) | *match_or_expr reduce(IF, 2));
while_stmt = $'while'  *match_or_expr $'do'   *match_or_expr reduce(WHILE,  2);
unless_stmt = $'unless' *match_or_expr $'then' *match_or_expr reduce(UNLESS, 2);
until_stmt  = $'until'  *match_or_expr $'do'   *match_or_expr reduce(UNTIL,  2);
repeat_stmt = $'repeat' *match_or_expr reduce(REPEAT, 1);

//  flow_stmt — return/exit/fail/stop/next keyword statements.
return_stmt = $'return' FENCE(*match_or_expr reduce(RB_RETURN_VAL, 1) | reduce(RB_RETURN, 0));
exit_stmt   = $'exit'   reduce(RB_EXIT, 0);
fail_stmt   = $'fail'   reduce(RB_FAIL, 0);
stop_stmt   = $'stop'   reduce(RB_STOP, 0);
next_stmt   = $'next'   reduce(RB_NEXT, 0);

stmt = $' ' FENCE(*if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr) $' ' nl;

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
func_body_stmt = FENCE(*func_end | nInc() *stmt *func_body_stmt);
func_body     = nPush() *func_body_stmt reduce(BODY, nTop_count) nPop();

/*--------------------------------------------------------------------------------------------------------------------*/
//  Parameter / field list — both fold into n-ary lists; empty list folds to (TAG) with nTop()=0.
/*--------------------------------------------------------------------------------------------------------------------*/

X_params  = nInc() shift(*Id, E_VAR) FENCE($',' *X_params | epsilon);
opt_params = nPush() FENCE(*X_params | epsilon) reduce(PARAMS, nTop_count) nPop();

X_fields  = nInc() shift(*Id, E_VAR) FENCE($',' *X_fields | epsilon);
opt_fields = nPush() FENCE(*X_fields | epsilon) reduce(FIELDS, nTop_count) nPop();

/*--------------------------------------------------------------------------------------------------------------------*/
//  Top-level decls.
/*--------------------------------------------------------------------------------------------------------------------*/

X_locals   = nInc() shift(*Id, E_VAR) FENCE($',' *X_locals | epsilon);
opt_locals = nPush() FENCE($'local' *X_locals $';' $' ' nl | epsilon) reduce(LOCALS, nTop_count) nPop();

//  opt_initial — `initial stmt ;` — optional; the initial expression ends at `;`.
init_expr   = $' ' *match_or_expr $' ';
opt_initial = FENCE(nPush() $'initial' *init_expr $';' $' ' nl reduce(RB_INITIAL, 1) nPop() | reduce(RB_INITIAL, 0));

function_decl =
    $'function' shift(*Id, E_VAR) $'(' *opt_params $')' $' ' nl
    *opt_locals
    *opt_initial
    *func_body
    reduce(FUNC_DECL, 5);

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
//  flat n-ary E_ALT via Append loop) and CALL (emit (E_FNC name) — bare
//  call no args).
function lower_atom(x, k, acc, i) {
    k = t(x);
    if (IDENT(k, 'E_VAR'))       lower_atom = tree(E_VAR, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'E_ILIT')) lower_atom = x;
    else if (IDENT(k, 'E_QLIT')) lower_atom = x;
    else if (IDENT(k, 'E_FNC')) {
        //  decompose_call produces E_FNC(fname, arg1, ...) with raw ALT-wrapped children.
        //  Lower each child through lower_atom to strip ALT wrappers.
        acc = tree(E_FNC, v(x));
        i = 0;
        while (i = LT(i, n(x)) i + 1) acc = Append(acc, lower_atom(c(x)[i]));
        lower_atom = acc;
    }
    else if (IDENT(k, 'E_MNS')) {
        lower_atom = Tree(E_MNS, '', 1, lower_atom(c(x)[1]));
    }
    else if (IDENT(k, 'E_ADD')) lower_atom = Tree(E_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_SUB')) lower_atom = Tree(E_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_MUL')) lower_atom = Tree(E_MUL, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_DIV')) lower_atom = Tree(E_DIV, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_CAT')) lower_atom = Tree(E_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_EQ')) lower_atom = Tree(E_FNC, 'EQ',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_NE')) lower_atom = Tree(E_FNC, 'NE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_LT')) lower_atom = Tree(E_FNC, 'LT',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_LE')) lower_atom = Tree(E_FNC, 'LE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_GT')) lower_atom = Tree(E_FNC, 'GT',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_GE')) lower_atom = Tree(E_FNC, 'GE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SEQ')) lower_atom = Tree(E_FNC, 'IDENT',  2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SNE')) lower_atom = Tree(E_FNC, 'DIFFER', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SLT')) lower_atom = Tree(E_FNC, 'LLT',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SLE')) lower_atom = Tree(E_FNC, 'LLE',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SGT')) lower_atom = Tree(E_FNC, 'LGT',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SGE')) lower_atom = Tree(E_FNC, 'LGE',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_POW'))   lower_atom = Tree(E_POW, '',      2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'REMDR'))   lower_atom = Tree(E_FNC, 'REMDR', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_IDX'))   lower_atom = Tree(E_IDX, '',      2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'ALT')) {
        if (EQ(n(x), 1)) lower_atom = lower_atom(c(x)[1]);
        else {
            acc = tree(E_ALT, '', 0, NULL);
            i = 0;
            while (i = LT(i, n(x)) i + 1) acc = Append(acc, lower_atom(c(x)[i]));
            lower_atom = acc;
        }
    }
    else lower_atom = x;
    return;
}

function lower_stmt(x, k, lblS, lblF, lblM) {
    k = t(x);
    if (IDENT(k, 'ASSIGN'))          emit_assign(lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'MATCH'))      { emit_match(lower_atom(c(x)[1]), lower_atom(c(x)[2])); }
    else if (IDENT(k, 'RB_RETURN'))  emit_go('RETURN');
    else if (IDENT(k, 'RB_RETURN_VAL')) {
        emit_assign(tree(E_VAR, curFname), lower_atom(c(x)[1]));
        emit_go('RETURN');
    }
    else if (IDENT(k, 'RB_FAIL'))    emit_go('FRETURN');
    else if (IDENT(k, 'RB_STOP'))    TDump(Tree('STMT', '', 1, Tree(':end', '')));
    else if (IDENT(k, 'RB_EXIT'))    TDump(Tree('STMT', '', 1, Tree(':end', '')));
    else if (IDENT(k, 'RB_NEXT'))    { }
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
    //  unless cond then body — goS/goF swapped vs if; body not emitted (oracle bug-for-bug).
    //  Label order: cond (goF) before success (goS) — matches oracle numbering.
    else if (IDENT(k, 'UNLESS')) {
        lblF = new_label();   // cond branch (goF = fail = body-side in unless)
        lblS = new_label();   // success/skip label (goS = cond succeeded = skip body)
        emit_subj_goSF(tree('E_NUL', ''), lblS, lblF);
        emit_lbl(lblF);
        lower_stmt(c(x)[1]);
        emit_lbl(lblS);
    }
    //  until cond do body — complement of while; exits when cond succeeds.
    //  goF branch has cond; body not emitted (oracle bug-for-bug).
    //  Label order: top, cond (goF), exit (goS) — matches oracle sequence.
    else if (IDENT(k, 'UNTIL')) {
        lblS = new_label();   // top-of-loop label
        lblF = new_label();   // cond branch label (goF = fail stays in loop)
        lblM = new_label();   // exit label (goS = success exits loop)
        emit_lbl(lblS);
        emit_subj_goSF(tree('E_NUL', ''), lblM, lblF);
        emit_lbl(lblF);
        lower_stmt(c(x)[1]);
        emit_go(lblS);
        emit_lbl(lblM);
    }
    //  repeat body — infinite loop; body not emitted (oracle bug-for-bug).
    else if (IDENT(k, 'REPEAT')) {
        lblS = new_label();   // top-of-loop label
        lblM = new_label();   // unreachable exit label
        emit_lbl(lblS);
        emit_go(lblS);
        emit_lbl(lblM);
    }
    //  if cond then t else e — 3-child; oracle emits cond in goS branch,
    //  then-body in goF branch, and drops else body (existing frontend bug).
    else if (IDENT(k, 'IFELSE')) {
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
    else                            emit_subj(lower_atom(x));
    return;
}

curFname = '';

function lower_function_decl(x, nm, pm, lc, init, bd, fname, pstr, lstr, i, lbl) {
    nm    = c(x)[1];
    pm    = c(x)[2];
    lc    = c(x)[3];
    init  = c(x)[4];
    bd    = c(x)[5];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    curFname = fname;
    pstr  = '';
    i = 0;
    while (i = LT(i, n(pm)) i + 1)
        pstr = pstr (GT(i, 1) ',', '') REPLACE(v(c(pm)[i]), &LCASE, &UCASE);
    lstr  = '';
    i = 0;
    while (i = LT(i, n(lc)) i + 1)
        lstr = lstr (GT(i, 1) ',', '') REPLACE(v(c(lc)[i]), &LCASE, &UCASE);
    emit_subj(Tree('E_FNC', 'DEFINE', 1, tree(E_QLIT, fname '(' pstr ')' (DIFFER(lstr) '/' lstr, ''))));
    lbl = new_label();
    emit_go(lbl);
    emit_lbl(fname);
    //  Initial clause — if present (n(init)=1), emit as conditional guard.
    if (DIFFER(n(init), 0)) {
        lblS = new_label();
        initVar = 'rb_init_' fname;
        TDump(Tree('STMT', '', 2,
                   Tree(':subj', '', 1, tree(E_VAR, initVar)),
                   Tree(':goS', lblS)));
        lower_stmt(c(init)[1]);
        emit_subj(Tree('E_ASSIGN', '', 2, tree(E_VAR, initVar), tree(E_ILIT, '1')));
        emit_lbl(lblS);
    }
    i = 0;
    while (i = LT(i, n(bd)) i + 1)
        lower_stmt(c(bd)[i]);
    emit_go('RETURN');
    emit_lbl(lbl);
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
        //  Oracle always emits the program entry-point call as the final stmt,
        //  regardless of whether a 'main' function is defined in the source.
        emit_subj(tree('E_FNC', 'MAIN'));
    }
} else {
    OUTPUT = 'Parse Error';
}
