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
// Rung PARSER-IC-1 (CURRENT): atom-as-body OR `:=` assignment, one or
// more body statements per procedure.  Trailing `;` permitted.
// Rung PARSER-IC-0 covered by the same code: a single atom body with
// no semicolon falls through Assign and matches BodyAtom.
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

// Append an Icon assignment body statement to the current procedure.
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
// Atom in expression context.  Sets _atom_kind / _atom_text.
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
if (Line ? ProcEnd)    { goto stmtEnd; }
if (Line ? AssignLine) { goto main00; }
if (Line ? AtomLine)   { goto main00; }
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
