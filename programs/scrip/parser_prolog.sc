// parser_prolog.sc — PARSER-PR: Prolog frontend in Snocone.
//
// Reads a Prolog source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build a Prolog IR tree on the shared stack via
// Shift/Reduce, then dumps each tree via TDump.  After whitespace
// normalization the dumped form is byte-identical to scrip's existing
// Prolog-frontend `--dump-ir` output — that's the PARSER-PR gate.
//
// Naming policy (per RULES.md "Snocone parser style — names track the
// existing frontend"):
//   token classifiers   — mirror src/frontend/prolog/prolog_lex.h TK_*
//                         (lowercased: tk_atom, tk_var, tk_int, tk_string,
//                         tk_dot)
//   non-terminals       — mirror src/frontend/prolog/prolog_parse.c
//                         (clause, term, primary)
//   IR node tags        — mirror src/frontend/prolog/prolog_lower.c::expr_dump
//                         (E_CHOICE, E_CLAUSE, E_VAR, E_ILIT, E_QLIT, E_FNC)
//   cross-PARSER spine  — Compiland, Push/Pop/Top, tree/Tree/TDump
//                         (the only invented names; shared across all six
//                          parser_<lang>.sc files)
//
// Style invariant (per RULES.md): no goto/labels in this file.  Use
// Snocone structured flow (`while ((Line = INPUT)) { ... }`).  The legacy
// goto-shape in parser_snobol4.sc / parser_snocone.sc / parser_icon.sc is
// grandfathered; new parsers do not copy it.
//
// Rung PARSER-PR-0 (CURRENT): bare atom-as-fact only.
//   atom_lower.pl  "foo."     → (STMT :subj (E_CHOICE foo/0 (E_CLAUSE foo/0)))
//   atom_var.pl    "X."       → empty (oracle and parser both reject — X. is not
//                                a valid clause head; lex token TK_VAR is recognized
//                                but the clause is dropped)
//   atom_int.pl    "42."      → empty (oracle and parser both reject — TK_INT
//                                cannot be a clause head)
//   atom_str.pl    '"hi".'    → (STMT :subj (E_CHOICE hi/0 (E_CLAUSE hi/0)))
//                                (a Prolog double-quoted token at the head
//                                position is interned as an atom)
//
// Sibling LANG rungs: PR-1..PR-3 (lexer, atom/var distinction).
// The existing src/frontend/prolog/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Token classifiers — Prolog surface syntax.
//
// Naming: tk_atom / tk_var / tk_int / tk_string / tk_dot mirror the
// TK_ATOM / TK_VAR / TK_INT / TK_STRING / TK_DOT enums in
// src/frontend/prolog/prolog_lex.h.
//-----------------------------------------------------------------------

ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Lowercase-start identifier — TK_ATOM (unquoted form).
tk_atom_first = ANY(&LCASE);
tk_atom_rest  = SPAN(digits &UCASE &LCASE '_');
tk_atom       = (tk_atom_first (tk_atom_rest | epsilon));

// Uppercase-start or '_'-prefixed identifier — TK_VAR / TK_ANON.
// Per prolog_lex.h: TK_VAR is X / Foo / _Bar; TK_ANON is bare '_'.
// At PARSER-PR-0 we collapse anon into var; PARSER-PR-1 splits them.
tk_var_first = ANY(&UCASE '_');
tk_var_rest  = SPAN(digits &UCASE &LCASE '_');
tk_var       = (tk_var_first (tk_var_rest | epsilon));

// Integer literal — TK_INT.
tk_int = SPAN(digits);

// Double-quoted string — TK_STRING.  Capture body in _str_body.
tk_string = ('"' BREAK('"') . _str_body '"');

// Clause terminator — TK_DOT.  Per prolog_lex.h: '.' followed by
// whitespace or EOF.  At PARSER-PR-0 we only ever see TK_DOT at end
// of input or before a newline, so a literal '.' suffices.
tk_dot = '.';

//-----------------------------------------------------------------------
// Tree-building helpers.
//
// At PARSER-PR-0, a successful clause head produces the IR shape
//
//   (STMT :subj (E_CHOICE foo/0 (E_CLAUSE foo/0)))
//
// matching prolog_lower.c's expr_dump output for a single 0-arity fact.
// Helpers push the assembled STMT tree onto the shared stack (per the
// NRETURN convention — assign result to own name, use nreturn so
// `epsilon . *helper(...)` succeeds with the side-effect firing).
//-----------------------------------------------------------------------

// build_fact_atom — push a 0-arity-fact STMT for an atom-named clause.
// `name` is the atom text (e.g. "foo", "hi").  The IR shape is the same
// for both unquoted lowercase atoms and double-quoted strings; the
// existing frontend interns the string contents as the predicate name.
function build_fact_atom(name, key) {
    key = name '/0';
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1,
                        tree('E_CLAUSE', key)))));
    build_fact_atom = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `primary` — one head term in clause-head position.  Mirrors
// prolog_parse.c::parse_primary at PR-0 scope: only TK_ATOM and
// TK_STRING are valid clause heads in standard Prolog.  TK_VAR and
// TK_INT are recognized as tokens (their classifiers tk_var/tk_int are
// declared above and exercised by PARSER-PR-1) but they cannot appear
// as a clause head — `X.` and `42.` are syntax errors in the existing
// frontend, which silently drops them.  At PR-0 we mirror that: if
// `primary` doesn't match an atom-or-string head, the whole `clause`
// fails, no nInc fires, no Parse child is created, output is empty —
// byte-identical to the oracle.
//-----------------------------------------------------------------------

primary = ( tk_atom   . _head_name . *build_fact_atom(_head_name)
          | tk_string               . *build_fact_atom(_str_body)
          );

//-----------------------------------------------------------------------
// `clause` — one Prolog clause.  At PR-0: a primary followed by `.`.
// Comments (`%` to end of line) and blank lines are skipped at the
// driver level, not here.
//-----------------------------------------------------------------------

clause = ( primary ws_opt tk_dot );

//-----------------------------------------------------------------------
// Compiland — the canonical cross-PARSER spine.  See
// parser_snobol4.sc / parser_icon.sc / parser_snocone.sc top-of-file
// note about the `*Command` indirection bug; we inline `clause` here
// for the same reason.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( nInc() ws_opt clause ws_opt (ANY(nl) | epsilon) )
            reduce("'Parse'", 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver loop — accumulate full source into Src, run Compiland once,
// then TDump each STMT child.  No goto/labels (per RULES.md style
// invariant for new parser_<lang>.sc files).
//-----------------------------------------------------------------------

InitCounter();
InitStack();

// Accumulate full source into Src buffer.  Skip Prolog `%` comment lines
// at ingestion time so the Compiland pattern stays clean.
Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt '%'))) {
        Src = Src Line nl;
    }
}

// Single Compiland match against the full source.
ok = (Src ? Compiland);

// Pop the Parse tree and emit one line per STMT child.  Empty programs
// (no clause heads ever pushed) are valid: TDump emits nothing, matching
// the existing frontend's empty `--dump-ir` output for unparseable
// inputs like "X." or "42.".
if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
}

_parser_pr_done = '';
