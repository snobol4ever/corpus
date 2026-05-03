// parser_snobol4.sc — PARSER-SN-0 atom-level SNOBOL4 frontend in Snocone.
//
// Reads a SNOBOL4 source program from INPUT, recognizes the smallest
// atom slice (one identifier OR one integer OR one string per non-END
// line), and prints the canonical IR-tree-line for each statement in
// the same form the existing scrip SNOBOL4 frontend's `--dump-parse`
// emits — the in-process oracle for PARSER-SN.
//
// Canonical lines (from `scrip --dump-parse` on the rung corpus):
//     (STMT :subj (E_VAR x))               — atom_id.sno
//     (STMT :subj (E_ILIT 42))             — atom_int.sno
//     (STMT :subj (E_QLIT "hi"))           — atom_str.sno
//     (STMT :lbl END :end)                 — END terminator (every program)
//
// The crosscheck is wired in two stages:
//   1. THIS file produces those canonical lines on stdout from the
//      pattern-driven walk of the source.
//   2. test_parser_snobol4.sh diffs that stdout against the bytes
//      `scrip --dump-parse` emits for the same .sno file.
//
// Sibling LANG rungs: SN-1 (basic lexer), SN-2 (atom recognition).
// The existing src/frontend/snobol4/ remains the read-only oracle.
//
// Rung ladder context: this is PARSER-SN-0, the first rung after the
// PARSER-SN-INFRA ladder closed.  Atoms are syntactically the smallest
// programs SNOBOL4 admits (a bare identifier IS a legal statement —
// the `:subj` slot of a STMT with no other clauses).  Once this rung
// is green we have a fully-wired pipeline (driver + crosscheck + corpus
// + gate); subsequent rungs (PARSER-SN-1 assignment, PARSER-SN-2
// concat/arith, ...) extend `Command` without changing the wiring.
//
// Invariant for this file: NEVER edit the existing scrip frontend to
// make outputs match.  If a canonical line we emit diverges from
// `--dump-parse`, the divergence is reported by the gate; only after
// Lon decides which side is correct does anyone touch either side.

//-----------------------------------------------------------------------
// Atom recognizers — single-character and multi-character primitives
//-----------------------------------------------------------------------

// Whitespace: blank or tab; SNOBOL4 source is tab-indented in the canonical
// form (one leading tab before each statement) but we accept either.
ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Identifier: SNOBOL4 identifiers start with a letter, continue with
// letters / digits / dot / underscore.  The existing frontend's E_VAR
// kind is what we mirror.  Beauty.sc canonical idiom for the alphabets
// is `&UCASE` and `&LCASE` (now safe to use inline since INFRA-5c).
id_first = ANY(&UCASE &LCASE);
id_rest  = SPAN(digits &UCASE &LCASE '_.');
id_pat   = (id_first (id_rest | epsilon));

// Integer: one-or-more digits.  We do not handle signed literals at
// this rung (PARSER-SN-2 extends to + / - operators and signed forms).
int_pat  = SPAN(digits);

// String: single-quoted or double-quoted; no embedded escape handling
// at this rung — an atom-level fixture has no need for escapes.  The
// existing frontend reports the contents wrapped in double quotes
// regardless of source quote style, so we match the body and re-wrap.
sstr_pat = ("'" BREAK("'") . _atom_strbody "'");
dstr_pat = ('"' BREAK('"') . _atom_strbody '"');
str_pat  = (sstr_pat | dstr_pat);

//-----------------------------------------------------------------------
// Per-atom canonical-line emitters.  Each is called via a deferred
// action `*emit_<kind>(captured_text)` so it fires at match-time on
// commit, after the capture is in scope.  The emitters return .dummy
// (per RULES.md NRETURN-functions guidance) so they can be invoked
// either bare in a deferred call or in lvalue position.
//-----------------------------------------------------------------------

function emit_id(name) {
    OUTPUT = '(STMT :subj (E_VAR ' name '))';
    emit_id = .dummy;
    nreturn;
}

function emit_int(digits_text) {
    OUTPUT = '(STMT :subj (E_ILIT ' digits_text '))';
    emit_int = .dummy;
    nreturn;
}

function emit_str(body) {
    // Existing frontend wraps string literals in double quotes regardless
    // of source quoting.  We replicate that exactly.
    OUTPUT = '(STMT :subj (E_QLIT "' body '"))';
    emit_str = .dummy;
    nreturn;
}

function emit_end() {
    OUTPUT = '(STMT :lbl END :end)';
    emit_end = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Composite emitters — for statements that combine multiple captures.
// Assignment is the first such statement: it composes a subject atom
// and a replacement atom into one canonical line.
//
// The expression-fragment helper `expr_text(kind, text)` returns the
// `(E_VAR x)` / `(E_ILIT 42)` / `(E_QLIT "hi")` form for an atom whose
// kind ('id' / 'int' / 'str') and surface text were captured by the
// pattern.  It exists so emit_assign can compose its line in one go
// without per-atom OUTPUT side effects.
//-----------------------------------------------------------------------

function expr_text(kind, text) {
    if (IDENT(kind, 'id'))  { expr_text = '(E_VAR '  text ')';     return; }
    if (IDENT(kind, 'int')) { expr_text = '(E_ILIT ' text ')';     return; }
    if (IDENT(kind, 'str')) { expr_text = '(E_QLIT "' text '")';   return; }
    expr_text = '(E_??? ' text ')';
    return;
}

function emit_assign(lhs, rhs_kind, rhs_text) {
    OUTPUT = '(STMT :eq :subj (E_VAR ' lhs ') :repl ' expr_text(rhs_kind, rhs_text) ')';
    emit_assign = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Atom-fragment patterns — like Atom but capture into named slots
// without emitting.  Used as building blocks for composite rules
// (assignment) where the per-atom OUTPUT would split a logical
// statement across multiple lines.
//
// Each branch captures BOTH the kind (a literal tag) and the surface
// text into `<role>_kind` and `<role>_text` slots, where `role` is the
// caller-chosen prefix (`rhs_` for assignment RHS, etc.).  This is the
// PARSER-SN idiom that lets one Stmt rule build one OUTPUT line.
//-----------------------------------------------------------------------

// RHS atom — captures into rhs_kind / rhs_text via the assign() helper.
// We use assign() (the PARSER-SN-INFRA-4 deferred-assign function) so the
// kind tag literal is bound at match-commit, alongside the text capture.
RhsAtom = ( id_pat  . rhs_text . *assign('rhs_kind', 'id')
          | int_pat . rhs_text . *assign('rhs_kind', 'int')
          | str_pat             . *assign('rhs_kind', 'str') . *assign('rhs_text', _atom_strbody)
          );

//-----------------------------------------------------------------------
// Statement / Compiland — the rung-specific grammar.
//
// At PARSER-SN-1 the grammar handles:
//   line ::= ws_opt assign  ws_opt           -- one assignment statement
//   line ::= ws_opt atom    ws_opt           -- one bare-atom statement (rung-0)
//   end  ::= ws_opt 'END'   ws_opt           -- end-of-program marker
//
// `Stmt` is the per-line pattern — anchored at POS(0), consuming the
// whole line via RPOS(0).  Assignment is tried before bare-atom because
// the bare-atom branch would otherwise greedily match the LHS of an
// assignment and fail on the trailing `= expr`.  Later rungs build
// trees on the stack; PARSER-SN-1 keeps the print-canonical-lines
// discipline established by PARSER-SN-0.
//-----------------------------------------------------------------------

// Atom rule — one identifier, integer, or string per line, bare (no
// assignment).  Each branch captures the surface text with `. var` and
// fires its emitter via the canonical `pattern . var . *fn(var)`
// deferred-call idiom (post-INFRA-7a).  This is the same shape
// beauty.sc:24 uses for Function/BuiltinVar/SpecialNm recognizers.
Atom = ( id_pat  . _atom_id  . *emit_id(_atom_id)
       | int_pat . _atom_int . *emit_int(_atom_int)
       | str_pat             . *emit_str(_atom_strbody)
       );

// Assign rule — `lhs = rhs` where lhs is always an identifier (E_VAR)
// and rhs is any atom.  Captures the LHS text into `_assign_lhs`, then
// matches `=` with optional whitespace, then captures the RHS via
// `RhsAtom` (which sets `rhs_kind` and `rhs_text`).  The single
// `emit_assign` call composes the canonical `(STMT :eq :subj :repl)`
// line at commit time.
Assign = ( id_pat . _assign_lhs ws_opt '=' ws_opt RhsAtom
           epsilon . *emit_assign(_assign_lhs, rhs_kind, rhs_text)
         );

// End rule — the literal END keyword as its own statement.  The
// existing frontend emits a single `(STMT :lbl END :end)` line.  We
// use `epsilon . *emit_end()` after matching 'END' so the deferred
// callcap fires at commit (epsilon matches the empty position after).
End = ('END' epsilon . *emit_end());

// Stmt rule — one whole input line.  Order matters: End first (literal
// match shortest), Assign second (consumes LHS + '=' + RHS), bare
// Atom last (would otherwise match the LHS of an assignment alone).
Stmt = (POS(0) ws_opt (End | Assign | Atom) ws_opt RPOS(0));

//-----------------------------------------------------------------------
// Driver loop — read lines from stdin, match Stmt against each.  A
// failed match prints a Parse Error line; this lets the gate observe
// non-grammar input rather than silently drop it.  Empty lines are
// skipped (consistent with the existing frontend's behaviour on
// blank lines in source).
//-----------------------------------------------------------------------

main00:
if (~(Line = INPUT)) { goto mainEnd; }
// Skip blank/whitespace-only lines.
if (Line ? (POS(0) ws_opt RPOS(0))) { goto main00; }
// Match against the rung-0 grammar.
if (~(Line ? Stmt)) { goto mainErr; }
goto main00;

mainErr:
OUTPUT = 'Parse Error: ' Line;
goto main00;

mainEnd:
_parser_sn_done = '';
