// parser_rebus.sc — PARSER-RB: Rebus frontend in Snocone.
//
// Reads a Rebus source program from stdin line-by-line via INPUT,
// parses each function declaration, and emits flat STMT trees via TDump
// matching scrip's existing Rebus frontend --dump-ir output byte-for-byte
// after whitespace normalization.  That match is the PARSER-RB gate.
//
// This file follows the shape of parser_snobol4.sc / parser_icon.sc.
//
// Rung PARSER-RB-0 (DONE): atom body only.
// Rung PARSER-RB-1 (DONE): assignment (lhs := rhs, atom rhs).
// Rung PARSER-RB-2 (DONE): control flow (if cond then stmt, while cond do stmt).
// Rung PARSER-RB-3 (DONE): function definitions with args + no-arg call sites.
// Rung PARSER-RB-4 (DONE): pattern match `subj ? pat` (atom subj, atom pat).
// Rung PARSER-RB-5 (CURRENT): alternation generators `a | b | c`.

// Tree shape per function (N body stmts):
//   (STMT :subj (E_FNC DEFINE (E_QLIT "FNAME()")))
//   (STMT :go rb_K)
//   (STMT :lbl FNAME)
//   ... N body STMT trees ...
//   (STMT :go RETURN)
//   (STMT :lbl rb_K)
//   (STMT :subj (E_FNC FNAME))   <- main only
//
// Sibling LANG rungs: RB-1..RB-6.
// The existing src/frontend/rebus/ remains the read-only oracle.
//
// Architecture note (FW-3 workaround):
// Emit helpers are called as plain Snocone function calls from the goto-
// style driver, not via epsilon . *fn() pattern escapes.  Pattern escapes
// via *assign() are used only for side-effect captures inside FuncHeader /
// BodyAtomLine patterns.
//
// Tree shapes for role-slot nodes (from TLump ':'-prefix handling):
//   (STMT :go LABEL)  → Tree('STMT','',1, Tree(':go','',1, tree('Name',LABEL)))
//   (STMT :lbl LABEL) → Tree('STMT','',1, Tree(':lbl','',1, tree('Name',LABEL)))
//   tree('Name','X') renders as "X" (bare, no parens) via TValue Name branch.

//-----------------------------------------------------------------------
// Atom recognizers.
//-----------------------------------------------------------------------

ws_opt = (SPAN(' ' tab) | epsilon);
ws_run = SPAN(' ' tab);

id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

int_pat  = SPAN(digits);

sstr_pat = ("'" BREAK("'") . _rb_strbody "'");
dstr_pat = ('"' BREAK('"') . _rb_strbody '"');
str_pat  = (sstr_pat | dstr_pat);

arglist_pat = ('(' (BREAK(')') | epsilon) ')');

//-----------------------------------------------------------------------
// Helpers.
//-----------------------------------------------------------------------

function uc(s) {
    uc = REPLACE(s, &LCASE, &UCASE);
    return;
}

function next_rb_label() {
    _rb_n = _rb_n + 1;
    next_rb_label = 'rb_' _rb_n;
    return;
}

// Strip whitespace (space + tab) from a string via cursor walk.
// Snocone REPLACE doesn't delete chars when r is empty (it truncates), so
// we walk the input with @ep and copy non-ws chars.
function strip_ws(raw, out, ep, ch) {
    out = '';
    ep = 0;
sw_loop:
    if (raw ? (POS(ep) ANY(' ' tab) @ep)) { goto sw_loop; }
    if (raw ? (POS(ep) LEN(1) . ch @ep)) { out = out ch; goto sw_loop; }
    strip_ws = out;
    return;
}

// Format raw arglist text into uppercase "(A,B)" form (no spaces).
// Empty raw → "()". "a, b" → "(A,B)". " a , b " → "(A,B)".
function format_arglist(raw, out) {
    out = strip_ws(raw);
    out = REPLACE(out, &LCASE, &UCASE);
    format_arglist = '(' out ')';
    return;
}

//-----------------------------------------------------------------------
// Emit helpers — called as plain function calls from the driver.
//-----------------------------------------------------------------------

function emit_func_define(sig) {
    // sig is the full "FNAME(A,B)" signature string (uppercased, no spaces).
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1,
                    Tree('E_FNC', 'DEFINE', 1,
                         tree('E_QLIT', sig)))));
    return;
}

function emit_go(lbl) {
    TDump(Tree('STMT', '', 1,
               Tree(':go', '', 1, tree('Name', lbl))));
    return;
}

function emit_lbl(lbl) {
    TDump(Tree('STMT', '', 1,
               Tree(':lbl', '', 1, tree('Name', lbl))));
    return;
}

function emit_body_atom(kind, txt) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1, tree(kind, txt))));
    return;
}

function emit_func_call(fname) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1, tree('E_FNC', fname))));
    return;
}

function emit_dispatch(goS, goF) {
    // (STMT :subj (E_NUL) :goS goS :goF goF)
    TDump(Tree('STMT', '', 3,
               Tree(':subj', '', 1, tree('E_NUL', '')),
               Tree(':goS', '', 1, tree('Name', goS)),
               Tree(':goF', '', 1, tree('Name', goF))));
    return;
}

function emit_assign(lhs, rhs_kind, rhs_txt) {
    // (STMT :eq :subj (E_VAR LHS) :repl (rhs_kind rhs_txt))
    TDump(Tree('STMT', '', 3,
               tree(':eq', ''),
               Tree(':subj', '', 1, tree('E_VAR', lhs)),
               Tree(':repl', '', 1, tree(rhs_kind, rhs_txt))));
    return;
}

// emit_assign_tree — RB-5: rhs is a pre-built tree (atom or E_ALT).
// (STMT :eq :subj (E_VAR LHS) :repl <rhs_tree>)
function emit_assign_tree(lhs, rhs_tree) {
    TDump(Tree('STMT', '', 3,
               tree(':eq', ''),
               Tree(':subj', '', 1, tree('E_VAR', lhs)),
               Tree(':repl', '', 1, rhs_tree)));
    return;
}

function emit_match(subj_kind, subj_txt, pat_kind, pat_txt) {
    // (STMT :subj (subj_kind subj_txt) :pat (pat_kind pat_txt))
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, tree(subj_kind, subj_txt)),
               Tree(':pat',  '', 1, tree(pat_kind,  pat_txt))));
    return;
}

// emit_match_tree — RB-5: pattern side is a pre-built tree (atom or E_ALT).
// (STMT :subj (subj_kind subj_txt) :pat <pat_tree>)
function emit_match_tree(subj_kind, subj_txt, pat_tree) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, tree(subj_kind, subj_txt)),
               Tree(':pat',  '', 1, pat_tree)));
    return;
}

// emit_body_tree — RB-5: bare body expression as a pre-built tree.
// (STMT :subj <expr_tree>)
function emit_body_tree(expr_tree) {
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1, expr_tree)));
    return;
}

//-----------------------------------------------------------------------
// RB-5: alternation parser — parse_alt_expr(text) -> tree.
//
// Recognizes  atom ( ws? '|' ws? atom )*  in `text` and returns a tree
// node.  One atom -> bare atom tree.  Two or more atoms ->
// left-associative E_ALT chain matching the existing frontend's
// RE_ALT lowering: `a | b | c` produces
//   Tree(E_ALT, '', 2, Tree(E_ALT, '', 2, a, b), c)
//
// Atom slice is the same id/int/str triple used elsewhere in this file.
// Returns NULL if the head atom doesn't parse (caller falls back).
//-----------------------------------------------------------------------
function parse_alt_expr(text, head, more_kind, more_txt, more_strbody) {
    // Match the head atom and consume it.
    if (~(text ? ( POS(0)
                   ( str_pat
                       . *assign('more_kind', 'E_QLIT')
                       . *assign('more_txt',  _rb_strbody)
                   | int_pat . more_txt
                       . *assign('more_kind', 'E_ILIT')
                   | id_pat  . more_txt
                       . *assign('more_kind', 'E_VAR')
                       . *assign('more_txt',  uc(more_txt))
                   )
                   @_rb_alt_cur ))) {
        parse_alt_expr = NULL;
        freturn;
    }
    head = tree(more_kind, more_txt);
    parse_alt_expr = head;
    // Loop: while a `' | atom '` follows, fold it onto head.
pae_loop:
    if (~(text ? ( POS(_rb_alt_cur) ws_opt '|' ws_opt
                   ( str_pat
                       . *assign('more_kind', 'E_QLIT')
                       . *assign('more_txt',  _rb_strbody)
                   | int_pat . more_txt
                       . *assign('more_kind', 'E_ILIT')
                   | id_pat  . more_txt
                       . *assign('more_kind', 'E_VAR')
                       . *assign('more_txt',  uc(more_txt))
                   )
                   @_rb_alt_cur ))) { goto pae_done; }
    parse_alt_expr = Tree('E_ALT', '', 2, parse_alt_expr, tree(more_kind, more_txt));
    goto pae_loop;
pae_done:
    // Require we consumed all non-whitespace input.
    if (~(text ? (POS(_rb_alt_cur) ws_opt RPOS(0)))) {
        parse_alt_expr = NULL;
        freturn;
    }
    return;
}

//-----------------------------------------------------------------------
// Per-line patterns.
//-----------------------------------------------------------------------

// FuncHeader: `function NAME(arglist)` — captures _rb_fname (uppercase)
// and _rb_arglist (raw text inside parens, possibly empty).
FuncHeader = ( POS(0) ws_opt 'function' ws_run id_pat . _rb_raw_name
               ws_opt '('
               (BREAK(')') . _rb_arglist_raw | epsilon . *assign('_rb_arglist_raw', ''))
               ')' ws_opt RPOS(0)
               epsilon . *assign('_rb_fname', uc(_rb_raw_name))
             );

// CallLine: bare no-arg call as body stmt: `fname()`.
// Captures _rb_call_name (uppercased).
CallLine = ( POS(0) ws_opt id_pat . _rb_call_raw
             ws_opt '(' ws_opt ')' ws_opt RPOS(0)
             epsilon . *assign('_rb_call_name', uc(_rb_call_raw))
           );

FuncEnd    = ( POS(0) ws_opt 'end' ws_opt RPOS(0) );

// AssignLine: `lhs := rhs` where rhs is an atom.
// Must be tried BEFORE BodyAtomLine so the lhs id isn't consumed as bare atom.
// lhs is always an identifier (uppercased). rhs is id/int/str atom.
AssignLine = ( POS(0) ws_opt id_pat . _rb_lhs ws_opt ':=' ws_opt
               ( str_pat
                   . *assign('_rb_atom_kind', 'E_QLIT')
                   . *assign('_rb_atom_txt',  _rb_strbody)
               | int_pat . _rb_atom_txt
                   . *assign('_rb_atom_kind', 'E_ILIT')
               | id_pat  . _rb_atom_txt
                   . *assign('_rb_atom_kind', 'E_VAR')
                   . *assign('_rb_atom_txt',  uc(_rb_atom_txt))
               )
               ws_opt RPOS(0)
               epsilon . *assign('_rb_lhs', uc(_rb_lhs))
             );

BodyAtomLine = ( POS(0) ws_opt
                 ( str_pat
                     . *assign('_rb_atom_kind', 'E_QLIT')
                     . *assign('_rb_atom_txt',  _rb_strbody)
                 | int_pat . _rb_atom_txt
                     . *assign('_rb_atom_kind', 'E_ILIT')
                 | id_pat  . _rb_atom_txt
                     . *assign('_rb_atom_kind', 'E_VAR')
                     . *assign('_rb_atom_txt',  uc(_rb_atom_txt))
                 )
                 ws_opt RPOS(0)
               );

// IfLine: `if cond then body_stmt` (single-line form, RB-2 scope).
// Captures cond (kind/txt) and body (lhs/rhs_kind/rhs_txt or atom_kind/atom_txt).
// Body slot uses _rb_body_* prefix to avoid collision with cond slots.
// Oracle: body IS emitted in the goF branch.
// CondAtom — shared sub-pattern for id/int/str condition atoms.
CondAtom = ( str_pat
               . *assign('_rb_cond_kind', 'E_QLIT')
               . *assign('_rb_cond_txt',  _rb_strbody)
           | int_pat . _rb_cond_txt
               . *assign('_rb_cond_kind', 'E_ILIT')
           | id_pat  . _rb_cond_txt
               . *assign('_rb_cond_kind', 'E_VAR')
               . *assign('_rb_cond_txt',  uc(_rb_cond_txt))
           );

// BodyAssign — assign rhs for then/do body on same line.
BodyAssign = ( id_pat . _rb_body_lhs ws_opt ':=' ws_opt
               ( str_pat
                   . *assign('_rb_body_rhs_kind', 'E_QLIT')
                   . *assign('_rb_body_rhs_txt',  _rb_strbody)
               | int_pat . _rb_body_rhs_txt
                   . *assign('_rb_body_rhs_kind', 'E_ILIT')
               | id_pat  . _rb_body_rhs_txt
                   . *assign('_rb_body_rhs_kind', 'E_VAR')
                   . *assign('_rb_body_rhs_txt',  uc(_rb_body_rhs_txt))
               )
               ws_opt RPOS(0)
               epsilon . *assign('_rb_body_lhs', uc(_rb_body_lhs))
               epsilon . *assign('_rb_body_is_assign', '1')
             );

// BodyAtom2 — bare atom body for then/do clause.
BodyAtom2 = ( ( str_pat
                  . *assign('_rb_body_atom_kind', 'E_QLIT')
                  . *assign('_rb_body_atom_txt',  _rb_strbody)
              | int_pat . _rb_body_atom_txt
                  . *assign('_rb_body_atom_kind', 'E_ILIT')
              | id_pat  . _rb_body_atom_txt
                  . *assign('_rb_body_atom_kind', 'E_VAR')
                  . *assign('_rb_body_atom_txt',  uc(_rb_body_atom_txt))
              )
              ws_opt RPOS(0)
              epsilon . *assign('_rb_body_is_assign', '')
            );

IfLine = ( POS(0) ws_opt 'if' ws_run
           CondAtom ws_run 'then' ws_run
           (BodyAssign | BodyAtom2)
         );

// WhileLine: `while cond do body_stmt` (single-line form, RB-2 scope).
// Oracle: while body NOT emitted (existing frontend omits it).
WhileLine = ( POS(0) ws_opt 'while' ws_run
              CondAtom ws_run 'do' ws_run
              ARB RPOS(0)
            );

// MatchSubj — atom on the left of `?`.  Fills _rb_msubj_{kind,txt}.
MatchSubj = ( str_pat
                . *assign('_rb_msubj_kind', 'E_QLIT')
                . *assign('_rb_msubj_txt',  _rb_strbody)
            | int_pat . _rb_msubj_txt
                . *assign('_rb_msubj_kind', 'E_ILIT')
            | id_pat  . _rb_msubj_txt
                . *assign('_rb_msubj_kind', 'E_VAR')
                . *assign('_rb_msubj_txt',  uc(_rb_msubj_txt))
            );

// MatchPat — atom on the right of `?`.  Fills _rb_mpat_{kind,txt}.
MatchPat = ( str_pat
               . *assign('_rb_mpat_kind', 'E_QLIT')
               . *assign('_rb_mpat_txt',  _rb_strbody)
           | int_pat . _rb_mpat_txt
               . *assign('_rb_mpat_kind', 'E_ILIT')
           | id_pat  . _rb_mpat_txt
               . *assign('_rb_mpat_kind', 'E_VAR')
               . *assign('_rb_mpat_txt',  uc(_rb_mpat_txt))
           );

// MatchLine: `subj ? pat` where subj and pat are atoms (RB-4 scope).
// Oracle tree shape: (STMT :subj (kind txt) :pat (pkind ptxt))
MatchLine = ( POS(0) ws_opt MatchSubj ws_opt '?' ws_opt MatchPat ws_opt RPOS(0) );

//-----------------------------------------------------------------------
// RB-5 — alternation (`a | b | c`).  Three new line patterns capture the
// rhs as raw text; the dispatch handler hands that text to
// parse_alt_expr() to build the actual tree.
//
// MatchAltLine:    `subj ? rhs_text` — captures _rb_msubj_*, _rb_alt_text.
// AssignAltLine:   `lhs := rhs_text` — captures _rb_lhs, _rb_alt_text.
// BodyAltLine:     `rhs_text`        — captures _rb_alt_text.
//
// rhs_text must contain at least one '|' for these patterns to commit;
// otherwise the older MatchLine / AssignLine / BodyAtomLine paths handle
// it (and produce identical trees because parse_alt_expr returns a bare
// atom tree for single-atom input — the alt path is just for `|` cases).
//-----------------------------------------------------------------------

// MatchAltLine:  `subj ? rhs_text` where rhs_text contains at least one `|`.
// Capture rhs_text via TAB anchoring: from current position to RPOS(0).
// Use `(BREAK | epsilon)` trick? No — simpler: capture-then-validate.
MatchAltLine = ( POS(0) ws_opt MatchSubj ws_opt '?' ws_opt
                 (BREAK('|') . _rb_alt_pre)
                 (REM         . _rb_alt_post)
                 epsilon . *assign('_rb_alt_text', _rb_alt_pre _rb_alt_post)
               );

AssignAltLine = ( POS(0) ws_opt id_pat . _rb_lhs ws_opt ':=' ws_opt
                  (BREAK('|') . _rb_alt_pre)
                  (REM         . _rb_alt_post)
                  epsilon . *assign('_rb_lhs',      uc(_rb_lhs))
                  epsilon . *assign('_rb_alt_text', _rb_alt_pre _rb_alt_post)
                );

BodyAltLine = ( POS(0) ws_opt
                (BREAK('|') . _rb_alt_pre)
                (REM         . _rb_alt_post)
                epsilon . *assign('_rb_alt_text', _rb_alt_pre _rb_alt_post)
              );

//-----------------------------------------------------------------------
// Driver — line-at-a-time state machine.
//   _rb_state 0: between functions
//   _rb_state 1: inside function body
//-----------------------------------------------------------------------

_rb_state = 0;
_rb_n     = 0;

InitCounter();
InitStack();

rb_loop:
if (~(RbLine = INPUT)) { goto rb_done; }
if (RbLine ? (POS(0) ws_opt RPOS(0))) { goto rb_loop; }
if (IDENT(_rb_state, 0)) { goto rb_state0; }
if (IDENT(_rb_state, 1)) { goto rb_state1; }
goto rb_loop;

rb_state0:
if (~(RbLine ? FuncHeader)) { goto rb_loop; }
_rb_rblbl = next_rb_label();
_rb_sig = _rb_fname format_arglist(_rb_arglist_raw);
emit_func_define(_rb_sig);
emit_go(_rb_rblbl);
emit_lbl(_rb_fname);
_rb_state = 1;
goto rb_loop;

rb_state1:
if (RbLine ? FuncEnd) { goto rb_end; }
if (~(RbLine ? IfLine)) { goto rb_try_while; }
_rb_goS = next_rb_label();
_rb_goF = next_rb_label();
_rb_merge = next_rb_label();
emit_dispatch(_rb_goS, _rb_goF);
emit_lbl(_rb_goS);
emit_body_atom(_rb_cond_kind, _rb_cond_txt);
emit_go(_rb_merge);
emit_lbl(_rb_goF);
if (IDENT(_rb_body_is_assign, '1')) {
    emit_assign(_rb_body_lhs, _rb_body_rhs_kind, _rb_body_rhs_txt);
    goto rb_if_done;
}
emit_body_atom(_rb_body_atom_kind, _rb_body_atom_txt);
rb_if_done:
emit_lbl(_rb_merge);
goto rb_loop;
rb_try_while:
if (~(RbLine ? WhileLine)) { goto rb_try_assign; }
_rb_loop_lbl = next_rb_label();
_rb_goS = next_rb_label();
_rb_goF = next_rb_label();
emit_lbl(_rb_loop_lbl);
emit_dispatch(_rb_goS, _rb_goF);
emit_lbl(_rb_goS);
emit_body_atom(_rb_cond_kind, _rb_cond_txt);
emit_go(_rb_loop_lbl);
emit_lbl(_rb_goF);
goto rb_loop;
rb_try_assign:
if (~(RbLine ? AssignAltLine)) { goto rb_try_assign_plain; }
_rb_alt_tree = parse_alt_expr(_rb_alt_text);
if (IDENT(_rb_alt_tree, NULL)) { goto rb_try_assign_plain; }
emit_assign_tree(_rb_lhs, _rb_alt_tree);
goto rb_loop;
rb_try_assign_plain:
if (~(RbLine ? AssignLine)) { goto rb_try_match; }
emit_assign(uc(_rb_lhs), _rb_atom_kind, _rb_atom_txt);
goto rb_loop;
rb_try_match:
if (~(RbLine ? MatchAltLine)) { goto rb_try_match_plain; }
_rb_alt_tree = parse_alt_expr(_rb_alt_text);
if (IDENT(_rb_alt_tree, NULL)) { goto rb_try_match_plain; }
emit_match_tree(_rb_msubj_kind, _rb_msubj_txt, _rb_alt_tree);
goto rb_loop;
rb_try_match_plain:
if (~(RbLine ? MatchLine)) { goto rb_try_call; }
emit_match(_rb_msubj_kind, _rb_msubj_txt, _rb_mpat_kind, _rb_mpat_txt);
goto rb_loop;
rb_try_call:
if (~(RbLine ? CallLine)) { goto rb_try_body_alt; }
emit_func_call(_rb_call_name);
goto rb_loop;
rb_try_body_alt:
if (~(RbLine ? BodyAltLine)) { goto rb_try_atom; }
_rb_alt_tree = parse_alt_expr(_rb_alt_text);
if (IDENT(_rb_alt_tree, NULL)) { goto rb_try_atom; }
emit_body_tree(_rb_alt_tree);
goto rb_loop;
rb_try_atom:
if (~(RbLine ? BodyAtomLine)) {
    OUTPUT = 'PARSER-RB: unrecognized body: ' RbLine;
    goto rb_loop;
}
emit_body_atom(_rb_atom_kind, _rb_atom_txt);
goto rb_loop;

rb_end:
emit_go('RETURN');
emit_lbl(_rb_rblbl);
if (IDENT(_rb_fname, 'MAIN')) {
    emit_func_call(_rb_fname);
}
_rb_state = 0;
goto rb_loop;

rb_done:
_parser_rb_done = '';
