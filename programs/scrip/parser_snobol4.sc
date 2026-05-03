// parser_snobol4.sc — PARSER-SN: SNOBOL4 frontend in Snocone.
//
// Reads a SNOBOL4 source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build a Snocone tree on the shared stack via
// Shift/Reduce, then dumps the tree via TDump.  The dumped form is
// byte-identical to scrip's existing-frontend `--dump-parse` output —
// that's how the PARSER-SN gate verifies agreement.
//
// This file is the **template** for all six PARSER-* frontends.
// The driver loop and Compiland spine are identical across all six;
// only the per-language atom recognizers and Command body differ.
// PARSER-SC, PARSER-RB, PARSER-RK, PARSER-IC, PARSER-PR can copy this
// shape and replace the language-specific rules.
//
// Tree-on-stack vs print-direct: this driver builds genuine Snocone
// trees via Shift/Reduce/Push/Pop; the role-slot/flag wrapper convention
// (type tags starting with ':') is handled by the shared tdump.sc
// extension landed in PARSER-SN-2.  No language-specific dumper.
//
// Sibling LANG rungs: SN-1 (basic lexer), SN-2 (atom recognition).
// The existing src/frontend/snobol4/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Atom recognizers — single-character and multi-character primitives.
//-----------------------------------------------------------------------

// Whitespace.
ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Identifier — letter then letters/digits/dot/underscore.
id_first = ANY(&UCASE &LCASE);
id_rest  = SPAN(digits &UCASE &LCASE '_.');
id_pat   = (id_first (id_rest | epsilon));

// Integer — one-or-more digits.  Signed forms reserved for PARSER-SN-2.
int_pat  = SPAN(digits);

// String — single or double quoted; no embedded escape handling at
// this rung (atom-level fixtures don't need them).  The body capture
// `_atom_strbody` is consumed by the *Shift_qlit deferred call below.
sstr_pat = ("'" BREAK("'") . _atom_strbody "'");
dstr_pat = ('"' BREAK('"') . _atom_strbody '"');
str_pat  = (sstr_pat | dstr_pat);

//-----------------------------------------------------------------------
// Tree-building helpers.
//
// build_stmt_atom(kind_var, txt_var) — pop nothing, push:
//   tree('STMT', '', 1, tree(':subj', '', 1, tree(<kind>, <txt>)))
// where <kind> is read from the named var (E_VAR / E_ILIT / E_QLIT).
//
// These helpers are called from match-time deferred actions in the
// Compiland Command body.  They return .dummy per RULES.md NRETURN.
//-----------------------------------------------------------------------

function build_stmt_atom(kind, txt) {
    // (STMT :subj (kind txt)) — atom statement.
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

function build_end() {
    // (STMT :lbl END :end) — end-of-program marker.
    // :lbl wraps a Name leaf with v='END'.  :end is a 0-child flag.
    Push(Tree('STMT', '', 2,
              Tree(':lbl', '', 1, tree('Name', 'END')),
              tree(':end', '')));
    build_end = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Atom-fragment captures.  RhsAtom matches one atom and stores both
// the atom's IR-kind tag (E_VAR / E_ILIT / E_QLIT) and surface text
// into named slots, using the INFRA-4 `assign()` helper.  This is the
// PARSER-SN idiom for capturing a polymorphic sub-expression for
// composite-statement construction.
//-----------------------------------------------------------------------

// Lhs atom — always an identifier at this rung.
LhsAtom = ( id_pat . _lhs_id );

// Rhs atom — id / int / str.  Captures kind + text into rhs_kind/rhs_text.
RhsAtom = ( id_pat  . rhs_text . *assign('rhs_kind', 'E_VAR')
          | int_pat . rhs_text . *assign('rhs_kind', 'E_ILIT')
          | str_pat             . *assign('rhs_kind', 'E_QLIT')
                                . *assign('rhs_text', _atom_strbody)
          );

// Bare atom — for atom-as-statement.  Captures into a single slot pair.
BareAtom = ( id_pat  . _atom_text
             . *assign('_atom_kind', 'E_VAR')
           | int_pat . _atom_text
             . *assign('_atom_kind', 'E_ILIT')
           | str_pat
             . *assign('_atom_kind', 'E_QLIT')
             . *assign('_atom_text', _atom_strbody)
           );

//-----------------------------------------------------------------------
// Command bodies — one per statement form.  Each is a pattern with a
// trailing deferred call that pushes the constructed STMT tree.
//
// At PARSER-SN-1 the Command alternatives are:
//   - Assign  : `lhs = rhs`
//   - AtomStmt: bare atom
//   - End     : the literal END keyword
//
// Order matters in Stmt: End first (literal match), Assign next (would
// otherwise conflict with AtomStmt's LHS-id eating the LHS), AtomStmt
// last.
//-----------------------------------------------------------------------

End = ('END' epsilon . *build_end());

AtomStmt = ( BareAtom epsilon . *build_stmt_atom(_atom_kind, _atom_text) );

Assign = ( LhsAtom ws_opt '=' ws_opt RhsAtom
           epsilon . *build_stmt_assign(_lhs_id, rhs_kind, rhs_text)
         );

// Stmt — one whole input line, anchored.
Stmt = (POS(0) ws_opt (End | Assign | AtomStmt) ws_opt RPOS(0));

//-----------------------------------------------------------------------
// Driver loop — read lines from stdin, match Stmt against each, then
// pop and dump the resulting tree.  Each successful Stmt match pushes
// exactly one tree onto the stack; the driver pops it and TDumps it.
//
// This is the per-line-driver pattern.  A future rung may switch to
// the canonical `Compiland = nPush() ARBNO(*Command) reduce('Parse',
// 'nTop()') nPop()` whole-program form (matching beauty.sc:133), at
// which point all programs would read into one buffer and parse as a
// single match.  For now, line-by-line keeps the gate's per-line
// output structure, matching --dump-parse's per-statement output.
//-----------------------------------------------------------------------

main00:
if (~(Line = INPUT)) { goto mainEnd; }
// Skip blank/whitespace-only lines.
if (Line ? (POS(0) ws_opt RPOS(0))) { goto main00; }
// Match against the rung grammar.
if (~(Line ? Stmt)) { goto mainErr; }
// One STMT tree on the stack per successful match — pop and dump.
sno = Pop();
if (~DIFFER(sno)) { goto mainErr; }
TDump(sno);
goto main00;

mainErr:
OUTPUT = 'Parse Error: ' Line;
goto main00;

mainEnd:
_parser_sn_done = '';
