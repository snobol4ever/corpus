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
// producing one line per statement — byte-identical to scrip's
// existing-frontend `--dump-parse` output.
//
// This file is the **template** for all six PARSER-* frontends.
// The driver loop and Compiland spine are identical across all six;
// only the per-language atom recognizers and Command body differ.
// PARSER-SC, PARSER-RB, PARSER-RK, PARSER-IC, PARSER-PR can copy this
// shape and replace the language-specific rules.
//
// Sibling LANG rungs: SN-1 (basic lexer), SN-2 (atom recognition).
// The existing src/frontend/snobol4/ remains the read-only oracle.
//
// Architecture note — Command body inlined into Compiland.
// beauty.sc:133 writes `ARBNO(*Command)` with `*Command` indirection;
// we inline the Command body directly inside ARBNO instead.  This is
// a dodge for a real scrip-Snocone runtime bug: when a pattern Q
// contains a deferred call like `epsilon . *fn()` and is referenced
// via `*Q` indirection inside `ARBNO(*Q)`, the deferred calls inside
// Q never fire (probe in 2026-05-03 session: `ARBNO(Q)` fires `fn()`
// twice on a 2-char input, `ARBNO(*Q)` fires `fn()` zero times).
// Documented as the FW-3 underlying root cause — supersedes the
// previous nInc-blame in earlier session notes.  The structural shape
// of Compiland is preserved — only the lexical placement of the
// Command alternatives changes.  All five sibling sessions inherit
// the same workaround.

//-----------------------------------------------------------------------
// Atom recognizers — single-character and multi-character primitives.
//-----------------------------------------------------------------------

// Whitespace + line break.
ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);
nl_one = ANY(nl);

// Identifier — letter then letters/digits/dot/underscore.
id_first = ANY(&UCASE &LCASE);
id_rest  = SPAN(digits &UCASE &LCASE '_.');
id_pat   = (id_first (id_rest | epsilon));

// Integer — one-or-more digits.  Signed forms reserved for PARSER-SN-3.
int_pat  = SPAN(digits);

// String — single or double quoted; no embedded escape handling at
// this rung (atom-level fixtures don't need them).  The body capture
// `_atom_strbody` is consumed by the trailing *assign() deferred call.
sstr_pat = ("'" BREAK("'") . _atom_strbody "'");
dstr_pat = ('"' BREAK('"') . _atom_strbody '"');
str_pat  = (sstr_pat | dstr_pat);

//-----------------------------------------------------------------------
// Tree-building helpers.
//
// Each helper pushes a fully-formed STMT tree onto the shared stack.
// They're called from match-time deferred actions in the Compiland
// Command alternatives.  Per RULES.md NRETURN convention, each helper
// assigns its result to its own name and uses `nreturn` so that
// `epsilon . *helper(...)` succeeds as a pattern element with the
// name's value bound but the side effect (the Push) firing.
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
// At PARSER-SN-FW-3 the Command alternatives are:
//   - End     : the literal END keyword
//   - Assign  : `lhs = rhs`
//   - AtomStmt: bare atom
//
// Order matters: End first (literal match), Assign next (would
// otherwise conflict with AtomStmt's LHS-id eating the LHS), AtomStmt
// last.
//-----------------------------------------------------------------------

End = ('END' epsilon . *build_end());

AtomStmt = ( BareAtom epsilon . *build_stmt_atom(_atom_kind, _atom_text) );

Assign = ( LhsAtom ws_opt '=' ws_opt RhsAtom
           epsilon . *build_stmt_assign(_lhs_id, rhs_kind, rhs_text)
         );

//-----------------------------------------------------------------------
// Compiland — the canonical spine.
//
// nPush() opens a fresh counter frame; ARBNO(...) consumes statements
// one at a time, each iteration calling nInc() so the counter records
// the child count; reduce("'Parse'", 'nTop()') pops nTop() trees off
// the stack and pushes a Parse tree wrapping them; nPop() closes the
// counter frame.  The single resulting Parse tree on the stack carries
// every STMT as a child.
//
// The Command body (End | Assign | AtomStmt) is inlined directly into
// ARBNO(...) rather than referenced as `*Command` — see top-of-file
// architecture note for the runtime-bug rationale.  Structurally
// equivalent; lexically distinct.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( nInc() ws_opt (End | Assign | AtomStmt) ws_opt nl_one )
            reduce("'Parse'", 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver loop — read whole stdin into Src, then run Src ? Compiland
// once.  Pop the resulting Parse tree, render each STMT child via
// TDump as one line.  This produces output byte-identical to
// scrip's existing-frontend `--dump-parse` mode.
//
// The "read into buffer then single-match" idiom is the canonical
// frontend-driver shape from beauty.sc main00/main02.  All six
// PARSER-* sessions inherit it.
//-----------------------------------------------------------------------

// Initialize the counter & stack subsystems (per beauty/main.sc startup).
InitCounter();
InitStack();

// Accumulate full source into Src buffer.
Src = '';
read_loop:
if (~(Line = INPUT)) { goto read_done; }
Src = Src Line nl;
goto read_loop;
read_done:

// Single Compiland match against the full source.
if (~(Src ? Compiland)) { goto mainErr; }

// Pop the Parse tree and emit one line per STMT child.
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
