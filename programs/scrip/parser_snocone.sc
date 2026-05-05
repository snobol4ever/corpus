// parser_snocone.sc — PARSER-SC: Snocone pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per statement via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Snocone frontend --dump-ir output.
//
// Naming: non-terminals from Snocone grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Pattern-builder companions (Capitalized) return deferred-action patterns at build time.
// Rung SC-3: if / if-else / while / do-while.  Gate: PASS=21 FAIL=0.
&FULLSCAN = 1;
/*====================================================================================================================*/
E_ASSIGN  = "'E_ASSIGN'";  E_SCAN    = "'E_SCAN'";
E_ALT     = "'E_ALT'";     E_SEQ     = "'E_SEQ'";
E_ADD     = "'E_ADD'";     E_SUB     = "'E_SUB'";
E_MUL     = "'E_MUL'";     E_DIV     = "'E_DIV'";
E_POW     = "'E_POW'";
E_QLIT    = "'E_QLIT'";    E_ILIT    = "'E_ILIT'";   E_VAR     = "'E_VAR'";
E_KEYWORD = "'E_KEYWORD'"; E_IDX     = "'E_IDX'";
E_FLIT    = "'E_FLIT'";    E_MNS     = "'E_MNS'";
E_DEFER   = "'E_DEFER'";   E_NOT     = "'E_NOT'";
E_NAME    = "'E_NAME'";    E_INDIRECT= "'E_INDIRECT'";
E_CAPT_COND_ASGN  = "'E_CAPT_COND_ASGN'";
E_CAPT_IMMED_ASGN = "'E_CAPT_IMMED_ASGN'";
E_CAPT_CURSOR     = "'E_CAPT_CURSOR'";
E_Parse   = "'Parse'";
r_nTop    = '*(GT(nTop(), 1) nTop())';
/*====================================================================================================================*/
Block    = '/*' ARBNO(BREAK('*') ANY('*')) '/';
// White_h — horizontal whitespace only (space/tab/cr/ff + line comments + block
// comments); does NOT consume nl.  Used for grouping-paren and call-open so that
// `$'(g'` never eats a newline and triggers deep recursion through Expr0 → Expr17.
White_h  = (  SPAN(' ' tab '\r\f') FENCE(  '//' BREAK(nl)
                                          |  Block
                                          |  epsilon
                                          )
           |  '//' BREAK(nl)
           |  Block
           );
// White_expr — expression-level whitespace: horizontal space + continuation lines
// (nl followed by '+' or '.' at column-1 per S_CONT) + comments.  Does NOT eat
// bare newlines — those end statements.  Used by $'  ' (required whitespace between
// tokens in the expression tier) and by $' ' inside operator tokens.
White_expr = (  SPAN(' ' tab) FENCE(  nl ANY('+.') FENCE(SPAN(' ' tab) | epsilon)
                                    |  '//' BREAK(nl) nl
                                    |  '//' BREAK(nl)
                                    |  Block
                                    |  epsilon
                                    )
             |  nl ANY('+.') FENCE(SPAN(' ' tab) | epsilon)
             |  '//' BREAK(nl) nl
             |  '//' BREAK(nl)
             |  Block
             );
// White — same as White_expr but also eats bare newlines (+ following indent).
// A bare nl matches the newline AND any horizontal whitespace that follows it
// (indentation of the next line), so that after $'  ' eats a continuation
// newline the cursor lands directly at the next token, not at the indent spaces.
White    = (  *White_expr
           |  nl FENCE(SPAN(' ' tab) | epsilon)
           );
Gray     = ARBNO(*White);
Gray_h   = ARBNO(*White_h);
// $' ' — optional whitespace: eats bare newlines, comment lines, continuation
//         lines (Gray = ARBNO(*White)).  Used at statement boundaries and inside
//         operator tokens where newlines are legal separators.
// $'  ' — required whitespace: same as $' ' but requires at least one segment.
//         Used by X4 concat separator (matching lexer's T_CONCAT synthesis across
//         any whitespace including bare newlines inside balanced parens).
$' '     = Gray;
$'  '    = White;
// $'(g' — grouping-open paren: horizontal-only Gray before '(', then full Gray
// after.  Prevents Expr17's grouping-paren from eating a newline on the left and
// recursing into the full Expr tower (which causes C-stack overflow on long inputs).
$'(g'    = Gray_h '(' $' ';
nl_opt   = (nl | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS.
Integer  = SPAN(digits);
DQ       = ('"'  BREAK('"')  . strbody '"');
SQ_lit   = ("'"  BREAK("'")  . strbody "'");
String   = (*SQ_lit | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));
Real     = (  SPAN(digits)
              FENCE(  '.' SPAN(digits)
                          FENCE(  ANY('eEdD') FENCE(ANY('+-') | epsilon) SPAN(digits)
                               |  epsilon)
                   |  ANY('eEdD') FENCE(ANY('+-') | epsilon) SPAN(digits)
                   )
           );
Keyword  = ('&' SPAN(&UCASE &LCASE '_') . kw_name);
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — beauty.sc $'x' style.  Open brackets: ws both sides (Snocone is whitespace-sensitive like SNOBOL4).  Close: ws before only.
// Bracketing / punctuation
$'('   = $' ' '('  $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{'  $' ';  $'}'   = $' ' '}';
$'['   = $' ' '['  $' ';  $']'   = $' ' ']';
$';'   = $' ' ';';        $','   = $' ' ','  $' ';
$':'   = $' ' ':'  $' ';
// Pri-0 / pri-1 / pri-3 operators (beauty.sno tier names)
$'='   = $' ' '='  $' ';  $'?'   = $' ' '?'  $' ';
$'|'   = $' ' '|'  $' ';
// Arith binary
$'+'   = $' ' '+'  $' ';  $'-'   = $' ' '-'  $' ';
$'*'   = $' ' '*'  $' ';  $'/'   = $' ' '/'  $' ';
$'^'   = $' ' '^'  $' ';  $'**'  = $' ' '**' $' ';
$'!'   = $' ' '!'  $' ';
// Pattern-build operators (SNOBOL4 inheritance)
$'$'   = $' ' '$'  $' ';  $'.'   = $' ' '.'  $' ';
$'&'   = $' ' '&'  $' ';
// Cursor / position operators (SNOBOL4 inheritance)
$'@'   = $' ' '@'  $' ';  $'#'   = $' ' '#'  $' ';
$'%'   = $' ' '%'  $' ';  $'~'   = $' ' '~'  $' ';
// Numeric comparison
$'=='  = $' ' '==' $' ';  $'!='  = $' ' '!=' $' ';
$'<'   = $' ' '<'  $' ';  $'>'   = $' ' '>'  $' ';
$'<='  = $' ' '<=' $' ';  $'>='  = $' ' '>=' $' ';
// Lexical comparison (suffix `:`)
$'==:' = $' ' '==:' $' '; $'!=:' = $' ' '!=:' $' ';
$'<:'  = $' ' '<:'  $' '; $'>:'  = $' ' '>:'  $' ';
$'<=:' = $' ' '<=:' $' '; $'>=:' = $' ' '>=:' $' ';
// Identity
$'::'  = $' ' '::' $' ';  $':!:' = $' ' ':!:' $' ';
// Augmented assign
$'+='  = $' ' '+=' $' ';  $'-='  = $' ' '-=' $' ';
$'*='  = $' ' '*=' $' ';  $'/='  = $' ' '/=' $' ';
$'^='  = $' ' '^=' $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword guards — keyword not a prefix of a longer identifier.
kw_tail   = FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . kw_rest IDENT(kw_rest);
kw_if       = ('if'       kw_tail);
kw_while    = ('while'    kw_tail);
kw_do       = ('do'       kw_tail);
kw_else     = ('else'     kw_tail);
kw_function = ('function' kw_tail);
kw_return   = ('return'   kw_tail);
kw_freturn  = ('freturn'  kw_tail);
kw_nreturn  = ('nreturn'  kw_tail);
kw_goto     = ('goto'     kw_tail);
kw_for      = ('for'      kw_tail);
/*====================================================================================================================*/
// Global label counter.
lbl_n = 0;
/*--------------------------------------------------------------------------------------------------------------------*/
// Semantic / tree-building helpers.
function new_label(prefix) {
    lbl_n = lbl_n + 1;
    new_label = '_' prefix '_' LPAD(lbl_n, 4, '0');
    return;
}
function save_cond() {
    saved_cond = Pop();
    save_cond = .dummy; nreturn;
}
function save_nbody(varname) {
    $varname = TopCounter();
    save_nbody = .dummy; nreturn;
}
function while_head_alloc() {
    while_ltop = new_label('Ltop');
    while_lend = new_label('Lend');
    while_head_alloc = .dummy; nreturn;
}
function do_head_alloc() {
    do_lcont = new_label('Lcont');
    do_lend  = new_label('Lend');
    do_head_alloc = .dummy; nreturn;
}
// is_name_like — returns success/fail-style: succeeds if e is a name-like
// atom (E_VAR / E_QLIT — E_KEYWORD / E_INDIRECT will be added when parser
// produces them).
function is_name_like(e) {
    if (IDENT(t(e), 'E_VAR'))   { return; }
    if (IDENT(t(e), 'E_QLIT'))  { return; }
    freturn;
}
// build_seq_or_single — collapse an array of >=1 trees into a single tree:
// 1 element returns it directly; >1 elements wraps in E_SEQ.
function build_seq_or_single(arr, lo, hi, n, r, i) {
    n = hi - lo + 1;
    if (IDENT(n, 1)) { build_seq_or_single = arr[lo]; return; }
    r = Tree('E_SEQ', '', 0);
    i = lo;
    while (LE(i, hi)) { r = Append(r, arr[i]); i = i + 1; }
    build_seq_or_single = r;
    return;
}
// split_subj_pat — returns success after setting globals split_subj / split_pat.
// Handles:
//   E_SCAN(s, p)                                 -> subj=s, pat=p
//   E_SEQ(name-like, rest...)                    -> subj=first, pat=collapse(rest...)
// Anything else: freturn (no split).
function split_subj_pat(top, n, kids, i) {
    if (IDENT(t(top), 'E_SCAN')) {
        if (~IDENT(n(top), 2)) { freturn; }
        split_subj = c(top)[1];
        split_pat  = c(top)[2];
        return;
    }
    if (IDENT(t(top), 'E_SEQ')) {
        n = n(top);
        if (~GE(n, 2)) { freturn; }
        if (~is_name_like(c(top)[1])) { freturn; }
        kids = ARRAY('1:' n);
        i = 1;
        while (LE(i, n)) { kids[i] = c(top)[i]; i = i + 1; }
        split_subj = kids[1];
        split_pat  = build_seq_or_single(kids, 2, n);
        return;
    }
    freturn;
}
function decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    // Form A: E_ASSIGN(lhs, rhs) at top -- check whether lhs is itself an
    // E_SCAN or name-like-headed E_SEQ; if so, lift subj+pat out.
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1]; rhs = c(top)[2];
        if (split_subj_pat(lhs)) {
            s = Tree('STMT', '', 4,
                     Tree(':eq',   ''),
                     Tree(':subj', '', 1, split_subj),
                     Tree(':pat',  '', 1, split_pat),
                     Tree(':repl', '', 1, rhs));
        } else {
            s = Tree('STMT', '', 3,
                     Tree(':eq',   ''),
                     Tree(':subj', '', 1, lhs),
                     Tree(':repl', '', 1, rhs));
        }
        Push(s); decompose_stmt = .dummy; nreturn;
    }
    // Form B: bare E_SCAN or E_SEQ with name-like head -- split subj+pat.
    if (split_subj_pat(top)) {
        s = Tree('STMT', '', 2,
                 Tree(':subj', '', 1, split_subj),
                 Tree(':pat',  '', 1, split_pat));
        Push(s); decompose_stmt = .dummy; nreturn;
    }
    // Form C: bare expression
    s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    Push(s);
    decompose_stmt = .dummy; nreturn;
}
function push_qlit(s) {
    s = tree('E_QLIT', strbody);
    Push(s);
    push_qlit = .dummy; nreturn;
}
function make_cond_stmt(cond_expr, goto_slot, label) {
    make_cond_stmt = Tree('STMT', '', 2,
                             Tree(':subj', '', 1, cond_expr),
                             tree(goto_slot, label));
    return;
}
function make_goto_stmt(label) {
    make_goto_stmt = Tree('STMT', '', 1, tree(':go', label));
    return;
}
function make_label_stmt(label) {
    make_label_stmt = Tree('STMT', '', 1, tree(':lbl', label));
    return;
}
function pop_body(n, arr, i) {
    arr = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { arr[i] = Pop(); i = i - 1; }
    pop_body = arr; return;
}
function finalize_if(nthen_v, cond_v, body, Lend, n, ce, i) {
    n = $nthen_v; ce = $cond_v;
    body = pop_body(n);
    Lend = new_label('Lend');
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 1)) { IncCounter(); i = i + 1; }
    finalize_if = .dummy; nreturn;
}
function finalize_if_else(nthen_v, nelse_v, cond_v,
                              tb, eb, Lelse, Lend, nt, ne, ce, i) {
    nt = $nthen_v; ne = $nelse_v; ce = $cond_v;
    eb = pop_body(ne); tb = pop_body(nt);
    Lelse = new_label('Lelse'); Lend = new_label('Lend');
    Push(make_cond_stmt(ce, ':goF', Lelse));
    i = 1; while (LE(i, nt)) { Push(tb[i]); i = i + 1; }
    Push(make_goto_stmt(Lend));
    Push(make_label_stmt(Lelse));
    i = 1; while (LE(i, ne)) { Push(eb[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, nt + ne + 3)) { IncCounter(); i = i + 1; }
    finalize_if_else = .dummy; nreturn;
}
function finalize_while(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = pop_body(n);
    Ltop = while_ltop; Lend = while_lend;
    Push(make_label_stmt(Ltop));
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_goto_stmt(Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 3)) { IncCounter(); i = i + 1; }
    finalize_while = .dummy; nreturn;
}
function finalize_do(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = pop_body(n);
    Ltop = new_label('Ltop'); Lend = do_lend;
    Push(make_label_stmt(Ltop));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_cond_stmt(ce, ':goS', Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 2)) { IncCounter(); i = i + 1; }
    finalize_do = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// Function call: pop n_kids children, first child is (E_VAR fname); rebuild
// (E_FNC fname arg1 ... arg_{n-1}) — name lifted from var into E_FNC value slot.
function decompose_call(n_kids, kids, fname, call, i) {
    n_kids = TopCounter();
    kids = ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    fname = v(kids[1]);
    call  = Tree('E_FNC', fname);
    i = 2;
    while (LE(i, n_kids)) { call = Append(call, kids[i]); i = i + 1; }
    Push(call);
    decompose_call = .dummy; nreturn;
}
// Function head: capture function name and parameter list into globals;
// allocate end_label; remember enclosing func name.  Param accumulator
// `func_arglist` is built incrementally by save_param_first/save_param_rest.
function func_head_save_name(name) {
    cur_func_prev = cur_func_name;
    cur_func_name = name;
    cur_func_args = '';
    func_end_label = name '_end';
    func_head_save_name = .dummy; nreturn;
}
function save_param_first(p) {
    cur_func_args = p;
    save_param_first = .dummy; nreturn;
}
function save_param_rest(p) {
    cur_func_args = cur_func_args ',' p;
    save_param_rest = .dummy; nreturn;
}
// Build (STMT :subj (E_FNC DEFINE (E_QLIT "name(args)"))).
function make_define_stmt(name, args, qlit, fnc) {
    qlit = tree('E_QLIT', name '(' args ')');
    fnc  = Tree('E_FNC', 'DEFINE', 1, qlit);
    make_define_stmt = Tree('STMT', '', 1, Tree(':subj', '', 1, fnc));
    return;
}
// finalize_function — pop body of N stmts, emit DEFINE + skip-goto + entry-label,
// re-push body, append end-label.  Mirrors snocone_parse.y sc_func_head_new +
// sc_finalize_function.  Restores cur_func_name to enclosing.
function finalize_function(nbody_v, body, n, name, args, Lend, i) {
    n     = $nbody_v;
    name  = cur_func_name;
    args  = cur_func_args;
    Lend  = func_end_label;
    body  = pop_body(n);
    Push(make_define_stmt(name, args));
    Push(make_goto_stmt(Lend));
    Push(make_label_stmt(name));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 3)) { IncCounter(); i = i + 1; }
    cur_func_name = cur_func_prev;
    finalize_function = .dummy; nreturn;
}
// return E; — pop value expression, build (STMT :eq :subj (E_VAR fname) :repl E :go RETURN).
function emit_return_value(rhs, lhs, s) {
    rhs = Pop();
    lhs = tree('E_VAR', cur_func_name);
    s   = Tree('STMT', '', 4,
                  Tree(':eq', ''),
                  Tree(':subj', '', 1, lhs),
                  Tree(':repl', '', 1, rhs),
                  tree(':go', 'RETURN'));
    Push(s);
    emit_return_value = .dummy; nreturn;
}
function emit_return_void()  { Push(make_goto_stmt('RETURN'));  emit_return_void  = .dummy; nreturn; }
function emit_freturn()      { Push(make_goto_stmt('FRETURN')); emit_freturn      = .dummy; nreturn; }
function emit_nreturn()      { Push(make_goto_stmt('NRETURN')); emit_nreturn      = .dummy; nreturn; }
/*--------------------------------------------------------------------------------------------------------------------*/
function goto_emit() { Push(make_goto_stmt(captured_goto)); goto_emit = .dummy; nreturn; }
function label_emit() { Push(make_label_stmt(captured_label)); label_emit = .dummy; nreturn; }
function push_keyword() { Push(tree('E_KEYWORD', kw_name)); push_keyword = .dummy; nreturn; }
function push_flit() { Push(tree('E_FLIT', strbody)); push_flit = .dummy; nreturn; }
function push_mns(e) { e = Pop(); Push(Tree('E_MNS', '', 1, e)); push_mns = .dummy; nreturn; }
// push_call_name_var — fires match-time after '(' is confirmed; pushes the
// captured function name as an E_VAR node and increments the n-ary counter
// (the equivalent of `*Id ~ 'E_VAR' nInc()` in the old Call pattern, but
// deferred until after '(' so nPush / nInc side-effects don't fire on a bare Id).
function push_call_name_var() {
    Push(tree('E_VAR', captured_call_name));
    IncCounter();
    push_call_name_var = .dummy; nreturn;
}
function push_idx(base, idx) {
    idx  = Pop(); base = Pop();
    Push(Tree('E_IDX', '', 2, base, idx));
    push_idx = .dummy; nreturn;
}
function for_head_alloc(init_e, cond_e, step_e, init_s) {
    step_e = Pop(); cond_e = Pop(); init_e = Pop();
    for_step_expr = step_e; for_cond_expr = cond_e;
    if (IDENT(t(init_e), 'E_ASSIGN')) {
        init_s = Tree('STMT', '', 3,
                      Tree(':eq', ''), Tree(':subj', '', 1, c(init_e)[1]), Tree(':repl', '', 1, c(init_e)[2]));
    } else { init_s = Tree('STMT', '', 1, Tree(':subj', '', 1, init_e)); }
    Push(init_s); IncCounter();
    lbl_n = lbl_n + 1;
    lbl_n = lbl_n + 1;
    for_lend = '_Lend_' LPAD(lbl_n, 4, '0');
    for_head_alloc = .dummy; nreturn;
}
function finalize_for(nbody_v, body, n, Ltop, Lend, ce, se, step_s, i) {
    n = $nbody_v; ce = for_cond_expr; se = for_step_expr; Lend = for_lend;
    body = pop_body(n);
    lbl_n = lbl_n + 1;
    Ltop = '_Ltop_' LPAD(lbl_n, 4, '0');
    step_s = Tree('STMT', '', 1, Tree(':subj', '', 1, se));
    Push(make_label_stmt(Ltop));
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(step_s); Push(make_goto_stmt(Ltop)); Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 4)) { IncCounter(); i = i + 1; }
    finalize_for = .dummy; nreturn;
}
/*====================================================================================================================*/
// Pattern-builder companions — called at BUILD TIME, return deferred-action patterns.
function Save_cond() {
    Save_cond = EVAL("epsilon . thx . *save_cond()");
    return;
}
function Save_nbody(var) {
    Save_nbody = EVAL("epsilon . thx . *save_nbody('" var "')");
    return;
}
function Decompose_stmt() {
    Decompose_stmt = EVAL("epsilon . thx . *decompose_stmt()");
    return;
}
function Push_qlit() {
    Push_qlit = EVAL("epsilon . thx . *push_qlit()");
    return;
}
function While_head_alloc() {
    While_head_alloc = EVAL("epsilon . thx . *while_head_alloc()");
    return;
}
function Do_head_alloc() {
    Do_head_alloc = EVAL("epsilon . thx . *do_head_alloc()");
    return;
}
function Finalize_if(nthen_v, cond_v) {
    Finalize_if = EVAL("epsilon . thx . *finalize_if('" nthen_v "', '" cond_v "')");
    return;
}
function Finalize_if_else(nthen_v, nelse_v, cond_v) {
    Finalize_if_else = EVAL("epsilon . thx . *finalize_if_else('"
                               nthen_v "', '" nelse_v "', '" cond_v "')");
    return;
}
function Finalize_while(nbody_v, cond_v) {
    Finalize_while = EVAL("epsilon . thx . *finalize_while('" nbody_v "', '" cond_v "')");
    return;
}
function Finalize_do(nbody_v, cond_v) {
    Finalize_do = EVAL("epsilon . thx . *finalize_do('" nbody_v "', '" cond_v "')");
    return;
}
function Body(var) {
    Body = nPush() ARBNO(stmt_cmd) Save_nbody(var) nPop();
    return;
}
function BodyFn(var) {
    BodyFn = nPush() ARBNO(*body_fn_cmd) Save_nbody(var) nPop();
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// Build-time companions for function-handling helpers.
function Decompose_call() {
    Decompose_call = EVAL("epsilon . thx . *decompose_call()");
    return;
}
function Func_head_save_name() {
    Func_head_save_name = EVAL("epsilon . thx . *func_head_save_name(captured_name)");
    return;
}
function Save_param_first() {
    Save_param_first = EVAL("epsilon . thx . *save_param_first(captured_param)");
    return;
}
function Save_param_rest() {
    Save_param_rest = EVAL("epsilon . thx . *save_param_rest(captured_param)");
    return;
}
function Finalize_function(nbody_v) {
    Finalize_function = EVAL("epsilon . thx . *finalize_function('" nbody_v "')");
    return;
}
function Emit_return_value() {
    Emit_return_value = EVAL("epsilon . thx . *emit_return_value()");
    return;
}
function Emit_return_void() {
    Emit_return_void = EVAL("epsilon . thx . *emit_return_void()");
    return;
}
function Emit_freturn() {
    Emit_freturn = EVAL("epsilon . thx . *emit_freturn()");
    return;
}
function Emit_nreturn() {
    Emit_nreturn = EVAL("epsilon . thx . *emit_nreturn()");
    return;
}
function Goto_emit() { Goto_emit = EVAL("epsilon . thx . *goto_emit()"); return; }
function Label_emit() { Label_emit = EVAL("epsilon . thx . *label_emit()"); return; }
function Push_keyword() { Push_keyword = EVAL("epsilon . thx . *push_keyword()"); return; }
function Push_flit() { Push_flit = EVAL("epsilon . thx . *push_flit()"); return; }
function Push_mns() { Push_mns = EVAL("epsilon . thx . *push_mns()"); return; }
function Push_idx() { Push_idx = EVAL("epsilon . thx . *push_idx()"); return; }
function Push_call_name_var() { Push_call_name_var = EVAL("epsilon . thx . *push_call_name_var()"); return; }
function For_head_alloc() { For_head_alloc = EVAL("epsilon . thx . *for_head_alloc()"); return; }
function Finalize_for(nbody_v) {
    Finalize_for = EVAL("epsilon . thx . *finalize_for('" nbody_v "')");
    return;
}
/*====================================================================================================================*/
// Function call atom — id_pat followed by `(` arglist `)` reduces to (E_FNC name arg1 ... argN).
// IMPORTANT: nPush / nInc fire AFTER '(' is confirmed so that when Call fails
// (Id present but no '(' follows) the n-ary stack is left untouched and FENCE
// in Expr17 falls through cleanly to the bare *Id ~ 'E_VAR' alternative.
// Gray_h (horizontal-only) for '(' so a newline between id and '(' is NOT a call.
ArgFirst = ( *Expr0 nInc() );
ArgRest  = ( $','   *Expr0 nInc() );
CallArgs = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call     = ( (*Id . captured_call_name)
             FENCE( Gray_h '(' $' ' nPush() Push_call_name_var()
                    CallArgs $')' Decompose_call() nPop()
                  )
           );
/*--------------------------------------------------------------------------------------------------------------------*/
// Expression tower — Snocone operator precedence.
// Grouping paren uses $'(g' (horizontal-only open) to prevent NL-inclusive Gray
// from eating a newline before '(' and then recursing into the full expression
// tower — which would overflow the C stack on multi-line inputs like beauty.sc.
Expr17 = FENCE(
             *Call
           | $'(g' *Expr0 $')'
           | *String      Push_qlit()
           | (*Real . strbody) Push_flit()
           | *Integer    ~ 'E_ILIT'
           | *Keyword     Push_keyword()
           | '*' *Expr17  (E_DEFER    & 1)
           | '~' *Expr17  (E_NOT      & 1)
           | '.' *Expr17  (E_NAME     & 1)
           | '$' *Expr17  (E_INDIRECT & 1)
           | *Id          ~ 'E_VAR'
         );
// Expr15 — subscript chains: a[i], a[i][j].
Expr15 = *Expr17
         FENCE(
           $'[' *Expr0 $']' Push_idx() FENCE($'[' *Expr0 $']' Push_idx() | epsilon)
         | epsilon
         );
// Expr12 — binary pattern-capture: pat . var (E_CAPT_COND_ASGN, left-assoc)
//                                  pat $ var (E_CAPT_IMMED_ASGN, left-assoc).
// Binary forms use $'.' / $'$' (whitespace-enveloped, T_2DOT / T_2DOLLAR).
// Unary '.' / '$' / '@' at Expr17 level are T_1DOT / T_1DOLLAR / T_1AT (no
// leading whitespace) — the lexer-level disambiguation is preserved here via the
// binary form requiring $' ' on both sides while unary uses the raw literal.
Expr12 = *Expr15
         FENCE(
           $'.' *Expr15 (E_CAPT_COND_ASGN  & 2) FENCE($'.' *Expr15 (E_CAPT_COND_ASGN  & 2) | epsilon)
         | $'$' *Expr15 (E_CAPT_IMMED_ASGN & 2) FENCE($'$' *Expr15 (E_CAPT_IMMED_ASGN & 2) | epsilon)
         | epsilon
         );
// Expr11 — exponentiation: right-associative, binds tighter than capture.
Expr11 = *Expr12 FENCE($'^' *Expr11 (E_POW & 2) | epsilon);
// Expr9 — mul/div; unary minus prefix handled here.
Expr9  = FENCE(
           '-' *Expr11 Push_mns()
         | *Expr11
           FENCE(
             $'*' *Expr11 (E_MUL & 2) FENCE($'*' *Expr11 (E_MUL & 2) | epsilon)
           | $'/' *Expr11 (E_DIV & 2) FENCE($'/' *Expr11 (E_DIV & 2) | epsilon)
           | epsilon
           )
         );
Expr6  = *Expr9
         FENCE(
           $'+' *Expr9 (E_ADD & 2) FENCE($'+' *Expr9 (E_ADD & 2) | epsilon)
         | $'-' *Expr9 (E_SUB & 2) FENCE($'-' *Expr9 (E_SUB & 2) | epsilon)
         | epsilon
         );
Expr4  = nPush() *X4 (E_SEQ & r_nTop) nPop();
X4     = nInc() *Expr6 FENCE($'  ' *X4 | epsilon);
Expr3  = nPush() *X3 (E_ALT & r_nTop) nPop();
X3     = nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr1  = *Expr3 FENCE($'?' *Expr1 (E_SCAN   & 2) | epsilon);
Expr0  = *Expr1 FENCE($'=' *Expr0 (E_ASSIGN & 2) | epsilon);
/*====================================================================================================================*/
stmt_body = ($' ' *Expr0 $' ' ($';' | epsilon) $' ' nl_opt Decompose_stmt());
stmt_cmd  = (nInc() stmt_body);
/*--------------------------------------------------------------------------------------------------------------------*/
if_cmd =
    ( nInc()
      $' ' *kw_if   $'(' *Expr0 Save_cond() $')' $' ' nl_opt
      $'{' nl_opt    Body('if_nthen')    $'}' $' ' nl_opt
      ( *kw_else $' ' nl_opt
        $'{' nl_opt  Body('if_nelse')    $'}' $' ' nl_opt
        Finalize_if_else('if_nthen', 'if_nelse', 'saved_cond')
      | Finalize_if('if_nthen', 'saved_cond')
      )
    );
while_cmd =
    ( nInc()
      $' ' *kw_while $'(' *Expr0 Save_cond()
                          While_head_alloc() $')' $' ' nl_opt
      $'{' nl_opt Body('wh_nbody') $'}' $' ' nl_opt
      Finalize_while('wh_nbody', 'saved_cond')
    );
do_cmd =
    ( nInc()
      $' ' *kw_do $' ' nl_opt Do_head_alloc()
      $'{' nl_opt Body('do_nbody') $'}' $' ' nl_opt
      *kw_while $'(' *Expr0 Save_cond() $')' ($';' | epsilon) $' ' nl_opt
      Finalize_do('do_nbody', 'saved_cond')
    );
empty_cmd    = ($' ' $';' $' ' nl_opt);
goto_cmd     = ( nInc() $' ' *kw_goto $'  ' (*Id . captured_goto) $' ' $';' $' ' nl_opt Goto_emit() );
label_prefix = ( $' ' (*Id . captured_label) $' ' ':' $' ' nl_opt Label_emit() nInc() );
for_cmd =
    ( nInc()
      $' ' *kw_for $'(' $' ' *Expr0 $' '
      $';' $' ' *Expr0 $' ' $';' $' ' *Expr0 $' ' $')'
      For_head_alloc()
      $' ' nl_opt
      ( $'{' nl_opt Body('for_nbody') $'}' $' ' nl_opt
      | Body('for_nbody')
      )
      Finalize_for('for_nbody')
    );
/*--------------------------------------------------------------------------------------------------------------------*/
// Function definition: `function name(p1, p2) { body }` lowers to 4 + N stmts:
// DEFINE call, skip-goto, entry-label, body, end-label.
ParamFirst = ( (*Id . captured_param) Save_param_first() );
ParamRest  = ( $','  (*Id . captured_param) Save_param_rest()  );
ParamList  = ( ParamFirst ARBNO(ParamRest) | epsilon );
func_cmd =
    ( nInc()
      $' ' *kw_function $'  ' (*Id . captured_name) Func_head_save_name()
      $'(' ParamList $')' $' ' nl_opt
      $'{' nl_opt BodyFn('fn_nbody') $'}' $' ' nl_opt
      Finalize_function('fn_nbody')
    );
return_cmd =
    ( nInc() $' ' *kw_return
      ( $'  ' *Expr0 $' ' $';' $' ' nl_opt Emit_return_value()
      | $' '         $';' $' ' nl_opt Emit_return_void()
      )
    );
freturn_cmd = ( nInc() $' ' *kw_freturn $' ' $';' $' ' nl_opt Emit_freturn() );
nreturn_cmd = ( nInc() $' ' *kw_nreturn $' ' $';' $' ' nl_opt Emit_nreturn() );
body_fn_cmd = ( return_cmd | freturn_cmd | nreturn_cmd | stmt_cmd );
/*====================================================================================================================*/
Command   = ( if_cmd | while_cmd | do_cmd | for_cmd | func_cmd
            | return_cmd | freturn_cmd | nreturn_cmd
            | goto_cmd | label_prefix | empty_cmd | stmt_cmd );
Compiland = nPush()
            ARBNO(Command)
            (E_Parse & 'nTop()')
            nPop();
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while (Line = INPUT) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
} else OUTPUT = 'Parse Error';
/*====================================================================================================================*/
