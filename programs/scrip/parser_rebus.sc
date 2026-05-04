// parser_rebus.sc — PARSER-RB rewrite: Rebus frontend in Snocone.
// Beauty.sc-style builders ($'op' wrappers + RB_*() pattern-builder helpers).
//
// Architecture per GOAL-PARSER-REBUS.md Rubric:
//   - One root Compiland pattern, beauty.sc spine, matched ONCE via Src ? Compiland.
//   - nPush/nInc/nTop/nPop n-ary folds throughout.
//   - shift()/reduce() function-call forms (binary ~/& OPSYN ops not yet
//     supported by Snocone runtime — T_2TILDE/T_2AMP tokens declared but
//     have zero grammar productions; tracked as a separate runtime gap).
//   - No goto, no labels in driver (structured while/if only).
//   - Build-time helpers (RB_*) wrap match-time function calls so pattern
//     definitions read like beauty.sc, e.g. RB_save(.var, expr) returns
//     `epsilon . *assign('var', expr)` at parse-build time.
//   - Operator wrappers $'op' = ws_opt 'op' ws_opt (beauty.sc lines 50-58).
//   - Post-parse lower_* functions walk surface tree → STMT TDump lines.

&FULLSCAN = 1;

//-----------------------------------------------------------------------
// Pattern-builder helpers (beauty.sc / semantic.sc idiom).
// Each function returns a pattern fragment at parser-build time;
// calling the wrapped helper at match-time happens via the returned `*fn(...)`.
// This keeps pattern definitions short and uniform.
//-----------------------------------------------------------------------

function RB_push_qlit() {
    // Build-time: returns `epsilon . *rb_push_qlit()` pattern fragment.
    // Match-time: rb_push_qlit reads _rb_strbody global and pushes E_QLIT.
    RB_push_qlit = epsilon . *rb_push_qlit();
    return;
}

function RB_push_call() {
    // Build-time: returns `epsilon . *rb_push_call()` pattern fragment.
    // Match-time: rb_push_call reads _rb_callname global and pushes RB_CALL.
    RB_push_call = epsilon . *rb_push_call();
    return;
}

//-----------------------------------------------------------------------
// Match-time helpers (called via the build-time wrappers above).
// These are invoked from inside patterns ONLY through pattern-builder
// fragments returned by RB_*() — never written literally `epsilon . *fn(...)`
// in pattern definitions.
//-----------------------------------------------------------------------

function rb_push_qlit() {
    rb_push_qlit = .dummy;
    Push(tree('E_QLIT', _rb_strbody));
    nreturn;
}

function rb_push_call() {
    rb_push_call = .dummy;
    Push(tree('RB_CALL', REPLACE(_rb_callname, &LCASE, &UCASE)));
    nreturn;
}

//-----------------------------------------------------------------------
// Tag string constants — all bare form.  semantic.sc INFRA-11c auto-quotes
// via _qtag() for both shift() and reduce(), so callers never need to
// embed surrounding quotes.  Just write the tag name.
//-----------------------------------------------------------------------

E_VAR        = 'E_VAR';
E_ILIT       = 'E_ILIT';
E_QLIT       = 'E_QLIT';
E_ALT        = 'E_ALT';
E_ADD        = 'E_ADD';
E_SUB        = 'E_SUB';
E_MUL        = 'E_MUL';
E_DIV        = 'E_DIV';
Parse        = 'Parse';
RB_FUNC_DECL = 'RB_FUNC_DECL';
RB_REC_DECL  = 'RB_REC_DECL';
RB_PARAMS    = 'RB_PARAMS';
RB_BODY      = 'RB_BODY';
RB_FIELDS    = 'RB_FIELDS';
RB_ASSIGN    = 'RB_ASSIGN';
RB_MATCH     = 'RB_MATCH';
RB_IF        = 'RB_IF';
RB_WHILE     = 'RB_WHILE';

// n-ary count expression — eval'd at match time inside reduce().
nTop_gt1 = '*(GT(nTop(), 1) nTop())';

//-----------------------------------------------------------------------
// Whitespace, gray-space, and operator wrappers (beauty.sc style).
//-----------------------------------------------------------------------

White    = SPAN(' ' tab);
Gray     = (*White | epsilon);
nl_one   = ANY(nl);
nl_run   = SPAN(nl);
WS       = (SPAN(' ' tab nl) | epsilon);

$'(' = '(' *Gray;       $')' = *Gray ')';
$',' = *Gray ',' *Gray;
$':=' = *Gray ':=' *Gray;
$'?'  = *Gray '?'  *Gray;
$'|'  = *Gray '|'  *Gray;
$'+'  = *Gray '+'  *Gray;
$'-'  = *Gray '-'  *Gray;
$'*'  = *Gray '*'  *Gray;
$'/'  = *Gray '/'  *Gray;

//-----------------------------------------------------------------------
// Lex tokens — pure built-in primitives only (SPAN/BREAK/ANY).
// String body captured via the dot-conditional `. _rb_strbody` —
// that is a built-in pattern primitive, not a function call.
//-----------------------------------------------------------------------

Id      = (ANY(&UCASE &LCASE '_')
           (SPAN(&UCASE &LCASE digits '_') | epsilon));

Integer = SPAN(digits);

DQ_str  = '"' BREAK('"') . _rb_strbody '"';
SQ_str  = "'" BREAK("'") . _rb_strbody "'";
String  = (*DQ_str | *SQ_str);

//-----------------------------------------------------------------------
// primary — atom: String | Integer | Id   (rebus.y: primary)
// String matches the body via dot-conditional, then the build-time
// RB_qlit_emit() helper produces `epsilon . *rb_push_qlit('_rb_strbody')`
// which pushes (E_QLIT body) at match time. No literal *fn() in pattern.
//-----------------------------------------------------------------------

primary = FENCE(  *String  RB_push_qlit()
                | shift(*Integer, E_ILIT)
                | shift(*Id,      E_VAR)
               );

//-----------------------------------------------------------------------
// postfix_expr — id followed by '()' is a call site (RB_CALL with name
// as value); otherwise primary.  Uses no-arg-call lookahead: if Id is
// immediately followed by '()' the call branch matches; otherwise the
// primary branch handles the bare id (and string/integer).
// The two branches do NOT share a common prefix that could trap FENCE.
//-----------------------------------------------------------------------

// id_call_pat: Id followed by literal '()' — captured as one unit so the
// alternative is mutually exclusive with bare-id primary at the prefix.
id_call_pat = (Id . _rb_callname '(' *Gray ')');

postfix_expr = (  id_call_pat RB_push_call()
                | *primary
               );

//-----------------------------------------------------------------------
// Expression tier ladder (rebus.y precedence).  Beauty.sc-style:
// every binary tier uses the FENCE(... | epsilon) idiom and $'op' wrappers.
//-----------------------------------------------------------------------

mul_expr = *postfix_expr
           FENCE(  $'*' *postfix_expr reduce(E_MUL, 2) FENCE($'*' *postfix_expr reduce(E_MUL, 2) | epsilon)
                 | $'/' *postfix_expr reduce(E_DIV, 2) FENCE($'/' *postfix_expr reduce(E_DIV, 2) | epsilon)
                 | epsilon
                );

add_expr = *mul_expr
           FENCE(  $'+' *mul_expr reduce(E_ADD, 2) FENCE($'+' *mul_expr reduce(E_ADD, 2) | epsilon)
                 | $'-' *mul_expr reduce(E_SUB, 2) FENCE($'-' *mul_expr reduce(E_SUB, 2) | epsilon)
                 | epsilon
                );

cat_expr = *add_expr;

// alt_expr — n-ary | folded into E_ALT (beauty.sc Expr3 idiom).
alt_expr = nPush() *X_alt reduce(E_ALT, nTop_gt1) nPop();
X_alt    = nInc() *cat_expr FENCE($'|' *X_alt | epsilon);

// assign_expr — right-assoc :=
assign_expr = *alt_expr FENCE($':=' *alt_expr reduce(RB_ASSIGN, 2) | epsilon);

// pat_expr (no syntactic distinction at this level per rebus.y line 678)
pat_expr = *assign_expr;

// expr — top-level, with optional ? pat_expr (match)
expr = *assign_expr FENCE($'?' *pat_expr reduce(RB_MATCH, 2) | epsilon);

//-----------------------------------------------------------------------
// stmt — one statement, one surface tree node.
//-----------------------------------------------------------------------

if_stmt    = 'if'    *White *expr *White 'then' *White *stmt reduce(RB_IF,    2);
while_stmt = 'while' *White *expr *White 'do'   *White *stmt reduce(RB_WHILE, 2);
expr_stmt  = *expr;

stmt_line  = *Gray FENCE(*if_stmt | *while_stmt | *expr_stmt) *Gray nl_one;

//-----------------------------------------------------------------------
// stmt_list — n-ary body: RB_BODY(stmt...).  Inner nInc() inside the
// stmt_item alternative; blank-line alternative just advances cursor.
//-----------------------------------------------------------------------

stmt_item  = nInc() *stmt_line;
blank_body = nl_one;
body_one   = ( *stmt_item | *blank_body );
stmt_list  = nPush() ARBNO(body_one) reduce(RB_BODY, 'nTop()') nPop();

//-----------------------------------------------------------------------
// opt_params — RB_PARAMS(E_VAR...).  Beauty.sc XList-style.
//-----------------------------------------------------------------------

X_params = nInc() shift(*Id, E_VAR) FENCE($',' *X_params | epsilon);
opt_params = nPush() FENCE(*X_params | epsilon) reduce(RB_PARAMS, 'nTop()') nPop();

//-----------------------------------------------------------------------
// opt_fields — RB_FIELDS(E_VAR...).  Same shape as opt_params.
//-----------------------------------------------------------------------

X_fields = nInc() shift(*Id, E_VAR) FENCE($',' *X_fields | epsilon);
opt_fields = nPush() FENCE(*X_fields | epsilon) reduce(RB_FIELDS, 'nTop()') nPop();

//-----------------------------------------------------------------------
// function_decl — RB_FUNC_DECL(name, params, body), arity 3.
// 'function' Id '(' opt_params ')' nl stmt_list 'end' nl
//-----------------------------------------------------------------------

function_decl = 'function' *White shift(*Id, E_VAR)
                $'(' *opt_params $')' *Gray nl_one
                *stmt_list
                *Gray 'end' *Gray nl_one
                reduce(RB_FUNC_DECL, 3);

//-----------------------------------------------------------------------
// record_decl — RB_REC_DECL(name, fields), arity 2.
// 'record' Id '(' opt_fields ')' nl
//-----------------------------------------------------------------------

record_decl = 'record' *White shift(*Id, E_VAR)
              $'(' *opt_fields $')' *Gray nl_one
              reduce(RB_REC_DECL, 2);

//-----------------------------------------------------------------------
// Command — top-level alternation (parser_snocone.sc idiom).
// nInc() is inside each decl, not at the alternation top.
// blank_line advances the cursor without nInc, so ARBNO never spins.
//-----------------------------------------------------------------------

func_cmd = nInc() *function_decl;
rec_cmd  = nInc() *record_decl;
blank    = nl_one;

Command = ( *func_cmd | *rec_cmd | *blank );

//-----------------------------------------------------------------------
// Compiland — one root pattern, beauty.sc spine.  Matched ONCE in driver.
//-----------------------------------------------------------------------

Compiland = nPush() ARBNO(Command) reduce(Parse, 'nTop()') nPop();

//-----------------------------------------------------------------------
// Post-parse lowering — called AFTER Src ? Compiland.  Walks the surface
// tree and emits STMT TDump lines matching scrip's --dump-ir output.
// These are NOT called from inside any pattern.
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
        // Value-bearing leaf: v(x) is the uppercased name.
        lower_expr = tree('E_FNC', v(x));
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
// Driver — structured flow only (while/if).  Exactly ONE pattern match.
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
