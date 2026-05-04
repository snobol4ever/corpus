// parser_snobol4.sc — PARSER-SN: SNOBOL4 frontend in Snocone.
//
// Reads a SNOBOL4 source program from stdin via INPUT, accumulates the
// whole program into Src, then runs the canonical Compiland spine
//
//     Compiland = nPush() ARBNO( <Command body> )
//                 reduce("'Parse'", 'nTop()') nPop()
//
// (per beauty.sc:133) to build a single Parse tree wrapping one STMT
// child per statement.  Each STMT child is then dumped via TDump,
// producing output structurally identical to scrip's existing-frontend
// --dump-parse (whitespace-normalized at gate comparison per FW-6 B).
//
// Naming policy (PARSER-SN-3+): rule names follow beauty.sno canonical
// BNF.  Expr, Expr4, Expr6, Expr8, Expr9, Expr11, Expr14, Expr17 are
// the reference names.  Op_* operator-strip patterns correspond to
// beauty's $'+' / $'-' etc. (Gray opchar Gray atomic form).
//
// Associativity: beauty.sno Expr6 etc. are right-recursive; snobol4.y
// and scrip --dump-parse are left-associative.  PARSER-SN follows the
// oracle (left-assoc iterative loops for binary arith).  E_POW is
// right-recursive per snobol4.y.  Concat (E_SEQ) uses iterative n-ary
// accumulation per beauty.sno X4 shape.
//
// Architecture note — Command body inlined into Compiland (not *Command).
// Dodges a scrip-Snocone runtime bug where *Q indirection inside ARBNO
// suppresses deferred calls inside Q.  Tracked as FW-3.

//-----------------------------------------------------------------------
// Atom recognizers — named per beauty.sno.
//-----------------------------------------------------------------------

// Whitespace (beauty.sno Gray / White).
Gray    = (SPAN(' ' tab) | epsilon);
White   = SPAN(' ' tab);

// Identifier (beauty.sno Id).
Id      = (ANY(&UCASE &LCASE) (SPAN(digits &UCASE &LCASE '_.') | epsilon));

// Integer (beauty.sno Integer).
Integer = SPAN(digits);

// String (beauty.sno String).  _strbody receives the body text.
String  = ("'" BREAK("'") . _strbody "'" | '"' BREAK('"') . _strbody '"');

// Misc primitives.
nl_one  = ANY(nl);
ws_opt  = (SPAN(' ' tab) | epsilon);

//-----------------------------------------------------------------------
// Expression functions — Expr-N named per beauty.sno.
//
// Global state:
//   _src  — the source line / program currently being parsed.
//   _ep   — integer cursor into _src (updated by each Expr-N call).
//
// Each function is called as Expr17(_src) etc.; the dummy arg is not
// used but Snocone requires at least one argument for functions that
// reference local variables.  Returns a Snocone tree node or FRETURNs.
//-----------------------------------------------------------------------

// _pat_prim_call(name, kind) — recognize a single pattern primitive call.
// Tries to match: NAME '(' expr ')' at POS(_ep). On success returns a
// 1-child tree of the given IR `kind` wrapping the parsed argument
// expression and advances _ep past the close-paren. On failure FRETURNs
// without disturbing _ep (caller's saved ep0 is the recovery point).
//
// Used by Expr17 to recognize the SNOBOL4 pattern primitives LEN, BREAK,
// SPAN, ANY, NOTANY (PARSER-SN-5).
function _pat_prim_call(name, kind, ep0, arg) {
    ep0 = _ep;
    if (~(_src ? (POS(_ep) name '(' @_ep))) { _ep = ep0; freturn; }
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    arg = Expr(_src);
    if (~DIFFER(arg)) { _ep = ep0; freturn; }
    if (~(_src ? (POS(_ep) (SPAN(' ' tab) | epsilon) ')' @_ep))) { _ep = ep0; freturn; }
    _pat_prim_call = Tree(kind, '', 1, arg);
    return;
}

// Expr17 — atoms: parenthesized subexpr, pattern primitive call,
// integer literal, string, identifier.
function Expr17(dummy, v, sub) {
    // Parenthesized subexpr.
    if (_src ? (POS(_ep) '(' @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        sub = Expr(_src);
        if (~DIFFER(sub)) { freturn; }
        if (~(_src ? (POS(_ep) (SPAN(' ' tab) | epsilon) ')' @_ep))) { freturn; }
        Expr17 = sub;
        return;
    }
    // Pattern primitive calls (PARSER-SN-5). Try LEN / BREAK / SPAN /
    // ANY / NOTANY before the bare identifier alternative — otherwise
    // `LEN` would match as `E_VAR LEN` and the `(3)` would be left
    // unconsumed. Each name must be followed immediately by `(`; if
    // the lookahead fails, _pat_prim_call resets _ep and FRETURNs so
    // we fall through cleanly. NOTANY before ANY (longer match wins).
    sub = _pat_prim_call('LEN',    'E_LEN');
    if (DIFFER(sub)) { Expr17 = sub; return; }
    sub = _pat_prim_call('BREAK',  'E_BREAK');
    if (DIFFER(sub)) { Expr17 = sub; return; }
    sub = _pat_prim_call('SPAN',   'E_SPAN');
    if (DIFFER(sub)) { Expr17 = sub; return; }
    sub = _pat_prim_call('NOTANY', 'E_NOTANY');
    if (DIFFER(sub)) { Expr17 = sub; return; }
    sub = _pat_prim_call('ANY',    'E_ANY');
    if (DIFFER(sub)) { Expr17 = sub; return; }
    // Integer — must not be preceded by sign (unary handles that at Expr14).
    if (_src ? (POS(_ep) Integer . v @_ep)) {
        Expr17 = tree('E_ILIT', v);
        return;
    }
    // String literal — _strbody filled by String pattern.
    if (_src ? (POS(_ep) String @_ep)) {
        Expr17 = tree('E_QLIT', _strbody);
        return;
    }
    // Identifier.
    if (_src ? (POS(_ep) Id . v @_ep)) {
        Expr17 = tree('E_VAR', v);
        return;
    }
    freturn;
}

// Expr14 — unary prefix operators: +, -.
// beauty.sno Expr14: '+' *Expr14 ("'+'" & 1) | '-' *Expr14 ... | *Expr15
//
// Lookahead pattern: consume the operator char into @_ep first, THEN
// check the following char via a separate NOTANY probe that does NOT
// advance _ep further.  This avoids the NOTANY-consuming-the-next-char
// bug where POS(_ep) '-' NOTANY('-') @_ep sets _ep past the char after '-'.
function Expr14(dummy, sub) {
    // Unary minus — consume '-' then verify next char is not '-'.
    if (_src ? (POS(_ep) '-' @_ep)) {
        if (~(_src ? (POS(_ep) (NOTANY('-') | RPOS(0))))) { freturn; }
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        sub = Expr14(_src);
        if (~DIFFER(sub)) { freturn; }
        Expr14 = Tree('E_MNS', '', 1, sub);
        return;
    }
    // Unary plus — consume '+' then verify next char is not '+'.
    if (_src ? (POS(_ep) '+' @_ep)) {
        if (~(_src ? (POS(_ep) (NOTANY('+') | RPOS(0))))) { freturn; }
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        sub = Expr14(_src);
        if (~DIFFER(sub)) { freturn; }
        Expr14 = Tree('E_PLS', '', 1, sub);
        return;
    }
    Expr14 = Expr17(_src);
    return;
}

// Expr12 — conditional / immediate capture-assignment: `expr . VAR` and
// `expr $ VAR`. Left-associative per the existing scrip frontend (oracle
// produces ((a . X) . Y) for `'a' . X . Y`). Operator binds tighter than
// arith / pow but looser than unary / atom — between Expr11 (pow) and
// Expr14 (unary) in the tier ladder. The RHS of `.` / `$` is restricted
// to a name (E_VAR) per the canonical s4-no.ebnf `cap` rule and the
// oracle's E_CAPT_*_ASGN second-child shape (PARSER-SN-5).
function Expr12(dummy, acc, name_text, ep0) {
    acc = Expr14(_src);
    if (~DIFFER(acc)) { freturn; }
cap_loop:
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    // `. VAR` — conditional assignment. Lookahead: '.' must be followed
    // by whitespace then an identifier (not a digit, otherwise this is
    // a real-number literal — though Expr17 already handled the leading
    // numeric atom, so a stray '.' here is the cap operator).
    if (_src ? (POS(_ep) '.' @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        if (~(_src ? (POS(_ep) Id . name_text @_ep))) { _ep = ep0; goto cap_done; }
        acc = Tree('E_CAPT_COND_ASGN', '', 2, acc, tree('E_VAR', name_text));
        goto cap_loop;
    }
    // `$ VAR` — immediate assignment. Lookahead: '$' must NOT be followed
    // immediately by another `$` (no such operator) and must be followed
    // by whitespace then an identifier. Avoid eating `$X` indirect-ref
    // form by requiring whitespace before the `$` here (concat boundary
    // already enforces that anyway — `$` mid-expression is the immediate
    // capture operator).
    if (_src ? (POS(_ep) '$' @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        if (~(_src ? (POS(_ep) Id . name_text @_ep))) { _ep = ep0; goto cap_done; }
        acc = Tree('E_CAPT_IMMED_ASGN', '', 2, acc, tree('E_VAR', name_text));
        goto cap_loop;
    }
    _ep = ep0;
cap_done:
    Expr12 = acc;
    return;
}

// Expr11 — exponentiation: **, ^, ! (right-associative per snobol4.y).
// beauty.sno: *Expr12 FENCE(($'^' | $'!' | $'**') *Expr11 ("'^'" & 2) | epsilon)
function Expr11(dummy, left, right, ep0) {
    left = Expr12(_src);
    if (~DIFFER(left)) { freturn; }
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    // Try '**' before single '*' to avoid ambiguity.
    if (_src ? (POS(_ep) '**' @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr11(_src);
        if (DIFFER(right)) {
            Expr11 = Tree('E_POW', '', 2, left, right);
            return;
        }
    }
    if (_src ? (POS(_ep) ANY('^!') @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr11(_src);
        if (DIFFER(right)) {
            Expr11 = Tree('E_POW', '', 2, left, right);
            return;
        }
    }
    _ep = ep0;
    Expr11 = left;
    return;
}

// Expr9 — multiplication (left-associative).
// Skips '**' — must try Expr11 first so ** is handled at that level.
function Expr9(dummy, acc, right, ep0) {
    acc = Expr11(_src);
    if (~DIFFER(acc)) { freturn; }
mul_loop:
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    // '*' not followed by '*' — capture after '*', then lookahead separately.
    if (_src ? (POS(_ep) '*' @_ep)) {
        if (~(_src ? (POS(_ep) (NOTANY('*') | RPOS(0))))) { _ep = ep0; goto mul_done; }
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr11(_src);
        if (DIFFER(right)) {
            acc = Tree('E_MUL', '', 2, acc, right);
            goto mul_loop;
        }
    }
    _ep = ep0;
mul_done:
    Expr9 = acc;
    return;
}

// Expr8 — division (left-associative).
function Expr8(dummy, acc, right, ep0) {
    acc = Expr9(_src);
    if (~DIFFER(acc)) { freturn; }
div_loop:
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    if (_src ? (POS(_ep) '/' @_ep)) {
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr9(_src);
        if (DIFFER(right)) {
            acc = Tree('E_DIV', '', 2, acc, right);
            goto div_loop;
        }
    }
    _ep = ep0;
    Expr8 = acc;
    return;
}

// Expr6 — addition and subtraction (left-associative).
// beauty.sno: *Expr7 FENCE($'+' *Expr6 ("'+'" & 2) | $'-' *Expr6 ... | epsilon)
// We pass through Expr7 (modulo/#) directly to Expr8 for this rung.
function Expr6(dummy, acc, right, ep0) {
    acc = Expr8(_src);
    if (~DIFFER(acc)) { freturn; }
add_loop:
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    // '+' not followed by '+' — capture after '+', then lookahead.
    if (_src ? (POS(_ep) '+' @_ep)) {
        if (~(_src ? (POS(_ep) (NOTANY('+') | RPOS(0))))) { _ep = ep0; goto add_done; }
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr8(_src);
        if (DIFFER(right)) { acc = Tree('E_ADD', '', 2, acc, right); goto add_loop; }
        _ep = ep0; goto add_done;
    }
    // '-' not followed by '-'.
    if (_src ? (POS(_ep) '-' @_ep)) {
        if (~(_src ? (POS(_ep) (NOTANY('-') | RPOS(0))))) { _ep = ep0; goto add_done; }
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        right = Expr8(_src);
        if (DIFFER(right)) { acc = Tree('E_SUB', '', 2, acc, right); goto add_loop; }
        _ep = ep0; goto add_done;
    }
    _ep = ep0;
add_done:
    Expr6 = acc;
    return;
}

// Expr4 — concatenation (E_SEQ, n-ary, left-associative).
// beauty.sno: Expr4 = nPush() *X4 ... nPop()
//             X4 = nInc() *Expr5 FENCE(*White *X4 | epsilon)
// Concat is juxtaposition: two exprs separated by whitespace with no
// operator token between them.  Key correctness rule: probe for
// whitespace first; if present AND not followed by an operator char or
// end-of-content, parse another Expr6.
function Expr4(dummy, first, next, ep1, count, arr, i) {
    first = Expr6(_src);
    if (~DIFFER(first)) { freturn; }
    count = 1;
    arr = ARRAY(16);
    arr[1] = first;
concat_loop:
    ep1 = _ep;
    // Must have whitespace between concat elements.
    if (~(_src ? (POS(_ep) SPAN(' ' tab) @_ep))) { goto concat_done; }
    // Reject if next char is an operator, close-paren, EOL, or NL.
    if (_src ? (POS(_ep) (ANY('+-*/^!):=,|&@$.~?' nl) | RPOS(0)))) {
        _ep = ep1;
        goto concat_done;
    }
    next = Expr6(_src);
    if (~DIFFER(next)) { _ep = ep1; goto concat_done; }
    count = count + 1;
    arr[count] = next;
    goto concat_loop;
concat_done:
    if (IDENT(count, 1)) {
        Expr4 = first;
        return;
    }
    // Build E_SEQ with count children (up to 16; fold for more).
    if (IDENT(count, 2)) { Expr4 = Tree('E_SEQ', '', 2, arr[1], arr[2]); return; }
    if (IDENT(count, 3)) { Expr4 = Tree('E_SEQ', '', 3, arr[1], arr[2], arr[3]); return; }
    if (IDENT(count, 4)) { Expr4 = Tree('E_SEQ', '', 4, arr[1], arr[2], arr[3], arr[4]); return; }
    // Fold remaining into nested binary E_SEQ (left-assoc).
    Expr4 = Tree('E_SEQ', '', 2, arr[1], arr[2]);
    i = 3;
seq_fold:
    if (~(LE(i, count))) { return; }
    Expr4 = Tree('E_SEQ', '', 2, Expr4, arr[i]);
    i = i + 1;
    goto seq_fold;
}

// Expr3 — alternation `|` (n-ary, flat per oracle: `'a' | 'b' | 'c'`
// produces a single E_ALT with three children, not nested binary).
// Per s4-no.ebnf: `or ← cat ⋮ cat '|' or` — operator is right-recursive
// in BNF but the oracle flattens to n-ary. Operator is looser than
// concat (Expr4) and tighter than `?` and `&` (which we don't yet
// support). Whitespace around `|` is tolerated. (PARSER-SN-5)
function Expr3(dummy, first, next, ep0, count, arr, i) {
    first = Expr4(_src);
    if (~DIFFER(first)) { freturn; }
    count = 1;
    arr = ARRAY(16);
    arr[1] = first;
alt_loop:
    ep0 = _ep;
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    if (~(_src ? (POS(_ep) '|' @_ep))) { _ep = ep0; goto alt_done; }
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    next = Expr4(_src);
    if (~DIFFER(next)) { _ep = ep0; goto alt_done; }
    count = count + 1;
    arr[count] = next;
    goto alt_loop;
alt_done:
    if (IDENT(count, 1)) { Expr3 = first; return; }
    if (IDENT(count, 2)) { Expr3 = Tree('E_ALT', '', 2, arr[1], arr[2]); return; }
    if (IDENT(count, 3)) { Expr3 = Tree('E_ALT', '', 3, arr[1], arr[2], arr[3]); return; }
    if (IDENT(count, 4)) { Expr3 = Tree('E_ALT', '', 4, arr[1], arr[2], arr[3], arr[4]); return; }
    // Fold any remaining children into a left-leaning binary nest.
    Expr3 = Tree('E_ALT', '', 2, arr[1], arr[2]);
    i = 3;
alt_fold:
    if (~(LE(i, count))) { return; }
    Expr3 = Tree('E_ALT', '', 2, Expr3, arr[i]);
    i = i + 1;
    goto alt_fold;
}

// Expr — top-level entry point.
// PARSER-SN-5: route through Expr3 (alternation) — looser than concat.
function Expr(dummy, result) {
    result = Expr3(_src);
    Expr = result;
    return;
}

//-----------------------------------------------------------------------
// Statement-level tree builders.
//
// PARSER-SN-4: statements now have optional label prefix and optional
// goto suffix.  We build STMT children into a growable child list
// stored in global array _stmt_kids / _stmt_nkids, then commit with
// build_stmt_commit().
//
// Child ordering matches --dump-parse:
//   :lbl  (if labeled)
//   :eq   (if assignment)
//   :subj (subject expression, always present except bare goto)
//   :repl (replacement expression, if assignment)
//   :go / :goS / :goF  (goto slots, if present)
//   :end  (for END statement)
//-----------------------------------------------------------------------

// _stmt_kids — no ARRAY needed — Snocone doesn't support ARRAY().
// Use flat globals _c1.._c6 and count _nc.
// Reset at the start of each command parse.
function _stmt_reset(dummy) {
    _nc = 0; _c1 = ''; _c2 = ''; _c3 = ''; _c4 = ''; _c5 = ''; _c6 = '';
    _stmt_reset = .dummy;
    nreturn;
}

function _stmt_add(child, dummy) {
    _nc = _nc + 1;
    if (IDENT(_nc, 1)) { _c1 = child; _stmt_add = .dummy; nreturn; }
    if (IDENT(_nc, 2)) { _c2 = child; _stmt_add = .dummy; nreturn; }
    if (IDENT(_nc, 3)) { _c3 = child; _stmt_add = .dummy; nreturn; }
    if (IDENT(_nc, 4)) { _c4 = child; _stmt_add = .dummy; nreturn; }
    if (IDENT(_nc, 5)) { _c5 = child; _stmt_add = .dummy; nreturn; }
    _c6 = child;
    _stmt_add = .dummy;
    nreturn;
}

// build_stmt_commit() — push a STMT tree with exactly _nc children.
function build_stmt_commit(dummy, t) {
    if (IDENT(_nc, 0)) { Push(tree('STMT', '')); build_stmt_commit = .dummy; nreturn; }
    if (IDENT(_nc, 1)) { t = Tree('STMT', '', 1, _c1); goto cp; }
    if (IDENT(_nc, 2)) { t = Tree('STMT', '', 2, _c1, _c2); goto cp; }
    if (IDENT(_nc, 3)) { t = Tree('STMT', '', 3, _c1, _c2, _c3); goto cp; }
    if (IDENT(_nc, 4)) { t = Tree('STMT', '', 4, _c1, _c2, _c3, _c4); goto cp; }
    if (IDENT(_nc, 5)) { t = Tree('STMT', '', 5, _c1, _c2, _c3, _c4, _c5); goto cp; }
    t = Tree('STMT', '', 6, _c1, _c2, _c3, _c4, _c5, _c6);
cp: Push(t);
    build_stmt_commit = .dummy;
    nreturn;
}

function build_stmt_atom(kind, txt) {
    _stmt_add(Tree(':subj', '', 1, tree(kind, txt)));
    build_stmt_commit();
    build_stmt_atom = .dummy;
    nreturn;
}

function build_stmt_assign_expr(lhs, rhs_tree) {
    _stmt_add(tree(':eq', ''));
    _stmt_add(Tree(':subj', '', 1, tree('E_VAR', lhs)));
    _stmt_add(Tree(':repl', '', 1, rhs_tree));
    build_stmt_assign_expr = .dummy;
    nreturn;
}

function build_stmt_assign(lhs, rhs_kind, rhs_txt) {
    _stmt_add(tree(':eq', ''));
    _stmt_add(Tree(':subj', '', 1, tree('E_VAR', lhs)));
    _stmt_add(Tree(':repl', '', 1, tree(rhs_kind, rhs_txt)));
    build_stmt_assign = .dummy;
    nreturn;
}

function build_end() {
    Push(Tree('STMT', '', 2,
              Tree(':lbl', '', 1, tree('Name', 'END')),
              tree(':end', '')));
    build_end = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Goto suffix parser — _parse_goto(rest)
//
// `rest` is the portion of the line after the RHS expression (or after
// the label/body for bare-goto lines).  Parses zero or more of:
//   :S(TARGET)    :goS TARGET
//   :F(TARGET)    :goF TARGET
//   :(TARGET)     :go  TARGET
// and adds the appropriate child nodes to _stmt_kids via _stmt_add().
//
// TARGET is an identifier or $VAR (computed goto).
// Multiple goto slots (:S/:F) can appear on one line.
//-----------------------------------------------------------------------

function _parse_goto(rest, ep, target) {
    ep = 0;
    // Skip leading whitespace.
    rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
goto_loop:
    if (~(rest ? (POS(ep) ':' @ep))) { goto goto_done; }
    // :S( — success goto.
    if (rest ? (POS(ep) 'S(' @ep)) {
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        if (~(rest ? (POS(ep) _goto_target_pat . target @ep))) { goto goto_done; }
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) ')' @ep | POS(ep));
        _stmt_add(tree(':goS', target));
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        goto goto_loop;
    }
    // :F( — failure goto.
    if (rest ? (POS(ep) 'F(' @ep)) {
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        if (~(rest ? (POS(ep) _goto_target_pat . target @ep))) { goto goto_done; }
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) ')' @ep | POS(ep));
        _stmt_add(tree(':goF', target));
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        goto goto_loop;
    }
    // :( — unconditional goto.
    if (rest ? (POS(ep) '(' @ep)) {
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        if (~(rest ? (POS(ep) _goto_target_pat . target @ep))) { goto goto_done; }
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) ')' @ep | POS(ep));
        _stmt_add(tree(':go', target));
        rest ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        goto goto_loop;
    }
    // Unknown ':' prefix — stop.
goto_done:
    _parse_goto = .dummy;
    nreturn;
}

// _goto_target_pat — matches a goto target: $id (computed) or plain id.
// The caller uses `. target` to capture the matched text.
_goto_target_pat = ('$' Id | Id);

//-----------------------------------------------------------------------
// _parse_rhs_goto(lhs) — parse RHS expression then goto suffix.
//
// _rhs_line = everything after "lhs = " up to newline.
// Strategy: find the last ':' that starts a goto suffix (preceded by
// whitespace or at start) and split there.  Everything before is the
// RHS expression; everything from ':' onward is the goto suffix.
//
// Simpler heuristic: run Expr() against _rhs_line; after Expr()
// returns, _ep points past the expression.  The rest of _rhs_line
// from _ep is the goto suffix.  This works because Expr() stops at
// ':' (not a valid expression operator at this rung).
//-----------------------------------------------------------------------

function _parse_rhs_goto(lhs, rhs, rest) {
    _src = _rhs_line;
    _ep = 0;
    rhs = Expr(_src);
    if (DIFFER(rhs)) {
        build_stmt_assign_expr(lhs, rhs);
    }
    // Parse goto suffix from whatever remains in _rhs_line after _ep.
    _rhs_line ? (POS(_ep) REM . rest);
    _parse_goto(rest);
    build_stmt_commit();
    _parse_rhs_goto = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Atom captures.
//-----------------------------------------------------------------------

LhsAtom = (ws_opt Id . _lhs_id ws_opt);

BareAtom = ( ws_opt Id      . _atom_text ws_opt . *assign('_atom_kind', 'E_VAR')
           | ws_opt Integer  . _atom_text ws_opt . *assign('_atom_kind', 'E_ILIT')
           | ws_opt String   ws_opt . *assign('_atom_kind', 'E_QLIT')
                                    . *assign('_atom_text', _strbody)
           );

//-----------------------------------------------------------------------
// Command patterns.
//
// PARSER-SN-4: each command starts with an optional label prefix
// (identifier at column 0, i.e. NOT preceded by whitespace), and each
// non-End, non-BareGoto statement may end with goto suffixes.
//
// Statement forms:
//   LabeledEnd:  LABEL + END keyword → (STMT :lbl LABEL :end)
//   End:         bare END (no label) → (STMT :lbl END :end)
//   LabeledLine: LABEL + body        → label added to _stmt_kids, body parsed
//   Assign:      [LABEL] lhs = rhs [goto*]
//   AtomStmt:    [LABEL] atom [goto*]
//   BareGoto:    ws_opt :(TARGET)    → (STMT :go TARGET)
//
// Label detection: an identifier at position 0 of the line (no leading
// whitespace) that is followed by whitespace is a label.  We use
// TAB or spaces after the id as the signal.  The label is NOT consumed
// as part of the expression grammar.
//
// Implementation: parse the whole line into _cur_line before invoking
// Command alternatives.  Use BREAK(nl) to grab the line, then process
// label + body + goto in _parse_line_cmd().
//-----------------------------------------------------------------------

// _try_label() — if the current line starts with an identifier at col 0
// followed by whitespace, capture it into _cur_label and add a :lbl child.
// Returns TRUE (non-empty) if a label was found, NULSTR otherwise.
function _try_label(dummy, lbl) {
    _cur_label = '';
    if (~(_cur_line ? (POS(0) Id . lbl (SPAN(' ' tab) | ANY(nl))))) { _try_label = ''; return; }
    // Verify the label id is not the sole content followed by nothing
    // (that would be an atom statement, not a label).
    // A label is followed by whitespace then more content OR by EOL (labeled-only line).
    _cur_label = lbl;
    _stmt_add(Tree(':lbl', '', 1, tree('Name', lbl)));
    _try_label = lbl;
    return;
}

// _split_subj_pat(lhs) — given a parsed LHS expression, add the
// canonical `:subj`/`:pat` children to the current STMT builder.
//
// PARSER-SN-5 split rule (matches scrip --dump-parse oracle):
//
//   - top-level E_SEQ with N>=2 children → :subj is child 1, :pat
//     is child 2 (if N==2) or a fresh E_SEQ of children 2..N.
//   - any other shape (E_ALT, single atom, capture, primitive, arith
//     result, etc.) → :subj wraps the whole expression, no :pat.
//
// The wrapper convention follows tdump.sc: `:subj` and `:pat` are
// 1-child trees (`Tree(':subj', '', 1, child)`); the child renders
// inline if it's a small leaf, multiline otherwise.
function _split_subj_pat(lhs, k, n_kids, pat_seq, i) {
    n_kids = n(lhs);
    // Only an E_SEQ with at least 2 children gets split into
    // :subj + :pat. Everything else is :subj-only.
    if (~(IDENT(t(lhs), 'E_SEQ'))) {
        _stmt_add(Tree(':subj', '', 1, lhs));
        _split_subj_pat = .dummy;
        nreturn;
    }
    if (LT(n_kids, 2)) {
        _stmt_add(Tree(':subj', '', 1, lhs));
        _split_subj_pat = .dummy;
        nreturn;
    }
    _stmt_add(Tree(':subj', '', 1, c(lhs)[1]));
    if (IDENT(n_kids, 2)) {
        _stmt_add(Tree(':pat', '', 1, c(lhs)[2]));
        _split_subj_pat = .dummy;
        nreturn;
    }
    // N >= 3: rebuild a smaller E_SEQ from children 2..N. Tree() is
    // variadic up to 8 positional children — use Append for any extra.
    if (IDENT(n_kids, 3)) { pat_seq = Tree('E_SEQ', '', 2, c(lhs)[2], c(lhs)[3]); goto wrap; }
    if (IDENT(n_kids, 4)) { pat_seq = Tree('E_SEQ', '', 3, c(lhs)[2], c(lhs)[3], c(lhs)[4]); goto wrap; }
    if (IDENT(n_kids, 5)) { pat_seq = Tree('E_SEQ', '', 4, c(lhs)[2], c(lhs)[3], c(lhs)[4], c(lhs)[5]); goto wrap; }
    if (IDENT(n_kids, 6)) { pat_seq = Tree('E_SEQ', '', 5, c(lhs)[2], c(lhs)[3], c(lhs)[4], c(lhs)[5], c(lhs)[6]); goto wrap; }
    // N >= 7: build the first 5 then append the rest.
    pat_seq = Tree('E_SEQ', '', 5, c(lhs)[2], c(lhs)[3], c(lhs)[4], c(lhs)[5], c(lhs)[6]);
    i = 7;
seq_extend:
    if (~(LE(i, n_kids))) { goto wrap; }
    Append(pat_seq, c(lhs)[i]);
    i = i + 1;
    goto seq_extend;
wrap:
    _stmt_add(Tree(':pat', '', 1, pat_seq));
    _split_subj_pat = .dummy;
    nreturn;
}

// _parse_body_goto() — called after optional label is consumed.
// _cur_body is the portion of the line after the label (if any).
//
// PARSER-SN-5 strategy: parse the body as one expression (LHS); if the
// next non-whitespace char is `=`, parse the RHS as another expression;
// then split LHS into `:subj`/`:pat`, emit `:eq`/`:repl` if assignment,
// and run the goto-suffix parser on whatever remains.
//
// This unifies the AtomStmt / Assign / pattern-statement / pattern-
// replacement statement forms behind one expression-driven path.
//
// Special-cases handled before the expression parse:
//   - bare END (no label) → push canonical END STMT directly
//   - bare :(target) BareGoto → emit (STMT :go target)
function _parse_body_goto(dummy, ep, lhs, rhs, rest, tgt) {
    ep = 0;
    _cur_body ? (POS(0) (SPAN(' ' tab) | epsilon) @ep);
    // End keyword — special: if there's no label, bare END terminates the program.
    if (IDENT(_cur_label)) {
        if (_cur_body ? (POS(ep) 'END' (RPOS(0) | SPAN(' ' tab) RPOS(0)))) {
            _stmt_reset();
            Push(Tree('STMT', '', 2,
                      Tree(':lbl', '', 1, tree('Name', 'END')),
                      tree(':end', '')));
            _parse_body_goto = .dummy;
            nreturn;
        }
    }
    // BareGoto: :(target) with nothing else on the line.
    if (_cur_body ? (POS(ep) ':(' @ep)) {
        _cur_body ? (POS(ep) (SPAN(' ' tab) | epsilon) @ep);
        if (_cur_body ? (POS(ep) _goto_target_pat . tgt @ep)) {
            _cur_body ? (POS(ep) (SPAN(' ' tab) | epsilon) ')' @ep | POS(ep));
            _stmt_add(tree(':go', tgt));
            build_stmt_commit();
            _parse_body_goto = .dummy;
            nreturn;
        }
    }
    // Body-as-expression. Parse LHS via the full Expr ladder.
    _src = _cur_body;
    _ep = ep;
    lhs = Expr(_src);
    if (~DIFFER(lhs)) {
        // Empty / unparseable body — commit whatever children (if any) we
        // already added (e.g. just :lbl from a label-only line).
        build_stmt_commit();
        _parse_body_goto = .dummy;
        nreturn;
    }
    // After Expr, _ep points just past the last expression char. Skip ws
    // and check for `=` (statement-level assignment, not an Expr operator).
    _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
    if (_src ? (POS(_ep) '=' @_ep)) {
        _stmt_add(tree(':eq', ''));
        _split_subj_pat(lhs);
        _src ? (POS(_ep) (SPAN(' ' tab) | epsilon) @_ep);
        // RHS may be empty (deletion form: `S 'a' = `). Oracle always
        // emits `:repl (E_QLIT "")` in that case rather than omitting
        // the slot — keep parity.
        rhs = Expr(_src);
        if (DIFFER(rhs)) {
            _stmt_add(Tree(':repl', '', 1, rhs));
        } else {
            _stmt_add(Tree(':repl', '', 1, tree('E_QLIT', '')));
        }
        _src ? (POS(_ep) REM . rest);
        _parse_goto(rest);
        build_stmt_commit();
        _parse_body_goto = .dummy;
        nreturn;
    }
    // No `=` — pattern statement, atom statement, or arith statement.
    _split_subj_pat(lhs);
    _src ? (POS(_ep) REM . rest);
    _parse_goto(rest);
    build_stmt_commit();
    _parse_body_goto = .dummy;
    nreturn;
}

// _parse_line_cmd() — top-level per-line command dispatcher.
// _cur_line = full source line (without trailing newline).
function _parse_line_cmd(dummy, after_lbl) {
    _stmt_reset();
    _try_label();
    // After label (if any), _cur_label holds the label text ('' if none).
    // Body is the remainder after the label + its whitespace.
    if (DIFFER(_cur_label)) {
        // Strip label + following whitespace from _cur_line to get body.
        _cur_line ? (POS(SIZE(_cur_label)) (SPAN(' ' tab) | epsilon) @after_lbl);
        _cur_line ? (POS(after_lbl) REM . _cur_body);
    } else {
        _cur_body = _cur_line;
    }
    _parse_body_goto();
    _parse_line_cmd = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Compiland — rebuilt for PARSER-SN-4.
//
// Each ARBNO iteration: capture the full line into _cur_line (via
// BREAK(nl)), call _parse_line_cmd(), consume the newline.
// The deferred *_parse_line_cmd() fires the whole per-line parser.
//-----------------------------------------------------------------------

// LineCmd — inline pattern that captures the line and fires _parse_line_cmd.
// Must be inlined (not *LineCmd) in ARBNO to avoid the FW-3 deferred-call bug.
// The deferred call fires correctly when the pattern is referenced by name
// without '*' indirection inside ARBNO.
LineCmd = (BREAK(nl) . _cur_line epsilon . *_parse_line_cmd());

Compiland = nPush()
            ARBNO( nInc() LineCmd nl_one )
            reduce("'Parse'", 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver — read whole stdin into Src, single Compiland match, emit
// each STMT child via TDump (one OUTPUT line per statement).
//-----------------------------------------------------------------------

InitCounter();
InitStack();

Src = '';
read_loop:
if (~(Line = INPUT)) { goto read_done; }
Src = Src Line nl;
goto read_loop;
read_done:

if (~(Src ? Compiland)) { goto mainErr; }

ptree = Pop();
if (~DIFFER(ptree)) { goto mainErr; }

i = 1;
n_kids = n(ptree);
emit_loop:
if (~(LE(i, n_kids))) { goto mainEnd; }
TDump(c(ptree)[i]);
i = i + 1;
goto emit_loop;

mainErr:
OUTPUT = 'Parse Error';
goto mainEnd;

mainEnd:
_parser_sn_done = '';
