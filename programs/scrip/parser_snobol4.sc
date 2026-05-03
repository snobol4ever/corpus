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

// Expr17 — atoms: parenthesized subexpr, integer literal, string, identifier.
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

// Expr11 — exponentiation: **, ^, ! (right-associative per snobol4.y).
// beauty.sno: *Expr12 FENCE(($'^' | $'!' | $'**') *Expr11 ("'^'" & 2) | epsilon)
function Expr11(dummy, left, right, ep0) {
    left = Expr14(_src);
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

// Expr — top-level entry point.
// Passes through to Expr4 for PARSER-SN-3; upper levels (scan, alternation,
// cond-assign) added in later rungs.
function Expr(dummy, result) {
    result = Expr4(_src);
    Expr = result;
    return;
}

//-----------------------------------------------------------------------
// Statement-level tree builders.
//-----------------------------------------------------------------------

function build_stmt_atom(kind, txt) {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, tree(kind, txt))));
    build_stmt_atom = .dummy;
    nreturn;
}

function build_stmt_assign_expr(lhs, rhs_tree) {
    Push(Tree('STMT', '', 3,
              tree(':eq', ''),
              Tree(':subj', '', 1, tree('E_VAR', lhs)),
              Tree(':repl', '', 1, rhs_tree)));
    build_stmt_assign_expr = .dummy;
    nreturn;
}

function build_stmt_assign(lhs, rhs_kind, rhs_txt) {
    Push(Tree('STMT', '', 3,
              tree(':eq', ''),
              Tree(':subj', '', 1, tree('E_VAR', lhs)),
              Tree(':repl', '', 1, tree(rhs_kind, rhs_txt))));
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
// _parse_rhs(lhs) — parse the RHS expression of an assignment.
// Called from the Assign command after consuming "lhs ws_opt = ws_opt".
// _rhs_line holds the portion of the current source line starting at
// the RHS (set in Assign command before calling this helper).
// Calls build_stmt_assign_expr to push the completed STMT tree.
//-----------------------------------------------------------------------

function _parse_rhs(lhs, rhs) {
    _src = _rhs_line;
    _ep = 0;
    rhs = Expr(_src);
    if (DIFFER(rhs)) {
        build_stmt_assign_expr(lhs, rhs);
    }
    _parse_rhs = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Atom captures for simple bare-atom statements and atom-only assigns.
//-----------------------------------------------------------------------

LhsAtom = (ws_opt Id . _lhs_id ws_opt);

BareAtom = ( ws_opt Id      . _atom_text ws_opt . *assign('_atom_kind', 'E_VAR')
           | ws_opt Integer  . _atom_text ws_opt . *assign('_atom_kind', 'E_ILIT')
           | ws_opt String   ws_opt . *assign('_atom_kind', 'E_QLIT')
                                    . *assign('_atom_text', _strbody)
           );

//-----------------------------------------------------------------------
// Command patterns.  Inlined into Compiland (not *Command) — see FW-3.
//
// Assign now routes through _parse_rhs() for full expression support.
// The trick: after matching "lhs = ", capture the rest of the line
// (up to the trailing newline) into _rhs_line, then call _parse_rhs.
// This avoids threading a multi-argument RHS parse through the ARBNO
// iteration state.
//-----------------------------------------------------------------------

End      = (ws_opt 'END' ws_opt epsilon . *build_end());

// Assign: capture lhs and RHS line, call full expression parser.
// BREAK(nl) captures everything after '=' up to the newline.
Assign   = ( ws_opt Id . _lhs_id ws_opt '=' ws_opt
             BREAK(nl) . _rhs_line
             epsilon . *_parse_rhs(_lhs_id)
           );

AtomStmt = ( BareAtom epsilon . *build_stmt_atom(_atom_kind, _atom_text) );

//-----------------------------------------------------------------------
// Compiland — canonical spine (Command body inlined in ARBNO).
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( nInc() ws_opt (End | Assign | AtomStmt) ws_opt nl_one )
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
