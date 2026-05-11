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
//   IR node tags      — mirror ir.h E_* (AST_VAR, AST_ILIT, AST_FNC, AST_ASSIGN, ...)
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
//                      included); oracle requires bare name in AST_VAR value.
//   push_param()  — sigil-stripped param push (uses cappf/cappr).
//                      Retained: same reason as push_var.
//   push_qlit()   — string-body push (uses capstr).
//                      Retained: same reason as ic_push_qlit in parser_icon.sc
//                      (shift() would include the surrounding quotes).
//   finish_interp_str() — DQ string interpolation "hello $var" → AST_CAT chain.
//                      Retained: must walk sub-string content to split on $ident;
//                      shift/reduce cannot iterate over string bytes.
//   finish_say()    — say → write name remap.
//                      Retained: reduce() sets value=''; AST_FNC write requires
//                      value='write' to match oracle.
//   store_for_iter()   — stash for-loopvar name from capff/capfr captures.
//                      Retained: for_iter must be set before Block is
//                      parsed; no other mechanism to carry a name across.
//   finish_for()  — for-loop tree build (pops block+array, builds
//                      AST_ITERATE+AST_EVERY from for_iter stash).
//                      Retained: AST_ITERATE carries loopvar name as value;
//                      reduce() cannot supply a non-empty value field.
//   finish_sub()  — sub decomposition (pops counter frame, builds STMT).
//                      Retained: sub name in AST_FNC value from capsnf/capsnr;
//                      same structural role as ic_decompose_proc in parser_icon.sc.
//   finish_call() — function call decomposition (pops counter frame,
//                      builds AST_FNC with fname from capfnf/capfnr).
//                      Retained: same reason as finish_sub.
//   finish_main() — main wrapper (same role as finish_sub for top-level).
//                      Retained: same structural reason.
//
// Rung PARSER-RK-4.5-e.
/*====================================================================================================================*/
// IR tag constants — name IS the tag; self-quoted for reduce(), bare for shift().
/*====================================================================================================================*/
AST_ASSIGN    = "'AST_ASSIGN'";  AST_SEQ_EXPR = "'AST_SEQ_EXPR'";
AST_ADD       = "'AST_ADD'";      AST_SUB      = "'AST_SUB'";
AST_MUL       = "'AST_MUL'";      AST_DIV      = "'AST_DIV'";
AST_EQ        = "'AST_EQ'";       AST_NE       = "'AST_NE'";
AST_LT        = "'AST_LT'";       AST_LE       = "'AST_LE'";
AST_GT        = "'AST_GT'";       AST_GE       = "'AST_GE'";
AST_IF        = "'AST_IF'";       AST_WHILE    = "'AST_WHILE'";
AST_RETURN    = "'AST_RETURN'";   AST_TO       = "'AST_TO'";
AST_NOT       = "'AST_NOT'";      AST_UNTIL    = "'AST_UNTIL'";
AST_SEQ       = "'AST_SEQ'";      AST_ALT      = "'AST_ALT'";
AST_CAT       = "'AST_CAT'";
AST_LEQ       = "'AST_LEQ'";      AST_LNE      = "'AST_LNE'";
AST_MNS       = "'AST_MNS'";      AST_MOD      = "'AST_MOD'";
AST_CASE      = "'AST_CASE'";     AST_NUL      = "'AST_NUL'";
AST_REPEAT    = "'AST_REPEAT'";
AST_SUSPEND   = "'AST_SUSPEND'";
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
$'without' = $' ' 'without';
$'whenever' = $' ' 'whenever';
$'foreach' = $' ' 'foreach';
$'loop' = $' ' 'loop';
$'use' = $' ' 'use';
$'no' = $' ' 'no';
$'need' = $' ' 'need';
$'import' = $' ' 'import';
$'require' = $' ' 'require';
$'given'  = $' ' 'given' ;  $'when'   = $' ' 'when'  ;
$'default' = $' ' 'default';
$'print'  = $' ' 'print'  ;  $'die'    = $' ' 'die'    ;
$'try'    = $' ' 'try'    ;  $'CATCH'  = $' ' ('CATCH' | 'catch');
$'CONTROL' = $' ' 'CONTROL';
$'QUIT'    = $' ' 'QUIT';
// RK-29: statement_prefix phasers (block form, no expr).
$'BEGIN'   = $' ' 'BEGIN';   $'END'     = $' ' 'END';
$'INIT'    = $' ' 'INIT';    $'CHECK'   = $' ' 'CHECK';
$'ENTER'   = $' ' 'ENTER';   $'LEAVE'   = $' ' 'LEAVE';
$'KEEP'    = $' ' 'KEEP';    $'UNDO'    = $' ' 'UNDO';
$'FIRST'   = $' ' 'FIRST';   $'NEXT'    = $' ' 'NEXT';
$'LAST'    = $' ' 'LAST';    $'PRE'     = $' ' 'PRE';
$'POST'    = $' ' 'POST';    $'CLOSE'   = $' ' 'CLOSE';
$'TEMP'    = $' ' 'TEMP';
// RK-29: lowercase statement_prefix (block-as-value + list adverbs).
$'do'      = $' ' 'do';      $'once'    = $' ' 'once';
$'start'   = $' ' 'start';   $'supply'  = $' ' 'supply';
$'react'   = $' ' 'react';   $'quietly' = $' ' 'quietly';
$'race'    = $' ' 'race';    $'hyper'   = $' ' 'hyper';
$'lazy'    = $' ' 'lazy';    $'eager'   = $' ' 'eager';
$'sink'    = $' ' 'sink';
$'map'    = $' ' 'map'    ;  $'grep'   = $' ' 'grep'   ;  $'sort'   = $' ' 'sort'   ;
$'gather' = $' ' 'gather' ;  $'take'   = $' ' 'take'   ;
$'elsif'  = $' ' 'elsif'  ;  $'repeat' = $' ' 'repeat' ;
$'class'  = $' ' 'class'  ;  $'method' = $' ' 'method' ;
$'has'    = $' ' 'has'    ;  $'new'    = $' ' 'new'    ;
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
$'=>'  = $' ' '=>' $' ';
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

// Module name — Foo or Foo::Bar::Baz or v6 or v6.c — captured as a single
// string into `capmodname`.  Used by RK-28 module-load stmts (use/no/need/
// import/require).  Greedy: captures up to the next non-name char.
modname_part  = (ident_first (ident_rest | epsilon));
modname_chain = (modname_part ARBNO('::' modname_part));
modname_ver   = ('v' SPAN(digits) ('.' SPAN(digits &UCASE &LCASE '_') | epsilon));
ModuleName    = ($' ' (modname_chain | modname_ver) . capmodname);

// Sigiled variables: capture bare name (strip sigil) into capvf/capvr.
// push_var() uses the captures — see retained-for-<reason> note above.
vf    = ANY(&UCASE &LCASE '_');
vr    = SPAN(digits &UCASE &LCASE '_');
vro   = (vr | epsilon);

VarScalar = ($' ' '$' vf . capvf vro . capvr);
VarArray  = ($' ' '@' vf . capvf vro . capvr);
VarHash   = ($' ' '%' vf . capvf vro . capvr);
// BareIdent — unsigiled identifier used as atom expression (e.g. say(x) where x has no $).
// Mirrors raku.y atom: IDENT → var_node($1).  Must be tried LAST in Expr11 (after
// CallName(...) and all sigiled forms) so function calls and sigiled vars are caught first.
// Captures into capvf/capvr so Push_var builds (AST_VAR name) correctly.
BareIdent = ($' ' vf . capvf vro . capvr);
// Twigil — $.field / $!field inside method body → AST_FIELD(fieldname, self).
// Captures just the bare field name (after sigil+twigil) into captwf/captwr.
// Must be tried BEFORE VarScalar in Expr11 (twigil is more specific).
twf  = ANY(&UCASE &LCASE '_');
twr  = SPAN(digits &UCASE &LCASE '_');
twro = (twr | epsilon);
VarTwigil = ($' ' ('$.' | '$!') twf . captwf twro . captwr);
// ClassName — bare UpperCamel identifier for class declarations.
// Uses capclsf/capclsr (distinct from VarScalar's capvf/capvr).
clf  = ANY(&UCASE &LCASE '_');
clr  = SPAN(digits &UCASE &LCASE '_');
clro = (clr | epsilon);
ClassName = ($' ' clf . capclsf clro . capclsr);
// MethodIdent — method name in class body (distinct capture from SubName).
mtf  = ANY(&UCASE &LCASE '_');
mtr  = SPAN(digits &UCASE &LCASE '_');
mtro = (mtr | epsilon);
MethodIdent = ($' ' mtf . capmtf mtro . capmtr);

// Literals.
LitInt    = ($' ' SPAN(digits));
LitStrDQ  = ($' ' '"' BREAK('"') . capstr '"');
LitStrSQ  = ($' ' "'" BREAK("'") . capstr "'");
// Float literal — digits '.' digits
LitFloat  = ($' ' SPAN(digits) '.' SPAN(digits));
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
capmf         = '';
capmr         = '';
captype       = '';
capnamedkey   = '';
capnamedval   = '';
capclsf       = '';
capclsr       = '';
capmtf        = '';
capmtr        = '';
captwf        = '';
captwr        = '';
sub_list   = '';
gather_seq = 0;

struct slink { snext, sval }
/*====================================================================================================================*/
// Minimal helper functions — tree-building / semantic only.
// None is called from inside a parsing pattern except via named action
// patterns below.  Retained-for-<reason> notes in file header.
/*====================================================================================================================*/
/*--------------------------------------------------------------------------------------------------------------------*/
// push_var — push tree('AST_VAR', bare_name) using capvf/capvr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_var() {
    Push(tree('AST_VAR', capvf capvr));
    push_var = .dummy;
    nreturn;
}
Push_var   = (epsilon . *push_var());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_empty — push (AST_QLIT "") for uninitialized typed declarations.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_empty() {
    Push(tree('AST_QLIT', ''));
    push_empty = .dummy;
    nreturn;
}
Push_empty = (epsilon . *push_empty());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_named_key — push (AST_QLIT capnamedkey) for named args in ClassName.new(k=>v).
/*--------------------------------------------------------------------------------------------------------------------*/
function push_named_key() {
    Push(tree('AST_QLIT', capnamedkey));
    push_named_key = .dummy;
    nreturn;
}
Push_named_key = (epsilon . *push_named_key());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_param — push tree('AST_VAR', bare_name) using cappf/cappr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_param() {
    Push(tree('AST_VAR', cappf cappr));
    push_param = .dummy;
    nreturn;
}
Push_param = (epsilon . *push_param());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_twigil — push (AST_FIELD fieldname (AST_VAR self)) for $.field / $!field.
// Uses captwf/captwr for bare field name.
// Retained: reduce() cannot set AST_FIELD's sval and add AST_VAR self child.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_twigil(fname, fe) {
    fname = captwf captwr;
    fe = tree('AST_FIELD', fname);
    Append(fe, tree('AST_VAR', 'self'));
    Push(fe);
    push_twigil = .dummy;
    nreturn;
}
Push_twigil = (epsilon . *push_twigil());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_has_field — push (AST_VAR fieldname) for has $.field declaration.
// Uses captwf/captwr (VarTwigil captures into them).
// Retained: strip twigil sigil; shift() would include '$.' prefix.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_has_field(fname) {
    fname = captwf captwr;
    Push(tree('AST_VAR', fname));
    push_has_field = .dummy;
    nreturn;
}
Push_has_field = (epsilon . *push_has_field());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_nul — push (AST_NUL) sentinel.
// Used by ClassDecl to inject a child into the main counter frame so
// finish_main builds (AST_FNC main (AST_VAR main) (AST_NUL)) — mirrors C oracle
// class_decl action which returns expr_new(AST_NUL) to the stmt list.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_nul() {
    Push(tree('AST_NUL', ''));
    push_nul = .dummy;
    nreturn;
}
Push_nul = (epsilon . *push_nul());
/*--------------------------------------------------------------------------------------------------------------------*/
// push_qlit — push tree('AST_QLIT', body) using capstr.
/*--------------------------------------------------------------------------------------------------------------------*/
function push_qlit() {
    Push(tree('AST_QLIT', capstr));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit  = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_interp_str — DQ string interpolation: "hello $var" → left-assoc AST_CAT chain.
// Mirrors raku.y lower_interp_str(): walks capstr, splits on $ident sequences,
// builds (AST_CAT lhs rhs) binary nodes left-to-right.  If no $ident found → plain
// (AST_QLIT body).  Only $scalar-name interpolation supported (matches the C oracle).
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
                newnode = tree('AST_QLIT', lit);
                if (DIFFER(result)) {
                    i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                } else { result = newnode; }
            }
            newnode = tree('AST_VAR', isvf isvr);
            if (DIFFER(result)) {
                i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
            } else { result = newnode; }
        } else {
            if (raw ? (POS(0) REM . lit) = ) {
                if (DIFFER(lit)) {
                    newnode = tree('AST_QLIT', lit);
                    if (DIFFER(result)) {
                        i = tree('AST_CAT', ''); Append(i, result); Append(i, newnode); result = i;
                    } else { result = newnode; }
                }
            }
            break;
        }
    }
    if (~DIFFER(result)) result = tree('AST_QLIT', '');
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
// push_rxlit — push tree('AST_QLIT', body) using caprx.  Regex literal /body/.
// Oracle emits regex bodies as plain AST_QLIT — the runtime distinguishes regex
// from string by call context (raku_match's second arg).
/*--------------------------------------------------------------------------------------------------------------------*/
function push_rxlit() {
    Push(tree('AST_QLIT', caprx));
    push_rxlit = .dummy;
    nreturn;
}
Push_rxlit = (epsilon . *push_rxlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_capture — positional capture $N → (AST_FNC raku_capture (AST_VAR raku_capture) (AST_ILIT N)).
// capidx holds the digit string captured by VarCapture.
// Retained: reduce() sets value=''; AST_FNC requires value='raku_capture'.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_capture(fn, node) {
    fn   = tree('AST_VAR', 'raku_capture');
    node = tree('AST_FNC', 'raku_capture');
    Append(node, fn);
    Append(node, tree('AST_ILIT', capidx));
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
//   (AST_FNC raku_named_capture (AST_VAR raku_named_capture) (AST_QLIT "name")).
// capncname holds the bare name (without $< and >) captured by VarNamedCapture.
// Retained: same reason as finish_capture — value field requires explicit name.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_named_capture(fn, node) {
    fn   = tree('AST_VAR', 'raku_named_capture');
    node = tree('AST_FNC', 'raku_named_capture');
    Append(node, fn);
    Append(node, tree('AST_QLIT', capncname));
    Push(node);
    finish_named_capture = .dummy;
    nreturn;
}
Finish_named_capture = (epsilon . *finish_named_capture());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_match_global — $s ~~ m:g/pat/ → (AST_FNC raku_match_global (AST_VAR raku_match_global) subj pat).
// caprx holds the regex body captured by LitMatchGlobal.
// Retained: same reason as finish_smartmatch — value field requires explicit name.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_match_global(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('AST_VAR', 'raku_match_global');
    node = tree('AST_FNC', 'raku_match_global');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_match_global = .dummy;
    nreturn;
}
Finish_match_global = (epsilon . *finish_match_global());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_subst — $s ~~ s/pat/repl/[g] → (AST_FNC raku_subst (AST_VAR raku_subst) subj (AST_QLIT "pat\x01repl\x01flag")).
// cappat/caprepl/capflag captured by LitSubst.  flag = 'g' or '' (→ '-').
// Packed sval mirrors the C lexer's LIT_SUBST token format.
// Retained: needs to build the packed AST_QLIT from three captures; reduce() cannot.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_subst(subj, fn, node, flag, packed) {
    subj   = Pop();
    flag   = IDENT(capflag, 'g') 'g';
    flag   = IDENT(flag) '-';
    packed = cappat CHAR(1) caprepl CHAR(1) flag;
    fn     = tree('AST_VAR', 'raku_subst');
    node   = tree('AST_FNC', 'raku_subst');
    Append(node, fn);
    Append(node, subj);
    Append(node, tree('AST_QLIT', packed));
    Push(node);
    capflag = '';
    finish_subst = .dummy;
    nreturn;
}
Finish_subst = (epsilon . *finish_subst());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_arr_get — @arr[$expr] → (AST_FNC arr_get (AST_VAR arr_get) (AST_VAR arr) index).
// capvf/capvr hold the array name (set by VarArray classifier).
// index is on top of stack (pushed by Expr inside the brackets).
// Retained: value='arr_get' in AST_FNC requires explicit build; reduce() sets value=''.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_arr_get(idx, arr, fn, node) {
    idx  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'arr_get');
    node = tree('AST_FNC', 'arr_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, idx);
    Push(node);
    finish_arr_get = .dummy;
    nreturn;
}
Finish_arr_get = (epsilon . *finish_arr_get());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_get_angle — %hash<ident> → (AST_FNC hash_get (AST_VAR hash_get) (AST_VAR h) (AST_QLIT key)).
// capvf/capvr = hash name; capkey = the angle-bracket identifier key.
// Retained: same reason as finish_arr_get.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_get_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_get');
    node = tree('AST_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_get_angle = .dummy;
    nreturn;
}
Finish_hash_get_angle = (epsilon . *finish_hash_get_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_get_brace — %hash{$expr} → (AST_FNC hash_get ... (AST_VAR h) key_expr).
// capvf/capvr = hash name; key_expr on top of stack.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_get_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_get');
    node = tree('AST_FNC', 'hash_get');
    Append(node, fn);
    Append(node, arr);
    Append(node, key);
    Push(node);
    finish_hash_get_brace = .dummy;
    nreturn;
}
Finish_hash_get_brace = (epsilon . *finish_hash_get_brace());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_exists_angle — exists %hash<ident> → (AST_FNC hash_exists ... (AST_VAR h) (AST_QLIT key)).
// capvf/capvr = hash name; capkey = key.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_exists_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_exists');
    node = tree('AST_FNC', 'hash_exists');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_exists_angle = .dummy;
    nreturn;
}
Finish_hash_exists_angle = (epsilon . *finish_hash_exists_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_exists_brace — exists %hash{$expr} → (AST_FNC hash_exists ... (AST_VAR h) key_expr).
// capvf/capvr = hash name; key_expr on top of stack.
// Retained: same reason.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_exists_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_exists');
    node = tree('AST_FNC', 'hash_exists');
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
//   (AST_FNC hash_delete (AST_VAR hash_delete) (AST_VAR h) (AST_QLIT key)).
// capkey holds the angle-bracket key; colnmf/colnmr hold hash name (set by HashIdxVar).
// Retained: value='hash_delete' in AST_FNC requires explicit build; reduce() sets value=''.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_delete_angle(arr, fn, node) {
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_delete');
    node = tree('AST_FNC', 'hash_delete');
    Append(node, fn);
    Append(node, arr);
    Append(node, tree('AST_QLIT', capkey));
    Push(node);
    finish_hash_delete_angle = .dummy;
    nreturn;
}
Finish_hash_delete_angle = (epsilon . *finish_hash_delete_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_delete_brace — delete %hash{$expr} →
//   (AST_FNC hash_delete (AST_VAR hash_delete) (AST_VAR h) key_expr).
// key_expr on top of stack; colnmf/colnmr hold hash name (set by HashIdxVar).
// Retained: same reason as finish_hash_delete_angle.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_delete_brace(key, arr, fn, node) {
    key  = Pop();
    arr  = tree('AST_VAR', colnmf colnmr);
    fn   = tree('AST_VAR', 'hash_delete');
    node = tree('AST_FNC', 'hash_delete');
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
// Mirrors raku.y make_for_range().  Stack on entry: body (AST_SEQ_EXPR) on top,
// hi below, lo below that.  for_iter holds the loopvar name (set by Store_for_iter).
//
// Expansion (matching oracle):
//   (AST_SEQ_EXPR
//     (AST_ASSIGN (AST_VAR v) lo)
//     (AST_WHILE
//       (AST_LE (AST_VAR v) hi)
//       body_with_incr_appended))
//
// Retained: synthesizes multiple nodes from three stack values + for_iter stash;
// reduce() cannot build multi-child sequences or append to an existing node.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_for_range(body, hi, lo, vvar, incr, cond, init, wloop, seq) {
    body = Pop();
    hi   = Pop();
    lo   = Pop();
    vvar = tree('AST_VAR', for_iter);
    // Append increment stmt to body: body += (AST_ASSIGN v (AST_ADD v 1))
    incr = tree('AST_ADD', '');
    Append(incr, tree('AST_VAR', for_iter));
    Append(incr, tree('AST_ILIT', '1'));
    Append(body, tree('AST_ASSIGN', ''));
    Append(c(body)[n(body)], tree('AST_VAR', for_iter));
    Append(c(body)[n(body)], incr);
    // Build (AST_WHILE (AST_LE v hi) body)
    cond  = tree('AST_LE', '');
    Append(cond, tree('AST_VAR', for_iter));
    Append(cond, hi);
    wloop = tree('AST_WHILE', '');
    Append(wloop, cond);
    Append(wloop, body);
    // Build (AST_ASSIGN v lo)
    init = tree('AST_ASSIGN', '');
    Append(init, tree('AST_VAR', for_iter));
    Append(init, lo);
    // Wrap in AST_SEQ_EXPR
    seq = tree('AST_SEQ_EXPR', '');
    Append(seq, init);
    Append(seq, wloop);
    Push(seq);
    finish_for_range = .dummy;
    nreturn;
}
Finish_for_range = (epsilon . *finish_for_range());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_smartmatch
// Retained: reduce() builds value=''; AST_FNC requires value='raku_match'.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_smartmatch(pat, subj, fn, node) {
    pat  = Pop();
    subj = Pop();
    fn   = tree('AST_VAR', 'raku_match');
    node = tree('AST_FNC', 'raku_match');
    Append(node, fn);
    Append(node, subj);
    Append(node, pat);
    Push(node);
    finish_smartmatch = .dummy;
    nreturn;
}
Finish_smartmatch = (epsilon . *finish_smartmatch());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_not — wrap top-of-stack expr in (AST_NOT expr).
// Used by UnlessStmt: unless (cond) → (AST_IF (AST_NOT cond) then [else]).
// Retained: reduce() with arity 1 builds a new node but cannot wrap an existing
// node; we need to pop, wrap, and push.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_not(inner, node) {
    inner = Pop();
    node  = tree('AST_NOT', '');
    Append(node, inner);
    Push(node);
    finish_not = .dummy;
    nreturn;
}
Finish_not = (epsilon . *finish_not());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_mns — unary minus: -(expr) → (AST_MNS expr).
// Retained: same reason as finish_not — pop, wrap, push.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_mns(inner, node) {
    inner = Pop();
    node  = tree('AST_MNS', '');
    Append(node, inner);
    Push(node);
    finish_mns = .dummy;
    nreturn;
}
Finish_mns = (epsilon . *finish_mns());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_given — given/when/default → AST_CASE node.
//
// Stack on entry (bottom to top):
//   topic
//   [cmpnode val body] × n_whens    (each WhenClause pushed these 3 in order)
//   [default_body]                   (if given_has_def == 1; pushed by DefaultClause)
//
// AST_CASE structure mirrors raku.y given_stmt:
//   (AST_CASE topic [AST_ILIT(cmp) val body]* [(AST_NUL)(AST_NUL) default]?)
//
// cmp kind: AST_QLIT val → 73 (AST_LEQ); other → 67 (AST_EQ).  Mirrors raku.y
//   when_list: cmp=($3->kind==AST_QLIT)?AST_LEQ:AST_EQ.
//
// Retained: must build AST_CASE with variable arity from n counter + flag; reduce()
// cannot conditionally append AST_NUL sentinels or inspect child tags.
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
    ec = tree('AST_CASE', '');
    Append(ec, Pop());
    // Append each when-triple (cmpnode, val, body) in order.
    // cmp kind: AST_QLIT val → 73 (AST_LEQ), else → 67 (AST_EQ).  Mirrors raku.y.
    i = 1;
    while (LE(i, n_whens)) {
        val  = kids[(i - 1) * 2 + 1];
        body = kids[(i - 1) * 2 + 2];
        if (IDENT(t(val), 'AST_QLIT')) { cmpkind = '73'; } else { cmpkind = '67'; }
        cmpnode = tree('AST_ILIT', cmpkind);
        Append(ec, cmpnode);
        Append(ec, val);
        Append(ec, body);
        i = i + 1;
    }
    // default arm: sentinel (AST_NUL)(AST_NUL) then body
    if (EQ(given_has_def, 1)) {
        Append(ec, tree('AST_NUL', ''));
        Append(ec, tree('AST_NUL', ''));
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
// finish_say — say → write name remap.  Pops arg, builds AST_FNC write.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_say(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'write');
    node = tree('AST_FNC', 'write');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_say = .dummy;
    nreturn;
}
Finish_say   = (epsilon . *finish_say());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_print — print expr ; → (AST_FNC writes (AST_VAR writes) arg).
// Mirrors raku.y KW_PRINT expr ';': make_call("writes") + child.
// Retained: same reason as finish_say — AST_FNC value='writes' requires explicit build.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_print(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'writes');
    node = tree('AST_FNC', 'writes');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_print = .dummy;
    nreturn;
}
Finish_print = (epsilon . *finish_print());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_die — die expr → (AST_FNC raku_die (AST_VAR raku_die) arg).
// Mirrors raku.y KW_DIE expr: make_call("raku_die") + child.
// die is an expression (Expr11 prefix), not a statement — BareStmt supplies ';'.
// Retained: same reason as finish_say — AST_FNC value='raku_die' requires explicit build.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_die(arg, fn, node) {
    arg  = Pop();
    fn   = tree('AST_VAR', 'raku_die');
    node = tree('AST_FNC', 'raku_die');
    Append(node, fn);
    Append(node, arg);
    Push(node);
    finish_die = .dummy;
    nreturn;
}
Finish_die = (epsilon . *finish_die());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_without — without (cond) block → (AST_FNC raku_without (AST_VAR raku_without) cond block).
// Stack at entry (top→bottom): block, cond.
// Mirrors RK-28 placeholder convention: Grammar.nqp `statement_control:sym<without>` has
// no clean E_* kind in ir.h, so we lower to a generic raku_<name> call node.
// Retained: AST_FNC value='raku_without' must be set explicitly (reduce() leaves value='').
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_without(blk, cond, fn, node) {
    blk  = Pop();
    cond = Pop();
    fn   = tree('AST_VAR', 'raku_without');
    node = tree('AST_FNC', 'raku_without');
    Append(node, fn);
    Append(node, cond);
    Append(node, blk);
    Push(node);
    finish_without = .dummy;
    nreturn;
}
Finish_without = (epsilon . *finish_without());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_whenever — whenever expr block → (AST_FNC raku_whenever (AST_VAR raku_whenever) expr block).
// Stack at entry (top→bottom): block, expr.
// RK-28 arm 2: Grammar.nqp `statement_control:sym<whenever>`.  Spec form is
// `whenever EXPR { block }` (no parens around expr — Raku's xblock syntax).
// Retained: AST_FNC value='raku_whenever' must be set explicitly.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_whenever(blk, ex, fn, node) {
    blk  = Pop();
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_whenever');
    node = tree('AST_FNC', 'raku_whenever');
    Append(node, fn);
    Append(node, ex);
    Append(node, blk);
    Push(node);
    finish_whenever = .dummy;
    nreturn;
}
Finish_whenever = (epsilon . *finish_whenever());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_loop_inf — `loop { block }` (no parens) → (AST_WHILE (AST_ILIT 1) block).
// Stack at entry (top→bottom): block.
// RK-28 arm 4a: Grammar.nqp `statement_control:sym<loop>` (no `(...)` arm).
// Lowers to existing AST_WHILE with constant true — clean reuse, no placeholder.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_loop_inf(blk, one, node) {
    blk  = Pop();
    one  = tree('AST_ILIT', '1');
    node = tree('AST_WHILE');
    Append(node, one);
    Append(node, blk);
    Push(node);
    finish_loop_inf = .dummy;
    nreturn;
}
Finish_loop_inf = (epsilon . *finish_loop_inf());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_loop_three — `loop (init; cond; step) { block }` C-style three-part.
// Stack at entry (top→bottom): block, step, cond, init.
// RK-28 arm 4b: Grammar.nqp `statement_control:sym<loop>` with `(e1; e2; e3)` arm.
// Lowers to (AST_FNC raku_loop init cond step block) placeholder — no clean
// E_* kind for this construct.  Note: spec requires all three exprs (compile
// error otherwise); for parse-coverage we require all three too.
// Note 2: `init` is parsed as Expr only (not stmt), so `my $i = 0` won't work
// here — use `$i = 0` with $i pre-declared.  Documented limitation.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_loop_three(blk, step, cond, init, fn, node) {
    blk  = Pop();
    step = Pop();
    cond = Pop();
    init = Pop();
    fn   = tree('AST_VAR', 'raku_loop');
    node = tree('AST_FNC', 'raku_loop');
    Append(node, fn);
    Append(node, init);
    Append(node, cond);
    Append(node, step);
    Append(node, blk);
    Push(node);
    finish_loop_three = .dummy;
    nreturn;
}
Finish_loop_three = (epsilon . *finish_loop_three());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_module_load — used by use/no/need/import/require for a captured
// module name (capmodname) → (AST_FNC raku_<kind> (AST_VAR raku_<kind>) (AST_QLIT modname)).
// RK-28 arms 5–9: Grammar.nqp `statement_control:sym<{use,no,need,import,require}>`.
// Each stmt has its own Finish_* wrapper that calls finish_module_load_x with
// the right kind name.  Retained: shift cannot read a global capture; reduce
// cannot set the AST_FNC value field.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_use(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_use');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_use');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_use = .dummy;
    nreturn;
}
Finish_use = (epsilon . *finish_use());

function finish_no(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_no');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_no');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_no = .dummy;
    nreturn;
}
Finish_no = (epsilon . *finish_no());

function finish_need(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_need');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_need');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_need = .dummy;
    nreturn;
}
Finish_need = (epsilon . *finish_need());

function finish_import(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_import');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_import');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_import = .dummy;
    nreturn;
}
Finish_import = (epsilon . *finish_import());

function finish_require(fn, q, node) {
    fn   = tree('AST_VAR', 'raku_require');
    q    = tree('AST_QLIT', capmodname);
    node = tree('AST_FNC', 'raku_require');
    Append(node, fn);
    Append(node, q);
    Push(node);
    finish_require = .dummy;
    nreturn;
}
Finish_require = (epsilon . *finish_require());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_catch_free / finish_control / finish_quit — free phaser blocks.
// RK-28 arms 11–13: Grammar.nqp `statement_control:sym<{CATCH,CONTROL,QUIT}>`.
// All three are `<sym> <block(1)>` with topic.  Lower to placeholder
// (AST_FNC raku_<kind>_block (AST_VAR raku_<kind>_block) block).
// Note: CATCH already exists inside try; this covers the *free* form
// (top-level CATCH not inside try).
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_catch_free(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_catch_block');
    node = tree('AST_FNC', 'raku_catch_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_catch_free = .dummy;
    nreturn;
}
Finish_catch_free = (epsilon . *finish_catch_free());

function finish_control(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_control_block');
    node = tree('AST_FNC', 'raku_control_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_control = .dummy;
    nreturn;
}
Finish_control = (epsilon . *finish_control());

function finish_quit(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_quit_block');
    node = tree('AST_FNC', 'raku_quit_block');
    Append(node, fn);
    Append(node, blk);
    Push(node);
    finish_quit = .dummy;
    nreturn;
}
Finish_quit = (epsilon . *finish_quit());
/*--------------------------------------------------------------------------------------------------------------------*/
// RK-29 — statement_prefix:sym<...> finishers.
// Block-only phasers: PHASER { block } → (AST_FNC raku_phaser_<name> (AST_VAR raku_phaser_<name>) block).
// All follow the same shape as finish_catch_free / finish_control / finish_quit.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_phaser_begin(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_BEGIN');
    node = tree('AST_FNC', 'raku_phaser_BEGIN');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_begin = .dummy; nreturn;
}
Finish_phaser_begin = (epsilon . *finish_phaser_begin());

function finish_phaser_end(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_END');
    node = tree('AST_FNC', 'raku_phaser_END');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_end = .dummy; nreturn;
}
Finish_phaser_end = (epsilon . *finish_phaser_end());

function finish_phaser_init(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_INIT');
    node = tree('AST_FNC', 'raku_phaser_INIT');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_init = .dummy; nreturn;
}
Finish_phaser_init = (epsilon . *finish_phaser_init());

function finish_phaser_check(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_CHECK');
    node = tree('AST_FNC', 'raku_phaser_CHECK');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_check = .dummy; nreturn;
}
Finish_phaser_check = (epsilon . *finish_phaser_check());

function finish_phaser_enter(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_ENTER');
    node = tree('AST_FNC', 'raku_phaser_ENTER');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_enter = .dummy; nreturn;
}
Finish_phaser_enter = (epsilon . *finish_phaser_enter());

function finish_phaser_leave(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_LEAVE');
    node = tree('AST_FNC', 'raku_phaser_LEAVE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_leave = .dummy; nreturn;
}
Finish_phaser_leave = (epsilon . *finish_phaser_leave());

function finish_phaser_keep(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_KEEP');
    node = tree('AST_FNC', 'raku_phaser_KEEP');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_keep = .dummy; nreturn;
}
Finish_phaser_keep = (epsilon . *finish_phaser_keep());

function finish_phaser_undo(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_UNDO');
    node = tree('AST_FNC', 'raku_phaser_UNDO');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_undo = .dummy; nreturn;
}
Finish_phaser_undo = (epsilon . *finish_phaser_undo());

function finish_phaser_first(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_FIRST');
    node = tree('AST_FNC', 'raku_phaser_FIRST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_first = .dummy; nreturn;
}
Finish_phaser_first = (epsilon . *finish_phaser_first());

function finish_phaser_next(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_NEXT');
    node = tree('AST_FNC', 'raku_phaser_NEXT');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_next = .dummy; nreturn;
}
Finish_phaser_next = (epsilon . *finish_phaser_next());

function finish_phaser_last(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_LAST');
    node = tree('AST_FNC', 'raku_phaser_LAST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_last = .dummy; nreturn;
}
Finish_phaser_last = (epsilon . *finish_phaser_last());

function finish_phaser_pre(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_PRE');
    node = tree('AST_FNC', 'raku_phaser_PRE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_pre = .dummy; nreturn;
}
Finish_phaser_pre = (epsilon . *finish_phaser_pre());

function finish_phaser_post(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_POST');
    node = tree('AST_FNC', 'raku_phaser_POST');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_post = .dummy; nreturn;
}
Finish_phaser_post = (epsilon . *finish_phaser_post());

function finish_phaser_close(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_CLOSE');
    node = tree('AST_FNC', 'raku_phaser_CLOSE');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_close = .dummy; nreturn;
}
Finish_phaser_close = (epsilon . *finish_phaser_close());

function finish_phaser_temp(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_phaser_TEMP');
    node = tree('AST_FNC', 'raku_phaser_TEMP');
    Append(node, fn); Append(node, blk); Push(node);
    finish_phaser_temp = .dummy; nreturn;
}
Finish_phaser_temp = (epsilon . *finish_phaser_temp());

// Lowercase block-value phasers: do/once/start/supply/react/quietly
// `do { block }` — evaluates block as expression → (AST_FNC raku_do (AST_VAR raku_do) block).
function finish_do_block(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_do');
    node = tree('AST_FNC', 'raku_do');
    Append(node, fn); Append(node, blk); Push(node);
    finish_do_block = .dummy; nreturn;
}
Finish_do_block = (epsilon . *finish_do_block());

function finish_once(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_once');
    node = tree('AST_FNC', 'raku_once');
    Append(node, fn); Append(node, blk); Push(node);
    finish_once = .dummy; nreturn;
}
Finish_once = (epsilon . *finish_once());

function finish_start(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_start');
    node = tree('AST_FNC', 'raku_start');
    Append(node, fn); Append(node, blk); Push(node);
    finish_start = .dummy; nreturn;
}
Finish_start = (epsilon . *finish_start());

function finish_supply(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_supply');
    node = tree('AST_FNC', 'raku_supply');
    Append(node, fn); Append(node, blk); Push(node);
    finish_supply = .dummy; nreturn;
}
Finish_supply = (epsilon . *finish_supply());

function finish_react(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_react');
    node = tree('AST_FNC', 'raku_react');
    Append(node, fn); Append(node, blk); Push(node);
    finish_react = .dummy; nreturn;
}
Finish_react = (epsilon . *finish_react());

function finish_quietly(blk, fn, node) {
    blk  = Pop();
    fn   = tree('AST_VAR', 'raku_quietly');
    node = tree('AST_FNC', 'raku_quietly');
    Append(node, fn); Append(node, blk); Push(node);
    finish_quietly = .dummy; nreturn;
}
Finish_quietly = (epsilon . *finish_quietly());

// List adverbs: race/hyper/lazy/eager/sink — apply to an expression (not a block).
// `race @list` → (AST_FNC raku_race (AST_VAR raku_race) expr).
function finish_race(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_race');
    node = tree('AST_FNC', 'raku_race');
    Append(node, fn); Append(node, ex); Push(node);
    finish_race = .dummy; nreturn;
}
Finish_race = (epsilon . *finish_race());

function finish_hyper(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_hyper');
    node = tree('AST_FNC', 'raku_hyper');
    Append(node, fn); Append(node, ex); Push(node);
    finish_hyper = .dummy; nreturn;
}
Finish_hyper = (epsilon . *finish_hyper());

function finish_lazy(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_lazy');
    node = tree('AST_FNC', 'raku_lazy');
    Append(node, fn); Append(node, ex); Push(node);
    finish_lazy = .dummy; nreturn;
}
Finish_lazy = (epsilon . *finish_lazy());

function finish_eager(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_eager');
    node = tree('AST_FNC', 'raku_eager');
    Append(node, fn); Append(node, ex); Push(node);
    finish_eager = .dummy; nreturn;
}
Finish_eager = (epsilon . *finish_eager());

function finish_sink(ex, fn, node) {
    ex   = Pop();
    fn   = tree('AST_VAR', 'raku_sink');
    node = tree('AST_FNC', 'raku_sink');
    Append(node, fn); Append(node, ex); Push(node);
    finish_sink = .dummy; nreturn;
}
Finish_sink = (epsilon . *finish_sink());
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
// finish_map — map { closure_expr } list → (AST_FNC raku_map (AST_VAR raku_map) closure list).
// Mirrors raku.y KW_MAP closure expr: make_call("raku_map") + 2 children.
// Retained: AST_FNC value='raku_map' requires explicit build (reduce() leaves value='').
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_map(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_map');
    node = tree('AST_FNC', 'raku_map');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_map = .dummy;
    nreturn;
}
Finish_map = (epsilon . *finish_map());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_grep — grep { closure_expr } list → (AST_FNC raku_grep (AST_VAR raku_grep) closure list).
// Mirrors raku.y KW_GREP closure expr: make_call("raku_grep") + 2 children.
// Retained: same reason as finish_map.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_grep(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_grep');
    node = tree('AST_FNC', 'raku_grep');
    Append(node, fn);
    Append(node, clos);
    Append(node, lst);
    Push(node);
    finish_grep = .dummy;
    nreturn;
}
Finish_grep = (epsilon . *finish_grep());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_sort_cl — sort { closure_expr } list → (AST_FNC raku_sort (AST_VAR raku_sort) closure list).
// finish_sort_nc — sort list → (AST_FNC raku_sort (AST_VAR raku_sort) list).
// Mirrors raku.y: with-closure form pops 2 children; no-closure form pops 1.
// Retained: same reason as finish_map.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_sort_cl(lst, clos, fn, node) {
    lst  = Pop();
    clos = Pop();
    fn   = tree('AST_VAR', 'raku_sort');
    node = tree('AST_FNC', 'raku_sort');
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
    fn   = tree('AST_VAR', 'raku_sort');
    node = tree('AST_FNC', 'raku_sort');
    Append(node, fn);
    Append(node, lst);
    Push(node);
    finish_sort_nc = .dummy;
    nreturn;
}
Finish_sort_nc = (epsilon . *finish_sort_nc());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_try — try block [CATCH block] → (AST_FNC raku_try (AST_VAR raku_try) try_blk [catch_blk]).
// Mirrors raku.y KW_TRY block [KW_CATCH block].
// try_has_catch global: 1 if CATCH block present, 0 otherwise.
// Uses EQ predicate (not bare if) per cross-PARSER style note from RK-17.
// Retained: conditional 2-arg vs 1-arg AST_FNC build cannot be expressed in reduce().
/*--------------------------------------------------------------------------------------------------------------------*/
try_has_catch = 0;
function finish_try(catch_blk, try_blk, fn, node) {
    if (EQ(try_has_catch, 1)) catch_blk = Pop();
    try_blk = Pop();
    fn   = tree('AST_VAR', 'raku_try');
    node = tree('AST_FNC', 'raku_try');
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
// finish_for — pops block+array from stack, builds AST_EVERY.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_for(block, iter_arr, iter_node, node) {
    block     = Pop();
    iter_arr  = Pop();
    iter_node = tree('AST_ITERATE', for_iter);
    Append(iter_node, iter_arr);
    node = tree('AST_EVERY', '');
    Append(node, iter_node);
    Append(node, block);
    Push(node);
    finish_for = .dummy;
    nreturn;
}
Finish_for   = (epsilon . *finish_for());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_method — close inner body frame, build raw AST_FNC (method name only,
// no rename yet), push onto outer class counter frame.
// Called by MethodDef; outer ClassDecl nInc() increments the class frame.
// Retained: reduce() sets value=''; AST_FNC requires value=methodname;
//           building the temporary raw node needed for finish_class rename pass.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_method(n_kids, kids, mname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    mname = capmtf capmtr;
    efnc  = tree('AST_FNC', mname);
    Append(efnc, tree('AST_VAR', mname));
    Append(efnc, tree('AST_VAR', 'self'));
    i = 1;
    while (LE(i, n_kids)) {
        Append(efnc, kids[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_method = .dummy;
    nreturn;
}
Finish_method = (epsilon . *finish_method());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_class — close class body counter frame:
//   - for each AST_FNC item: rename to ClassName__method, emit STMT into sub_list.
//   - for each AST_VAR item: append as field child to AST_RECORD node.
//   - emit AST_RECORD STMT into sub_list (after all methods, so it appears after
//     them when sub_list is reversed for emission).
// Retained: reduce() cannot rename AST_FNC values or build AST_RECORD with dynamic
//           class name from capclsf/capclsr.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_class(n_items, items, cname, rec, item, fname, fullname, efnc, subj, stmt, i) {
    n_items = TopCounter();
    items   = GT(n_items, 0) ARRAY('1:' n_items);
    i = n_items;
    while (GT(i, 0)) {
        items[i] = Pop();
        i = i - 1;
    }
    cname = capclsf capclsr;
    // Build AST_RECORD node (fields will be appended in order).
    rec = tree('AST_RECORD', cname);
    // Walk items: AST_FNC → method STMT; AST_VAR → field child.
    i = 1;
    while (LE(i, n_items)) {
        item = items[i];
        if (IDENT(t(item), 'AST_FNC')) {
            // Rename: ClassName__methodname
            fullname = cname '__' v(item);
            v(item) = fullname;
            v(c(item)[1]) = fullname;
            // Emit as STMT into sub_list
            subj = tree(':subj', '');
            Append(subj, item);
            stmt = tree('STMT', '');
            Append(stmt, subj);
            sub_list = slink(sub_list, stmt);
        } else {
            Append(rec, item);
        }
        i = i + 1;
    }
    // AST_RECORD STMT into sub_list (will appear after methods on emit).
    subj = tree(':subj', '');
    Append(subj, rec);
    stmt = tree('STMT', '');
    Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    finish_class = .dummy;
    nreturn;
}
Finish_class = (epsilon . *finish_class());
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
    efnc  = tree('AST_FNC', sname);
    Append(efnc, tree('AST_VAR', sname));
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
// emits a def STMT (AST_FNC __gather_N (AST_VAR __gather_N) ...body...) into
// sub_list, then pushes the call (AST_FNC __gather_N (AST_VAR __gather_N))
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
    // Def STMT: (STMT :subj (AST_FNC gname (AST_VAR gname) body...))
    def_efnc = tree('AST_FNC', gname);
    Append(def_efnc, tree('AST_VAR', gname));
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
    // Call expression: (AST_FNC gname (AST_VAR gname)) — pushed for the caller.
    call_efnc = tree('AST_FNC', gname);
    Append(call_efnc, tree('AST_VAR', gname));
    Push(call_efnc);
    finish_gather = .dummy;
    nreturn;
}
Finish_gather = (epsilon . *finish_gather());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_call — function call decomposition.  Reads TopCounter() for
// nTop() children (callee AST_VAR + args).  Builds (AST_FNC fname (AST_VAR fname)
// arg1...argN) with fname read from kids[1] sval (the AST_VAR node pushed by
// shift(CallName,'AST_VAR')).  NOT from capfnf/capfnr — those are overwritten
// by any nested call in an argument (e.g. f(g(x)) clobbers capfnf with 'g').
// Retained: reduce() sets value=''; AST_FNC requires value=fname to match oracle.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_call(n_kids, kids, fname, efnc, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    fname = v(kids[1]);
    efnc  = tree('AST_FNC', fname);
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
// finish_mcall — method call: $obj.meth(args).
// Counter frame holds N args (already on stack above obj).
// Builds (AST_FNC raku_mcall (AST_VAR raku_mcall) obj (AST_QLIT mname) arg1..argN).
// Retained: reduce() sets value=''; raku_mcall name required in AST_FNC.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_mcall(n_args, args, obj, mname, efnc, i) {
    n_args = TopCounter();
    args   = GT(n_args, 0) ARRAY('1:' n_args);
    i = n_args;
    while (GT(i, 0)) {
        args[i] = Pop();
        i = i - 1;
    }
    obj   = Pop();
    mname = capmf capmr;
    efnc  = tree('AST_FNC', 'raku_mcall');
    Append(efnc, tree('AST_VAR', 'raku_mcall'));
    Append(efnc, obj);
    Append(efnc, tree('AST_QLIT', mname));
    i = 1;
    while (LE(i, n_args)) {
        Append(efnc, args[i]);
        i = i + 1;
    }
    Push(efnc);
    finish_mcall = .dummy;
    nreturn;
}
Finish_mcall = (epsilon . *finish_mcall());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_field — field access: $obj.field (no parens).
// Pops obj, builds (AST_FIELD mname obj) using capmf/capmr.
// Retained: reduce() can't set the sval field of AST_FIELD; helper required.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_field(obj, mname, ef) {
    obj   = Pop();
    mname = capmf capmr;
    ef    = tree('AST_FIELD', mname);
    Append(ef, obj);
    Push(ef);
    finish_field = .dummy;
    nreturn;
}
Finish_field = (epsilon . *finish_field());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_float — push (AST_FLIT n) using capstr (the matched digit string).
// Retained: AST_FLIT requires a float value; shift() only handles AST_ILIT.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_float(ef) {
    ef = tree('AST_FLIT', capstr);
    Push(ef);
    finish_float = .dummy;
    nreturn;
}
Finish_float = (epsilon . *finish_float());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_arr_set — @a[i] = expr → (AST_FNC arr_set (AST_VAR arr_set) arr idx val).
// Stack (top→bottom): val, idx, arr_var.  Counter not used — exactly 3 items.
// Retained: reduce() can't set the AST_FNC value field.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_arr_set(val, idx, arr, efnc) {
    val  = Pop();
    idx  = Pop();
    arr  = Pop();
    efnc = tree('AST_FNC', 'arr_set');
    Append(efnc, tree('AST_VAR', 'arr_set'));
    Append(efnc, arr);
    Append(efnc, idx);
    Append(efnc, val);
    Push(efnc);
    finish_arr_set = .dummy;
    nreturn;
}
Finish_arr_set = (epsilon . *finish_arr_set());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_set_angle — %h<key> = val → (AST_FNC hash_set ... %h (AST_QLIT key) val).
// Uses capkey for the angle-bracket key, pops val then hash from stack.
// Retained: same reason as finish_mcall.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_set_angle(val, hsh, efnc) {
    val  = Pop();
    hsh  = Pop();
    efnc = tree('AST_FNC', 'hash_set');
    Append(efnc, tree('AST_VAR', 'hash_set'));
    Append(efnc, hsh);
    Append(efnc, tree('AST_QLIT', capkey));
    Append(efnc, val);
    Push(efnc);
    finish_hash_set_angle = .dummy;
    nreturn;
}
Finish_hash_set_angle = (epsilon . *finish_hash_set_angle());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_hash_set_brace — %h{expr} = val → (AST_FNC hash_set ... %h key_expr val).
// Stack (top→bottom): val, key_expr, hash_var.
// Retained: same reason as finish_mcall.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_hash_set_brace(val, key, hsh, efnc) {
    val  = Pop();
    key  = Pop();
    hsh  = Pop();
    efnc = tree('AST_FNC', 'hash_set');
    Append(efnc, tree('AST_VAR', 'hash_set'));
    Append(efnc, hsh);
    Append(efnc, key);
    Append(efnc, val);
    Push(efnc);
    finish_hash_set_brace = .dummy;
    nreturn;
}
Finish_hash_set_brace = (epsilon . *finish_hash_set_brace());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_field_write — $obj.field = expr → (AST_ASSIGN (AST_FIELD fname obj) rhs).
// Stack (top→bottom): rhs, obj.  capmf/capmr hold the field name.
// Retained: same reason as finish_field.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_field_write(rhs, obj, ef, asgn) {
    rhs  = Pop();
    obj  = Pop();
    ef   = tree('AST_FIELD', capmf capmr);
    Append(ef, obj);
    asgn = tree('AST_ASSIGN', '');
    Append(asgn, ef);
    Append(asgn, rhs);
    Push(asgn);
    finish_field_write = .dummy;
    nreturn;
}
Finish_field_write = (epsilon . *finish_field_write());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_for_noarrow — for expr { body } → (AST_EVERY (AST_ITERATE expr) body).
// Stack (top→bottom): body (AST_SEQ_EXPR), iterable.
// Retained: AST_ITERATE wrapping not expressible via reduce().
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_for_noarrow(body, iter, ev, it) {
    body = Pop();
    iter = Pop();
    it   = tree('AST_ITERATE', '');
    Append(it, iter);
    ev   = tree('AST_EVERY', '');
    Append(ev, it);
    Append(ev, body);
    Push(ev);
    finish_for_noarrow = .dummy;
    nreturn;
}
Finish_for_noarrow = (epsilon . *finish_for_noarrow());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_raku_new — ClassName.new(named_args) → (AST_FNC raku_new (AST_VAR raku_new)
//   (AST_QLIT ClassName) (AST_QLIT k1) v1 (AST_QLIT k2) v2 ...).
// Counter frame holds 2*N items (key+val pairs); ClassName in capfnf/capfnr.
// Retained: AST_FNC value field required.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_raku_new(n, items, cname, efnc, i) {
    n     = TopCounter();
    items = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { items[i] = Pop(); i = i - 1; }
    cname = capclsf capclsr;
    efnc  = tree('AST_FNC', 'raku_new');
    Append(efnc, tree('AST_VAR', 'raku_new'));
    Append(efnc, tree('AST_QLIT', cname));
    i = 1;
    while (LE(i, n)) { Append(efnc, items[i]); i = i + 1; }
    Push(efnc);
    finish_raku_new = .dummy;
    nreturn;
}
Finish_raku_new = (epsilon . *finish_raku_new());
/*--------------------------------------------------------------------------------------------------------------------*/
// finish_say_fh / finish_print_fh — say($fh, str) / print($fh, str).
// Stack (top→bottom): str, fh.
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_say_fh(str, fh, efnc) {
    str  = Pop();
    fh   = Pop();
    efnc = tree('AST_FNC', 'raku_say_fh');
    Append(efnc, tree('AST_VAR', 'raku_say_fh'));
    Append(efnc, fh);
    Append(efnc, str);
    Push(efnc);
    finish_say_fh = .dummy;
    nreturn;
}
Finish_say_fh = (epsilon . *finish_say_fh());
function finish_print_fh(str, fh, efnc) {
    str  = Pop();
    fh   = Pop();
    efnc = tree('AST_FNC', 'raku_print_fh');
    Append(efnc, tree('AST_VAR', 'raku_print_fh'));
    Append(efnc, fh);
    Append(efnc, str);
    Push(efnc);
    finish_print_fh = .dummy;
    nreturn;
}
Finish_print_fh = (epsilon . *finish_print_fh());
/*--------------------------------------------------------------------------------------------------------------------*/
function finish_main(n_kids, kids, efnc, subj, stmt, i) {
    n_kids = TopCounter();
    kids   = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    efnc = tree('AST_FNC', 'main');
    Append(efnc, tree('AST_VAR', 'main'));
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
// (AST_ADD a b c) instead of nested binary (AST_ADD (AST_ADD a b) c).  Each helper
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
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_ADD') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_ADD', '');
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
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_SUB') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_SUB', '');
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
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_MUL') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_MUL', '');
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
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_DIV') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_DIV', '');
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
    node = DIFFER(t(lhs)) IDENT(t(lhs), 'AST_CAT') lhs;
    if (DIFFER(node)) { Append(node, rhs); Push(node); } else {
        node = tree('AST_CAT', '');
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
// NamedArgTail — key => val pairs for ClassName.new(k => v, ...).
// Each pair pushes (AST_QLIT key) then val onto the counter frame.
// Defined before Expr11 (forward-ref rule).

NamedArgTail = ( $','  $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  Push_named_key  *Expr  nInc() nInc() );

// NewCallName — ClassName before '.new(': UpperCamel ident, captures into capfnf/capfnr.
// No leading ws strip needed — whitespace already eaten by $' ' in surrounding pattern.

NewCallName = ($' ' fnf . capclsf fnro . capclsr);

// CallArgTail — defined BEFORE Expr11 so the ARBNO(*CallArgTail) reference
// in Expr11 resolves at match time (deferred), not capture-time epsilon.

CallArgTail = ( $','  *Expr  nInc() );

// McallArgTail — comma-separated method args inside .meth(arg, ...).
// Defined before Expr11 (same forward-ref rule as CallArgTail).

McallArgTail = ( $','  *Expr  nInc() );

// MethodName — bare identifier for method/field name (no leading whitespace;
// '.' immediately precedes it in the subject).
// Uses same char class as CallName (fnf/fnro) but captures into capmf/capmr.

MethodName = ( fnf . capmf fnro . capmr );

// MethodTail — postfix .method(args) or .field on any primary expression.
// Fires against the primary already on the stack.  Two arms:
//   with parens:  '.' MethodName '(' [args] ')' → raku_mcall node
//   without parens: '.' MethodName               → AST_FIELD node
// Defined before Expr11 (deferred *MethodTail reference).
// No whitespace around '.' — Raku method-call syntax requires contiguous dot.

MethodTail = FENCE(
    '.' MethodName
    FENCE(
        '('
        nPush()
        ( *Expr              nInc()
          ARBNO( *McallArgTail )
        | epsilon
        )
        $')'                 Finish_mcall
        nPop()
      | epsilon              Finish_field
    )
);

// Expr11 — primary, optionally followed by method-call/field postfixes.
// ARBNO(*MethodTail) uses deferred lookup because MethodTail is defined
// after Expr11 would otherwise capture it as epsilon.

Expr11 = ( $'!'  *Expr11  Finish_not
         | ($' ' '-')  *Expr11  Finish_mns
         | $'die' $'  '  *Expr11  Finish_die
         | $'map'  $'  '  ClosureExpr  $'  '  *Expr  Finish_map
         | $'grep' $'  '  ClosureExpr  $'  '  *Expr  Finish_grep
         | $'sort' $'  '  ClosureExpr  $'  '  *Expr  Finish_sort_cl
         | $'sort' $'  '  *Expr                       Finish_sort_nc
         | $'gather' *GatherBlock
         | VarTwigil              Push_twigil
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
         | ( LitFloat . capstr     Finish_float )
         | shift(LitInt, 'AST_ILIT')
         | LitStrDQ               Dq_unescape  Push_interp_str
         | LitStrSQ               Push_qlit
         | ( nPush()
             NewCallName
             '.' 'new'
             $'('
             ( $' ' ((ident_first (ident_rest | epsilon)) . capnamedkey) $'=>'  Push_named_key  *Expr  nInc() nInc()
               ARBNO( *NamedArgTail )
             | epsilon
             )
             $')'                 Finish_raku_new
             nPop()
           )
         | $'(' *Expr $')'
         | ( nPush()
             shift(CallName, 'AST_VAR')  nInc()
             $'('
             ( *Expr              nInc()
               ARBNO( *CallArgTail )
             | epsilon
             )
             $')'                 Finish_call
             nPop()
           )
         | BareIdent              Push_var
         )
         ARBNO(*MethodTail);

// Expr7 — multiplicative (* /).
// Flatten_mul / Flatten_div produce n-ary (AST_MUL a b c) matching the C oracle.
Expr7tail = FENCE( $'*'  *Expr11  Flatten_mul
                 | $'/'  *Expr11  Flatten_div
                 | $'div' *Expr11  Flatten_div
                 | $'%'  *Expr11  (AST_MOD & 2)
                 );
Expr7     = ( Expr11 ARBNO(Expr7tail) );

// Expr6 — additive (+ -).
// Flatten_add / Flatten_sub produce n-ary (AST_ADD a b c) matching the C oracle.
Expr6tail = FENCE( $'+'  *Expr7  Flatten_add
                 | $'-'  *Expr7  Flatten_sub
                 | $'~'  *Expr7  Flatten_cat
                 );
Expr6     = ( Expr7  ARBNO(Expr6tail) );

// Expr5 — range ops (.. and ..^).  Both map to AST_TO (oracle: raku.y OP_RANGE_EX also → AST_TO).
// Range is non-chaining (not ARBNO) — just a single optional tail.
// ..^ tried first (longer token) so FENCE picks it before ...
Expr5     = ( Expr6
              FENCE( $'..^'  *Expr6  (AST_TO & 2)
                   | $'..'   *Expr6  (AST_TO & 2)
                   | epsilon
                   )
            );

// Expr4 — comparison ops.  Two-char ops tried first (longest match).
// ~~ smartmatch: subject ~~ /pattern/ — produces raku_match(subj, pat).
// Smartmatch's RHS is a LitRegex (not arbitrary Expr) at the RK-5 starter slice.
Expr4tail = FENCE( $'=='  *Expr5      (AST_EQ & 2)
                 | $'!='  *Expr5      (AST_NE & 2)
                 | $'<='  *Expr5      (AST_LE & 2)
                 | $'>='  *Expr5      (AST_GE & 2)
                 | $'<'   *Expr5      (AST_LT & 2)
                 | $'>'   *Expr5      (AST_GT & 2)
                 | $'eq'  *Expr5      (AST_LEQ & 2)
                 | $'ne'  *Expr5      (AST_LNE & 2)
                 | $'~~'  LitRegex Push_rxlit  Finish_smartmatch
                 | $'~~'  LitMatchGlobal Push_rxlit  Finish_match_global
                 | $'~~'  LitSubst       Finish_subst
                 );
Expr4     = ( Expr5  ARBNO(Expr4tail) );

// Expr3 — logical ops (&& ||).
// Mirrors raku.y cmp_expr: cmp_expr OP_AND add_expr / cmp_expr OP_OR add_expr.
// && → AST_SEQ (goal-directed and), || → AST_ALT (goal-directed or).
// && tried before || (no ambiguity but mirrors longest-match convention).
Expr3tail = FENCE( $'&&'  *Expr4  (AST_SEQ & 2)
                 | $'||'  *Expr4  (AST_ALT & 2)
                 );
Expr3     = ( Expr4  ARBNO(Expr3tail) );

// Expr — top of expression tower.
Expr      = Expr3;
/*====================================================================================================================*/
// Block — `{ BlockStmt* }` — produces AST_SEQ_EXPR pushed on stack.
/*====================================================================================================================*/
BlockStmt = epsilon;

Block_body = ( *BlockStmt nInc() );

Block = ( $'{'
          nPush()
          ARBNO( Block_body )
          $'}'
          (AST_SEQ_EXPR & 'nTop()')
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
           ( $'elsif'  $'(' Expr $')'  Block
             ( $'else'  Block  (AST_IF & 3) (AST_IF & 3)
             | (AST_IF & 2) (AST_IF & 3)
             )
           | $'else'  Block  (AST_IF & 3)
           | (AST_IF & 2)
           )
         );

WhileStmt = ( $'while'  $'(' Expr $')'
              Block
              (AST_WHILE & 2)
            );

// UnlessStmt — unless (cond) block [else block].
// Mirrors raku.y: (AST_IF (AST_NOT cond) then [else]).
UnlessStmt = ( $'unless'  $'(' Expr $')'
               Finish_not
               Block
               ( $'else'  Block  (AST_IF & 3)
               | (AST_IF & 2)
               )
             );

// UntilStmt — until (cond) block.
// Mirrors raku.y: (AST_UNTIL cond body).
UntilStmt = ( $'until'  $'(' Expr $')'
              Block
              (AST_UNTIL & 2)
            );

// WithoutStmt — without (cond) block.
// Mirrors Grammar.nqp `statement_control:sym<without>`.  No clean E_* kind;
// placeholder lowering to (AST_FNC raku_without (AST_VAR raku_without) cond block).
// Spec disallows trailing else/elsif/orwith — we accept the bare form only.
WithoutStmt = ( $'without'  $'(' Expr $')'
                Block
                Finish_without
              );

// WheneverStmt — whenever EXPR { block }.
// RK-28 arm 2: Grammar.nqp `statement_control:sym<whenever>` uses xblock
// (no parens around expr).  Lower to (AST_FNC raku_whenever expr block).
WheneverStmt = ( $'whenever' $'  ' *Expr Block Finish_whenever );

// LoopThreeStmt — `loop (init; cond; step) { block }` C-style.
// RK-28 arm 4b: Grammar.nqp `statement_control:sym<loop>` three-expr arm.
// Must come BEFORE LoopInfStmt in alternations — both start with `loop`,
// the three-part form is longer (has `(`) so try it first to avoid the
// infinite form mis-matching `loop ` and leaving `(...)` unparsed.
//
// LoopSubExpr — accepts either `lhs = rhs` (assignment-as-expression) or
// a plain Expr.  Raku's three-part loop allows assignments in init/step
// positions; our top-level `Expr` does not include `=` (assignment is a
// statement, not an expression).  The leading VarScalar/`=` arm folds to
// (AST_ASSIGN lhs rhs) on the stack — same shape as AssignStmt without the `;`.
// FENCE before Push_var to prevent match-time side-effect leak (RK-24 rule).
LoopSubExpr = ( ( VarScalar FENCE $'=' Push_var Expr (AST_ASSIGN & 2) )
              | Expr
              );

LoopThreeStmt = ( $'loop' $'(' LoopSubExpr $';' LoopSubExpr $';' LoopSubExpr $')'
                  Block
                  Finish_loop_three
                );

// LoopInfStmt — `loop { block }` infinite (no parens).
// RK-28 arm 4a: Grammar.nqp `statement_control:sym<loop>` zero-expr arm.
LoopInfStmt = ( $'loop' Block Finish_loop_inf );

// UseStmt / NoStmt / NeedStmt / ImportStmt / RequireStmt — module-load stmts.
// RK-28 arms 5–9: Grammar.nqp `statement_control:sym<{use,no,need,import,require}>`.
// Minimal parse-coverage form: keyword + module-name + `;`.  Args/versions
// (e.g. `use v6;`, `use Foo :tag;`, `import Mod :sym<foo>`) parse but ignore
// any trailing args: see `BREAK(';') $';'` consume-to-semi pattern.
// Each lowers to (AST_FNC raku_<kw> (AST_VAR raku_<kw>) (AST_QLIT modname)).
UseStmt     = ( $'use'     $'  ' ModuleName BREAK(';') $';' Finish_use     );
NoStmt      = ( $'no'      $'  ' ModuleName BREAK(';') $';' Finish_no      );
NeedStmt    = ( $'need'    $'  ' ModuleName BREAK(';') $';' Finish_need    );
ImportStmt  = ( $'import'  $'  ' ModuleName BREAK(';') $';' Finish_import  );
RequireStmt = ( $'require' $'  ' ModuleName BREAK(';') $';' Finish_require );

// CatchFreeStmt / ControlStmt / QuitStmt — free phaser blocks.
// RK-28 arms 11–13: Grammar.nqp `statement_control:sym<{CATCH,CONTROL,QUIT}>`.
// Plain `<keyword> { block }` — no parens, no expr.  CATCH inside `try` is
// already handled by TryStmt; this matches CATCH outside try (and CONTROL,
// QUIT) at stmt position.
CatchFreeStmt = ( $'CATCH'   Block Finish_catch_free );
ControlStmt   = ( $'CONTROL' Block Finish_control    );
QuitStmt      = ( $'QUIT'    Block Finish_quit       );

// RK-29 — statement_prefix:sym<...> grammar productions.
// ─────────────────────────────────────────────────────────────────────────────
// Block-only phasers (all-caps): PHASER { block } → placeholder AST_FNC.
// All have the same shape: keyword Block Finish_phaser_<name>.
// Spec source: Grammar.nqp lines 1394–1432.
// ─────────────────────────────────────────────────────────────────────────────
BeginStmt   = ( $'BEGIN'   Block Finish_phaser_begin  );
EndStmt     = ( $'END'     Block Finish_phaser_end    );
InitStmt    = ( $'INIT'    Block Finish_phaser_init   );
CheckStmt   = ( $'CHECK'   Block Finish_phaser_check  );
EnterStmt   = ( $'ENTER'   Block Finish_phaser_enter  );
LeaveStmt   = ( $'LEAVE'   Block Finish_phaser_leave  );
KeepStmt    = ( $'KEEP'    Block Finish_phaser_keep   );
UndoStmt    = ( $'UNDO'    Block Finish_phaser_undo   );
FirstStmt   = ( $'FIRST'   Block Finish_phaser_first  );
NextPhStmt  = ( $'NEXT'    Block Finish_phaser_next   );
LastPhStmt  = ( $'LAST'    Block Finish_phaser_last   );
PreStmt     = ( $'PRE'     Block Finish_phaser_pre    );
PostStmt    = ( $'POST'    Block Finish_phaser_post   );
CloseStmt   = ( $'CLOSE'   Block Finish_phaser_close  );
TempStmt    = ( $'TEMP'    Block Finish_phaser_temp   );

// Lowercase block-value phasers: keyword { block } → placeholder AST_FNC.
DoBlockStmt  = ( $'do'      Block Finish_do_block );
OnceStmt     = ( $'once'    Block Finish_once     );
StartStmt    = ( $'start'   Block Finish_start    );
SupplyStmt   = ( $'supply'  Block Finish_supply   );
ReactStmt    = ( $'react'   Block Finish_react    );
QuietlyStmt  = ( $'quietly' Block Finish_quietly  );

// List adverbs: keyword EXPR ; → placeholder AST_FNC wrapping expression.
RaceStmt    = ( $'race'  $'  ' *Expr $';' Finish_race  );
HyperStmt   = ( $'hyper' $'  ' *Expr $';' Finish_hyper );
LazyStmt    = ( $'lazy'  $'  ' *Expr $';' Finish_lazy  );
EagerStmt   = ( $'eager' $'  ' *Expr $';' Finish_eager );
SinkStmt    = ( $'sink'  $'  ' *Expr $';' Finish_sink  );

// ForeachStmt — Perl-5 alias for `for`.  Spec (Grammar.nqp `statement_control:sym<foreach>`)
// actually emits an `obs` panic, but for parse-coverage we accept and lower
// identically to the Raku `for EXPR -> $v { body }` form via Finish_for.
// Reuses the existing for-stmt machinery (Store_for_iter + Finish_for).
ForeachStmt = ( $'foreach' $'  '  Expr
                $'->'
                ForLoopvar  Store_for_iter
                Block  Finish_for
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

// DeleteHashAngle — delete %hash<ident> ; → (AST_FNC hash_delete ...)
DeleteHashAngle = ( $'delete'  HashIdxVar  $'<'  HashAngleKey  $'>'  $';'
                    Finish_hash_delete_angle
                  );

// DeleteHashBrace — delete %hash{$expr} ; → (AST_FNC hash_delete ...)
DeleteHashBrace = ( $'delete'  HashIdxVar  $'{'  Expr  $'}'  $';'
                    Finish_hash_delete_brace
                  );

ReturnStmt = ( $'return'
               ( $';'         (AST_RETURN & 0)
               | $'  ' Expr   $';'  (AST_RETURN & 1)
               )
             );

// TakeStmt — `take expr ;` → (AST_SUSPEND expr).  Body of gather { ... }
// uses AST_SUSPEND like a SNOBOL4-style coroutine yield; raku.y maps to
// expr_unary(AST_SUSPEND, expr).  Note: only meaningful inside a gather
// block — the C frontend doesn't enforce that, neither do we.
TakeStmt = ( $'take' $'  ' Expr $';' (AST_SUSPEND & 1) );

// TypedDeclStmt — my Type $var = expr; / my Type $var;  (type annotation discarded)
TypedDeclStmt = ( $'my' $'  '
                  $' ' ident_first (ident_rest | epsilon)
                  $'  '
                  ( ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $'=' *Expr $';'  (AST_ASSIGN & 2)
                  | ( VarScalar Push_var | VarArray Push_var | VarHash Push_var )
                    $';'             Push_empty  (AST_ASSIGN & 2)
                  )
                );

// ReturnBareStmt — return ; → (AST_RETURN) with no children.
ReturnBareStmt = ( $'return' $';' (AST_RETURN & 0) );

AssignStmt = ( ($'my' $'  ' | epsilon)
               ( VarScalar  Push_var
               | VarArray   Push_var
               | VarHash    Push_var
               )
               $'='  Expr  $';'  (AST_ASSIGN & 2)
             );

SayStmt = ( $'say'
            Expr  $';'  Finish_say
          );

// WhenClause — when Expr Block → push val + body, count.
// Mirrors raku.y when_list item: expr block pair.
WhenClause = ( $'when' $'  '
               Expr          // val pushed on stack by Expr
               Block         // body (AST_SEQ_EXPR) pushed by Block
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

// ArrSetStmt — @a[idx] = expr → arr_set.
ArrSetStmt = ( VarArray Push_var $'[' *Expr $']' $'=' *Expr $';'  Finish_arr_set );

// HashSetAngleStmt — %h<key> = expr → hash_set with literal key.
HashAngleSetKey = ($' ' BREAK('>') . capkey);
HashSetAngleStmt = ( VarHash Push_var $'<' HashAngleSetKey $'>' $'=' *Expr $';'  Finish_hash_set_angle );

// HashSetBraceStmt — %h{expr} = expr → hash_set with expr key.
HashSetBraceStmt = ( VarHash Push_var $'{' *Expr $'}' $'=' *Expr $';'  Finish_hash_set_brace );

// FieldWriteStmt — $obj.field = expr → (AST_ASSIGN (AST_FIELD name obj) rhs).
FieldWriteStmt = ( VarScalar Push_var '.' MethodName $'=' *Expr $';'  Finish_field_write );

// SayFhStmt — say($fh, str) → raku_say_fh.
// Accepts VarScalar ($fh) or standard handles ($*STDIN/$*STDOUT/$*STDERR).
// FENCE commits only after comma is confirmed; fh push fires after FENCE.
// VarStdIn/Out/Err are pure string matches (no side effects) so they are
// safe before FENCE; Finish_stdin/stdout/stderr push after FENCE+comma.
SayFhStmt = ( $'say' $'('
              ( VarScalar FENCE $','  Push_var
              | VarStdIn  FENCE $','  Finish_stdin
              | VarStdOut FENCE $','  Finish_stdout
              | VarStdErr FENCE $','  Finish_stderr
              )
              *Expr $')' $';' Finish_say_fh );

// PrintFhStmt — print($fh, str) → raku_print_fh.  Same shape as SayFhStmt.
PrintFhStmt = ( $'print' $'('
                ( VarScalar FENCE $','  Push_var
                | VarStdIn  FENCE $','  Finish_stdin
                | VarStdOut FENCE $','  Finish_stdout
                | VarStdErr FENCE $','  Finish_stderr
                )
                *Expr $')' $';' Finish_print_fh );

BareStmt = ( Expr $';' );

// PrintStmt — print expr ; → (AST_FNC writes (AST_VAR writes) arg).
// Mirrors raku.y KW_PRINT expr ';'.
PrintStmt = ( $'print'
              Expr  $';'  Finish_print
            );

// TryStmt — try block [CATCH block] → (AST_FNC raku_try ...).
// Mirrors raku.y KW_TRY block [KW_CATCH block].
TryStmt = ( $'try'
            Block
            ( $'CATCH'  Block  Set_has_catch
            | epsilon
            )
            Finish_try
          );

// RepeatStmt — repeat { body } → (AST_REPEAT body).
RepeatStmt = ( $'repeat' Block (AST_REPEAT & 1) );

// ForNoArrowStmt — for expr { body } (no -> $var) → (AST_EVERY (AST_ITERATE expr) body).
// Mirrors raku.y: KW_FOR expr block → expr_binary(AST_EVERY, AST_ITERATE(expr), block).
ForNoArrowStmt = ( $'for' $'  ' *Expr Block Finish_for_noarrow );

Stmt = ( GivenStmt
       | TryStmt
       | CatchFreeStmt
       | ControlStmt
       | QuitStmt
       | IfStmt
       | WhileStmt
       | UnlessStmt
       | WithoutStmt
       | WheneverStmt
       | UntilStmt
       | RepeatStmt
       | LoopThreeStmt
       | LoopInfStmt
       | UseStmt
       | NoStmt
       | NeedStmt
       | ImportStmt
       | RequireStmt
       | ForeachStmt
       | ForRangeStmt
       | ForNoArrowStmt
       | ForStmt
       | DeleteHashAngle
       | DeleteHashBrace
       | ArrSetStmt
       | HashSetAngleStmt
       | HashSetBraceStmt
       | FieldWriteStmt
       | SayFhStmt
       | PrintFhStmt
       | TypedDeclStmt
       | ReturnBareStmt
       | ReturnStmt
       | TakeStmt
       | AssignStmt
       | SayStmt
       | PrintStmt
       | BareStmt
       | BeginStmt
       | EndStmt
       | InitStmt
       | CheckStmt
       | EnterStmt
       | LeaveStmt
       | KeepStmt
       | UndoStmt
       | FirstStmt
       | NextPhStmt
       | LastPhStmt
       | PreStmt
       | PostStmt
       | CloseStmt
       | TempStmt
       | DoBlockStmt
       | OnceStmt
       | StartStmt
       | SupplyStmt
       | ReactStmt
       | QuietlyStmt
       | RaceStmt
       | HyperStmt
       | LazyStmt
       | EagerStmt
       | SinkStmt
       );

// BlockStmt — final binding.
BlockStmt = ( GivenStmt | TryStmt | CatchFreeStmt | ControlStmt | QuitStmt | IfStmt | WhileStmt | UnlessStmt | WithoutStmt | WheneverStmt | UntilStmt | RepeatStmt | LoopThreeStmt | LoopInfStmt | UseStmt | NoStmt | NeedStmt | ImportStmt | RequireStmt | ForeachStmt | ForRangeStmt | ForNoArrowStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ArrSetStmt | HashSetAngleStmt | HashSetBraceStmt | FieldWriteStmt | SayFhStmt | PrintFhStmt | TypedDeclStmt | ReturnBareStmt | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt | BeginStmt | EndStmt | InitStmt | CheckStmt | EnterStmt | LeaveStmt | KeepStmt | UndoStmt | FirstStmt | NextPhStmt | LastPhStmt | PreStmt | PostStmt | CloseStmt | TempStmt | DoBlockStmt | OnceStmt | StartStmt | SupplyStmt | ReactStmt | QuietlyStmt | RaceStmt | HyperStmt | LazyStmt | EagerStmt | SinkStmt );

// SubBlockStmt — SubBlock_body handles nInc per stmt.
SubBlockStmt = ( GivenStmt | TryStmt | CatchFreeStmt | ControlStmt | QuitStmt | IfStmt | WhileStmt | UnlessStmt | WithoutStmt | WheneverStmt | UntilStmt | RepeatStmt | LoopThreeStmt | LoopInfStmt | UseStmt | NoStmt | NeedStmt | ImportStmt | RequireStmt | ForeachStmt | ForRangeStmt | ForNoArrowStmt | ForStmt | DeleteHashAngle | DeleteHashBrace | ArrSetStmt | HashSetAngleStmt | HashSetBraceStmt | FieldWriteStmt | SayFhStmt | PrintFhStmt | TypedDeclStmt | ReturnBareStmt | ReturnStmt | TakeStmt | AssignStmt | SayStmt | PrintStmt | BareStmt | BeginStmt | EndStmt | InitStmt | CheckStmt | EnterStmt | LeaveStmt | KeepStmt | UndoStmt | FirstStmt | NextPhStmt | LastPhStmt | PreStmt | PostStmt | CloseStmt | TempStmt | DoBlockStmt | OnceStmt | StartStmt | SupplyStmt | ReactStmt | QuietlyStmt | RaceStmt | HyperStmt | LazyStmt | EagerStmt | SinkStmt );
/*====================================================================================================================*/
// Sub parameter list — each param shifts (AST_VAR name) onto sub counter frame.
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
// Class declarations — class Name { has $.f; method m(...) { body } }
//
// Counter frame layout (class body level):
//   - each `has $.field;` → Push(AST_VAR fieldname) + nInc()
//   - each `method name(...) { body }` → Push(raw AST_FNC) + nInc()
// finish_class() processes all items: renames AST_FNC to ClassName__method and
// emits STMT into sub_list; appends AST_VAR into AST_RECORD; emits AST_RECORD STMT.
//
// Method param list: reuses SubParamTail/SubParams (same $param syntax).
// Method body: reuses SubBlock (SubBlockStmt, no extra nPush/nPop needed here
// because MethodDef wraps nPush/nPop around the whole sub-frame for body stmts).
//
// Forward-ref note: MethodDef references SubBlock and SubParams which are both
// defined AFTER ClassDecl in source order. Use *SubBlock and *SubParams.
// ClassDecl is added to Compiland's ARBNO as *ClassDecl (deferred lookup).
/*====================================================================================================================*/
// HasDecl — has $.field ; or has $field ;
// VarTwigil captures bare name into captwf/captwr.
// Also accept plain VarScalar (has $field;) — strip sigil via capvf/capvr.
HasDeclTwigil  = ( VarTwigil  Push_has_field );
HasDeclScalar  = ( VarScalar  Push_var       );
HasDecl = ( $'has' $'  '
            ( HasDeclTwigil | HasDeclScalar )
            $';'
            nInc()
          );

// MethodDef — method name(params) { body }
// Inner nPush/nPop brackets body stmts; Finish_method pops them.
// capmtf/capmtr hold the method name from MethodIdent.
// nInc() (outer) done by caller (ClassBodyItem).
MethodParamTail = ( $','
                    SubParam  Push_param  nInc()
                  );
MethodParams = ( SubParam  Push_param  nInc()
                 ARBNO( MethodParamTail )
               | epsilon
               );
MethodDef = ( $'method' $'  '
              MethodIdent
              nPush()
              $'(' *MethodParams $')'
              *SubBlock  Finish_method
              nPop()
              nInc()
            );

// ClassBodyItem — either a has-decl or a method-def.
ClassBodyItem = ( HasDecl | MethodDef );

// ClassDecl — class Name { body }.
// Outer nPush/nPop brackets the class body counter frame.
// capclsf/capclsr hold class name from ClassName.
ClassDecl = ( $'class' $'  '
              ClassName
              $'{'
              nPush()
              ARBNO( *ClassBodyItem )
              $'}'
              Finish_class
              nPop()
            );
/*====================================================================================================================*/
// Compiland — canonical cross-PARSER spine.
// Outer frame: holds exactly 1 item (the main STMT) for reduce('Parse',1).
// Inner frame: counts main body stmts for finish_main().
/*====================================================================================================================*/
Compiland = nPush()
            nPush()
            ARBNO( SubStmt | (*ClassDecl Push_nul nInc()) | (Stmt nInc()) )
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
// `ok = (Src ? Compiland)`.  The latter routes through AST_SCAN's matched-
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
        // Emit main STMT only if it has body stmts beyond the initial AST_VAR main child.
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
