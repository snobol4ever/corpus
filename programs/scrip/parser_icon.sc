// parser_icon.sc — PARSER-IC: Icon frontend in Snocone.
//
// Reads an Icon source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build an Icon IR tree on the shared stack via
// Shift/Reduce, then dumps each tree via TDump.  After whitespace
// normalization the dumped form is byte-identical to scrip's existing
// Icon-frontend `--dump-ir` output — that's the PARSER-IC gate.
//
// This file follows the shape of parser_snobol4.sc / parser_snocone.sc
// (the template for all six PARSER-* frontends).
//
// Rung PARSER-IC-2 (CURRENT): write(expr) calls and + - * / operators.
// Rung PARSER-IC-1: `:=` assignment.
// Rung PARSER-IC-0: atom body only.
//
// Tree shape (matches scrip's Icon `--dump-ir` after whitespace normalization):
//   atom body:    (STMT :subj (E_FNC main (E_VAR main) (<kind> <text>)))
//   assign body:  (STMT :subj (E_FNC main (E_VAR main)
//                                (E_ASSIGN (E_VAR <lhs>) (<rhs-kind> <rhs-text>))
//                                ...))
//   The E_FNC accumulates any number of body-statement children.
//
// Sibling LANG rungs: IC-1..IC-4 (lexer, atom, assign).
// The existing src/frontend/icon/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Atom recognizers — Icon surface syntax.
//-----------------------------------------------------------------------

ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Identifier — letter or underscore then letters/digits/underscore.
id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_');
id_pat   = (id_first (id_rest | epsilon));

// Integer.
int_pat  = SPAN(digits);

// Double-quoted string.  Capture body in _atom_strbody.
dstr_pat = ('"' BREAK('"') . _atom_strbody '"');
str_pat  = dstr_pat;

// Optional trailing semicolon (Icon body statements may end with ';').
semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// Tree-building helpers — build per-statement subtrees and append them
// to the current procedure's accumulating E_FNC node held in _proc_node.
//-----------------------------------------------------------------------

// Append a bare-atom body statement to the current procedure.
function emit_body_atom(kind, txt) {
    _proc_node = Append(_proc_node, tree(kind, txt));
    emit_body_atom = .dummy;
    nreturn;
}

// Append a write(expr) body statement to the current procedure.
function emit_body_write(expr_node) {
    _proc_node = Append(_proc_node,
                        Tree('E_FNC', '', 2,
                             tree('E_VAR', 'write'),
                             expr_node));
    emit_body_write = .dummy;
    nreturn;
}

// Append an Icon assignment body statement using an expr node on rhs.
function emit_body_assign_expr(lhs, expr_node) {
    _proc_node = Append(_proc_node,
                        Tree('E_ASSIGN', '', 2,
                             tree('E_VAR', lhs),
                             expr_node));
    emit_body_assign_expr = .dummy;
    nreturn;
}


// Append an Icon assignment body statement (atom rhs, legacy).
function emit_body_assign(lhs, rhs_kind, rhs_txt) {
    _proc_node = Append(_proc_node,
                        Tree('E_ASSIGN', '', 2,
                             tree('E_VAR', lhs),
                             tree(rhs_kind, rhs_txt)));
    emit_body_assign = .dummy;
    nreturn;
}

// Reset the per-procedure accumulator to (E_FNC main (E_VAR main)).
function start_proc_main() {
    _proc_node = Tree('E_FNC', 'main', 1, tree('E_VAR', 'main'));
    start_proc_main = .dummy;
    nreturn;
}

// Push the assembled (STMT :subj <_proc_node>) onto the shared stack.
function finish_proc_main() {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, _proc_node)));
    finish_proc_main = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Expression recognizers — sets _expr_node to a tree node.
// IC-2 scope: atom OR (atom op atom) where op = + - * /
//-----------------------------------------------------------------------

// Build a leaf tree node from _atom_kind/_atom_text.
function expr_from_atom(kind, txt) {
    _expr_node = tree(kind, txt);
    expr_from_atom = .dummy;
    nreturn;
}

// Build a binary-op tree node from _lop_node, _binop, _rop_node.
function expr_binop(lop, op, rop) {
    _expr_node = Tree(op, '', 2, lop, rop);
    expr_binop = .dummy;
    nreturn;
}

// Atom pattern — captures kind+text then builds _atom_node.
AtomPat = ( str_pat
              . *assign('_atom_kind', 'E_QLIT')
              . *assign('_atom_text', _atom_strbody)
          | int_pat . _atom_text
              . *assign('_atom_kind', 'E_ILIT')
          | id_pat  . _atom_text
              . *assign('_atom_kind', 'E_VAR')
          )
          epsilon . *expr_from_atom(_atom_kind, _atom_text);

// Binary operator keyword — sets _binop_tag.
BinOpPat = ( '+' . *assign('_binop_tag', 'E_ADD')
           | '-' . *assign('_binop_tag', 'E_SUB')
           | '*' . *assign('_binop_tag', 'E_MUL')
           | '/' . *assign('_binop_tag', 'E_DIV')
           );

// ExprPat — tries BinOp(atom op atom) first, falls back to atom.
// Sets _expr_node.
ExprPat = ( AtomPat
            epsilon . *assign('_lop_save', _expr_node)
            ws_opt BinOpPat ws_opt
            AtomPat
            epsilon . *expr_binop(_lop_save, _binop_tag, _expr_node)
          | AtomPat
          );

//-----------------------------------------------------------------------
// Atom in expression context (legacy name used by AssignLine/AtomLine).
// Sets _atom_kind / _atom_text.
//-----------------------------------------------------------------------

BodyAtom = ( str_pat
               . *assign('_atom_kind', 'E_QLIT')
               . *assign('_atom_text', _atom_strbody)
           | int_pat . _atom_text
               . *assign('_atom_kind', 'E_ILIT')
           | id_pat  . _atom_text
               . *assign('_atom_kind', 'E_VAR')
           );

// LhsAtom — identifier used as assignment target (captures _lhs_id).
LhsAtom = ( id_pat . _lhs_id );

// RhsAtom — id / int / str on the right side of `:=`.
RhsAtom = ( str_pat
              . *assign('_rhs_kind', 'E_QLIT')
              . *assign('_rhs_text', _atom_strbody)
          | int_pat . _rhs_text
              . *assign('_rhs_kind', 'E_ILIT')
          | id_pat  . _rhs_text
              . *assign('_rhs_kind', 'E_VAR')
          );

//-----------------------------------------------------------------------
// Per-line patterns.  Each anchors POS(0)..RPOS(0) so a body line
// matches exactly one statement form.  Assign tried before Atom so
// the lhs id isn't greedily consumed as a bare atom.
//-----------------------------------------------------------------------

AssignLine = ( POS(0) ws_opt LhsAtom ws_opt ':=' ws_opt RhsAtom
               ws_opt semi_opt ws_opt RPOS(0)
               epsilon . *emit_body_assign(_lhs_id, _rhs_kind, _rhs_text)
             );

// AssignExprLine — lhs := ExprPat (covers atom and BinOp rhs).
AssignExprLine = ( POS(0) ws_opt LhsAtom ws_opt ':=' ws_opt ExprPat
                   ws_opt semi_opt ws_opt RPOS(0)
                   epsilon . *emit_body_assign_expr(_lhs_id, _expr_node)
                 );

// WriteLine — write(ExprPat).
WriteLine = ( POS(0) ws_opt 'write' ws_opt '(' ws_opt ExprPat ws_opt ')'
              ws_opt semi_opt ws_opt RPOS(0)
              epsilon . *emit_body_write(_expr_node)
            );

AtomLine = ( POS(0) ws_opt BodyAtom ws_opt semi_opt ws_opt RPOS(0)
             epsilon . *emit_body_atom(_atom_kind, _atom_text)
           );

// Header: `procedure main()` with optional surrounding whitespace.
// Side-effect: reset accumulator via *start_proc_main().
ProcHeader = ( POS(0) ws_opt 'procedure' ws_run 'main' ws_opt
               '(' ws_opt ')' ws_opt RPOS(0)
               epsilon . *start_proc_main()
             );

// End: literal `end' with optional surrounding whitespace.
// Side-effect: push assembled tree via *finish_proc_main().
ProcEnd    = ( POS(0) ws_opt 'end' ws_opt RPOS(0)
               epsilon . *finish_proc_main()
             );

//-----------------------------------------------------------------------
// Driver loop — line-at-a-time:
//   state 0: expect ProcHeader  (→ state 1)
//   state 1: expect ProcEnd OR a body line; body lines stay in state 1.
// Blank lines and `# ...` comments are skipped silently in any state.
//-----------------------------------------------------------------------

_proc_state = 0;

main00:
if (~(Line = INPUT)) { goto mainEnd; }

if (Line ? (POS(0) ws_opt RPOS(0))) { goto main00; }
if (Line ? (POS(0) ws_opt '#'))     { goto main00; }

if (IDENT(_proc_state, 0)) { goto stateHeader; }
if (IDENT(_proc_state, 1)) { goto stateBody; }
goto mainErr;

stateHeader:
if (~(Line ? ProcHeader)) { goto mainErr; }
_proc_state = 1;
goto main00;

stateBody:
if (Line ? ProcEnd)        { goto stmtEnd; }
if (Line ? WriteLine)      { goto main00; }
if (Line ? AssignExprLine) { goto main00; }
if (Line ? AssignLine)     { goto main00; }
if (Line ? AtomLine)       { goto main00; }
goto mainErr;

stmtEnd:
icn = Pop();
if (~DIFFER(icn)) { goto mainErr; }
TDump(icn);
_proc_state = 0;
goto main00;

mainErr:
OUTPUT = 'Parse Error: ' Line;
_proc_state = 0;
goto main00;

mainEnd:
_parser_ic_done = '';
