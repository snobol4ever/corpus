// parser_snocone.sc — PARSER-SC: Snocone frontend in Snocone.
//
// Rung PARSER-SC-3: control flow (if / if-else / while / do-while).
//
// Style: mirrors beauty.sc / beauty.sno —
//   $'kw' patterns for operator/punctuation tokens with surrounding gray,
//   SC_xxx(arg) pattern-builder functions returning deferred-action patterns
//   via EVAL("epsilon . thx . *sc_xxx('arg')") built at call time and spliced
//   inline, so grammar rules read like clean BNF.
//
// DESIGN CONSTRAINTS:
//   D1: No goto in driver — structured if/while only.
//   D2: No parsing functions — functions are tree builders, semantic helpers,
//       counter managers, or SC_xxx pattern builders.
//   D3: shift() / reduce() are the semantic.sc OPSYN ~ / & operators.
//   D4: One Compiland pattern; nPush/nInc/nTop/nPop for all n-ary trees.
//
// Counter architecture:
//   Every Command variant opens with nInc(), incrementing whichever counter
//   frame is active — outer at top level, inner inside a body block.
//   Finalize helpers call IncCounter() for each extra structural STMT.
//
// Gate (SC-3): PASS=21 FAIL=0.

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// $'kw' token patterns — beauty.sc style.
// Each absorbs surrounding Gray / punctuation so grammar reads clean.
//-----------------------------------------------------------------------

$'('  = *Gray '(' *Gray;   $')'  = *Gray ')';
$'{'  = *Gray '{' *Gray;   $'}'  = *Gray '}';
$';'  = *Gray ';';
$'='  = *Gray '=' *Gray;   $'?'  = *Gray '?' *Gray;
$'|'  = *Gray '|' *Gray;   $'+'  = *Gray '+' *Gray;
$'-'  = *Gray '-' *Gray;   $'*'  = *Gray '*' *Gray;
$'/'  = *Gray '/' *Gray;

//-----------------------------------------------------------------------
// Constants for reduce() / shift() — the semantic.sc OPSYN ~ / & ops.
//-----------------------------------------------------------------------

sq       = "'";
r_ASSIGN = sq 'E_ASSIGN' sq;   r_SCAN  = sq 'E_SCAN'  sq;
r_ALT    = sq 'E_ALT'    sq;   r_SEQ   = sq 'E_SEQ'   sq;
r_ADD    = sq 'E_ADD'    sq;   r_SUB   = sq 'E_SUB'   sq;
r_MUL    = sq 'E_MUL'    sq;   r_DIV   = sq 'E_DIV'   sq;
r_Parse  = sq 'Parse'    sq;
r_nTop   = '*(GT(nTop(), 1) nTop())';
s_QLIT   = 'E_QLIT';   s_ILIT = 'E_ILIT';   s_VAR = 'E_VAR';

//-----------------------------------------------------------------------
// Global label counter.
//-----------------------------------------------------------------------

_sc_lbl_n = 0;

//-----------------------------------------------------------------------
// Semantic / tree-building / counter helpers (not parsing functions).
//
// Finalize functions accept variable-name STRINGS for their counter/cond
// arguments and dereference via $varname at match time — this lets the
// SC_finalize_xxx builders pass plain string literals through EVAL without
// ever placing a leading-underscore identifier in the EVAL string (which
// the SNOBOL4 lex layer inside EVAL would reject).
//-----------------------------------------------------------------------

function sc_new_label(prefix) {
    _sc_lbl_n = _sc_lbl_n + 1;
    sc_new_label = '_' prefix '_' LPAD(_sc_lbl_n, 4, '0');
    return;
}

function sc_save_cond() {
    sc_saved_cond = Pop();
    sc_save_cond = .dummy;  nreturn;
}

function sc_save_nbody(varname) {
    $varname = TopCounter();
    sc_save_nbody = .dummy;  nreturn;
}

function sc_while_head_alloc() {
    _sc_while_ltop = sc_new_label('Ltop');
    _sc_while_lend = sc_new_label('Lend');
    sc_while_head_alloc = .dummy;  nreturn;
}

function sc_do_head_alloc() {
    _sc_do_lcont = sc_new_label('Lcont');
    _sc_do_lend  = sc_new_label('Lend');
    sc_do_head_alloc = .dummy;  nreturn;
}

function sc_decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1];  rhs = c(top)[2];
        s = Tree('STMT', '', 3,
                 Tree(':eq',   ''),
                 Tree(':subj', '', 1, lhs),
                 Tree(':repl', '', 1, rhs));
    } else {
        s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    }
    Push(s);
    sc_decompose_stmt = .dummy;  nreturn;
}

function sc_push_qlit(s) {
    s = tree('E_QLIT', _sc_strbody);
    Push(s);
    sc_push_qlit = .dummy;  nreturn;
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
    while (GT(i, 0)) { arr[i] = Pop();  i = i - 1; }
    sc_pop_body = arr;  return;
}

// Finalize helpers: nthen_v / nelse_v / nbody_v / cond_v are variable-name
// strings; the functions read $v to get the actual count / tree at match time.

function sc_finalize_if(nthen_v, cond_v, body, Lend, n, ce, i) {
    n  = $nthen_v;  ce = $cond_v;
    body = sc_pop_body(n);
    Lend = sc_new_label('Lend');
    Push(sc_make_cond_stmt(ce, ':goF', Lend));
    i = 1;  while (LE(i, n))       { Push(body[i]);   i = i + 1; }
            Push(sc_make_label_stmt(Lend));
    i = 0;  while (LT(i, n + 1))   { IncCounter();    i = i + 1; }
    sc_finalize_if = .dummy;  nreturn;
}

function sc_finalize_if_else(nthen_v, nelse_v, cond_v,
                              tb, eb, Lelse, Lend, nt, ne, ce, i) {
    nt = $nthen_v;  ne = $nelse_v;  ce = $cond_v;
    eb = sc_pop_body(ne);  tb = sc_pop_body(nt);
    Lelse = sc_new_label('Lelse');  Lend = sc_new_label('Lend');
    Push(sc_make_cond_stmt(ce, ':goF', Lelse));
    i = 1;  while (LE(i, nt))      { Push(tb[i]);     i = i + 1; }
            Push(sc_make_goto_stmt(Lend));
            Push(sc_make_label_stmt(Lelse));
    i = 1;  while (LE(i, ne))      { Push(eb[i]);     i = i + 1; }
            Push(sc_make_label_stmt(Lend));
    i = 0;  while (LT(i, nt + ne + 3)) { IncCounter();    i = i + 1; }
    sc_finalize_if_else = .dummy;  nreturn;
}

function sc_finalize_while(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v;  ce = $cond_v;
    body = sc_pop_body(n);
    Ltop = _sc_while_ltop;  Lend = _sc_while_lend;
    Push(sc_make_label_stmt(Ltop));
    Push(sc_make_cond_stmt(ce, ':goF', Lend));
    i = 1;  while (LE(i, n))       { Push(body[i]);   i = i + 1; }
            Push(sc_make_goto_stmt(Ltop));
            Push(sc_make_label_stmt(Lend));
    i = 0;  while (LT(i, n + 3))   { IncCounter();    i = i + 1; }
    sc_finalize_while = .dummy;  nreturn;
}

function sc_finalize_do(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v;  ce = $cond_v;
    body = sc_pop_body(n);
    Ltop = sc_new_label('Ltop');  Lend = _sc_do_lend;
    Push(sc_make_label_stmt(Ltop));
    i = 1;  while (LE(i, n))       { Push(body[i]);   i = i + 1; }
            Push(sc_make_cond_stmt(ce, ':goS', Ltop));
            Push(sc_make_label_stmt(Lend));
    i = 0;  while (LT(i, n + 2))   { IncCounter();    i = i + 1; }
    sc_finalize_do = .dummy;  nreturn;
}

//-----------------------------------------------------------------------
// SC_xxx pattern builders.
// Each is called at BUILD TIME and returns a deferred-action pattern
// (epsilon . thx . *sc_xxx('literal_arg')) via EVAL.
// EVAL string contains only plain identifiers and string literals —
// never a leading-underscore name — so the SNOBOL4 lex layer inside
// EVAL accepts it cleanly.  The actual underscore globals (_sc_*) are
// referenced only inside the sc_xxx functions at MATCH time.
//-----------------------------------------------------------------------

function SC_save_cond() {
    SC_save_cond = EVAL("epsilon . thx . *sc_save_cond()");
    return;
}

function SC_save_nbody(var) {
    SC_save_nbody = EVAL("epsilon . thx . *sc_save_nbody('" var "')");
    return;
}

function SC_decompose_stmt() {
    SC_decompose_stmt = EVAL("epsilon . thx . *sc_decompose_stmt()");
    return;
}

function SC_push_qlit() {
    SC_push_qlit = EVAL("epsilon . thx . *sc_push_qlit()");
    return;
}

function SC_while_head_alloc() {
    SC_while_head_alloc = EVAL("epsilon . thx . *sc_while_head_alloc()");
    return;
}

function SC_do_head_alloc() {
    SC_do_head_alloc = EVAL("epsilon . thx . *sc_do_head_alloc()");
    return;
}

function SC_finalize_if(nthen_v, cond_v) {
    SC_finalize_if = EVAL("epsilon . thx . *sc_finalize_if('" nthen_v "', '" cond_v "')");
    return;
}

function SC_finalize_if_else(nthen_v, nelse_v, cond_v) {
    SC_finalize_if_else = EVAL("epsilon . thx . *sc_finalize_if_else('"
                               nthen_v "', '" nelse_v "', '" cond_v "')");
    return;
}

function SC_finalize_while(nbody_v, cond_v) {
    SC_finalize_while = EVAL("epsilon . thx . *sc_finalize_while('" nbody_v "', '" cond_v "')");
    return;
}

function SC_finalize_do(nbody_v, cond_v) {
    SC_finalize_do = EVAL("epsilon . thx . *sc_finalize_do('" nbody_v "', '" cond_v "')");
    return;
}

//-----------------------------------------------------------------------
// SC_body(var) — pattern builder for a brace-delimited body block.
// Returns: nPush() ARBNO(stmt_cmd) SC_save_nbody(var) nPop()
// Built at call time; spliced inline in cf command patterns.
//-----------------------------------------------------------------------

function SC_body(var) {
    SC_body = nPush() ARBNO(stmt_cmd) SC_save_nbody(var) nPop();
    return;
}

//-----------------------------------------------------------------------
// Whitespace and atom helpers.
//-----------------------------------------------------------------------

White    = SPAN(' ' tab);
Gray     = (*White | epsilon);
nl_opt   = (nl | epsilon);
Integer  = SPAN(digits);
DQ       = ('"'  BREAK('"')  . _sc_strbody '"');
SQ_lit   = ("'"  BREAK("'")  . _sc_strbody "'");
String   = (*SQ_lit | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));

//-----------------------------------------------------------------------
// Keyword guards — keyword not a prefix of a longer identifier.
//-----------------------------------------------------------------------

kw_tail  = FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . _kw_rest IDENT(_kw_rest);
kw_if    = ('if'    kw_tail);
kw_while = ('while' kw_tail);
kw_do    = ('do'    kw_tail);
kw_else  = ('else'  kw_tail);

//-----------------------------------------------------------------------
// Expression tier ladder.  Operators use $'x' token patterns.
//-----------------------------------------------------------------------

Expr17 = FENCE(
             *String SC_push_qlit()
           | shift(*Integer, s_ILIT)
           | shift(*Id,      s_VAR)
         );

Expr9 = *Expr17
        ( $'*' *Expr17 reduce(r_MUL, 2) ($'*' *Expr17 reduce(r_MUL, 2) | epsilon)
        | $'/' *Expr17 reduce(r_DIV, 2) FENCE($'/' *Expr17 reduce(r_DIV, 2) | epsilon)
        | epsilon );

Expr6 = *Expr9
        ( $'+' *Expr9 reduce(r_ADD, 2) ($'+' *Expr9 reduce(r_ADD, 2) | epsilon)
        | $'-' *Expr9 reduce(r_SUB, 2) ($'-' *Expr9 reduce(r_SUB, 2) | epsilon)
        | epsilon );

Expr4 = nPush() *X4 reduce(r_SEQ, r_nTop) nPop();
X4    = nInc() *Expr6 (*White *X4 | epsilon);

Expr3 = nPush() *X3 reduce(r_ALT, r_nTop) nPop();
X3    = nInc() *Expr4 ($'|' *X3 | epsilon);

Expr1 = *Expr3 ($'?' *Expr1 reduce(r_SCAN,   2) | epsilon);
Expr0 = *Expr1 ($'=' *Expr0 reduce(r_ASSIGN, 2) | epsilon);

//-----------------------------------------------------------------------
// stmt_body / stmt_cmd.
//-----------------------------------------------------------------------

stmt_body = (*Gray *Expr0 *Gray ($';' | epsilon) *Gray nl_opt
             SC_decompose_stmt());

stmt_cmd  = (nInc() stmt_body);

//-----------------------------------------------------------------------
// Control-flow commands — grammar reads like clean BNF.
// SC_body(v)          expands to the body-block pattern capturing count to v.
// SC_save_cond()      pops the cond tree from the stack after Expr0 shifts it.
// SC_finalize_xxx()   reorders the stack and adjusts the outer counter.
//-----------------------------------------------------------------------

if_cmd =
    ( nInc()
      *Gray *kw_if   $'(' *Expr0 SC_save_cond() $')' *Gray nl_opt
      $'{' nl_opt    SC_body('sc_if_nthen')    *Gray $'}' *Gray nl_opt
      ( *kw_else *Gray nl_opt
        $'{' nl_opt  SC_body('sc_if_nelse')    *Gray $'}' *Gray nl_opt
        SC_finalize_if_else('sc_if_nthen', 'sc_if_nelse', 'sc_saved_cond')
      | SC_finalize_if('sc_if_nthen', 'sc_saved_cond')
      )
    );

while_cmd =
    ( nInc()
      *Gray *kw_while $'(' *Expr0 SC_save_cond()
                          SC_while_head_alloc() $')' *Gray nl_opt
      $'{' nl_opt SC_body('sc_wh_nbody') *Gray $'}' *Gray nl_opt
      SC_finalize_while('sc_wh_nbody', 'sc_saved_cond')
    );

do_cmd =
    ( nInc()
      *Gray *kw_do *Gray nl_opt SC_do_head_alloc()
      $'{' nl_opt SC_body('sc_do_nbody') *Gray $'}' *Gray nl_opt
      *kw_while $'(' *Expr0 SC_save_cond() $')' ($';' | epsilon) *Gray nl_opt
      SC_finalize_do('sc_do_nbody', 'sc_saved_cond')
    );

//-----------------------------------------------------------------------
// Command and Compiland.
//-----------------------------------------------------------------------

Command   = ( if_cmd | while_cmd | do_cmd | stmt_cmd );

Compiland = nPush()
            ARBNO(Command)
            reduce(r_Parse, 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver — D1: structured control only; no goto.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
while (Line = INPUT) { Src = Src Line nl; }

if (Src ? Compiland) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;  n_kids = n(ptree);
        while (LE(i, n_kids)) { TDump(c(ptree)[i]);  i = i + 1; }
    }
} else {
    OUTPUT = 'Parse Error';
}

_parser_sc_done = '';
