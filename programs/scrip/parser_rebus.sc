// parser_rebus.sc — PARSER-RB rewrite: Rebus frontend in Snocone.
// Rung PARSER-RB-0..RB-6 rewrite. Session 2026-05-03.
// Rubric: one Compiland, beauty.sc spine, shift()/reduce() calls
// (~ and & OPSYN binary operators not yet supported by Snocone runtime;
// function-call forms used per parser_snocone.sc precedent),
// nPush/nInc/nTop/nPop n-ary folds, no goto, no labels in driver,
// no user functions called from inside patterns.
// Post-parse lower_* functions walk surface tree, emit STMT TDump lines.

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// String constants for shift/reduce tags.
//-----------------------------------------------------------------------

sq       = "'";
s_VAR    = 'E_VAR';
s_ILIT   = 'E_ILIT';
s_QLIT   = 'E_QLIT';
r_Parse  = sq 'Parse'        sq;
r_FD     = sq 'RB_FUNC_DECL' sq;
r_RD     = sq 'RB_REC_DECL'  sq;
r_params = sq 'RB_PARAMS'    sq;
r_body   = sq 'RB_BODY'      sq;
r_fields = sq 'RB_FIELDS'    sq;
r_ASSIGN = sq 'RB_ASSIGN'    sq;
r_MATCH  = sq 'RB_MATCH'     sq;
r_IF     = sq 'RB_IF'        sq;
r_WHILE  = sq 'RB_WHILE'     sq;
r_CALL   = sq 'RB_CALL'      sq;
r_ALT    = sq 'E_ALT'        sq;
r_ADD    = sq 'E_ADD'        sq;
r_SUB    = sq 'E_SUB'        sq;
r_MUL    = sq 'E_MUL'        sq;
r_DIV    = sq 'E_DIV'        sq;
r_nTop   = '*(GT(nTop(), 1) nTop())';

//-----------------------------------------------------------------------
// Whitespace helpers.
//-----------------------------------------------------------------------

ws_run   = SPAN(' ' tab);
ws_opt   = (ws_run | epsilon);
nl_one   = ANY(nl);
line_end = ws_opt nl_one;

//-----------------------------------------------------------------------
// Lex tokens — pure BREAK/SPAN/ANY primitives; no user functions inside.
//-----------------------------------------------------------------------

Id      = (ANY(&UCASE &LCASE '_')
           (SPAN(&UCASE &LCASE digits '_') | epsilon));

Integer = SPAN(digits);

// String body capture idiom: only the body text shifted as E_QLIT.
// _strbody global captures the BREAK match; shift() uses that value.
DQ_body = BREAK('"');
SQ_body = BREAK("'");
qlit_dq = ('"' DQ_body . _rb_strbody '"' epsilon . *Shift(s_QLIT, _rb_strbody));
qlit_sq = ("'" SQ_body . _rb_strbody "'" epsilon . *Shift(s_QLIT, _rb_strbody));
String  = (*qlit_dq | *qlit_sq);

//-----------------------------------------------------------------------
// primary — Id | Integer | String   (rebus.y: primary)
//-----------------------------------------------------------------------

primary = FENCE(  *String
                | shift(*Integer, s_ILIT)
                | shift(*Id,      s_VAR)
               );

//-----------------------------------------------------------------------
// postfix_expr — id() is RB_CALL(1 child: name E_VAR); bare primary stays.
//-----------------------------------------------------------------------

postfix_expr = FENCE(
    shift(*Id, s_VAR) ws_opt '(' ws_opt ')' reduce(r_CALL, 1)
  | *primary
);

//-----------------------------------------------------------------------
// Expression tier ladder (rebus.y precedence order).
//-----------------------------------------------------------------------

mul_expr = *postfix_expr
           ( ws_opt '*' ws_opt *postfix_expr reduce(r_MUL, 2)
               (ws_opt '*' ws_opt *postfix_expr reduce(r_MUL, 2) | epsilon)
           | ws_opt '/' ws_opt *postfix_expr reduce(r_DIV, 2)
               (ws_opt '/' ws_opt *postfix_expr reduce(r_DIV, 2) | epsilon)
           | epsilon
           );

add_expr = *mul_expr
           ( ws_opt '+' ws_opt *mul_expr reduce(r_ADD, 2)
               (ws_opt '+' ws_opt *mul_expr reduce(r_ADD, 2) | epsilon)
           | ws_opt '-' ws_opt *mul_expr reduce(r_SUB, 2)
               (ws_opt '-' ws_opt *mul_expr reduce(r_SUB, 2) | epsilon)
           | epsilon
           );

cat_expr = *add_expr;

// alt_expr: n-ary | folded into E_ALT via nPush/nInc/nTop/nPop.
alt_list = nInc() *cat_expr (ws_opt '|' ws_opt *alt_list | epsilon);
alt_expr = nPush() *alt_list reduce(r_ALT, r_nTop) nPop();

// assign_expr: right-assoc :=
assign_expr = *alt_expr (ws_opt ':=' ws_opt *alt_expr reduce(r_ASSIGN, 2) | epsilon);

// pat_expr and expr (no syntactic distinction at this level per rebus.y)
pat_expr = *assign_expr;
expr     = *assign_expr (ws_opt '?' ws_opt *pat_expr reduce(r_MATCH, 2) | epsilon);

//-----------------------------------------------------------------------
// stmt — one statement, one surface tree node.
//-----------------------------------------------------------------------

if_stmt    = 'if'    ws_run *expr ws_opt 'then' ws_opt *stmt reduce(r_IF,    2);
while_stmt = 'while' ws_run *expr ws_opt 'do'   ws_opt *stmt reduce(r_WHILE, 2);
expr_stmt  = *expr;

stmt = ws_opt FENCE(
    *if_stmt
  | *while_stmt
  | *expr_stmt
) line_end;

//-----------------------------------------------------------------------
// stmt_list — n-ary body: RB_BODY(stmt...).
//-----------------------------------------------------------------------

stmt_item = nInc() *stmt;
stmt_list = nPush() ARBNO(*stmt_item) reduce(r_body, 'nTop()') nPop();

//-----------------------------------------------------------------------
// opt_params — RB_PARAMS(E_VAR...)
//-----------------------------------------------------------------------

params_item = nInc() ws_opt shift(*Id, s_VAR) ws_opt (',' | epsilon);
opt_params  = nPush() ARBNO(*params_item) reduce(r_params, 'nTop()') nPop();

//-----------------------------------------------------------------------
// opt_fields — RB_FIELDS(E_VAR...)
//-----------------------------------------------------------------------

fields_item = nInc() ws_opt shift(*Id, s_VAR) ws_opt (',' | epsilon);
opt_fields  = nPush() ARBNO(*fields_item) reduce(r_fields, 'nTop()') nPop();

//-----------------------------------------------------------------------
// function_decl: RB_FUNC_DECL(name, params, body) — fixed arity 3.
//-----------------------------------------------------------------------

function_decl = 'function' ws_run shift(*Id, s_VAR) ws_opt
                '(' *opt_params ')' line_end
                *stmt_list
                ws_opt 'end' line_end
                reduce(r_FD, 3);

//-----------------------------------------------------------------------
// record_decl: RB_REC_DECL(name, fields) — fixed arity 2.
//-----------------------------------------------------------------------

record_decl = 'record' ws_run shift(*Id, s_VAR) ws_opt
              '(' *opt_fields ')' line_end
              reduce(r_RD, 2);

//-----------------------------------------------------------------------
// Command — top-level alternation. blank lines consumed without counting.
//-----------------------------------------------------------------------

blank_line = ws_opt nl_one;

Command = FENCE(
    nInc() *function_decl
  | nInc() *record_decl
  | *blank_line
);

//-----------------------------------------------------------------------
// Compiland — one root pattern, beauty.sc spine.
//-----------------------------------------------------------------------

Compiland = nPush() ARBNO(*Command) reduce(r_Parse, 'nTop()') nPop();

//-----------------------------------------------------------------------
// Post-parse lowering — called AFTER the single Src ? Compiland match.
// These functions are NOT called from inside any pattern.
//-----------------------------------------------------------------------

_rb_n = 0;

function rb_new_label() {
    _rb_n = _rb_n + 1;
    rb_new_label = 'rb_' _rb_n;
    return;
}

function emit_subj(s) {
    TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, s)));
    return;
}

function emit_eq(lhs, rhs) {
    TDump(Tree('STMT', '', 3,
               Tree(':eq',   ''),
               Tree(':subj', '', 1, lhs),
               Tree(':repl', '', 1, rhs)));
    return;
}

function emit_match_stmt(subj, pat) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, subj),
               Tree(':pat',  '', 1, pat)));
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

function lower_expr(x, k, i, acc) {
    k = t(x);
    if (IDENT(k, 'E_VAR'))  { lower_expr = x; return; }
    if (IDENT(k, 'E_ILIT')) { lower_expr = x; return; }
    if (IDENT(k, 'E_QLIT')) { lower_expr = x; return; }
    if (IDENT(k, 'E_ADD'))  { lower_expr = Tree('E_ADD', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2])); return; }
    if (IDENT(k, 'E_SUB'))  { lower_expr = Tree('E_SUB', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2])); return; }
    if (IDENT(k, 'E_MUL'))  { lower_expr = Tree('E_MUL', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2])); return; }
    if (IDENT(k, 'E_DIV'))  { lower_expr = Tree('E_DIV', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2])); return; }
    if (IDENT(k, 'RB_CALL')) {
        lower_expr = tree('E_FNC', REPLACE(v(c(x)[1]), &LCASE, &UCASE));
        return;
    }
    if (IDENT(k, 'E_ALT')) {
        if (IDENT(n(x), 1)) { lower_expr = lower_expr(c(x)[1]); return; }
        if (IDENT(n(x), 2)) { lower_expr = Tree('E_ALT', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2])); return; }
        if (IDENT(n(x), 3)) { lower_expr = Tree('E_ALT', '', 3, lower_expr(c(x)[1]), lower_expr(c(x)[2]), lower_expr(c(x)[3])); return; }
        acc = Tree('E_ALT', '', 2, lower_expr(c(x)[1]), lower_expr(c(x)[2]));
        i = 3;
        while (i = LE(i, n(x)) i) {
            acc = Append(acc, lower_expr(c(x)[i]));
            i = i + 1;
        }
        lower_expr = acc;
        return;
    }
    lower_expr = x;
    return;
}

function lower_stmt(x, k, lbl_s, lbl_f, lbl_m) {
    k = t(x);

    if (IDENT(k, 'RB_ASSIGN')) {
        emit_eq(lower_expr(c(x)[1]), lower_expr(c(x)[2]));
        return;
    }

    if (IDENT(k, 'RB_MATCH')) {
        emit_match_stmt(lower_expr(c(x)[1]), lower_expr(c(x)[2]));
        return;
    }

    if (IDENT(k, 'RB_IF')) {
        lbl_s = rb_new_label();
        lbl_f = rb_new_label();
        lbl_m = rb_new_label();
        TDump(Tree('STMT', '', 3,
                   Tree(':subj', '', 1, tree('E_NUL', '')),
                   Tree(':goS', lbl_s),
                   Tree(':goF', lbl_f)));
        emit_lbl(lbl_s);
        emit_subj(lower_expr(c(x)[1]));
        emit_go(lbl_m);
        emit_lbl(lbl_f);
        lower_stmt(c(x)[2]);
        emit_lbl(lbl_m);
        return;
    }

    if (IDENT(k, 'RB_WHILE')) {
        lbl_s = rb_new_label();
        lbl_f = rb_new_label();
        lbl_m = rb_new_label();
        emit_lbl(lbl_s);
        TDump(Tree('STMT', '', 3,
                   Tree(':subj', '', 1, tree('E_NUL', '')),
                   Tree(':goS', lbl_f),
                   Tree(':goF', lbl_m)));
        emit_lbl(lbl_f);
        emit_subj(lower_expr(c(x)[1]));
        emit_go(lbl_s);
        emit_lbl(lbl_m);
        return;
    }

    emit_subj(lower_expr(x));
    return;
}

function lower_function_decl(x, nm, pm, bd, fname, pstr, i, lbl) {
    nm    = c(x)[1];
    pm    = c(x)[2];
    bd    = c(x)[3];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    pstr  = '';
    i = 0;
    while (i = LT(i, n(pm)) i + 1) {
        pstr = pstr (GT(i, 1) ',', '') REPLACE(v(c(pm)[i]), &LCASE, &UCASE);
    }
    emit_subj(Tree('E_FNC', 'DEFINE', 1, tree('E_QLIT', fname '(' pstr ')')));
    lbl = rb_new_label();
    emit_go(lbl);
    emit_lbl(fname);
    i = 0;
    while (i = LT(i, n(bd)) i + 1) {
        lower_stmt(c(bd)[i]);
    }
    emit_go('RETURN');
    emit_lbl(lbl);
    emit_subj(tree('E_FNC', fname));
    return;
}

function lower_record_decl(x, nm, fd, fname, fstr, i) {
    nm    = c(x)[1];
    fd    = c(x)[2];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    fstr  = '';
    i = 0;
    while (i = LT(i, n(fd)) i + 1) {
        fstr = fstr (GT(i, 1) ',', '') REPLACE(v(c(fd)[i]), &LCASE, &UCASE);
    }
    emit_subj(Tree('E_FNC', 'DATA', 1, tree('E_QLIT', fname '(' fstr ')')));
    return;
}

function lower_decl(x, k) {
    k = t(x);
    if (IDENT(k, 'RB_FUNC_DECL')) { lower_function_decl(x); return; }
    if (IDENT(k, 'RB_REC_DECL'))  { lower_record_decl(x);   return; }
    return;
}

//-----------------------------------------------------------------------
// Driver — structured flow only: while/if. No goto. No labels.
// Exactly ONE pattern match: Src ? Compiland.
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
Line = INPUT;
while (DIFFER(Line)) {
    Src = Src Line nl;
    Line = INPUT;
}

if (Src ? Compiland) {
    parse_root = Pop();
    if (DIFFER(parse_root)) {
        i = 0;
        while (i = LT(i, n(parse_root)) i + 1) {
            lower_decl(c(parse_root)[i]);
        }
    }
} else {
    OUTPUT = 'PARSER-RB: parse failed';
}
