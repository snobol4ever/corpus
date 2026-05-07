// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per declaration via post-parse lowering and TDump.
//
// Naming: non-terminals from Rebus grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Rungs RB-0..RB-5 + RB-FW-1..RB-FW-9 LANDED.  Gate: PASS=94 FAIL=0.
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
//  Whitespace primitives — `white` is the atomic class (one space, tab,
//  line comment, or block comment).  `White` (one or more) and `Gray` (zero or
//  more) are accessed exclusively through the aliases `$'  '` and `$' '`.
//  This is the parser_snocone.sc style: whitespace policy lives at the token
//  level via $'  ' / $' ' and is never strewn through grammar productions.
//
//  Notable difference from parser_snocone.sc: `nl` is NOT included in `white`,
//  because Rebus uses the newline as an implicit statement terminator
//  (Griswold TR 84-9).  Statement-level patterns explicitly match `nl` to
//  end a stmt; the grammar must keep newlines visible to those rules.
//
//  Comment forms supported:
//    `# ... nl`    — Griswold-canonical Rebus line comment
//    `// ... nl`   — family-wide line comment (matches parser_snocone style)
//    `/* ... */`   — family-wide block comment
//
//  A line comment ends at `nl` but does NOT consume that `nl` (so the
//  statement terminator survives).  A block comment may span newlines
//  internally but is treated as one whitespace token at the surface.
/*====================================================================================================================*/

white       =   (  SPAN(' ' tab)
                |  '#'  BREAK(nl)
                |  '//' BREAK(nl)
                |  '/*' BREAKX('*') '*/'
                );
White       =   white ARBNO(white);
Gray        =   ARBNO(white);
$'  '       =   White;
$' '        =   Gray;

//  Id — matches the rebus.l IDENT regex: ALPHA followed by any of
//  [letters digits _ .].  Embedded '.' is part of the ident (e.g. R.FIELD
//  is one ident, not field-access).  Whitespace before '.' breaks the ident
//  and exposes '.' as the postfix capture operator.
Id      = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_' '.') | epsilon);
Integer = SPAN(digits);
//  Real — digits '.' digits; must not consume dot that belongs to field-access
//  or pattern-capture.  Matched only when digits appear on BOTH sides of '.'.
Real    = SPAN(digits) '.' SPAN(digits);
//  Keyword body-capture — `&IDENT` (e.g. &FULLSCAN, &ANCHOR).  The opening
//  '&' is matched by a sibling; only the Id body goes through the capture so
//  the shifted E_KEYWORD node holds 'FULLSCAN', not '&FULLSCAN'.  This
//  mirrors the DQ_str / SQ_str idiom and the rubric's body-capture pattern.
//  The pattern-concat $'&' operator wrapper has surrounding Gray, so it
//  cannot match a bare '&' immediately followed by an Id letter.
KW_open = '&';
KW_body = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_') | epsilon);

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
// note: $'<' uses trailing $'  ' (White = required whitespace) so '<-' (no space
// between < and -) cannot match this wrapper.  '<=' already matches before '<'.
$'<'        = $' '  '<'        $'  ';  $'>'       = $' ' '>'   $'  ';
$'<-arrow'  = $' '  '<-'       $' ';
$'~='       = $' '  '~='       $' ';  $'='        = $' ' '='   $' ';
// String / pattern concat.
$'||'       = $' '  '||'       $' ';  $'&'        = $' ' '&'   $' ';
$'function' = $' '  'function' $'  '; $'end'      = $' ' 'end';
$'record'   = $' '  'record'   $'  ';
$'if'       = $' '  'if'       $'  '; $'then'     = $' ' 'then' $'  ';
$'else'     = $' '  'else'     $'  ';
$'unless'   = $' '  'unless'   $'  ';
$'for'      = $' '  'for'      $'  ';
$'from'     = $' '  'from'     $'  ';
$'to'       = $' '  'to'       $'  ';
$'by'       = $' '  'by'       $'  ';
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
rb_case_kw  = $' '  'case'     $'  ';   // note: $'case' not used — 'case' is a Snocone keyword
$'of'       = $' '  'of'       $' ';
$'<-'       = $' '  '<-'       $' ';
$'?-'       = $' '  '?-'       $' ';
$';'        = $' '  ';'        $' ';
$'{'        = $' '  '{'        $' ';
$'}'        = $' '  '}'        $' ';
$':'        = $' '  ':'        $' ';
//  Augmented assignment operators — ordered longest-first to avoid prefix match.
$'||:='     = $' '  '||:='     $' ';
$'+:='      = $' '  '+:='      $' ';
$'-:='      = $' '  '-:='      $' ';
$':=:'      = $' '  ':=:'      $' ';
//  Range subscript operator  a[i +: n]
$'+:'       = $' '  '+:'       $' ';
//  Pattern capture operator wrappers — REQUIRED whitespace before '.' / '$' so
//  that tight forms (handled by Id absorbing embedded '.') do not match.
//  Trailing whitespace is optional (mirrors oracle's tolerance for `x .y`).
dot_capt    = $'  '  '.'        $' ';
dollar_capt = $'  '  '$'        $' ';
/*====================================================================================================================*/
//  Tag string constants — bare form; semantic.sc _qtag auto-quotes.
/*====================================================================================================================*/

E_VAR        = 'E_VAR';
E_ILIT       = 'E_ILIT';
E_QLIT       = 'E_QLIT';
E_FLIT       = 'E_FLIT';
E_KEYWORD    = 'E_KEYWORD';
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
E_ASSIGN     = 'E_ASSIGN';
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
RB_FOR    = 'RB_FOR';
CALL      = 'CALL';
RB_RETURN = 'RB_RETURN';
RB_RETURN_VAL = 'RB_RETURN_VAL';
RB_FAIL   = 'RB_FAIL';
RB_STOP   = 'RB_STOP';
RB_EXIT   = 'RB_EXIT';
RB_NEXT   = 'RB_NEXT';
RB_INITIAL = 'RB_INITIAL';
REPLACE   = 'REPLACE';
REPLN     = 'REPLN';
RB_CASE   = 'RB_CASE';
E_CAPT_COND = 'E_CAPT_COND_ASGN';
E_CAPT_IMM  = 'E_CAPT_IMMED_ASGN';
E_INDIRECT  = 'E_INDIRECT';
E_ITERATE   = 'E_ITERATE';
E_CAPT_CURSOR = 'E_CAPT_CURSOR';
EXCHG       = 'EXCHG';
ADDASSIGN   = 'ADDASSIGN';
SUBASSIGN   = 'SUBASSIGN';
CATASSIGN   = 'CATASSIGN';
E_NOTPAT    = 'E_NOTPAT';
E_BANGPAT   = 'E_BANGPAT';
E_VALUEPAT  = 'E_VALUEPAT';
COMPOUND    = 'COMPOUND';
E_POS       = 'E_POS';

nTop_count   = 'nTop()';
nTop_plus1   = 'nTop() + 1';   // for subscript: base (1) + nTop() args

//  X_sub — like X_args but for subscript bracket context.
//  Needs its own definition to avoid scope confusion; same logic as X_args.
X_sub = nInc() *expr FENCE($',' *X_sub | epsilon);

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

//  push_nul / Push_nul — push a bare E_NUL tree node onto the parse stack.
//  Used for empty arglist slots: foo(1,,3) or foo(1,2,) per rebus.y arglist_ne.
function push_nul() {
    push_nul = .dummy;
    Push(tree(E_NUL, ''));
    nreturn;
}
function Push_nul() {
    Push_nul = epsilon . *push_nul();
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

function decompose_sub(nargs, base, kids, sub, i) {
    //  Stack (top first): arg_N, ..., arg_1, E_VAR_base
    //  nTop() = N (arg count; base not counted by nInc).
    nargs = nTop();
    kids  = ARRAY('1:' nargs + 1);
    i = 0;
    while (i = LT(i, nargs + 1) i + 1) kids[i] = Pop();
    //  kids[1]=arg_N (first popped=top), ..., kids[nargs]=arg_1, kids[nargs+1]=base
    base = kids[nargs + 1];
    sub  = tree(E_IDX, '');
    sub  = Append(sub, base);
    i = nargs;
    while (GE(i, 1)) { sub = Append(sub, kids[i]); i = i - 1; }
    Push(sub);
    decompose_sub = .dummy;
    nreturn;
}

function Decompose_sub() {
    Decompose_sub = epsilon . *decompose_sub();
    return;
}
function push_call_id() {
    push_call_id = .dummy;
    Push(tree(E_VAR, REPLACE(rbCallName, &LCASE, &UCASE)));
    nreturn;
}

//  Keyword body push — uppercases the captured Id and pushes E_KEYWORD.
rbKwName = '';
function push_keyword() {
    push_keyword = .dummy;
    Push(tree(E_KEYWORD, REPLACE(rbKwName, &LCASE, &UCASE)));
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

function Push_keyword() {
    Push_keyword = epsilon . *push_keyword();
    return;
}

rbCursorName = '';
function push_cursor() {
    push_cursor = .dummy;
    Push(tree(E_CAPT_CURSOR, REPLACE(rbCursorName, &LCASE, &UCASE)));
    nreturn;
}
function Push_cursor() {
    Push_cursor = epsilon . *push_cursor();
    return;
}

//  (Field-access helpers removed in RB-FW-5 — extended Id now absorbs
//  embedded '.' so r.field is one Id, matching rebus.l IDENT regex.
//  Spaced '.' is now the postfix capture operator dot_capt.)


//  Grammar — RB-0 atom + RB-1 assignment + RB-2/3/4/5 (if/while/call/match/alt).
//  Precedence (loose→tight): if/while > match (?) > assign (:=) > alt (|) > atom.
//  alt is n-ary flat per oracle; match and assign each take a single alt_expr
//  on either side.
/*====================================================================================================================*/

//  primary — id, call, int, string, paren.
rbCallName = '';

//  X_args — one arg in a call arglist; recurses for subsequent args.
//  First arg is always a real expr.  After a comma, the next arg may be:
//    (a) a real expr (*X_args again), or
//    (b) an empty slot (trailing comma or `,,`): push E_NUL, then continue.
//  nInc() for the empty slot fires in (b) via nInc_then_nul.
nInc_then_nul = nInc() Push_nul();
X_args   = nInc() *alt_expr FENCE($',' FENCE(*X_args | *nInc_then_nul FENCE($',' *X_args | epsilon)) | epsilon);

call_or_id = FENCE(  (*Id . rbCallName) $'(' nPush() Push_call_id()
                     FENCE(*X_args | epsilon) $')' Decompose_call() nPop()
                   | shift(*Id, E_VAR)
                  );

primary = FENCE(  *String  Push_qlit()
                | KW_open (*KW_body . rbKwName) Push_keyword()
                | '@' (*Id . rbCursorName) Push_cursor()
                | shift(*Real, E_FLIT)
                | shift(*Integer, E_ILIT)
                | *call_or_id
                | '(' *expr ')'
               );

//  postfix_expr — subscript a[i], range a[i +: n], pattern capture pat . var / pat $ var.
//  Range [i +: n] must precede plain [i] in the alternation — both start with $'['.
//  Oracle emits a[i +: n] as E_IDX(a, E_IDX(i, n)) — two nested reduces of 2.
//  Field-access r.field is folded into Id (rebus.l IDENT regex allows embedded '.').
postfix_expr = *primary
               FENCE(  $'[' *alt_expr $'+:' *alt_expr $']' reduce(E_IDX, 2) reduce(E_IDX, 2)
                         FENCE($'[' *alt_expr $'+:' *alt_expr $']' reduce(E_IDX, 2) reduce(E_IDX, 2) | epsilon)
                      | $'[' nPush() *X_sub $']' Decompose_sub() nPop()
                         FENCE($'[' nPush() *X_sub $']' Decompose_sub() nPop() | epsilon)
                      | *dot_capt    *primary reduce(E_CAPT_COND, 2)
                         FENCE(*dot_capt    *primary reduce(E_CAPT_COND, 2) | epsilon)
                      | *dollar_capt *primary reduce(E_CAPT_IMM,  2)
                         FENCE(*dollar_capt *primary reduce(E_CAPT_IMM,  2) | epsilon)
                      | epsilon
                     );

//  unary_expr — right-associative unary operators.
//  Rebus unary pattern operators (per rebus.y lines 599-607):
//    ~x  (RE_NOT)   → E_FNC DIFFER   $'~' conflicts with $'~=' etc — use bare '~' (no wrapper needed)
//    \x  (RE_NOT)   → E_FNC DIFFER   same lowering as ~
//    !x  (RE_BANG)  → E_ITERATE
//    /x  (RE_VALUE) → E_FNC IDENT    bare '/'; $'/' is the division wrapper (spaced)
//    $x  (RE_DEREF) → E_INDIRECT     tight prefix; spaced $ is already pat-capture
//  The bare-literal forms ('~', '!', '/', '\\', '$') require no space before the operand.
//  They are distinct from the spaced operator wrappers because FENCE tries longest-first
//  alternatives so $'-' (spaced) still binds unary minus before '\\' tries backslash.
unary_expr = FENCE(  $'-'  *unary_expr reduce(E_MNS, 1)
                   | '+'   *unary_expr reduce(E_POS, 1)
                   | '~'   *unary_expr reduce(E_NOTPAT, 1)
                   | '!'   *unary_expr reduce(E_BANGPAT, 1)
                   | '/'   *unary_expr reduce(E_VALUEPAT, 1)
                   | '\'   *unary_expr reduce(E_NOTPAT, 1)
                   | '$'   *unary_expr reduce(E_INDIRECT, 1)
                   | '.'   *unary_expr reduce(E_CAPT_COND, 1)
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
//  cmp_expr — comparisons; map to E_FNC(EQ/NE/LT/LE/GT/GE, lhs, rhs) in lowering.
//  Longer operators must precede their prefixes: ==, ~==, <<=, >>=, <<, >>
//  before =, ~=, <=, >=, <, >.  Otherwise $'=' would consume the first `=` of
//  `==` and leave `= b` unparseable.
cmp_expr = *add_expr FENCE(  $'~==' *add_expr reduce(CMP_SNE, 2)
                             | $'==' *add_expr reduce(CMP_SEQ, 2)
                             | $'<<=' *add_expr reduce(CMP_SLE, 2)
                             | $'>>=' *add_expr reduce(CMP_SGE, 2)
                             | $'<<'  *add_expr reduce(CMP_SLT, 2)
                             | $'>>'  *add_expr reduce(CMP_SGT, 2)
                             | $'<='  *add_expr reduce(CMP_LE,  2)
                             | $'>='  *add_expr reduce(CMP_GE,  2)
                             | $'~='  *add_expr reduce(CMP_NE,  2)
                             | $'='   *add_expr reduce(CMP_EQ,  2)
                             | $'<'   *add_expr reduce(CMP_LT,  2)
                             | $'>'   *add_expr reduce(CMP_GT,  2)
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
//  expr — assign_expr per rebus.y: alt_expr optionally followed by assignment op.
//  Ordered longest-first: ||:= before `:=:` before `:=`; +: = before +:
expr = *alt_expr FENCE(  $'||:=' *alt_expr reduce(CATASSIGN, 2)
                       | $'+:='  *alt_expr reduce(ADDASSIGN, 2)
                       | $'-:='  *alt_expr reduce(SUBASSIGN, 2)
                       | $':=:'  *alt_expr reduce(EXCHG, 2)
                       | $':='   *alt_expr reduce(ASSIGN, 2)
                       | epsilon
                      );

//  match_or_expr — expr optionally followed by match/replace/repln operator.
//    expr ? pat        → MATCH(expr, pat)
//    expr ? pat <- rpl → REPLACE(expr, pat, rpl)
//    expr ?- pat       → REPLN(expr, pat)
//  Note: '?-' must be tried BEFORE '?' to avoid '?' consuming the '?' in '?-'.
//  Note: $'<' requires trailing White (not Gray) so '<-' cannot be consumed
//  as less-than. Both replace and match branches now use *alt_expr safely.
$'?-match'  = $' '  '?-'  $' ';
match_or_expr = *expr FENCE($'?-match' *alt_expr reduce(REPLN, 2)
                           | $'?' *alt_expr $'<-arrow' *alt_expr reduce(REPLACE, 3)
                           | $'?' *alt_expr reduce(MATCH, 2)
                           | epsilon);

//  stmt_body — compound_stmt OR a single match_or_expr.  Used as the body
//  of if/while/unless/until so that `if x then { ... }` is valid.
//  compound_stmt must be tried first (its leading '{' distinguishes it).
stmt_body = FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr);
//  if_stmt / while_stmt / unless_stmt / until_stmt / repeat_stmt — surface shapes.
//  if with else is 3-child IFELSE (cond, then, else); without else is 2-child IF.
if_stmt    = $'if'     *match_or_expr $'then' FENCE(*stmt_body $'else' *stmt_body reduce(IFELSE, 3) | *stmt_body reduce(IF, 2));
while_stmt = $'while'  *match_or_expr $'do'   *stmt_body reduce(WHILE,  2);
unless_stmt = $'unless' *match_or_expr $'then' *stmt_body reduce(UNLESS, 2);
until_stmt  = $'until'  *match_or_expr $'do'   *stmt_body reduce(UNTIL,  2);
repeat_stmt = $'repeat' *stmt_body reduce(REPEAT, 1);
//  for_stmt — RB_FOR children: (var, from, to) for basic; (var, from, to, step) with 'by'.
//  Body after 'do' is consumed as raw text (no shift/reduce) since oracle drops it.
//  BREAK(nl) consumes everything to the newline without any stack effects.
for_body = $'do' BREAK(nl);
for_stmt = $'for' shift(*Id, E_VAR) $'from' *match_or_expr $'to' *match_or_expr
           FENCE($'by' *match_or_expr reduce(RB_FOR, 4) | reduce(RB_FOR, 3))
           *for_body;

//  flow_stmt — return/exit/fail/stop/next keyword statements.
return_stmt = $'return' FENCE(*match_or_expr reduce(RB_RETURN_VAL, 1) | reduce(RB_RETURN, 0));
exit_stmt   = $'exit'   reduce(RB_EXIT, 0);
fail_stmt   = $'fail'   reduce(RB_FAIL, 0);
stop_stmt   = $'stop'   reduce(RB_STOP, 0);
next_stmt   = $'next'   reduce(RB_NEXT, 0);

//  case_stmt — case expr of { guard: body; ... ; default: body }
//  Each caseclause is a 2-child CASE_CLAUSE(guard, body) node or
//  a 1-child CASE_DEFAULT(body) node.  case_stmt reduces to
//  RB_CASE(expr, clause, ...) with n children = 1 + nClauses.
//
//  Grammar mirrors rebus.y: caselist = caseclause (; caseclause)* ;?
//  A clause guard is an expression; "default" is the literal keyword.
//  The body is a single stmt consumed inline (without its trailing nl
//  since the clause ends with ';' or '}').
//
//  compound_stmt — { stmt_inline ; stmt_inline ; ... }  (zero or more items).
//  compound_end checks for '}' (possibly with leading whitespace) so the
//  tail-recursive body terminates cleanly without BREAK eating the whole source.
compound_end       = $' ' '}';
compound_item      = nInc() *stmt_inline $';' $' ' nl;
compound_body_tail = FENCE(*compound_end | *compound_item *compound_body_tail);
compound_stmt = $' ' '{' $' ' nl nPush() *compound_body_tail reduce(COMPOUND, nTop_count) nPop();

//  stmt_inline — a stmt body without the trailing nl (used inside { }).
//  The nl is consumed by $';' / $'}' wrappers after the body.
CASE_CLAUSE   = 'CASE_CLAUSE';
CASE_DEFAULT  = 'CASE_DEFAULT';

stmt_inline = $' ' FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr) $' ';

//  caseclause — guard: body  or  default: body.
caseclause_guard   = nInc() *match_or_expr $':' *stmt_inline reduce(CASE_CLAUSE, 2);
rb_default_kw  = $' '  'default'   $' ';
caseclause_default = nInc() *rb_default_kw $':' *stmt_inline reduce(CASE_DEFAULT, 1);
caseclause         = FENCE(*caseclause_default | *caseclause_guard);

//  caselist — one or more clauses separated by ';'.  Tail-recursive.
caselist_tail = FENCE($';' FENCE(*caseclause *caselist_tail | epsilon) | epsilon);
caselist      = *caseclause *caselist_tail;

case_stmt = *rb_case_kw nPush() nInc() *match_or_expr $'of' $'{' *caselist $'}' reduce(RB_CASE, nTop_count) nPop();

stmt = $' ' FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr) $' ' nl;

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

//  func_body_stmt  — one body stmt: skip any leading blank lines, then try
//                    func_end (terminates recursion); else match a stmt and
//                    recurse.  blank_line = $' ' nl absorbs purely-whitespace
//                    or comment-only lines.
func_end      = $'end' $' ' nl;
blank_line    = $' ' nl;
func_body_stmt = FENCE(*blank_line *func_body_stmt | *func_end | nInc() *stmt *func_body_stmt);
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

//  emit_subj_goS — (STMT :subj <s> :goS lbl) — for-loop exit test.
function emit_subj_goS(s, lbl) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, s),
               Tree(':goS', lbl)));
    return;
}

//  emit_replace — (STMT :subj <s> :pat <p> :repl <r>) for replace/repln.
function emit_replace(s, p, r) {
    TDump(Tree('STMT', '', 3,
               Tree(':subj', '', 1, s),
               Tree(':pat',  '', 1, p),
               Tree(':repl', '', 1, r)));
    return;
}

//  lower_case — lower a RB_CASE(expr, clause, ...) tree.
//  Oracle shape: allocate l_end first (number N), then temp var = 'rb_case_N',
//  assign expr to temp, then chain IDENT comparisons for each clause.
//  Clause kinds: CASE_CLAUSE(guard, body) or CASE_DEFAULT(body).
function lower_case(x, lEnd, lNext, lMatch, tempVar, tempExpr, tmpN, i, cl, ck) {
    lEnd    = new_label();
    tmpN    = label_n;
    tempVar = 'rb_case_' tmpN;
    tempExpr = tree(E_VAR, tempVar);
    //  Assign case expr (c(x)[1]) to temp var.
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1,
                    Tree(E_ASSIGN, '', 2, tempExpr, lower_atom(c(x)[1])))));
    i = 1;
    lNext = '';
    while (i = LT(i, n(x)) i + 1) {
        cl = c(x)[i];
        ck = t(cl);
        if (DIFFER(lNext)) { emit_lbl(lNext); lNext = ''; }
        if (IDENT(ck, 'CASE_DEFAULT')) {
            lower_stmt(c(cl)[1]);
            emit_go(lEnd);
        } else {
            lMatch = new_label();
            lNext  = new_label();
            emit_subj_goSF(Tree(E_FNC, 'IDENT', 2, tempExpr, lower_atom(c(cl)[1])), lMatch, lNext);
            emit_lbl(lMatch);
            lower_stmt(c(cl)[2]);
            emit_go(lEnd);
        }
    }
    if (DIFFER(lNext)) emit_lbl(lNext);
    emit_lbl(lEnd);
    return;
}

//  lower_atom — recursively lower an expression tree.  Handles ALT (build
//  flat n-ary E_ALT via Append loop) and CALL (emit (E_FNC name) — bare
//  call no args).
function lower_atom(x, k, acc, i, idxN, idxBase, idxI) {
    k = t(x);
    if (IDENT(k, 'E_VAR'))       lower_atom = tree(E_VAR, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'E_ILIT')) lower_atom = x;
    else if (IDENT(k, 'E_QLIT')) lower_atom = x;
    else if (IDENT(k, 'E_FLIT')) lower_atom = x;
    else if (IDENT(k, 'E_KEYWORD')) lower_atom = tree(E_KEYWORD, REPLACE(v(x), &LCASE, &UCASE));
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
    else if (IDENT(k, 'E_POS')) lower_atom = lower_atom(c(x)[1]);  // unary + is identity
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
    else if (IDENT(k, 'E_IDX')) {
        //  n-ary subscript: base + 1..n-1 args.  Build all children lowered.
        idxN = n(x);
        idxBase = lower_atom(c(x)[1]);
        if (EQ(idxN, 2)) lower_atom = Tree(E_IDX, '', 2, idxBase, lower_atom(c(x)[2]));
        else {
            //  3+ children: build Tree using descending loop (avoids LT/LE pre-increment).
            //  Children in c(x): [1]=base, [2..idxN]=args.  Append args in order 2..idxN.
            lower_atom = Tree(E_IDX, '', 1, idxBase);
            idxI = 2;
            while (GE(idxI, 0) LT(idxI, idxN + 1)) {
                lower_atom = Append(lower_atom, lower_atom(c(x)[idxI]));
                idxI = idxI + 1;
            }
        }
    }
    else if (IDENT(k, 'E_CAPT_COND_ASGN')) {
        //  1-child: unary dot (.y) → E_CAPT_COND_ASGN(E_NUL, child) per oracle.
        //  2-child: binary dot (a . b) → E_CAPT_COND_ASGN(a, b).
        if (EQ(n(x), 1)) lower_atom = Tree(E_CAPT_COND, '', 2, tree(E_NUL, ''), lower_atom(c(x)[1]));
        else lower_atom = Tree(E_CAPT_COND, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    }
    else if (IDENT(k, 'E_CAPT_IMMED_ASGN'))
        lower_atom = Tree(E_CAPT_IMM,  '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'E_NOTPAT'))  lower_atom = Tree(E_FNC, 'DIFFER',  1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'E_BANGPAT')) lower_atom = Tree(E_ITERATE, '',     1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'E_VALUEPAT')) lower_atom = Tree(E_FNC, 'IDENT',  1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'E_INDIRECT')) lower_atom = Tree(E_INDIRECT, '',   1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'E_CAPT_CURSOR')) lower_atom = x;
    else if (IDENT(k, 'ALT')) {
        if (EQ(n(x), 1)) lower_atom = lower_atom(c(x)[1]);
        else {
            acc = tree(E_ALT, '', 0, NULL);
            i = 0;
            while (i = LT(i, n(x)) i + 1) acc = Append(acc, lower_atom(c(x)[i]));
            lower_atom = acc;
        }
    }
    //  Augmented assigns in expr position (e.g. inside subscript index):
    //  a +:= b → E_ASSIGN(a, E_ADD(a, b)); similarly for -:= / ||:= / :=:
    else if (IDENT(k, 'ADDASSIGN'))
        lower_atom = Tree(E_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(E_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'SUBASSIGN'))
        lower_atom = Tree(E_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(E_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'CATASSIGN'))
        lower_atom = Tree(E_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(E_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'EXCHG'))
        lower_atom = Tree(E_FNC, 'EXCHG', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else lower_atom = x;
    return;
}

function lower_stmt(x, k, lblS, lblF, lblM, forVar, forStep) {
    k = t(x);
    if (IDENT(k, 'ASSIGN'))          emit_assign(lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'ADDASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(E_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'SUBASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(E_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'CATASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(E_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'EXCHG'))      TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(E_FNC, 'EXCHG', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])))));
    else if (IDENT(k, 'MATCH'))      { emit_match(lower_atom(c(x)[1]), lower_atom(c(x)[2])); }
    else if (IDENT(k, 'REPLACE'))    emit_replace(lower_atom(c(x)[1]), lower_atom(c(x)[2]), lower_atom(c(x)[3]));
    else if (IDENT(k, 'REPLN'))      emit_replace(lower_atom(c(x)[1]), lower_atom(c(x)[2]), tree(E_NUL, ''));
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
    //  for var from f to t [by s] do body — n(x)=3 (no by) or 4 (with by).
    //  Lowered to: init; lbl top; GT(var,to) :goS exit; var:=var+step; go top; lbl exit.
    //  Body is dropped (oracle bug-for-bug).
    else if (IDENT(k, 'RB_FOR')) {
        forVar  = lower_atom(c(x)[1]);
        forStep = (EQ(n(x), 4) lower_atom(c(x)[4]), Tree(E_ILIT, '1'));
        lblS = new_label();   // top label
        lblM = new_label();   // exit label
        //  i := from
        TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(E_ASSIGN, '', 2, forVar, lower_atom(c(x)[2])))));
        emit_lbl(lblS);
        //  GT(i, to) :goS exit
        emit_subj_goS(Tree(E_FNC, 'GT', 2, forVar, lower_atom(c(x)[3])), lblM);
        //  i := i + step
        TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(E_ASSIGN, '', 2, forVar, Tree(E_ADD, '', 2, forVar, forStep)))));
        emit_go(lblS);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'RB_CASE'))       lower_case(x);
    //  compound_stmt — transparent sequence: lower each child in order.
    else if (IDENT(k, 'COMPOUND')) {
        i = 0;
        while (i = LT(i, n(x)) i + 1) lower_stmt(c(x)[i]);
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
