// parser_snocone.sc — PARSER-SC: Snocone frontend in Snocone.
//
// Rung PARSER-SC-3: control flow (if / if-else / while / do-while).
//
// DESIGN CONSTRAINTS (session #65 PIVOT):
//   D1: No Snocone goto when structured control (if/while) will do.
//   D2: No functions for parsing — functions only for tree building,
//       semantics, label allocation, and stack helpers.
//   D3: shift() / reduce() are the semantic.sc OPSYN ~ and & operators.
//   D4: One Compiland; nPush/nInc/nTop/nPop for all n-ary trees.
//
// Counter architecture:
//   Each command variant starts with nInc() which increments the CURRENT
//   top counter frame.  At top level the outer Compiland frame is active;
//   inside a body block the inner frame (pushed by nPush before body ARBNO)
//   is active.  This means nInc() in stmt_cmd/if_cmd/while_cmd/do_cmd works
//   correctly for both positions without any wrapping Body_item.
//   ARBNO(stmt_cmd) is used for body blocks (no nested cf — that's SC-4).
//   ARBNO(Command) is used at the top level.
//
//   sc_save_nbody() captures TopCounter() BEFORE nPop() fires.
//   sc_save_cond() pops the cond expr from the main stack after Expr0 shift.
//   Finalize helpers call IncCounter() for every EXTRA item beyond the 1
//   already counted by the nInc() that opened the command.
//
// Session #64 FENCE/*deref workaround: FENCE removed from tier ladder.
// Gate (SC-3): PASS>=20 FAIL=0.

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// Constants for reduce() / shift().
//-----------------------------------------------------------------------

sq       = "'";
r_ASSIGN = sq 'E_ASSIGN' sq;
r_SCAN   = sq 'E_SCAN'   sq;
r_ALT    = sq 'E_ALT'    sq;
r_SEQ    = sq 'E_SEQ'    sq;
r_ADD    = sq 'E_ADD'    sq;
r_SUB    = sq 'E_SUB'    sq;
r_MUL    = sq 'E_MUL'    sq;
r_DIV    = sq 'E_DIV'    sq;
r_Parse  = sq 'Parse'    sq;
r_nTop   = '*(GT(nTop(), 1) nTop())';
s_QLIT   = 'E_QLIT';
s_ILIT   = 'E_ILIT';
s_VAR    = 'E_VAR';

//-----------------------------------------------------------------------
// Global label counter.
//-----------------------------------------------------------------------

_sc_lbl_n = 0;

//-----------------------------------------------------------------------
// Helpers — tree building, semantics, counter management only.
//-----------------------------------------------------------------------

function sc_new_label(prefix) {
    _sc_lbl_n = _sc_lbl_n + 1;
    sc_new_label = '_' prefix '_' LPAD(_sc_lbl_n, 4, '0');
    return;
}

function sc_save_cond() {
    // Pop the cond expr tree (just shifted by Expr0) and save it globally.
    _sc_saved_cond = Pop();
    sc_save_cond = .dummy;
    nreturn;
}

function sc_save_nbody(varname) {
    $varname = TopCounter();
    sc_save_nbody = .dummy;
    nreturn;
}

function sc_decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1];
        rhs = c(top)[2];
        s = Tree('STMT', '', 3,
                 Tree(':eq',   ''),
                 Tree(':subj', '', 1, lhs),
                 Tree(':repl', '', 1, rhs));
    } else {
        s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    }
    Push(s);
    sc_decompose_stmt = .dummy;
    nreturn;
}

function sc_push_qlit(s) {
    s = tree('E_QLIT', _sc_strbody);
    Push(s);
    sc_push_qlit = .dummy;
    nreturn;
}

function sc_make_cond_stmt(cond_expr, goto_slot, label) {
    sc_make_cond_stmt = Tree('STMT', '', 2,
                             Tree(':subj', '', 1, cond_expr),
                             tree(goto_slot, label));
    return;
}

function sc_make_goto_stmt(label) {
    sc_make_goto_stmt = Tree('STMT', '', 1, tree(':go', label));
    return;
}

function sc_make_label_stmt(label) {
    sc_make_label_stmt = Tree('STMT', '', 1, tree(':lbl', label));
    return;
}

function sc_pop_body(n, arr, i) {
    arr = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { arr[i] = Pop(); i = i - 1; }
    sc_pop_body = arr;
    return;
}

function sc_finalize_if(n_body, cond_expr, body, Lend, i) {
    body = sc_pop_body(n_body);
    Lend = sc_new_label('Lend');
    // Total stmts = n_body+2. Outer nInc counted 1. Extra = n_body+1.
    Push(sc_make_cond_stmt(cond_expr, ':goF', Lend));
    i = 1;
    while (LE(i, n_body)) { Push(body[i]); i = i + 1; }
    Push(sc_make_label_stmt(Lend));
    i = 0;
    while (LT(i, n_body + 1)) { IncCounter(); i = i + 1; }
    sc_finalize_if = .dummy;
    nreturn;
}

function sc_finalize_if_else(n_then, n_else, cond_expr,
                              then_body, else_body, Lelse, Lend, i) {
    else_body = sc_pop_body(n_else);
    then_body = sc_pop_body(n_then);
    Lelse = sc_new_label('Lelse');
    Lend  = sc_new_label('Lend');
    // Total = n_then+n_else+4. Extra = n_then+n_else+3.
    Push(sc_make_cond_stmt(cond_expr, ':goF', Lelse));
    i = 1;
    while (LE(i, n_then)) { Push(then_body[i]); i = i + 1; }
    Push(sc_make_goto_stmt(Lend));
    Push(sc_make_label_stmt(Lelse));
    i = 1;
    while (LE(i, n_else)) { Push(else_body[i]); i = i + 1; }
    Push(sc_make_label_stmt(Lend));
    i = 0;
    while (LT(i, n_then + n_else + 3)) { IncCounter(); i = i + 1; }
    sc_finalize_if_else = .dummy;
    nreturn;
}

function sc_while_head_alloc() {
    _sc_while_ltop = sc_new_label('Ltop');
    _sc_while_lend = sc_new_label('Lend');
    sc_while_head_alloc = .dummy;
    nreturn;
}

function sc_finalize_while(n_body, cond_expr, body, Ltop, Lend, i) {
    body = sc_pop_body(n_body);
    Ltop = _sc_while_ltop;
    Lend = _sc_while_lend;
    // Total = n_body+4. Extra = n_body+3.
    Push(sc_make_label_stmt(Ltop));
    Push(sc_make_cond_stmt(cond_expr, ':goF', Lend));
    i = 1;
    while (LE(i, n_body)) { Push(body[i]); i = i + 1; }
    Push(sc_make_goto_stmt(Ltop));
    Push(sc_make_label_stmt(Lend));
    i = 0;
    while (LT(i, n_body + 3)) { IncCounter(); i = i + 1; }
    sc_finalize_while = .dummy;
    nreturn;
}

function sc_do_head_alloc() {
    _sc_do_lcont = sc_new_label('Lcont');
    _sc_do_lend  = sc_new_label('Lend');
    sc_do_head_alloc = .dummy;
    nreturn;
}

function sc_finalize_do(n_body, cond_expr, body, Ltop, Lend, i) {
    body = sc_pop_body(n_body);
    Ltop = sc_new_label('Ltop');
    Lend = _sc_do_lend;
    // Total = n_body+3. Extra = n_body+2.
    Push(sc_make_label_stmt(Ltop));
    i = 1;
    while (LE(i, n_body)) { Push(body[i]); i = i + 1; }
    Push(sc_make_cond_stmt(cond_expr, ':goS', Ltop));
    Push(sc_make_label_stmt(Lend));
    i = 0;
    while (LT(i, n_body + 2)) { IncCounter(); i = i + 1; }
    sc_finalize_do = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Whitespace and atom patterns.
//-----------------------------------------------------------------------

White    = SPAN(' ' tab);
Gray     = (*White | epsilon);
nl_opt   = (nl | epsilon);
op_eq    = (*Gray '=' *Gray);
op_q     = (*Gray '?' *Gray);
op_or    = (*Gray '|' *Gray);
op_pls   = (*Gray '+' *Gray);
op_mns   = (*Gray '-' *Gray);
op_mul   = (*Gray '*' *Gray);
op_div   = (*Gray '/' *Gray);
Integer  = SPAN(digits);
DQ       = ('"'  BREAK('"')  . _sc_strbody '"');
SQ_lit   = ("'"  BREAK("'")  . _sc_strbody "'");
String   = (*SQ_lit | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));
semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// Keyword guards.
//-----------------------------------------------------------------------

kw_if    = ('if'    FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . _kw_rest IDENT(_kw_rest));
kw_while = ('while' FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . _kw_rest IDENT(_kw_rest));
kw_do    = ('do'    FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . _kw_rest IDENT(_kw_rest));
kw_else  = ('else'  FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . _kw_rest IDENT(_kw_rest));

//-----------------------------------------------------------------------
// Expression tier ladder.
//-----------------------------------------------------------------------

Expr17 = FENCE(
             *String epsilon . *sc_push_qlit()
           | shift(*Integer, s_ILIT)
           | shift(*Id,      s_VAR)
         );

Expr9 = *Expr17
        (
            *op_mul *Expr17 reduce(r_MUL, 2)
                (*op_mul *Expr17 reduce(r_MUL, 2) | epsilon)
          | *op_div *Expr17 reduce(r_DIV, 2)
                (*op_div *Expr17 reduce(r_DIV, 2) | epsilon)
          | epsilon
        );

Expr6 = *Expr9
        (
            *op_pls *Expr9 reduce(r_ADD, 2)
                (*op_pls *Expr9 reduce(r_ADD, 2) | epsilon)
          | *op_mns *Expr9 reduce(r_SUB, 2)
                (*op_mns *Expr9 reduce(r_SUB, 2) | epsilon)
          | epsilon
        );

Expr4 = nPush() *X4 reduce(r_SEQ, r_nTop) nPop();
X4    = nInc() *Expr6 (*White *X4 | epsilon);

Expr3 = nPush() *X3 reduce(r_ALT, r_nTop) nPop();
X3    = nInc() *Expr4 (*op_or *X3 | epsilon);

Expr1 = *Expr3 (*op_q *Expr1 reduce(r_SCAN, 2) | epsilon);

Expr0 = *Expr1 (*op_eq *Expr0 reduce(r_ASSIGN, 2) | epsilon);

//-----------------------------------------------------------------------
// stmt_body — one expression statement, no counter increment.
//-----------------------------------------------------------------------

stmt_body = (*Gray *Expr0 *Gray semi_opt *Gray nl_opt
             epsilon . *sc_decompose_stmt());

//-----------------------------------------------------------------------
// stmt_cmd — expression statement with nInc for the active counter frame.
// Used both at top-level (outer frame) and inside body blocks (inner frame).
//-----------------------------------------------------------------------

stmt_cmd = (nInc() stmt_body);

//-----------------------------------------------------------------------
// Control-flow commands.
// Each starts with nInc() (counts 1 in the active frame).
// Body blocks: nPush() ARBNO(stmt_cmd) sc_save_nbody() nPop().
//   stmt_cmd inside body ARBNO increments the INNER counter frame (active).
//   Finalize pops body stmts and adds structural stmts + IncCounter extras.
//-----------------------------------------------------------------------

if_cmd =
    (nInc()
     *Gray *kw_if *Gray '(' *Gray
     *Expr0
     epsilon . *sc_save_cond()
     *Gray ')' *Gray nl_opt *Gray
     '{' *Gray nl_opt
     nPush()
     ARBNO(stmt_cmd)
     epsilon . *sc_save_nbody('_sc_if_nthen')
     nPop()
     *Gray '}' *Gray nl_opt
     (
         *kw_else *Gray nl_opt *Gray
         '{' *Gray nl_opt
         nPush()
         ARBNO(stmt_cmd)
         epsilon . *sc_save_nbody('_sc_if_nelse')
         nPop()
         *Gray '}' *Gray nl_opt
         epsilon . *sc_finalize_if_else(_sc_if_nthen, _sc_if_nelse, _sc_saved_cond)
       | epsilon . *sc_finalize_if(_sc_if_nthen, _sc_saved_cond)
     )
    );

while_cmd =
    (nInc()
     *Gray *kw_while *Gray '(' *Gray
     *Expr0
     epsilon . *sc_save_cond()
     epsilon . *sc_while_head_alloc()
     *Gray ')' *Gray nl_opt *Gray
     '{' *Gray nl_opt
     nPush()
     ARBNO(stmt_cmd)
     epsilon . *sc_save_nbody('_sc_wh_nbody')
     nPop()
     *Gray '}' *Gray nl_opt
     epsilon . *sc_finalize_while(_sc_wh_nbody, _sc_saved_cond)
    );

do_cmd =
    (nInc()
     *Gray *kw_do *Gray nl_opt *Gray
     epsilon . *sc_do_head_alloc()
     '{' *Gray nl_opt
     nPush()
     ARBNO(stmt_cmd)
     epsilon . *sc_save_nbody('_sc_do_nbody')
     nPop()
     *Gray '}' *Gray nl_opt *Gray
     *kw_while *Gray '(' *Gray
     *Expr0
     epsilon . *sc_save_cond()
     *Gray ')' *Gray semi_opt *Gray nl_opt
     epsilon . *sc_finalize_do(_sc_do_nbody, _sc_saved_cond)
    );

//-----------------------------------------------------------------------
// Command — one top-level statement or control-flow construct.
// ARBNO(Command) requires all alternatives to be DIRECT pattern references.
// if_cmd, while_cmd, do_cmd, stmt_cmd are all assigned before Command.
//-----------------------------------------------------------------------

Command = ( if_cmd | while_cmd | do_cmd | stmt_cmd );

//-----------------------------------------------------------------------
// Compiland — one PATTERN match over the entire source (D4).
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO(Command)
            reduce(r_Parse, 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver — D1: structured control only.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
while (Line = INPUT) { Src = Src Line nl; }

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
} else {
    OUTPUT = 'Parse Error';
}

_parser_sc_done = '';
