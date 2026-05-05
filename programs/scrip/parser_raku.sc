/*====================================================================================================================*/
// parser_raku.sc — PARSER-RK: Raku frontend in Snocone.
//
// Reads whole Raku source from stdin into Src, then runs the canonical
// `Compiland` PATTERN once over Src to build the IR tree on the shared
// stack via Shift/Reduce, then dumps each tree via TDump.  After
// whitespace normalization the dumped form is byte-identical to scrip's
// existing Raku-frontend `--dump-ir` output — that is the PARSER-RK gate.
//
// Naming policy (per RULES.md "Snocone parser style", canonical at
// GOAL-PARSER-SNOBOL4.md ## Style Guidelines for parser_*.sc §1):
//   token classifiers — UpperCamel mirroring raku.l TK_* (VarScalar, LitInt, ...)
//   non-terminals     — UpperCamel mirroring raku.y (Stmt, Expr, Block, IfStmt, ...)
//   IR node tags      — mirror ir.h E_* (E_VAR, E_ILIT, E_FNC, E_ASSIGN, ...)
//   cross-PARSER spine — Compiland / nPush / nInc / nTop / nPop / reduce
//
// Style — beauty.sno / parser_icon.sc:
//   $' '     = Gray          (invisible optional whitespace)
//   $'  '    = White         (required-single-space lexical separator)
//   $'tok'   = punctuation pattern, $' '-padded both sides.
//   $'kw'    = keyword pattern, $' '-padded leading; trailing $'  '
//              required at call site where lexical separation matters.
//
// Reduce-tag constants follow parser_icon.sc convention: sq-quoted form
// so they are EVAL-able strings inside reduce().
//
// PARSER-RK-4.5-e: function-plumbing scaffold removed.  shift()/reduce()
// operate directly inside the grammar patterns.  Minimal helpers retained
// for tree-building operations not expressible via shift/reduce alone
// (guideline §4a retained-for-<reason>):
//
//   push_var()    — sigil-stripped variable push (uses capvf/capvr).
//                      Retained: shift() captures full matched text (sigil
//                      included); oracle requires bare name in E_VAR value.
//   push_param()  — sigil-stripped param push (uses cappf/cappr).
//                      Retained: same reason as push_var.
//   push_qlit()   — string-body push (uses capstr).
//                      Retained: same reason as ic_push_qlit in parser_icon.sc
//                      (shift() would include the surrounding quotes).
//   finish_say()    — say → write name remap.
//                      Retained: reduce() sets value=''; E_FNC write requires
//                      value='write' to match oracle.
//   store_for_iter()   — stash for-loopvar name from capff/capfr captures.
//                      Retained: for_iter must be set before Block is
//                      parsed; no other mechanism to carry a name across.
//   finish_for()  — for-loop tree build (pops block+array, builds
//                      E_ITERATE+E_EVERY from for_iter stash).
//                      Retained: E_ITERATE carries loopvar name as value;
//                      reduce() cannot supply a non-empty value field.
//   finish_sub()  — sub decomposition (pops counter frame, builds STMT).
//                      Retained: sub name in E_FNC value from capsnf/capsnr;
//                      same structural role as ic_decompose_proc in parser_icon.sc.
//   finish_call() — function call decomposition (pops counter frame,
//                      builds E_FNC with fname from capfnf/capfnr).
//                      Retained: same reason as finish_sub.
//   finish_main() — main wrapper (same role as finish_sub for top-level).
//                      Retained: same structural reason.
//
// Rung PARSER-RK-4.5-e.
/*====================================================================================================================*/
// IR tag constants — name IS the tag; self-quoted for reduce(), bare for shift().
/*====================================================================================================================*/
E_ASSIGN    = "'E_ASSIGN'";  E_SEQ_EXPR = "'E_SEQ_EXPR'";
E_ADD       = "'E_ADD'";      E_SUB      = "'E_SUB'";
E_MUL       = "'E_MUL'";      E_DIV      = "'E_DIV'";
E_EQ        = "'E_EQ'";       E_NE       = "'E_NE'";
E_LT        = "'E_LT'";       E_LE       = "'E_LE'";
E_GT        = "'E_GT'";       E_GE       = "'E_GE'";
E_IF        = "'E_IF'";       E_WHILE    = "'E_WHILE'";
E_RETURN    = "'E_RETURN'";   E_TO       = "'E_TO'";
E_NOT       = "'E_NOT'";      E_UNTIL    = "'E_UNTIL'";
E_SEQ       = "'E_SEQ'";      E_ALT      = "'E_ALT'";
E_Parse     = "'Parse'";
/*====================================================================================================================*/
// Whitespace primitives.  White / Gray are the cross-parser canonical names;
// the grammar refers to $' ' / $'  ' invisible-whitespace tokens.
// nl_one = ANY(nl) — the correct cross-PARSER idiom; SPAN(...nl) fails.
/*====================================================================================================================*/
White    = (  SPAN(' ' tab) FENCE('#' BREAK(nl) | epsilon)
           |  '#' BREAK(nl)
           );
Gray     = White | epsilon;
nl_one   = ANY(nl);
/*====================================================================================================================*/
// Invisible-whitespace tokens — beauty.sno style taken further.
// $' ' (one space) names optional whitespace; $'  ' (two spaces) names
// the required-single-space lexical separator.
/*====================================================================================================================*/
$' '     = Gray;
$'  '    = White;
/*====================================================================================================================*/
// Keyword tokens — leading optional whitespace only (next token supplies its own left-ws as effective suffix).
/*====================================================================================================================*/
$'my'     = $' ' 'my'    ;  $'say'    = $' ' 'say'   ;
$'if'     = $' ' 'if'    ;  $'else'   = $' ' 'else'  ;
$'while'  = $' ' 'while' ;  $'for'    = $' ' 'for'   ;
$'sub'    = $' ' 'sub'   ;  $'return' = $' ' 'return';
$'exists' = $' ' 'exists';  $'delete' = $' ' 'delete';
$'unless' = $' ' 'unless';  $'until'  = $' ' 'until';
/*====================================================================================================================*/
// Operator tokens — optional whitespace both sides.  Open brackets: ws after only.  Close: ws before only.
/*====================================================================================================================*/
$'->'  = $' ' '->' $' ';  $'=='  = $' ' '==' $' ';
$'!='  = $' ' '!=' $' ';  $'<='  = $' ' '<=' $' ';
$'>='  = $' ' '>=' $' ';  $'='   = $' ' '='  $' ';
$'+'   = $' ' '+'  $' ';  $'-'   = $' ' '-'  $' ';
$'*'   = $' ' '*'  $' ';  $'/'   = $' ' '/'  $' ';
$';'   = $' ' ';'  $' ';  $','   = $' ' ','  $' ';
$'('   = $' ' '(' $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{' $' ';  $'}'   = $' ' '}';
$'<'   = $' ' '<' $' ';  $'>'   = $' ' '>';
$'['   = $' ' '[' $' ';  $']'   = $' ' ']';
$'~~'  = $' ' '~~' $' ';
$'..'  = $' ' '..' $' ';  $'..^' = $' ' '..^' $' ';
$'&&'  = $' ' '&&' $' ';  $'||'  = $' ' '||'  $' ';
$'!'   = $' ' '!';
/*====================================================================================================================*/
// Token classifiers — mirror raku.l names.
// Each classifier bakes $' ' (optional leading whitespace) into its
// definition so the grammar uses bare names.
/*====================================================================================================================*/
ident_first = ANY(&UCASE &LCASE '_');
ident_rest  = SPAN(digits &UCASE &LCASE '_');
Ident   = ($' ' ident_first (ident_rest | epsilon));

// Sigiled variables: capture bare name (strip sigil) into capvf/capvr.
// push_var() uses the captures — see retained-for-<reason> note above.
vf    = ANY(&UCASE &LCASE '_');
vr    = SPAN(digits &UCASE &LCASE '_');
vro   = (vr | epsilon);

VarScalar = ($' ' '$' vf . capvf vro . capvr);
VarArray  = ($' ' '@' vf . capvf vro . capvr);
VarHash   = ($' ' '%' vf . capvf vro . capvr);

// Literals.
LitInt    = ($' ' SPAN(digits));
LitStrDQ  = ($' ' '"' BREAK('"') . capstr '"');
LitStrSQ  = ($' ' "'" BREAK("'") . capstr "'");
// Regex literal — /body/: capture everything between the slashes as raw bytes.
// Starter slice (RK-5): BREAK('/') — does not handle / inside [...] or after \.
// Body stored in caprx for push_rxlit().
LitRegex  = ($' ' '/' BREAK('/') . caprx '/');
// Positional capture variable — $0, $1, …  Captures digit string into capidx.
// Mirror of raku.l: "$"[0-9]+  → VAR_CAPTURE / ival = atoi(yytext+1).
// SPAN(digits) .capidx — dot captures the matched span into capidx.
VarCapture      = ($' ' '$' SPAN(digits) . capidx);
// Standard handles — $*STDIN/$*STDOUT/$*STDERR → VAR_CAPTURE ival 0/1/2 (raku.l RK-39).
// Hardcode the ival string into capidx so finish_capture() works unchanged.
VarStdIn        = ($' ' '$*STDIN');
VarStdOut       = ($' ' '$*STDOUT');
VarStdErr       = ($' ' '$*STDERR');
// Named capture variable — $<name>.  Captures bare name (strip $< and >) into capncname.
// Mirror of raku.l: "$<"[a-zA-Z][a-zA-Z0-9_]*">"  → VAR_NAMED_CAPTURE / sval.
// BREAK('>') .capncname — captures everything between < and > as a block.
VarNamedCapture = ($' ' '$<' BREAK('>') . capncname '>');
// Global match — m:g/body/  → LIT_MATCH_GLOBAL (raku.l RK-37).
// Body captured into caprx; finish_match_global() builds raku_match_global node.
LitMatchGlobal  = ($' ' 'm:g/' BREAK('/') . caprx '/');
// Substitution — s/pat/repl/[g]  → LIT_SUBST (raku.l RK-37).
// Pack into capsub = pat SOH repl SOH flag (mirror of C lexer token format).
// flag '-' = single replace, 'g' = global replace.
LitSubst        = ($' ' 's/' BREAK('/') . cappat '/'
                             BREAK('/') . caprepl '/'
                             ('g' . capflag | epsilon));
// HashAngleKey — the bare identifier between < and > in %hash<ident> / exists %hash<ident>.
// Captures the full key into capkey via BREAK('>').
// No leading $' ' — the '<' token is supplied by the calling pattern.
HashAngleKey = (BREAK('>') . capkey);
// Indexed access classifiers — use colnmf/colnmr (separate from capvf/capvr) so
// the index Expr cannot clobber the collection variable name.
// Mirror of raku.l VAR_ARRAY '@'{ALPHA}{ALNUM}* / VAR_HASH '%'{ALPHA}{ALNUM}*.
cnf  = ANY(&UCASE &LCASE '_');
cnr  = SPAN(digits &UCASE &LCASE '_');
cnro = (cnr | epsilon);
ArrIdxVar  = ($' ' '@' cnf . colnmf cnro . colnmr);
HashIdxVar = ($' ' '%' cnf . colnmf cnro . colnmr);
/*====================================================================================================================*/
// Per-construct identifier captures.  Distinct globals keep recursive Expr
// calls from clobbering an in-flight for-loopvar / sub-name capture.
/*====================================================================================================================*/
// For-loopvar.
ff   = ANY(&UCASE &LCASE '_');
fr   = SPAN(digits &UCASE &LCASE '_');
fro  = (fr | epsilon);
ForLoopvar = ($' ' '$' ff . capff fro . capfr);

// Sub name.
snf  = ANY(&UCASE &LCASE '_');
snr  = SPAN(digits &UCASE &LCASE '_');
snro = (snr | epsilon);
SubName = ($' ' snf . capsnf snro . capsnr);

// Sub param (scalar only at RK-4).
pf   = ANY(&UCASE &LCASE '_');
pr   = SPAN(digits &UCASE &LCASE '_');
pro  = (pr | epsilon);
SubParam = ($' ' '$' pf . cappf pro . cappr);

// Function-call name.
fnf  = ANY(&UCASE &LCASE '_');
fnr  = SPAN(digits &UCASE &LCASE '_');
fnro = (fnr | epsilon);
CallName = ($' ' fnf . capfnf fnro . capfnr);
/*====================================================================================================================*/
// Retained globals — minimal set after 4.5-e.
/*====================================================================================================================*/
capvf         = '';
capvr         = '';
colnmf    = '';
colnmr    = '';
capstr    = '';
caprx     = '';
capidx    = '';
capncname = '';
cappat    = '';
caprepl   = '';
capflag   = '';
capkey    = '';
capff         = '';
capfr         = '';
for_iter   = '';
capsnf        = '';
capsnr        = '';
cappf         = '';
cappr         = '';
sub_list   = '';

struct slink { snext, sval }
/*====================================================================================================================*/
// Minimal helper functions — tree-building / semantic only.
// None is called from inside a parsing pattern except via named action
// patterns below.  Retained-for-<reason> notes in file header.
/*====================================================================================================================*/
/*--------------------------------------------------------------------------------------------------------------------*/
// push_var — push tree('E_VAR', bare_name) using capvf/capvr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_var() {
    Push(tree('E_VAR', capvf capvr));
    push_var = .dummy;
    nreturn;
}
Push_var   = (epsilon . *push_var());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_param — push tree('E_VAR', bare_name) using cappf/cappr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_param() {
    Push(tree('E_VAR', cappf cappr));
    push_param = .dummy;
    nreturn;
}
Push_param = (epsilon . *push_param());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_qlit — push tree('E_QLIT', body) using capstr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_qlit() {
    Push(tree('E_QLIT', capstr));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit  = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_rxlit — push tree('E_QLIT', body) using caprx.  Regex literal /body/.
// Oracle emits regex bodies as plain E_QLIT — the runtime distinguishes regex
// from string by call context (raku_match's second arg).
/*--------------------------------------------------------------------------------------------------------------------*/
function push_rxlit() {
    Push(tree('E_QLIT', caprx));
    push_rxlit = .dummy;
    nreturn;
}
Push_rxlit = (epsilon . *push_rxlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_capture — positional capture $N → (E_FNC raku_capture (E_VAR raku_capture) (E_ILIT N)).
// capidx holds the digit string captured by VarCapture.
// Retained: reduce() sets value=''; E_FNC requires value='raku_capture'.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_capture(fn, node) {
    fn   = tree('E_VAR', 'raku_capture');
    node = tree('E_FNC', 'raku_capture');
    Append(node, fn);
    Append(node, tree('E_ILIT', capidx));
    Push(node);
    finish_capture = .dummy;
    nreturn;
}
Finish_capture = (epsilon . *finish_capture());
/*--------------------------------------------------------------------------------------------------------------------*/
// Standard handle action patterns — set capidx then delegate to finish_capture.
// $*STDIN→ival=0, $*STDOUT→ival=1, $*STDERR→ival=2 (mirrors raku.l RK-39).
/*--------------------------------------------------------------------------------------------------------------------*/
function set_stdin()  { capidx = '0'; set_stdin  = .dummy; nreturn; }
function set_stdout() { capidx = '1'; set_stdout = .dummy; nreturn; }
function set_stderr() { capidx = '2'; set_stderr = .dummy; nreturn; }
Finish_stdin  = (epsilon . *set_stdin()  Finish_capture);
Finish_stdout = (epsilon . *set_stdout() Finish_capture);
Finish_stderr = (epsilon . *set_stderr() Finish_capture);
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_named_capture — named capture $<name> →
//   (E_FNC raku_named_capture (E_VAR raku_named_capture) (E_QLIT "name")).
// capncname holds the bare name (without $< and >) captured by VarNamedCapture.
// Retained: same reason as finish_capture — value field requires explicit name.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_named_capture(fn, node) {
    fn   = tree('E_VAR', 'raku_named_capture');
    node = tree('E_FNC', 'raku_named_capture');
    Append(node, fn);
    Append(node, tree('E_QLIT', capncname));
    Push(node);
    finish_named_capture = .dummy;
    nreturn;
}
Finish_named_capture = (epsilon . *finish_named_capture());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_match_global — $s ~~ m:g/pat/ → (E_FNC raku_match_global (E_VAR raku_match_global) subj pat).
// caprx holds the regex body captured by LitMatchGlobal.
// Retained: same reason as finish_smartmatch — value field requires explicit name.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_match_global(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('E_VAR', 'raku_match_global');
    node = tree('E_FNC', 'raku_match_global');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_match_global = .dummy;
    nreturn;
}
Finish_match_global = (epsilon . *finish_match_global());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_subst — $s ~~ s/pat/repl/[g] → (E_FNC raku_subst (E_VAR raku_subst) subj (E_QLIT "pat\x01repl\x01flag")).
// cappat/caprepl/capflag captured by LitSubst.  flag = 'g' or '' (→ '-').
// Packed sval mirrors the C lexer's LIT_SUBST token format.
// Retained: needs to build the packed E_QLIT from three captures; reduce() cannot.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_subst(subj, fn, node, flag, packed) {
    subj   = Pop();
    flag   = IDENT(capflag, 'g') 'g';
    flag   = IDENT(flag) '-';
    packed = cappat CHAR(1) caprepl CHAR(1) flag;
    fn     = tree('E_VAR', 'raku_subst');
    node   = tree('E_FNC', 'raku_subst');
    Append(node, fn);
    Append(node, subj);
    Append(node, tree('E_QLIT', packed));
    Push(node);
    capflag = '';
    finish_subst = .dummy;
    nreturn;
}
Finish_subst = (epsilon . *finish_subst());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_arr_get — @arr[$expr] → (E_FNC arr_get (E_VAR arr_get) (E_VAR arr) index).
// capvf/capvr hold the array name (set by VarArray classifier).
// index is on top of stack (pushed by Expr inside the brackets).
// Retained: value='arr_get' in E_FNC requires explicit build; reduce() sets value=''.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_arr_get(idx, arr, fn, node) {
    idx  = Pop();
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'arr_get');
    node = tree('E_FNC', 'arr_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, idx);
    Push(node);
    finish_arr_get = .dummy;
    nreturn;
}
Finish_arr_get = (epsilon . *finish_arr_get());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_get_angle — %hash<ident> → (E_FNC hash_get (E_VAR hash_get) (E_VAR h) (E_QLIT key)).
// capvf/capvr = hash name; capkey = the angle-bracket identifier key.
// Retained: same reason as finish_arr_get.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_get_angle(arr, fn, node) {
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_get');
    node = tree('E_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('E_QLIT', capkey));
    Push(node);
    finish_hash_get_angle = .dummy;
    nreturn;
}
Finish_hash_get_angle = (epsilon . *finish_hash_get_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_get_brace — %hash{$expr} → (E_FNC hash_get ... (E_VAR h) key_expr).
// capvf/capvr = hash name; key_expr on top of stack.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_get_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_get');
    node = tree('E_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_get_brace = .dummy;
    nreturn;
}
Finish_hash_get_brace = (epsilon . *finish_hash_get_brace());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_exists_angle — exists %hash<ident> → (E_FNC hash_exists ... (E_VAR h) (E_QLIT key)).
// capvf/capvr = hash name; capkey = key.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_exists_angle(arr, fn, node) {
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_exists');
    node = tree('E_FNC', 'hash_exists');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('E_QLIT', capkey));
    Push(node);
    finish_hash_exists_angle = .dummy;
    nreturn;
}
Finish_hash_exists_angle = (epsilon . *finish_hash_exists_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_exists_brace — exists %hash{$expr} → (E_FNC hash_exists ... (E_VAR h) key_expr).
// capvf/capvr = hash name; key_expr on top of stack.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_exists_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_exists');
    node = tree('E_FNC', 'hash_exists');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_exists_brace = .dummy;
    nreturn;
}
Finish_hash_exists_brace = (epsilon . *finish_hash_exists_brace());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_delete_angle — delete %hash<ident> →
//   (E_FNC hash_delete (E_VAR hash_delete) (E_VAR h) (E_QLIT key)).
// capkey holds the angle-bracket key; colnmf/colnmr hold hash name (set by HashIdxVar).
// Retained: value='hash_delete' in E_FNC requires explicit build; reduce() sets value=''.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_delete_angle(arr, fn, node) {
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_delete');
    node = tree('E_FNC', 'hash_delete');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('E_QLIT', capkey));
    Push(node);
    finish_hash_delete_angle = .dummy;
    nreturn;
}
Finish_hash_delete_angle = (epsilon . *finish_hash_delete_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_delete_brace — delete %hash{$expr} →
//   (E_FNC hash_delete (E_VAR hash_delete) (E_VAR h) key_expr).
// key_expr on top of stack; colnmf/colnmr hold hash name (set by HashIdxVar).
// Retained: same reason as finish_hash_delete_angle.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_delete_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('E_VAR', colnmf colnmr);
    fn   = tree('E_VAR', 'hash_delete');
    node = tree('E_FNC', 'hash_delete');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_delete_brace = .dummy;
    nreturn;
}
Finish_hash_delete_brace = (epsilon . *finish_hash_delete_brace());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_for_range — for lo..hi -> $v { body } → while-loop lowering.
// Mirrors raku.y make_for_range().  Stack on entry: body (E_SEQ_EXPR) on top,
// hi below, lo below that.  for_iter holds the loopvar name (set by Store_for_iter).
//
// Expansion (matching oracle):
//   (E_SEQ_EXPR
//     (E_ASSIGN (E_VAR v) lo)
//     (E_WHILE
//       (E_LE (E_VAR v) hi)
//       body_with_incr_appended))
//
// Retained: synthesizes multiple nodes from three stack values + for_iter stash;
// reduce() cannot build multi-child sequences or append to an existing node.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_for_range(body, hi, lo, vvar, incr, cond, init, wloop, seq) {
    body = Pop();
    hi   = Pop();
    lo   = Pop();
    vvar = tree('E_VAR', for_iter);
    // Append increment stmt to body: body += (E_ASSIGN v (E_ADD v 1))
    incr = tree('E_ADD', '');
    Append(incr, tree('E_VAR', for_iter));
    Append(incr, tree('E_ILIT', '1'));
    Append(body, tree('E_ASSIGN', ''));
    Append(c(body)[n(body)], tree('E_VAR', for_iter));
    Append(c(body)[n(body)], incr);
    // Build (E_WHILE (E_LE v hi) body)
    cond  = tree('E_LE', '');
    Append(cond, tree('E_VAR', for_iter));
    Append(cond, hi);
    wloop = tree('E_WHILE', '');
    Append(wloop, cond);
    Append(wloop, body);
    // Build (E_ASSIGN v lo)
    init = tree('E_ASSIGN', '');
    Append(init, tree('E_VAR', for_iter));
    Append(init, lo);
    // Wrap in E_SEQ_EXPR
    seq = tree('E_SEQ_EXPR', '');
    Append(seq, init);
    Append(seq, wloop);
    Push(seq);
    finish_for_range = .dummy;
    nreturn;
}
Finish_for_range = (epsilon . *finish_for_range());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_smartmatch
// Retained: reduce() builds value=''; E_FNC requires value='raku_match'.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_smartmatch(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('E_VAR', 'raku_match');
    node = tree('E_FNC', 'raku_match');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_smartmatch = .dummy;
    nreturn;
}
Finish_smartmatch = (epsilon . *finish_smartmatch());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_not — wrap top-of-stack expr in (E_NOT expr).
// Used by UnlessStmt: unless (cond) → (E_IF (E_NOT cond) then [else]).
// Retained: reduce() with arity 1 builds a new node but cannot wrap an existing
// node; we need to pop, wrap, and push.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_not(inner, node) {
    inner = Pop();
    node  = tree('E_NOT', '');
    Append(node, inner);
    Push(node);
    finish_not = .dummy;
    nreturn;
}
Finish_not = (epsilon . *finish_not());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_say — say → write name remap.  Pops arg, builds E_FNC write.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_say(arg, fn, node) {
    arg  = Pop();
    fn   = tree('E_VAR', 'write');
    node = tree('E_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_say = .dummy;
    nreturn;
}
Finish_say   = (epsilon . *finish_say());
/*--------------------------------------------------------------------------------------------------------------------*/
// store_for_iter — stash for-loopvar name from capff/capfr.
/*--------------------------------------------------------------------------------------------------------------------*/
function store_for_iter(vf, vr) {
    for_iter = vf vr;
    store_for_iter = .dummy;
    nreturn;
}
Store_for_iter  = (epsilon . *store_for_iter(capff, capfr));
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_for — pops block+array from stack, builds E_EVERY.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_for(block, iter_arr, iter_node, node) {
    block     = Pop();
    iter_arr  = Pop();
    iter_node = tree('E_ITERATE', for_iter);
    Append(iter_node, iter_arr);
    node = tree('E_EVERY', '');
    Append(node, iter_node);
    Append(node, block);
    Push(node);
    finish_for = .dummy;
    nreturn;
}
Finish_for   = (epsilon . *finish_for());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_sub — pops counter frame, builds (STMT :subj (E_FNC sname ...)).
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_sub(n_kids, kids, sname, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    sname = capsnf capsnr;
    efnc  = tree('E_FNC', sname);
    Append(efnc, tree('E_VAR', sname));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_sub = .dummy;
    nreturn;
}
Finish_sub   = (epsilon . *finish_sub());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_call — function call decomposition.  Reads TopCounter() for
// nTop() children (callee E_VAR + args).  Builds (E_FNC fname (E_VAR fname)
// arg1...argN) with fname from capfnf/capfnr captures.
// Retained: reduce() sets value=''; E_FNC requires value=fname to match oracle.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_call(n_kids, kids, fname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    fname = capfnf capfnr;
    efnc  = tree('E_FNC', fname);
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_call = .dummy;
    nreturn;
}
Finish_call  = (epsilon . *finish_call());
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_main(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    efnc = tree('E_FNC', 'main');
    Append(efnc, tree('E_VAR', 'main'));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    subj = tree(':subj', '');
    Append(subj, efnc);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    Push(stmt);
    finish_main = .dummy;
    nreturn;
}
Finish_main  = (epsilon . *finish_main());
/*====================================================================================================================*/
// Flatten helpers — n-ary arith chains.
//
// The Raku C frontend (raku.y) uses expr_binary_flatten() which produces n-ary
// (E_ADD a b c) instead of nested binary (E_ADD (E_ADD a b) c).  Each helper
// pops rhs, inspects top-of-stack lhs: if lhs has the same tag, appends rhs to
// lhs in-place (leaving lhs on stack); otherwise builds a fresh 2-child node.
// Called from ExprNtail ARBNO bodies — one helper per operator tag.
//
// Retained: reduce() always builds a new node with fixed arity; it cannot
// splice into an existing same-tag node.  These are the minimal helpers
// required for n-ary correctness (§4a retained-for-<reason>).
/*====================================================================================================================*/
function flatten_add(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'E_ADD') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('E_ADD', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_add = .dummy;
    nreturn;
}
Flatten_add = (epsilon . *flatten_add());

function flatten_sub(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'E_SUB') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('E_SUB', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_sub = .dummy;
    nreturn;
}
Flatten_sub = (epsilon . *flatten_sub());

function flatten_mul(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'E_MUL') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('E_MUL', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_mul = .dummy;
    nreturn;
}
Flatten_mul = (epsilon . *flatten_mul());

function flatten_div(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'E_DIV') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('E_DIV', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_div = .dummy;
    nreturn;
}
Flatten_div = (epsilon . *flatten_div());

/*====================================================================================================================*/
// Expression tower — result lives on the shared stack.
//
// Named tail patterns (Expr7tail etc.) wrap operator + rhs + action so
// ARBNO fires the action reliably on each repetition.
/*====================================================================================================================*/
// CallArgTail — defined BEFORE Expr11 so the ARBNO(*CallArgTail) reference
// in Expr11 resolves at match time (deferred), not capture-time epsilon.

CallArgTail = ( $','  *Expr  nInc() );

// Expr11 — primary.

Expr11 = ( $'!'  *Expr11  Finish_not
         | VarScalar              Push_var
         | ArrIdxVar  $'['  *Expr  $']'              Finish_arr_get
         | VarArray                                   Push_var
         | HashIdxVar $'<'  HashAngleKey  $'>'        Finish_hash_get_angle
         | HashIdxVar $'{'  *Expr  $'}'               Finish_hash_get_brace
         | VarHash                                    Push_var
         | $'exists' HashIdxVar $'<' HashAngleKey $'>'  Finish_hash_exists_angle
         | $'exists' HashIdxVar $'{' *Expr $'}'         Finish_hash_exists_brace
         | VarStdIn               Finish_stdin
         | VarStdOut              Finish_stdout
         | VarStdErr              Finish_stderr
         | VarCapture             Finish_capture
         | VarNamedCapture        Finish_named_capture
         | shift(LitInt, 'E_ILIT')
         | LitStrDQ               Push_qlit
         | LitStrSQ               Push_qlit
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, 'E_VAR')  nInc()
             $'('
             ( *Expr              nInc()
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                 Finish_call
             nPop()
           )
         );

// Expr7 — multiplicative (* /).
// Flatten_mul / Flatten_div produce n-ary (E_MUL a b c) matching the C oracle.
Expr7tail = FENCE( $'*'  *Expr11  Flatten_mul
                 | $'/'  *Expr11  Flatten_div
                 );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
// Flatten_add / Flatten_sub produce n-ary (E_ADD a b c) matching the C oracle.
Expr6tail = FENCE( $'+'  *Expr7  Flatten_add
                 | $'-'  *Expr7  Flatten_sub
                 );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

// Expr5 — range ops (.. and ..^).  Both map to E_TO (oracle: raku.y OP_RANGE_EX also → E_TO).
// Range is non-chaining (not ARBNO) — just a single optional tail.
// ..^ tried first (longer token) so FENCE picks it before ...
Expr5     = ( Expr6
              FENCE( $'..^'  *Expr6  (E_TO & 2)
                   | $'..'   *Expr6  (E_TO & 2)
                   | epsilon
                   )
            );

// Expr4 — comparison ops.  Two-char ops tried first (longest match).
// ~~ smartmatch: subject ~~ /pattern/ — produces raku_match(subj, pat).
// Smartmatch's RHS is a LitRegex (not arbitrary Expr) at the RK-5 starter slice.
Expr4tail = FENCE( $'=='  *Expr5      (E_EQ & 2)
                 | $'!='  *Expr5      (E_NE & 2)
                 | $'<='  *Expr5      (E_LE & 2)
                 | $'>='  *Expr5      (E_GE & 2)
                 | $'<'   *Expr5      (E_LT & 2)
                 | $'>'   *Expr5      (E_GT & 2)
                 | $'~~'  LitRegex Push_rxlit  Finish_smartmatch
                 | $'~~'  LitMatchGlobal Push_rxlit  Finish_match_global
                 | $'~~'  LitSubst       Finish_subst
                 );
Expr4     = ( Expr5  ARBNO(Expr4tail) );

// Expr3 — logical ops (&& ||).
// Mirrors raku.y cmp_expr: cmp_expr OP_AND add_expr / cmp_expr OP_OR add_expr.
// && → E_SEQ (goal-directed and), || → E_ALT (goal-directed or).
// && tried before || (no ambiguity but mirrors longest-match convention).
Expr3tail = FENCE( $'&&'  *Expr4  (E_SEQ & 2)
                 | $'||'  *Expr4  (E_ALT & 2)
                 );
Expr3     = ( Expr4  ARBNO(Expr3tail) );

// Expr — top of expression tower.
Expr      = Expr3;
/*====================================================================================================================*/
// Block — `{ BlockStmt* }` — produces E_SEQ_EXPR pushed on stack.
/*====================================================================================================================*/
nl_opt = (nl_one | epsilon);

BlockStmt = epsilon;

Block_body = ( nl_opt
               *BlockStmt
               nl_opt
               nInc()
             );

Block = ( $'{' nl_opt
          nPush()
          ARBNO( Block_body )
          nl_opt $'}'
          (E_SEQ_EXPR & 'nTop()')
          nPop()
        );
/*====================================================================================================================*/
// SubBlock — `{ SubBlockStmt* }` — each stmt increments sub counter frame.
/*====================================================================================================================*/
SubBlockStmt = epsilon;

SubBlock_body = ( nl_opt  *SubBlockStmt  nl_opt  nInc() );

SubBlock = ( $'{' nl_opt
             ARBNO( SubBlock_body )
             nl_opt $'}'
           );
/*====================================================================================================================*/
// Statements.
/*====================================================================================================================*/
IfStmt = ( $'if'  $'(' Expr $')'
           Block
           ( $'else'  Block  (E_IF & 3)
           | (E_IF & 2)
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              (E_WHILE & 2)
            );

// UnlessStmt — unless (cond) block [else block].
// Mirrors raku.y: (E_IF (E_NOT cond) then [else]).
UnlessStmt = ( $'unless'  $'(' Expr $')'
               Finish_not
               Block
               ( $'else'  Block  (E_IF & 3)
               | (E_IF & 2)
               )
             );

// UntilStmt — until (cond) block.
// Mirrors raku.y: (E_UNTIL cond body).
UntilStmt = ( $'until'  $'(' Expr $')'
              Block
              (E_UNTIL & 2)
            );

ForStmt = ( $'for' $'  '  Expr
            $'->'
            ForLoopvar  Store_for_iter
            Block  Finish_for
          );

// ForRangeStmt — for lo..hi -> $v { body } or for lo..^hi -> $v { body }.
// Must appear before ForStmt in Stmt alternatives — both start with 'for'.
// Mirrors raku.y make_for_range(): lo and hi are Expr6 (add-level) operands.
// ..^ tried before .. (longer token match).
ForRangeStmt = ( $'for' $'  '
                 Expr6
                 FENCE( $'..^' | $'..' )
                 Expr6
                 $'->'
                 ForLoopvar  Store_for_iter
                 Block  Finish_for_range
               );

// DeleteHashAngle — delete %hash<ident> ; → (E_FNC hash_delete ...)
DeleteHashAngle = ( $'delete'  HashIdxVar  $'<'  HashAngleKey  $'>'  $';'
                    Finish_hash_delete_angle
                  );

// DeleteHashBrace — delete %hash{$expr} ; → (E_FNC hash_delete ...)
DeleteHashBrace = ( $'delete'  HashIdxVar  $'{'  Expr  $'}'  $';'
                    Finish_hash_delete_brace
                  );

ReturnStmt = ( $'return'
               ( $';'         (E_RETURN & 0)
               | $'  ' Expr   $';'  (E_RETURN & 1)
               )
             );

AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  Push_var
               | VarArray   Push_var
               | VarHash    Push_var
               )
               $'='  Expr  $';'  (E_ASSIGN & 2)
             );

SayStmt = ( $'say'
            Expr  $';'  Finish_say
          );

BareStmt = ( Expr $';' );

Stmt = ( IfStmt
       | WhileStmt
       | UnlessStmt
       | UntilStmt
       | ForRangeStmt
       | ForStmt
       | DeleteHashAngle
       | DeleteHashBrace
       | ReturnStmt
       | AssignStmt
       | SayStmt
       | BareStmt
       );

// BlockStmt — final binding.
BlockStmt = ( IfStmt | WhileStmt | UnlessStmt | UntilStmt | ForRangeStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ReturnStmt | AssignStmt | SayStmt | BareStmt );

// SubBlockStmt — SubBlock_body handles nInc per stmt.
SubBlockStmt = ( IfStmt | WhileStmt | UnlessStmt | UntilStmt | ForRangeStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ReturnStmt | AssignStmt | SayStmt | BareStmt );
/*====================================================================================================================*/
// Sub parameter list — each param shifts (E_VAR name) onto sub counter frame.
/*====================================================================================================================*/
SubParamTail = ( $','
                 SubParam  Push_param  nInc()
               );

SubParams = ( SubParam  Push_param  nInc()
              ARBNO( SubParamTail )
            | epsilon
            );

SubStmt = ( $'sub' $'  '
            SubName
            nPush()
            $'(' SubParams $')'
            SubBlock  Finish_sub
            nPop()
          );
/*====================================================================================================================*/
// Compiland — canonical cross-PARSER spine.
// Outer frame: holds exactly 1 item (the main STMT) for reduce('Parse',1).
// Inner frame: counts main body stmts for finish_main().
/*====================================================================================================================*/
Compiland = nPush()
            nPush()
            ARBNO( (SubStmt | (Stmt nInc())) nl_opt )
            Finish_main
            nPop()
            nInc()
            (E_Parse & 1)
            nPop();
/*====================================================================================================================*/
// Driver — read stdin into Src, run one ? match, emit sub STMTs then main.
/*====================================================================================================================*/
InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) Src = Src Line nl;

ok = (Src ? Compiland);

if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        // Reverse the sub_list (cons'd in forward order, need reverse for emit).
        sub_rev = '';
        sl = sub_list;
        while (DIFFER(sl)) {
            sub_rev = slink(sub_rev, sval(sl));
            sl = snext(sl);
        }
        // Emit sub STMTs.
        sl = sub_rev;
        while (DIFFER(sl)) {
            TDump(sval(sl));
            sl = snext(sl);
        }
        // Emit main STMT only if it has body stmts beyond the initial E_VAR main child.
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            main_stmt = c(ptree)[i];
            subj_node = c(main_stmt)[1];
            efnc_node = c(subj_node)[1];
            if (GT(n(efnc_node), 1)) TDump(main_stmt);
            i = i + 1;
        }
    }
}

parser_done = '';
