// parser_snocone.sc — PARSER-SC: Snocone frontend in Snocone (PARSER-SC-0).
//
// Reads a Snocone source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build a Snocone tree on the shared stack via
// Shift/Reduce, then dumps each tree via TDump.  The dumped form must be
// byte-identical to scrip's existing-frontend `--dump-ir` output —
// that's the PARSER-SC gate verification.
//
// This file follows the shape of parser_snobol4.sc (the template for all
// six PARSER-* frontends).  The driver loop and build helpers are
// identical; only the per-language atom recognizers differ (Snocone uses
// C-style syntax: optional trailing `;`, double-quoted or single-quoted
// strings, identifiers, integers).
//
// Rung PARSER-SC-0: bare atom-as-statement only.
//   atom_id.sc  → (STMT :subj (E_VAR x))
//   atom_int.sc → (STMT :subj (E_ILIT 42))
//   atom_str.sc → (STMT :subj (E_QLIT "hello"))
//
// Sibling LANG rungs: SC-0 (lexer), SC-1 (atom).
// The existing src/frontend/snocone/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Atom recognizers — Snocone surface syntax.
//-----------------------------------------------------------------------

// Whitespace.
ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Identifier — letter or underscore then letters/digits/underscore/dot.
id_first = ANY(&UCASE &LCASE '_');
id_rest  = SPAN(digits &UCASE &LCASE '_.');
id_pat   = (id_first (id_rest | epsilon));

// Integer — one-or-more decimal digits.
int_pat  = SPAN(digits);

// String — double-quoted or single-quoted; no embedded escape at this rung.
// Capture of the body (between delimiters) goes into _atom_strbody.
dstr_pat = ('"'  BREAK('"')  . _atom_strbody '"');
sstr_pat = ("'"  BREAK("'")  . _atom_strbody "'");
str_pat  = (dstr_pat | sstr_pat);

// Optional trailing semicolon (Snocone statements may end with ';').
semi_opt = (';' | epsilon);

//-----------------------------------------------------------------------
// Tree-building helpers — push one STMT tree onto the shared stack.
//
// build_stmt_atom(kind, txt):
//   push tree('STMT', '', 1, tree(':subj', '', 1, tree(kind, txt)))
// Returns .dummy per RULES.md NRETURN convention.
//-----------------------------------------------------------------------

function build_stmt_atom(kind, txt) {
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, tree(kind, txt))));
    build_stmt_atom = .dummy;
    nreturn;
}

function build_stmt_assign(lhs, rhs_kind, rhs_txt) {
    // (STMT :eq :subj (E_VAR lhs) :repl (rhs_kind rhs_txt))
    Push(Tree('STMT', '', 3,
              tree(':eq', ''),
              Tree(':subj', '', 1, tree('E_VAR', lhs)),
              Tree(':repl', '', 1, tree(rhs_kind, rhs_txt))));
    build_stmt_assign = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// BareAtom — matches one atom and captures kind + text.
//   id   → _atom_kind='E_VAR',  _atom_text=<identifier>
//   int  → _atom_kind='E_ILIT', _atom_text=<digits>
//   str  → _atom_kind='E_QLIT', _atom_text=<body without delimiters>
// (str must come BEFORE id/int in the alternation to avoid int_pat /
//  id_pat consuming a leading digit of a numeric string in a hypothetical
//  edge — at rung 0 str has explicit delimiters so order is safe either way,
//  but explicit leading-delimiter matching means str must come before id to
//  avoid id_pat consuming a bare `"` as the first char.)
//-----------------------------------------------------------------------

BareAtom = ( str_pat
               . *assign('_atom_kind', 'E_QLIT')
               . *assign('_atom_text', _atom_strbody)
           | int_pat . _atom_text
               . *assign('_atom_kind', 'E_ILIT')
           | id_pat  . _atom_text
               . *assign('_atom_kind', 'E_VAR')
           );

// LhsAtom — identifier used as assignment target.
LhsAtom = ( id_pat . _lhs_id );

// RhsAtom — id / int / str on the right side of `=`.
// Captures kind tag into rhs_kind, surface text into rhs_text.
RhsAtom = ( str_pat
              . *assign('rhs_kind', 'E_QLIT')
              . *assign('rhs_text', _atom_strbody)
          | int_pat . rhs_text
              . *assign('rhs_kind', 'E_ILIT')
          | id_pat  . rhs_text
              . *assign('rhs_kind', 'E_VAR')
          );

//-----------------------------------------------------------------------
// Statement forms — PARSER-SC-1 adds Assign.
// Order matters: Assign tried before AtomStmt so the LHS id is not
// greedily consumed as a bare atom, leaving `= rhs` unmatched.
//-----------------------------------------------------------------------

// AtomStmt — bare atom as statement.
AtomStmt = ( POS(0) ws_opt BareAtom ws_opt semi_opt ws_opt RPOS(0)
             epsilon . *build_stmt_atom(_atom_kind, _atom_text)
           );

// Assign — `lhs = rhs` with optional trailing semicolon.
Assign = ( POS(0) ws_opt LhsAtom ws_opt '=' ws_opt RhsAtom
           ws_opt semi_opt ws_opt RPOS(0)
           epsilon . *build_stmt_assign(_lhs_id, rhs_kind, rhs_text)
         );

//-----------------------------------------------------------------------
// Driver loop — read lines from stdin, match AtomStmt against each,
// pop and TDump the resulting tree.  Blank lines are skipped silently.
// Parse errors emit a diagnostic and continue (consistent with
// parser_snobol4.sc's mainErr label behaviour).
//
// At PARSER-SC-0 the grammar covers atom-as-statement only.  Subsequent
// rungs extend `Command` with Assign, control-flow, etc. following the
// pattern in GOAL-PARSER-SNOCONE.md.
//-----------------------------------------------------------------------

main00:
if (~(Line = INPUT)) { goto mainEnd; }
// Skip blank / whitespace-only lines.
if (Line ? (POS(0) ws_opt RPOS(0))) { goto main00; }
// Match against the current rung grammar (Assign tried first — see ordering note above).
if (~(Line ? (Assign | AtomStmt))) { goto mainErr; }
// One STMT tree on the stack per successful match — pop and dump.
sno = Pop();
if (~DIFFER(sno)) { goto mainErr; }
TDump(sno);
goto main00;

mainErr:
OUTPUT = 'Parse Error: ' Line;
goto main00;

mainEnd:
_parser_sc_done = '';
