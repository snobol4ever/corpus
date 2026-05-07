&FULLSCAN = 1;
/*====================================================================================================================*/
E_ASSIGN          = "'E_ASSIGN'";
E_SCAN            = "'E_SCAN'";
E_ALT             = "'E_ALT'";
E_SEQ             = "'E_SEQ'";
E_ADD             = "'E_ADD'";
E_SUB             = "'E_SUB'";
E_MUL             = "'E_MUL'";
E_DIV             = "'E_DIV'";
E_POW             = "'E_POW'";
E_QLIT            = "'E_QLIT'";
E_ILIT            = "'E_ILIT'";
E_VAR             = "'E_VAR'";
E_KEYWORD         = "'E_KEYWORD'";
E_IDX             = "'E_IDX'";
E_INDEX           = "'E_IDX'";
E_FLIT            = "'E_FLIT'";
E_MNS             = "'E_MNS'";
E_PLS             = "'E_PLS'";
E_BANG            = "'E_BANG'";
E_PCT             = "'E_PCT'";
E_SLASH           = "'E_SLASH'";
E_POUND           = "'E_POUND'";
E_DEFER           = "'E_DEFER'";
E_NOT             = "'E_NOT'";
E_NAME            = "'E_NAME'";
E_INDIRECT        = "'E_INDIRECT'";
E_CAPT_COND_ASGN  = "'E_CAPT_COND_ASGN'";
E_CAPT_IMMED_ASGN = "'E_CAPT_IMMED_ASGN'";
E_CAPT_CURSOR     = "'E_CAPT_CURSOR'";
E_VLIST           = "'E_VLIST'";
E_NUL             = "'E_NUL'";
E_FNC             = "'E_FNC'";
E_Parse           = "'Parse'";
r_nTop            = '*(GT(nTop(), 1) nTop())';
r_nTopP1          = '*(nTop() + 1)';
/*--------------------------------------------------------------------------------------------------------------------*/
reserved          = POS(0) ('if' | 'else' | 'while' | 'do' | 'for') RPOS(0);
function notmatch(s, pat) { notmatch = .dummy; if (s ? pat) freturn; else nreturn; }
/*====================================================================================================================*/
white       =   (  SPAN(' ' tab nl)
                |  '//' BREAK(nl) nl
                |  '/*' BREAKX('*') '*/'
                );
White       =   white ARBNO(white);
Gray        =   ARBNO(white);
$'  '       =   White;
$' '        =   Gray;
/*--------------------------------------------------------------------------------------------------------------------*/
Id          =   ANY(&UCASE &LCASE '_') FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon);
$'break'    =   $' ' Id $ tx *IDENT(tx, 'break')    $' ';
$'continue' =   $' ' Id $ tx *IDENT(tx, 'continue') $' ';
$'do'       =   $' ' Id $ tx *IDENT(tx, 'do')       $' ';
$'else'     =   $' ' Id $ tx *IDENT(tx, 'else')     $' ';
$'for'      =   $' ' Id $ tx *IDENT(tx, 'for')      $' ';
$'freturn'  =   $' ' Id $ tx *IDENT(tx, 'freturn')  $' ';
$'function' =   $' ' Id $ tx *IDENT(tx, 'function') $' ';
$'goto'     =   $' ' Id $ tx *IDENT(tx, 'goto')     $' ';
$'if'       =   $' ' Id $ tx *IDENT(tx, 'if')       $' ';
$'nreturn'  =   $' ' Id $ tx *IDENT(tx, 'nreturn')  $' ';
$'return'   =   $' ' Id $ tx *IDENT(tx, 'return')   $' ';
$'while'    =   $' ' Id $ tx *IDENT(tx, 'while')    $' ';
Keyword     =   '&' SPAN(&UCASE '_' &LCASE) . token;
Integer     =   SPAN(digits) . token;
DQ_lit      =   '"' BREAK('"') . token '"';
SQ_lit      =   "'" BREAK("'") . token "'";
String      =   (*SQ_lit | *DQ_lit);
Ident       =   Id $ tx $ *notmatch(tx, reserved) . token;
Real        =   ( SPAN(digits)
                  FENCE(
                    '.'
                    SPAN(digits)
                    FENCE(ANY('eEdD') FENCE(ANY('+-') | epsilon) SPAN(digits) | epsilon)
                  | ANY('eEdD')
                    FENCE(ANY('+-') | epsilon)
                    SPAN(digits)
                  )
                ) . token;
/*--------------------------------------------------------------------------------------------------------------------*/
$'('        =   '(' $' ';
$'['        =   '[' $' ';
$'{'        =   $' ' '{' $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
$')'        =   $' ' ')';
$'}'        =   $' ' '}';
$']'        =   $' ' ']';
/*--------------------------------------------------------------------------------------------------------------------*/
$','        =   $' ' ',' $' ';
$':'        =   $' ' ':' $' ';
$';'        =   $' ' ';' $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
$'='        =   $'  ' '='   $'  ';
$'?'        =   $'  ' '?'   $'  ';
$'|'        =   $'  ' '|'   $'  ';
$'+'        =   $'  ' '+'   $'  ';
$'-'        =   $'  ' '-'   $'  ';
$'*'        =   $'  ' '*'   $'  ';
$'/'        =   $'  ' '/'   $'  ';
$'^'        =   $'  ' '^'   $'  ';
$'**'       =   $'  ' '**'  $'  ';
$'!'        =   $'  ' '!'   $'  ';
$'$'        =   $'  ' '$'   $'  ';
$'.'        =   $'  ' '.'   $'  ';
$'&'        =   $'  ' '&'   $'  ';
$'@'        =   $'  ' '@'   $'  ';
$'#'        =   $'  ' '#'   $'  ';
$'%'        =   $'  ' '%'   $'  ';
$'~'        =   $'  ' '~'   $'  ';
$'=='       =   $'  ' '=='  $'  ';
$'!='       =   $'  ' '!='  $'  ';
$'<'        =   $'  ' '<'   $'  ';
$'>'        =   $'  ' '>'   $'  ';
$'<='       =   $'  ' '<='  $'  ';
$'>='       =   $'  ' '>='  $'  ';
$'::'       =   $'  ' '::'  $'  ';
$':!:'      =   $'  ' ':!:' $'  ';
$'+='       =   $'  ' '+='  $'  ';
$'-='       =   $'  ' '-='  $'  ';
$'*='       =   $'  ' '*='  $'  ';
$'/='       =   $'  ' '/='  $'  ';
$'^='       =   $'  ' '^='  $'  ';
/*====================================================================================================================*/
lbl_n = 0;
sc_cond = ARRAY('1:64');
sc_cond_top = 0;
/*--------------------------------------------------------------------------------------------------------------------*/
function new_label(prefix) {
    lbl_n = lbl_n + 1;
    new_label = '_' prefix '_' LPAD(lbl_n, 4, '0');
    return;
}
function save_cond() {
    sc_cond_top = sc_cond_top + 1;
    sc_cond[sc_cond_top] = Pop();
    save_cond = .dummy;
    nreturn;
}
function pop_cond() {
    pop_cond = sc_cond[sc_cond_top];
    sc_cond_top = sc_cond_top - 1;
    return;
}
function save_nbody(varname) {
    $varname = TopCounter();
    save_nbody = .dummy;
    nreturn;
}
function save_if_nthen() {
    sc_if_nthen_stk = (DIFFER(sc_if_nthen_stk) if_nthen ':' sc_if_nthen_stk, if_nthen);
    save_if_nthen = .dummy;
    nreturn;
}
function restore_if_nthen(top, rest) {
    sc_if_nthen_stk ? SPAN('0123456789') . top (':' REM . rest | '');
    if_nthen = top;
    sc_if_nthen_stk = rest;
    restore_if_nthen = .dummy;
    nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function push_break(lbl) {
    sc_break_stk = (DIFFER(sc_break_stk) lbl ':' sc_break_stk, lbl);
    push_break = .dummy; nreturn;
}
function pop_break(top, rest) {
    sc_break_stk ? SPAN('_' digits &LCASE &UCASE) . top (':' REM . rest | '');
    sc_break_stk = rest;
    pop_break = .dummy; nreturn;
}
function top_break_label(top, rest) {
    sc_break_stk ? SPAN('_' digits &LCASE &UCASE) . top (':' REM . rest | '');
    top_break_label = top;
    nreturn;
}
function push_continue(lbl) {
    sc_continue_stk = (DIFFER(sc_continue_stk) lbl ':' sc_continue_stk, lbl);
    push_continue = .dummy; nreturn;
}
function pop_continue(top, rest) {
    sc_continue_stk ? SPAN('_' digits &LCASE &UCASE) . top (':' REM . rest | '');
    sc_continue_stk = rest;
    pop_continue = .dummy; nreturn;
}
function top_continue_label(top, rest) {
    sc_continue_stk ? SPAN('_' digits &LCASE &UCASE) . top (':' REM . rest | '');
    top_continue_label = top;
    nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function emit_break() {
    Push(make_goto_stmt(top_break_label()));
    emit_break = .dummy; nreturn;
}
function emit_break_label() {
    Push(make_goto_stmt(captured_bk));
    emit_break_label = .dummy; nreturn;
}
function emit_continue() {
    sc_for_cont_used = 1;
    Push(make_goto_stmt(top_continue_label()));
    emit_continue = .dummy; nreturn;
}
function emit_continue_label() {
    Push(make_goto_stmt(captured_ck));
    emit_continue_label = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function while_head_alloc() {
    while_ltop = new_label('Ltop');
    while_lend = new_label('Lend');
    push_break(while_lend); push_continue(while_ltop);
    while_head_alloc = .dummy; nreturn;
}
function do_head_alloc() {
    do_lcont = new_label('Lcont');
    do_lend  = new_label('Lend');
    push_break(do_lend); push_continue(do_lcont);
    do_head_alloc = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function is_name_like(e) {
    if (IDENT(t(e), 'E_VAR'))   { return; }
    if (IDENT(t(e), 'E_QLIT'))  { return; }
    freturn;
}
function build_seq_or_single(arr, lo, hi, n, r, i) {
    n = hi - lo + 1;
    if (IDENT(n, 1)) { build_seq_or_single = arr[lo]; return; }
    r = Tree('E_SEQ', '', 0);
    i = lo;
    while (LE(i, hi)) { r = Append(r, arr[i]); i = i + 1; }
    build_seq_or_single = r;
    return;
}
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
/*--------------------------------------------------------------------------------------------------------------------*/
// flatten_arith(x) — bottom-up left-fold flatten for same-tag arithmetic chains.
// Mirrors C-frontend expr_binary_flatten: E_SUB(a, E_SUB(b,c)) -> E_SUB(a,b,c).
// Only flattens left-associative ops: E_ADD E_SUB E_MUL E_DIV. E_POW is right-
// associative and is NOT flattened. Called from decompose_stmt on the full expr.
sc_flatten_ops = ' E_ADD  E_SUB  E_MUL  E_DIV ';
function flatten_arith(x, i, nc, tag, right, new_c, rn, j) {
    nc = n(x);
    i = 1;
    while (LE(i, nc)) { c(x)[i] = flatten_arith(c(x)[i]); i = i + 1; }
    tag = t(x);
    if (~(sc_flatten_ops ? (' ' tag ' '))) { flatten_arith = x; return; }
    if (~IDENT(nc, 2)) { flatten_arith = x; return; }
    right = c(x)[2];
    if (~IDENT(t(right), tag)) { flatten_arith = x; return; }
    rn = n(right);
    new_c = ARRAY('1:' (1 + rn));
    new_c[1] = c(x)[1];
    j = 1;
    while (LE(j, rn)) { new_c[j + 1] = c(right)[j]; j = j + 1; }
    flatten_arith = tree(tag, v(x), 1 + rn, new_c);
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    top = flatten_arith(top);
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
/*--------------------------------------------------------------------------------------------------------------------*/
function push_qlit(s) {
    s = tree('E_QLIT', token);
    Push(s);
    push_qlit = .dummy; nreturn;
}
function make_cond_stmt(cond_expr, goto_slot, label) {
    if (IDENT(t(cond_expr), 'E_SCAN')) {
        make_cond_stmt = Tree('STMT', '', 3,
                                 Tree(':subj', '', 1, c(cond_expr)[1]),
                                 Tree(':pat',  '', 1, c(cond_expr)[2]),
                                 tree(goto_slot, label));
        return;
    }
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
/*--------------------------------------------------------------------------------------------------------------------*/
function finalize_if(nthen_v, body, Lend, n, ce, i) {
    n = $nthen_v; ce = pop_cond();
    body = pop_body(n);
    Lend = new_label('Lend');
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 1)) { IncCounter(); i = i + 1; }
    finalize_if = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function finalize_if_else(nthen_v, nelse_v, cond_v,
                              tb, eb, Lelse, Lend, nt, ne, ce, i) {
    nt = $nthen_v; ne = $nelse_v; ce = pop_cond();
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
/*--------------------------------------------------------------------------------------------------------------------*/
function finalize_while(nbody_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = pop_cond();
    body = pop_body(n);
    Lend = top_break_label(); Ltop = top_continue_label();
    Push(make_label_stmt(Ltop));
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_goto_stmt(Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 3)) { IncCounter(); i = i + 1; }
    pop_break(); pop_continue();
    finalize_while = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function finalize_do(nbody_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = pop_cond();
    body = pop_body(n);
    Ltop = new_label('Ltop'); Lend = do_lend;
    Push(make_label_stmt(Ltop));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_cond_stmt(ce, ':goS', Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 2)) { IncCounter(); i = i + 1; }
    pop_break(); pop_continue();
    finalize_do = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
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
function make_define_stmt(name, args, qlit, fnc) {
    qlit = tree('E_QLIT', name '(' args ')');
    fnc  = Tree('E_FNC', 'DEFINE', 1, qlit);
    make_define_stmt = Tree('STMT', '', 1, Tree(':subj', '', 1, fnc));
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
function emit_return_void() { emit_return_void  = .dummy; Push(make_goto_stmt('RETURN'));  nreturn; }
function emit_freturn()     { emit_freturn      = .dummy; Push(make_goto_stmt('FRETURN')); nreturn; }
function emit_nreturn()     { emit_nreturn      = .dummy; Push(make_goto_stmt('NRETURN')); nreturn; }
function goto_emit()        { goto_emit         = .dummy; Push(make_goto_stmt(captured_goto)); nreturn; }
function label_emit()       { label_emit        = .dummy; Push(make_label_stmt(captured_label)); nreturn;  }
function push_keyword()     { push_keyword      = .dummy; Push(tree('E_KEYWORD', token)); nreturn; }
function push_ident()       { push_ident        = .dummy; Push(tree('E_VAR', token)); nreturn; }
function push_flit()        { push_flit         = .dummy; Push(tree('E_FLIT', token)); nreturn; }
function push_ilit()        { push_ilit         = .dummy; Push(tree('E_ILIT', token)); nreturn; }
function push_empty_str()   { push_empty_str    = .dummy; Push(tree('E_QLIT', '')); nreturn; }
function push_mns(e)        { e = Pop(); Push(Tree('E_MNS', '', 1, e)); push_mns = .dummy; nreturn; }
function reduce_augmented(op, rhs, lhs) {
    rhs = Pop(); lhs = Pop();
    Push(Tree('E_ASSIGN', '', 2, lhs, Tree(op, '', 2, lhs, rhs)));
    reduce_augmented = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
function paren_reduce(n, kids, vl, i) {
    n = TopCounter();
    if (IDENT(n, 0)) { Push(Tree('E_NUL', '')); paren_reduce = .dummy; nreturn; }
    if (IDENT(n, 1)) { paren_reduce = .dummy; nreturn; }
    kids = ARRAY('1:' n);
    i = n; while (GT(i, 0)) { kids[i] = Pop(); i = i - 1; }
    vl = Tree('E_VLIST', '');
    i = 1; while (LE(i, n)) { vl = Append(vl, kids[i]); i = i + 1; }
    Push(vl);
    paren_reduce = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function for_head_alloc(init_e, cond_e, step_e, init_s) {
    step_e = Pop(); cond_e = Pop(); init_e = Pop();
    for_step_expr = step_e; for_cond_expr = cond_e;
    if (IDENT(t(init_e), 'E_ASSIGN')) {
        init_s = Tree('STMT', '', 3,
                      Tree(':eq', ''), Tree(':subj', '', 1, c(init_e)[1]), Tree(':repl', '', 1, c(init_e)[2]));
    } else { init_s = Tree('STMT', '', 1, Tree(':subj', '', 1, init_e)); }
    Push(init_s); IncCounter();
    lbl_n = lbl_n + 1;
    for_lcont = '_Lcont_' LPAD(lbl_n, 4, '0');
    lbl_n = lbl_n + 1;
    for_lend  = '_Lend_' LPAD(lbl_n, 4, '0');
    sc_for_cont_used = 0;
    push_break(for_lend); push_continue(for_lcont);
    for_head_alloc = .dummy; nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function finalize_for(nbody_v, body, n, Ltop, Lend, Lcont, ce, se, step_s, i, extra) {
    n = $nbody_v; ce = for_cond_expr; se = for_step_expr; Lend = for_lend; Lcont = for_lcont;
    body = pop_body(n);
    lbl_n = lbl_n + 1;
    Ltop = '_Ltop_' LPAD(lbl_n, 4, '0');
    step_s = Tree('STMT', '', 1, Tree(':subj', '', 1, se));
    Push(make_label_stmt(Ltop));
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    if (DIFFER(sc_for_cont_used, 0)) {
        Push(make_label_stmt(Lcont)); extra = 1;
    } else { extra = 0; }
    Push(step_s); Push(make_goto_stmt(Ltop)); Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 4 + extra)) { IncCounter(); i = i + 1; }
    pop_break(); pop_continue();
    finalize_for = .dummy; nreturn;
}
/*====================================================================================================================*/
function Save_cond()            { Save_cond           = epsilon . thx . *save_cond();                        return; }
function Decompose_stmt()       { Decompose_stmt      = epsilon . thx . *decompose_stmt();                   return; }
function Push_qlit()            { Push_qlit           = epsilon . thx . *push_qlit();                        return; }
function While_head_alloc()     { While_head_alloc    = epsilon . thx . *while_head_alloc();                 return; }
function Do_head_alloc()        { Do_head_alloc       = epsilon . thx . *do_head_alloc();                    return; }
function Decompose_call()       { Decompose_call      = epsilon . thx . *decompose_call();                   return; }
function Func_head_save_name()  { Func_head_save_name = epsilon . thx . *func_head_save_name(captured_name); return; }
function Save_param_first()     { Save_param_first    = epsilon . thx . *save_param_first(captured_param);   return; }
function Save_param_rest()      { Save_param_rest     = epsilon . thx . *save_param_rest(captured_param);    return; }
function Emit_return_value()    { Emit_return_value   = epsilon . thx . *emit_return_value();                return; }
function Emit_return_void()     { Emit_return_void    = epsilon . thx . *emit_return_void();                 return; }
function Emit_freturn()         { Emit_freturn        = epsilon . thx . *emit_freturn();                     return; }
function Emit_nreturn()         { Emit_nreturn        = epsilon . thx . *emit_nreturn();                     return; }
function Goto_emit()            { Goto_emit           = epsilon . thx . *goto_emit();                        return; }
function Label_emit()           { Label_emit          = epsilon . thx . *label_emit();                       return; }
function Push_keyword()         { Push_keyword        = epsilon . thx . *push_keyword();                     return; }
function Push_ident()           { Push_ident          = epsilon . thx . *push_ident();                       return; }
function Push_flit()            { Push_flit           = epsilon . thx . *push_flit();                        return; }
function Push_ilit()            { Push_ilit           = epsilon . thx . *push_ilit();                        return; }
function Push_empty_str()       { Push_empty_str      = epsilon . thx . *push_empty_str();                   return; }
function Push_mns()             { Push_mns            = epsilon . thx . *push_mns();                         return; }
function Reduce_augmented(op)   { Reduce_augmented    = EVAL("epsilon . thx . *reduce_augmented(" op ")"); return; }
function Push_idx()             { Push_idx            = epsilon . thx . *push_idx();                         return; }
function Paren_reduce()         { Paren_reduce        = epsilon . thx . *paren_reduce();                     return; }
function Push_call_name_var()   { Push_call_name_var  = epsilon . thx . *push_call_name_var();               return; }
function For_head_alloc()       { For_head_alloc      = epsilon . thx . *for_head_alloc();                   return; }
function Emit_break()           { Emit_break          = epsilon . thx . *emit_break();                       return; }
function Emit_break_label()     { Emit_break_label    = epsilon . thx . *emit_break_label();                 return; }
function Emit_continue()        { Emit_continue       = epsilon . thx . *emit_continue();                    return; }
function Emit_continue_label()  { Emit_continue_label = epsilon . thx . *emit_continue_label();              return; }
/*--------------------------------------------------------------------------------------------------------------------*/
function Save_nbody(var)                            { Save_nbody        = EVAL("epsilon . thx . *save_nbody('"          var     "')"); return; }
function Save_if_nthen()                            { Save_if_nthen     = epsilon . thx . *save_if_nthen();                              return; }
function Restore_if_nthen()                         { Restore_if_nthen  = epsilon . thx . *restore_if_nthen();                          return; }
function Finalize_if(nthen_v)               { Finalize_if       = EVAL("epsilon . thx . *finalize_if('" nthen_v "')"); return; }
function Finalize_if_else(nthen_v, nelse_v) { Finalize_if_else  = EVAL("epsilon . thx . *finalize_if_else('" nthen_v "', '" nelse_v "')"); return; }
function Finalize_while(nbody_v)            { Finalize_while    = EVAL("epsilon . thx . *finalize_while('"      nbody_v "')"); return; }
function Finalize_do(nbody_v)               { Finalize_do       = EVAL("epsilon . thx . *finalize_do('"         nbody_v "')"); return; }
function Finalize_function(nbody_v)                 { Finalize_function = EVAL("epsilon . thx . *finalize_function('"   nbody_v "')"); return; }
function Finalize_for(nbody_v)                      { Finalize_for      = EVAL("epsilon . thx . *finalize_for('"        nbody_v "')"); return; }
/*--------------------------------------------------------------------------------------------------------------------*/
function Body(var)                                  { Body              = nPush() ARBNO(*Command) Save_nbody(var) nPop();     return; }
function BodyFn(var)                                { BodyFn            = nPush() ARBNO(*Command) Save_nbody(var) nPop();     return; }
/*--------------------------------------------------------------------------------------------------------------------*/
function push_cmp(fname, a, b) {
    b = Pop(); a = Pop();
    Push(Tree('E_FNC', fname, 2, a, b));
    push_cmp = .dummy; nreturn;
}
function Push_cmp(fname) {
    Push_cmp = EVAL("epsilon . thx . *push_cmp('" fname "')");
    return;
}
/*====================================================================================================================*/
ArgFirst        =   *Expr0 nInc();
ArgRest         =   $',' *Expr0 nInc();
CallArgs        =   ArgFirst ARBNO(ArgRest) | epsilon;
Call            =   *Ident . *assign(.captured_call_name, token)
                    FENCE(
                      $'('
                      nPush()
                      Push_call_name_var()
                      CallArgs
                      Decompose_call()
                      nPop()
                      $')'
                    );
/*--------------------------------------------------------------------------------------------------------------------*/
ExprList        =   nPush() *XList (E_VLIST & r_nTop) nPop();
XList           =   nInc() (*Expr0 | epsilon ~ '') FENCE($',' *XList | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
Expr17          =   FENCE(
                      *Call
                    | $'('
                      nPush()
                      FENCE(
                        nInc() *Expr0 ARBNO($',' nInc() *Expr0) Paren_reduce()
                      | (E_NUL & 0)
                      )
                      nPop()
                      $')'
                    | *String   Push_qlit()
                    | *Real     Push_flit()
                    | *Integer  Push_ilit()
                    | *Keyword  Push_keyword()
                    | *Ident    Push_ident()
                    );
Expr16          =   nInc() $'[' *ExprList $']' FENCE(*Expr16 | epsilon);
Expr15          =   *Expr17 FENCE(nPush() *Expr16 (E_INDEX & r_nTopP1) nPop() | epsilon);
Expr14          =   '@' *Expr14 (E_CAPT_CURSOR  & 1)
                |   '~' *Expr14 (E_NOT          & 1)
                |   '+' *Expr14 (E_PLS          & 1)
                |   '-' *Expr14 (E_MNS          & 1)
                |   '*' *Expr14 (E_DEFER        & 1)
                |   '$' *Expr14 (E_INDIRECT     & 1)
                |   '.' *Expr14 (E_NAME         & 1)
                |   '!' *Expr14 (E_BANG         & 1)
                |   '%' *Expr14 (E_PCT          & 1)
                |   '/' *Expr14 (E_SLASH        & 1)
                |   '#' *Expr14 (E_POUND        & 1)
                |   *Expr15;
Expr13          =   *Expr14 FENCE($'~' *Expr13 (E_NOT & 2) | epsilon);
Expr12          =   *Expr13
                    FENCE(
                      $'$' *Expr13 (E_CAPT_IMMED_ASGN & 2) FENCE($'$' *Expr13 (E_CAPT_IMMED_ASGN & 2) | epsilon)
                    | $'.' *Expr13 (E_CAPT_COND_ASGN  & 2) FENCE($'.' *Expr13 (E_CAPT_COND_ASGN  & 2) | epsilon)
                    | epsilon
                    );
Expr11          =   *Expr12 FENCE(($'^' | $'!' | $'**') *Expr11 (E_POW & 2) | epsilon);
Expr10          =   *Expr11 FENCE($'%' *Expr10 (E_MUL & 2) | epsilon);
Expr9           =   *Expr10 FENCE($'*' *Expr9  (E_MUL & 2) | epsilon);
Expr8           =   *Expr9  FENCE($'/' *Expr8  (E_DIV & 2) | epsilon);
Expr7           =   *Expr8  FENCE($'#' *Expr7  (E_SUB & 2) | epsilon);
Expr6           =   *Expr7  FENCE($'+' *Expr6 (E_ADD & 2) | $'-' *Expr6 (E_SUB & 2) | epsilon);
Expr5           =   *Expr6
                     FENCE(
                       $'@'  *Expr5 (E_CAPT_CURSOR & 2)
                     | $'==' *Expr6 Push_cmp('EQ')
                     | $'!=' *Expr6 Push_cmp('NE')
                     | $'<=' *Expr6 Push_cmp('LE')
                     | $'>=' *Expr6 Push_cmp('GE')
                     | $'<'  *Expr6 Push_cmp('LT')
                     | $'>'  *Expr6 Push_cmp('GT')
                     | epsilon
                     );
Expr4           =   nPush() *X4 (E_SEQ & r_nTop) nPop();
X4              =   nInc() *Expr5 FENCE($'  ' *X4 | epsilon);
Expr3           =   nPush() *X3 (E_ALT & r_nTop) nPop();
X3              =   nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr2           =   *Expr3 FENCE($'&' *Expr2 (E_SEQ & 2) | epsilon);
Expr1           =   *Expr2 FENCE($'?' *Expr1 (E_SCAN & 2) | epsilon);
Expr0           =   *Expr1 FENCE(
                      $'='  FENCE(*Expr0 | Push_empty_str())  (E_ASSIGN & 2)
                    | $'+=' *Expr0  Reduce_augmented(E_ADD)
                    | $'-=' *Expr0  Reduce_augmented(E_SUB)
                    | $'*=' *Expr0  Reduce_augmented(E_MUL)
                    | $'/=' *Expr0  Reduce_augmented(E_DIV)
                    | $'^=' *Expr0  Reduce_augmented(E_POW)
                    | epsilon);
/*====================================================================================================================*/
stmt_body       =   *Expr0 ($';' | epsilon) Decompose_stmt();
stmt_cmd        =   nInc() stmt_body;
/*--------------------------------------------------------------------------------------------------------------------*/
if_cmd          =   nInc()
                    $'if' $'(' *Expr0 Save_cond() $')'
                    $'{' Body('if_nthen') $'}'
                    ( $'else'
                      ( $'{'  Body('if_nelse') $'}'
                      | Save_if_nthen() nPush() *if_cmd Save_nbody('if_nelse') nPop() Restore_if_nthen()
                      )
                      Finalize_if_else('if_nthen', 'if_nelse')
                    | Finalize_if('if_nthen')
                    );
/*--------------------------------------------------------------------------------------------------------------------*/
while_cmd       =   nInc()
                    $'while' $'(' *Expr0 Save_cond() While_head_alloc() $')'
                    $'{' Body('wh_nbody') $'}'
                    Finalize_while('wh_nbody');
/*--------------------------------------------------------------------------------------------------------------------*/
do_cmd          =   nInc()
                    $'do' Do_head_alloc()
                    $'{' Body('do_nbody') $'}'
                    $'while' $'(' *Expr0 Save_cond() $')' ($';' | epsilon)
                    Finalize_do('do_nbody');
/*--------------------------------------------------------------------------------------------------------------------*/
empty_cmd       =   $';';
goto_cmd        =   nInc() $'goto' *Ident . *assign(.captured_goto, token) $';' Goto_emit();
label_prefix    =   nInc() *Ident . *assign(.captured_label, token) $':' Label_emit();
break_cmd       =   nInc() $'break'
                    FENCE( (*Ident . *assign(.captured_bk, token)) $';' Emit_break_label()
                         | $';' Emit_break()
                         );
continue_cmd    =   nInc() $'continue'
                    FENCE( (*Ident . *assign(.captured_ck, token)) $';' Emit_continue_label()
                         | $';' Emit_continue()
                         );
/*--------------------------------------------------------------------------------------------------------------------*/
for_cmd         =   nInc()
                    $'for' $'(' *Expr0
                    $';' *Expr0 $';' *Expr0 $')'
                    For_head_alloc()
                    ( $'{' Body('for_nbody') $'}'
                    | Body('for_nbody')
                    )
                    Finalize_for('for_nbody');
/*--------------------------------------------------------------------------------------------------------------------*/
param_first     =   *Ident . *assign(.captured_param, token) Save_param_first();
param_rest      =   $',' *Ident . *assign(.captured_param, token) Save_param_rest();
param_list      =   param_first ARBNO(param_rest) | epsilon;
func_cmd        =   nInc()
                    $'function' *Ident . *assign(.captured_name, token) Func_head_save_name()
                    $'(' param_list $')'
                    $'{' BodyFn('fn_nbody') $'}'
                    Finalize_function('fn_nbody');
return_cmd      =   nInc() $'return'
                    ( *Expr0 $';' Emit_return_value()
                    |        $';' Emit_return_void()
                    );
freturn_cmd     =   nInc() $'freturn' $';' Emit_freturn();
nreturn_cmd     =   nInc() $'nreturn' $';' Emit_nreturn();
/*====================================================================================================================*/
Command         =   $' ' ( if_cmd
                    | while_cmd
                    | do_cmd
                    | for_cmd
                    | func_cmd
                    | return_cmd
                    | freturn_cmd
                    | nreturn_cmd
                    | goto_cmd
                    | break_cmd
                    | continue_cmd
                    | label_prefix
                    | empty_cmd
                    | stmt_cmd
                    );
Compiland       =   nPush()
                    ARBNO(Command)
                    reduce_prim(E_Parse)
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
