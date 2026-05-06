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
//   finish_interp_str() — DQ string interpolation "hello $var" → E_CAT chain.
//                      Retained: must walk sub-string content to split on $ident;
//                      shift/reduce cannot iterate over string bytes.
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
E_CAT       = "'E_CAT'";
E_LEQ       = "'E_LEQ'";      E_LNE      = "'E_LNE'";
E_MNS       = "'E_MNS'";      E_MOD      = "'E_MOD'";
E_CASE      = "'E_CASE'";     E_NUL      = "'E_NUL'";
E_SUSPEND   = "'E_SUSPEND'";
E_Parse     = "'Parse'";
/*====================================================================================================================*/
// Whitespace primitives — canonical cross-PARSER model (mirrors parser_snocone.sc).
//
// White / Gray — whitespace primitives.  Aliased as $'  ' / $' ' and
// attached to tokens; the grammar body uses only the aliases so
// whitespace evaporates from productions.
//
// White (= $'  ', required separator): one run of spaces/tabs/newlines,
// optionally followed by a single '#'-line-comment that ends at nl —
// OR a standalone '#'-line-comment.  FENCE-based, NOT `white ARBNO(white)`
// — the canonical-Snocone shape interacts badly with this grammar's
// expression-tier ARBNOs under &FULLSCAN=1: operator chars like '~~' get
// re-segmented as '~ ~', and the matched-substring extraction in
// interp_eval.c / sm_interp.c reads stale globals.  See PARSER-RK-WS2 in
// GOAL-PARSER-RAKU.md.
//
// Gray (= $' ', optional whitespace): White | epsilon — must be the
// alternation form, NOT ARBNO(white), for the same reason.
/*====================================================================================================================*/
White       =   (  SPAN(' ' tab nl)  FENCE('#' BREAK(nl) nl | epsilon)
                |  '#' BREAK(nl) nl
                );
Gray        =   White | epsilon;
$'  '       =   White;
$' '        =   Gray;
/*====================================================================================================================*/
// Keyword tokens — leading optional whitespace only (next token supplies its own left-ws as effective suffix).
/*====================================================================================================================*/
$'my'     = $' ' 'my'    ;  $'say'    = $' ' 'say'   ;
$'if'     = $' ' 'if'    ;  $'else'   = $' ' 'else'  ;
$'while'  = $' ' 'while' ;  $'for'    = $' ' 'for'   ;
$'sub'    = $' ' 'sub'   ;  $'return' = $' ' 'return';
$'exists' = $' ' 'exists';  $'delete' = $' ' 'delete';
$'unless' = $' ' 'unless';  $'until'  = $' ' 'until';
$'given'  = $' ' 'given' ;  $'when'   = $' ' 'when'  ;
$'default' = $' ' 'default';
$'print'  = $' ' 'print'  ;  $'die'    = $' ' 'die'    ;
$'try'    = $' ' 'try'    ;  $'CATCH'  = $' ' ('CATCH' | 'catch');
$'map'    = $' ' 'map'    ;  $'grep'   = $' ' 'grep'   ;  $'sort'   = $' ' 'sort'   ;
$'gather' = $' ' 'gather' ;  $'take'   = $' ' 'take'   ;
$'eq'     = $' ' 'eq' $' ';  $'ne'   = $' ' 'ne' $' ';
$'div'    = $' ' 'div' $' ';  $'%'   = $' ' '%'  $' ';
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
$'!'   = $' ' '!';        $'~'   = $' ' '~'   $' ';
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
gather_seq = 0;

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
// finish_interp_str — DQ string interpolation: "hello $var" → left-assoc E_CAT chain.
// Mirrors raku.y lower_interp_str(): walks capstr, splits on $ident sequences,
// builds (E_CAT lhs rhs) binary nodes left-to-right.  If no $ident found → plain
// (E_QLIT body).  Only $scalar-name interpolation supported (matches the C oracle).
// Retained: must build a left-assoc binary chain from a string walk; shift/reduce
// cannot iterate over sub-string content.
/*--------------------------------------------------------------------------------------------------------------------*/
is_chars = &UCASE &LCASE '_';
ir_chars = digits &UCASE &LCASE '_';
function finish_interp_str(raw, lit, isvf, isvr, result, newnode, i) {
    raw    = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        lit = ''; isvf = ''; isvr = '';
        if (raw ? (POS(0) BREAK('$') . lit '$' ANY(is_chars) . isvf (SPAN(ir_chars) | epsilon) . isvr) = ) {
            if (DIFFER(lit)) {
                newnode = tree('E_QLIT', lit);
                if (DIFFER(result)) {
                    i = tree('E_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                } else { result = newnode; }
            }
            newnode = tree('E_VAR', isvf isvr);
            if (DIFFER(result)) {
                i = tree('E_CAT', ''); Append(i, result); Append(i, newnode); result = i;
            } else { result = newnode; }
        } else {
            if (raw ? (POS(0) REM . lit) = ) {
                if (DIFFER(lit)) {
                    newnode = tree('E_QLIT', lit);
                    if (DIFFER(result)) {
                        i = tree('E_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                    } else { result = newnode; }
                }
            }
            break;
        }
    }
    if (~DIFFER(result)) result = tree('E_QLIT', '');
    Push(result);
    finish_interp_str = .dummy;
    nreturn;
}
Push_interp_str = (epsilon . *finish_interp_str());
/*--------------------------------------------------------------------------------------------------------------------*/
// dq_unescape — process DQ string escape sequences mirroring the C lexer (raku.l STR_DQ rules):
//   \n → newline   \t → tab   \\ → backslash   \" → double-quote
// Called before push_qlit/Push_interp_str for LitStrDQ to match oracle lexer behaviour.
// Uses BREAK(bSlash) to collect literal runs; BREAK fails if no \ present so REM handles tail.
// Retained: BREAK cannot expand escapes in-place; must walk and rebuild.
/*--------------------------------------------------------------------------------------------------------------------*/
function dq_unescape(raw, result, lit, ch) {
    raw = capstr;
    result = '';
    while (1) {
        if (IDENT(raw)) break;
        // Collect literal run up to the next backslash.
        if (raw ? (POS(0) BREAK(bSlash) . lit) = ) { result = result lit; }
        if (IDENT(raw)) break;
        // raw starts with \; is that a backslash or end?
        if (raw ? (POS(0) bSlash) = ) {
            // Consume the next char after the backslash.
            if (raw ? (POS(0) LEN(1) . ch) = ) {
                if      (IDENT(ch, 'n'))      { result = result nl;     }
                else if (IDENT(ch, 't'))      { result = result tab;    }
                else if (IDENT(ch, bSlash))   { result = result bSlash; }
                else if (IDENT(ch, '"'))      { result = result '"';    }
                else                          { result = result bSlash ch; }
            }
        } else {
            // No backslash left — scoop the remainder.
            if (raw ? (POS(0) REM . lit) = ) { result = result lit; }
            break;
        }
    }
    capstr = result;
    dq_unescape = .dummy;
    nreturn;
}
Dq_unescape = (epsilon . *dq_unescape());
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
// finish_mns — unary minus: -(expr) → (E_MNS expr).
// Retained: same reason as finish_not — pop, wrap, push.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_mns(inner, node) {
    inner = Pop();
    node  = tree('E_MNS', '');
    Append(node, inner);
    Push(node);
    finish_mns = .dummy;
    nreturn;
}
Finish_mns = (epsilon . *finish_mns());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_given — given/when/default → E_CASE node.
//
// Stack on entry (bottom to top):
//   topic
//   [cmpnode val body] × n_whens    (each WhenClause pushed these 3 in order)
//   [default_body]                   (if given_has_def == 1; pushed by DefaultClause)
//
// E_CASE structure mirrors raku.y given_stmt:
//   (E_CASE topic [E_ILIT(cmp) val body]* [(E_NUL)(E_NUL) default]?)
//
// cmp kind: E_QLIT val → 73 (E_LEQ); other → 67 (E_EQ).  Mirrors raku.y
//   when_list: cmp=($3->kind==E_QLIT)?E_LEQ:E_EQ.
//
// Retained: must build E_CASE with variable arity from n counter + flag; reduce()
// cannot conditionally append E_NUL sentinels or inspect child tags.
/*--------------------------------------------------------------------------------------------------------------------*/
given_has_def = 0;
function finish_given(n_whens, def_body, kids, ec, i, cmpkind, cmpnode, val, body) {
    n_whens = TopCounter();
    if (EQ(given_has_def, 1)) def_body = Pop();
    // Pop when-pairs in reverse — each WhenClause pushed (val, body) then called nInc().
    kids = GT(n_whens, 0) ARRAY('1:' (n_whens * 2));
    i = n_whens * 2;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    // topic is now on top
    ec = tree('E_CASE', '');
    Append(ec, Pop());
    // Append each when-triple (cmpnode, val, body) in order.
    // cmp kind: E_QLIT val → 73 (E_LEQ), else → 67 (E_EQ).  Mirrors raku.y.
    i = 1;
    while (LE(i, n_whens)) {
        val  = kids[(i - 1) * 2 + 1];
        body = kids[(i - 1) * 2 + 2];
        if (IDENT(t(val), 'E_QLIT')) { cmpkind = '73'; } else { cmpkind = '67'; }
        cmpnode = tree('E_ILIT', cmpkind);
        Append(ec, cmpnode);
        Append(ec, val);
        Append(ec, body);
        i = i + 1;
    }
    // default arm: sentinel (E_NUL)(E_NUL) then body
    if (EQ(given_has_def, 1)) {
        Append(ec, tree('E_NUL', ''));
        Append(ec, tree('E_NUL', ''));
        Append(ec, def_body);
    }
    given_has_def = 0;
    Push(ec);
    finish_given = .dummy;
    nreturn;
}
function set_has_def() { given_has_def = 1; set_has_def = .dummy; nreturn; }
Finish_given = (epsilon . *finish_given());
Set_has_def  = (epsilon . *set_has_def());
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
// finish_print — print expr ; → (E_FNC writes (E_VAR writes) arg).
// Mirrors raku.y KW_PRINT expr ';': make_call("writes") + child.
// Retained: same reason as finish_say — E_FNC value='writes' requires explicit build.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_print(arg, fn, node) {
    arg  = Pop();
    fn   = tree('E_VAR', 'writes');
    node = tree('E_FNC', 'writes');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_print = .dummy;
    nreturn;
}
Finish_print = (epsilon . *finish_print());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_die — die expr → (E_FNC raku_die (E_VAR raku_die) arg).
// Mirrors raku.y KW_DIE expr: make_call("raku_die") + child.
// die is an expression (Expr11 prefix), not a statement — BareStmt supplies ';'.
// Retained: same reason as finish_say — E_FNC value='raku_die' requires explicit build.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_die(arg, fn, node) {
    arg  = Pop();
    fn   = tree('E_VAR', 'raku_die');
    node = tree('E_FNC', 'raku_die');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_die = .dummy;
    nreturn;
}
Finish_die = (epsilon . *finish_die());
/*--------------------------------------------------------------------------------------------------------------------*/
// ClosureExpr — `{ Expr }` — body expression for map/grep/sort.
// Matches `{', parses Expr, pops it, `}'. Leaves the expr on the stack.
// Retained: closure is syntactically `{ expr }` which differs from Block `{ stmt_list }`;
// needs to parse just one Expr rather than a statement list.
/*--------------------------------------------------------------------------------------------------------------------*/
function parse_closure_expr(body) {
    body = Pop();
    Push(body);
    parse_closure_expr = .dummy;
    nreturn;
}
ClosureExpr = ( $'{' *Expr $'}' );
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_map — map { closure_expr } list → (E_FNC raku_map (E_VAR raku_map) closure list).
// Mirrors raku.y KW_MAP closure expr: make_call("raku_map") + 2 children.
// Retained: E_FNC value='raku_map' requires explicit build (reduce() leaves value='').
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_map(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('E_VAR', 'raku_map');
    node = tree('E_FNC', 'raku_map');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_map = .dummy;
    nreturn;
}
Finish_map = (epsilon . *finish_map());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_grep — grep { closure_expr } list → (E_FNC raku_grep (E_VAR raku_grep) closure list).
// Mirrors raku.y KW_GREP closure expr: make_call("raku_grep") + 2 children.
// Retained: same reason as finish_map.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_grep(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('E_VAR', 'raku_grep');
    node = tree('E_FNC', 'raku_grep');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_grep = .dummy;
    nreturn;
}
Finish_grep = (epsilon . *finish_grep());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_sort_cl — sort { closure_expr } list → (E_FNC raku_sort (E_VAR raku_sort) closure list).
// finish_sort_nc — sort list → (E_FNC raku_sort (E_VAR raku_sort) list).
// Mirrors raku.y: with-closure form pops 2 children; no-closure form pops 1.
// Retained: same reason as finish_map.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_sort_cl(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('E_VAR', 'raku_sort');
    node = tree('E_FNC', 'raku_sort');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_sort_cl = .dummy;
    nreturn;
}
Finish_sort_cl = (epsilon . *finish_sort_cl());
function finish_sort_nc(lst, fn, node) {
    lst  = Pop();
    fn   = tree('E_VAR', 'raku_sort');
    node = tree('E_FNC', 'raku_sort');
    Append(node, fn);
    Append(node, lst);
    Push(node);
    finish_sort_nc = .dummy;
    nreturn;
}
Finish_sort_nc = (epsilon . *finish_sort_nc());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_try — try block [CATCH block] → (E_FNC raku_try (E_VAR raku_try) try_blk [catch_blk]).
// Mirrors raku.y KW_TRY block [KW_CATCH block].
// try_has_catch global: 1 if CATCH block present, 0 otherwise.
// Uses EQ predicate (not bare if) per cross-PARSER style note from RK-17.
// Retained: conditional 2-arg vs 1-arg E_FNC build cannot be expressed in reduce().
/*--------------------------------------------------------------------------------------------------------------------*/
try_has_catch = 0;
function finish_try(catch_blk, try_blk, fn, node) {
    if (EQ(try_has_catch, 1)) catch_blk = Pop();
    try_blk = Pop();
    fn   = tree('E_VAR', 'raku_try');
    node = tree('E_FNC', 'raku_try');
    Append(node, fn);
    Append(node, try_blk);
    if (EQ(try_has_catch, 1)) Append(node, catch_blk);
    try_has_catch = 0;
    Push(node);
    finish_try = .dummy;
    nreturn;
}
function set_has_catch() { try_has_catch = 1; set_has_catch = .dummy; nreturn; }
Finish_try   = (epsilon . *finish_try());
Set_has_catch = (epsilon . *set_has_catch());
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
// finish_gather — gather { block } expr.  Mirrors raku.y KW_GATHER block:
// emits a def STMT (E_FNC __gather_N (E_VAR __gather_N) ...body...) into
// sub_list, then pushes the call (E_FNC __gather_N (E_VAR __gather_N))
// onto the stack as the expression value.  Counter frame holds the body
// stmts (same shape as finish_sub); gather_seq is the global counter
// (starts at 0, increments per gather site).
// Retained: reduce() can't read gather_seq, build the auto-generated
// name, and split into def-list + call-on-stack in one pass.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_gather(n_kids, kids, gname, def_efnc, def_subj, def_stmt, call_efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    gname = '__gather_' gather_seq;
    gather_seq = gather_seq + 1;
    // Def STMT: (STMT :subj (E_FNC gname (E_VAR gname) body...))
    def_efnc = tree('E_FNC', gname);
    Append(def_efnc, tree('E_VAR', gname));
    i = 1;
    while (LE(i, n_kids)) {
        Append(def_efnc, kids[i]);
        i = i + 1;
    }
    def_subj = tree(':subj', '');
    Append(def_subj, def_efnc);
    def_stmt = tree('STMT', '');
    Append(def_stmt, def_subj);
    sub_list = slink(sub_list, def_stmt);
    // Call expression: (E_FNC gname (E_VAR gname)) — pushed for the caller.
    call_efnc = tree('E_FNC', gname);
    Append(call_efnc, tree('E_VAR', gname));
    Push(call_efnc);
    finish_gather = .dummy;
    nreturn;
}
Finish_gather = (epsilon . *finish_gather());
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

function flatten_cat(rhs, lhs, node) {
    rhs = Pop();
    lhs = Pop();
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'E_CAT') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('E_CAT', '');
        Append(node, lhs);
        Append(node, rhs);
        Push(node);
    }
    flatten_cat = .dummy;
    nreturn;
}
Flatten_cat = (epsilon . *flatten_cat());

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
         | ($' ' '-')  *Expr11  Finish_mns
         | $'die' $'  '  *Expr11  Finish_die
         | $'map'  $'  '  ClosureExpr  $'  '  *Expr  Finish_map
         | $'grep' $'  '  ClosureExpr  $'  '  *Expr  Finish_grep
         | $'sort' $'  '  ClosureExpr  $'  '  *Expr  Finish_sort_cl
         | $'sort' $'  '  *Expr                       Finish_sort_nc
         | $'gather' *GatherBlock
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
         | LitStrDQ               Dq_unescape  Push_interp_str
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
                 | $'div' *Expr11  Flatten_div
                 | $'%'  *Expr11  (E_MOD & 2)
                 );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
// Flatten_add / Flatten_sub produce n-ary (E_ADD a b c) matching the C oracle.
Expr6tail = FENCE( $'+'  *Expr7  Flatten_add
                 | $'-'  *Expr7  Flatten_sub
                 | $'~'  *Expr7  Flatten_cat
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
                 | $'eq'  *Expr5      (E_LEQ & 2)
                 | $'ne'  *Expr5      (E_LNE & 2)
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
BlockStmt = epsilon;

Block_body = ( *BlockStmt nInc() );

Block = ( $'{'
          nPush()
          ARBNO( Block_body )
          $'}'
          (E_SEQ_EXPR & 'nTop()')
          nPop()
        );
/*====================================================================================================================*/
// SubBlock — `{ SubBlockStmt* }` — each stmt increments sub counter frame.
/*====================================================================================================================*/
SubBlockStmt = epsilon;

SubBlock_body = ( *SubBlockStmt nInc() );

SubBlock = ( $'{'
             ARBNO( SubBlock_body )
             $'}'
           );
/*====================================================================================================================*/
// GatherBlock — `{ SubBlockStmt* }` for gather { ... } expression.  Owns its
// own nPush/nPop bracketing and Finish_gather call so the counter-frame
// machinery is fully contained — independent of the outer Expr11 / Compiland
// counter context.  Mirrors Block's self-contained counter shape (Block has
// nPush after `{` and nPop after `}`); SubBlock_body's nInc() then increments
// the inner gather frame, and Finish_gather reads TopCounter to assemble the
// def STMT before nPop discards the frame.
//
// Important: `*SubBlock_body` (deferred lookup) is required because GatherBlock
// is referenced from Expr11 (defined before SubBlock_body).  Bare ARBNO(X)
// captures X's value at the *enclosing pattern's* definition time — same
// quirk documented in the RK-4 cross-PARSER note about ARBNO(*CallArgTail).
//
// Retained: Finish_gather pair-shape needed because reduce() can't read
// gather_seq, build the auto-generated `__gather_N` name, and split into
// def-list + call-on-stack in one pass (see finish_gather above).
/*====================================================================================================================*/
GatherBlock = ( $'{'
                nPush()
                ARBNO( *SubBlock_body )
                $'}'
                Finish_gather
                nPop()
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

// TakeStmt — `take expr ;` → (E_SUSPEND expr).  Body of gather { ... }
// uses E_SUSPEND like a SNOBOL4-style coroutine yield; raku.y maps to
// expr_unary(E_SUSPEND, expr).  Note: only meaningful inside a gather
// block — the C frontend doesn't enforce that, neither do we.
TakeStmt = ( $'take' $'  ' Expr $';' (E_SUSPEND & 1) );

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

// WhenClause — when Expr Block → push val + body, count.
// Mirrors raku.y when_list item: expr block pair.
WhenClause = ( $'when' $'  '
               Expr          // val pushed on stack by Expr
               Block         // body (E_SEQ_EXPR) pushed by Block
               nInc()
             );

// DefaultClause — default Block → push body, set given_has_def flag.
DefaultClause = ( $'default'
                  Block
                  Set_has_def
                );

// GivenStmt — given Expr { WhenClause* [default Block] }
// Mirrors raku.y given_stmt.  nPush()/nPop() count when-clauses.
GivenStmt = ( $'given' $'  '
              Expr
              nPush()
              $'{'
              ARBNO( *WhenClause )
              (DefaultClause | epsilon)
              $'}'
              Finish_given
              nPop()
            );

BareStmt = ( Expr $';' );

// PrintStmt — print expr ; → (E_FNC writes (E_VAR writes) arg).
// Mirrors raku.y KW_PRINT expr ';'.
PrintStmt = ( $'print'
              Expr  $';'  Finish_print
            );

// TryStmt — try block [CATCH block] → (E_FNC raku_try ...).
// Mirrors raku.y KW_TRY block [KW_CATCH block].
TryStmt = ( $'try'
            Block
            ( $'CATCH'  Block  Set_has_catch
            | epsilon
            )
            Finish_try
          );

Stmt = ( GivenStmt
       | TryStmt
       | IfStmt
       | WhileStmt
       | UnlessStmt
       | UntilStmt
       | ForRangeStmt
       | ForStmt
       | DeleteHashAngle
       | DeleteHashBrace
       | ReturnStmt
       | TakeStmt
       | AssignStmt
       | SayStmt
       | PrintStmt
       | BareStmt
       );

// BlockStmt — final binding.
BlockStmt = ( GivenStmt | TryStmt | IfStmt | WhileStmt | UnlessStmt | UntilStmt | ForRangeStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt );

// SubBlockStmt — SubBlock_body handles nInc per stmt.
SubBlockStmt = ( GivenStmt | TryStmt | IfStmt | WhileStmt | UnlessStmt | UntilStmt | ForRangeStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt );
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
            ARBNO( SubStmt | (Stmt nInc()) )
            $' '
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

// Predicate-context match: `if (Src ? Compiland)` instead of value-context
// `ok = (Src ? Compiland)`.  The latter routes through E_SCAN's matched-
// substring extraction (interp_eval.c:3938) which reads g_last_match_subj
// — under nested ARBNO + &FULLSCAN=1 those globals are unreliable.
if (Src ? Compiland) {
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
