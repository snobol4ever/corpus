// parser_raku.sc — PARSER-RK: Raku frontend in Snocone.
//
// Reads a Raku source program from stdin via INPUT, runs the `Compiland`
// PATTERN to build a Raku IR tree on the shared stack via Shift/Reduce,
// then dumps each tree via TDump.  After whitespace normalization the
// dumped form is byte-identical to scrip's existing Raku frontend
// `--dump-ir` output — that's the PARSER-RK gate.
//
// Naming policy (per RULES.md "Snocone parser style — names track the
// existing frontend"):
//   token classifiers — mirror src/frontend/raku/raku.l token names
//                       (lowercased: var_scalar, var_array, var_hash,
//                        lit_int, lit_str, kw_my, kw_say, etc.)
//   non-terminals     — mirror src/frontend/raku/raku.y rule names
//                       (program, stmt_list, stmt, expr, primary)
//   IR node tags      — mirror ir.h expr_e_name[] strings
//                       (E_VAR, E_ILIT, E_QLIT, E_FNC, E_ASSIGN, ...)
//   cross-PARSER spine — Compiland, Push/Pop/Top, tree/Tree/TDump/stack
//                        (the only invented names; shared across all six
//                         parser_<lang>.sc files)
//
// Style invariant (per RULES.md): no goto/labels in driver loops.
// Use Snocone structured flow.
//
// Rung PARSER-RK-0 (CURRENT): atom — one sigiled variable or one integer
// or one quoted string, as a bare expression statement.
//
//   $x;   → (STMT :subj (E_FNC main (E_VAR main) (E_VAR x)))
//   @a;   → (STMT :subj (E_FNC main (E_VAR main) (E_VAR a)))
//   %h;   → (STMT :subj (E_FNC main (E_VAR main) (E_VAR h)))
//   42;   → (STMT :subj (E_FNC main (E_VAR main) (E_ILIT 42)))
//   "hi"; → (STMT :subj (E_FNC main (E_VAR main) (E_QLIT "hi")))
//
// The existing raku.y program rule wraps all body stmts in a synthetic
// "main" E_FNC node: E_FNC(main, [E_VAR(main), stmt1, stmt2, ...]).
// PARSER-RK-0 replicates this wrapper for single-atom programs.
//
// Out-of-scope at RK-0 (deferred to later rungs):
//   - &f CodeVar sigil — not in raku.l as a standalone VAR token at RK-0
//   - my $x = expr;  declarations — RK-1
//   - say expr;      call stmts   — RK-2
//   - arithmetic operators        — RK-2
//   - control flow (if/while/for) — RK-3
//   - sub definitions             — RK-4
//   - regex / grammar primitives  — RK-5
//
// Sibling LANG rungs: RK-1..RK-3 (lexer, sigils, basic stmts).
// The existing src/frontend/raku/ remains the read-only oracle.

//-----------------------------------------------------------------------
// Whitespace / comment classifiers — Raku surface syntax.
//-----------------------------------------------------------------------

ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Single-line comment: # to end of line.  Matches the flex rule in raku.l.
raku_comment = ('#' REM);

//-----------------------------------------------------------------------
// Token classifiers — mirror raku.l token names (lowercased).
//
// var_scalar: '$' ALPHA ALNUM*  (raku.l: "$"{ALPHA}{ALNUM}* → VAR_SCALAR)
// var_array:  '@' ALPHA ALNUM*  (raku.l: "@"{ALPHA}{ALNUM}* → VAR_ARRAY)
// var_hash:   '%' ALPHA ALNUM*  (raku.l: "%"{ALPHA}{ALNUM}* → VAR_HASH)
// lit_int:    DIGIT+             (raku.l: {DIGIT}+ → LIT_INT)
// lit_str_dq: "..." double-quoted (raku.l: STR_DQ state → LIT_STR)
// lit_str_sq: '...' single-quoted (raku.l: STR_SQ state → LIT_STR)
//
// Sigil is consumed but not carried into the tree — raku.y's var_node()
// calls strip_sigil() so the tree holds just the bare name.  All three
// sigils map to E_VAR at RK-0 scope (the existing frontend does not
// distinguish @/@/% at the IR level for standalone atom stmts).
//-----------------------------------------------------------------------

raku_alpha      = ANY(&UCASE &LCASE '_');
raku_alnum      = SPAN(&UCASE &LCASE digits '_');
raku_alnum_opt  = (raku_alnum | epsilon);

// Sigiled variables — capture bare name (strip sigil) into _var_first + _var_rest.
var_scalar = ('$' raku_alpha . _var_first raku_alnum_opt . _var_rest);
var_array  = ('@' raku_alpha . _var_first raku_alnum_opt . _var_rest);
var_hash   = ('%' raku_alpha . _var_first raku_alnum_opt . _var_rest);

// Integer literal — capture text into _lit_text.
lit_int = (SPAN(digits) . _lit_text);

// Double-quoted string — capture body into _str_body (no interpolation at RK-0).
lit_str_dq = ('"' BREAK('"') . _str_body '"');

// Single-quoted string — capture body into _str_body.
lit_str_sq = ("'" BREAK("'") . _str_body "'");

// Semicolon terminator — mirrors raku.l ';' → ';'.
raku_semi = ';';

//-----------------------------------------------------------------------
// Atom-level tree builders.
//
// The existing frontend's strip_sigil() removes the leading '$'/'@'/'%'
// character before producing E_VAR, so all sigiled vars map to the
// same IR kind at RK-0 scope.  build_atom_var/build_atom_int/
// build_atom_str push one IR-leaf node onto the shared stack.
//
// raku.y program rule wraps all body stmts in synthetic "main" E_FNC:
//
//   (E_FNC main (E_VAR main) stmt...)
//
// build_main_wrapper() pops the N body-stmt atoms accumulated by
// Compiland and wraps them in that E_FNC, then pushes one STMT node
// matching the oracle's `(STMT :subj ...)` shape.
//
// At RK-0, each program has exactly one body stmt (one atom), so the
// wrapper holds exactly three children: E_VAR(main), and the atom leaf.
//-----------------------------------------------------------------------

body_count = 0;

function reset_body_count() {
    body_count = 0;
    reset_body_count = .dummy;
    nreturn;
}

// push_atom_var(name) — push E_VAR leaf onto stack.
function push_atom_var(name) {
    Push(tree('E_VAR', name));
    body_count = body_count + 1;
    push_atom_var = .dummy;
    nreturn;
}

// push_atom_int(text) — push E_ILIT leaf.
function push_atom_int(text) {
    Push(tree('E_ILIT', text));
    body_count = body_count + 1;
    push_atom_int = .dummy;
    nreturn;
}

// push_atom_str(text) — push E_QLIT leaf.
function push_atom_str(text) {
    Push(tree('E_QLIT', text));
    body_count = body_count + 1;
    push_atom_str = .dummy;
    nreturn;
}

// build_main_wrapper() — pop body_count atoms, wrap in E_FNC main,
// then wrap the whole thing in (STMT :subj ...).
// Mirrors raku.y program rule Pass 2 exactly.
function build_main_wrapper(mf, mn, i, atoms) {
    // Collect atoms from stack (they were pushed left-to-right).
    atoms = ARRAY(body_count);
    i = body_count;
    while (i > 0) {
        atoms[i] = Pop();
        i = i - 1;
    }
    // Build E_FNC main node: first child is E_VAR(main), then body stmts.
    mf = Tree('E_FNC', 'main', 0);
    mn = tree('E_VAR', 'main');
    Append(mf, mn);
    i = 1;
    while (LE(i, body_count)) {
        Append(mf, atoms[i]);
        i = i + 1;
    }
    // Wrap in STMT :subj.
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, mf)));
    build_main_wrapper = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `primary` — one atom expression.  Mirrors raku.y primary/expr at
// RK-0 scope.
//
// Order follows raku.l longest-match convention: multi-char sigil
// patterns (var_scalar/var_array/var_hash) before digit-only lit_int.
// Both lit_str variants share _str_body capture and call push_atom_str.
//-----------------------------------------------------------------------

primary = ( var_scalar . *push_atom_var(_var_first _var_rest)
          | var_array  . *push_atom_var(_var_first _var_rest)
          | var_hash   . *push_atom_var(_var_first _var_rest)
          | lit_int    . *push_atom_int(_lit_text)
          | lit_str_dq . *push_atom_str(_str_body)
          | lit_str_sq . *push_atom_str(_str_body)
          );

//-----------------------------------------------------------------------
// `stmt` — one statement at RK-0: a primary followed by ';'.
// Mirrors raku.y stmt rule (expr ';' form).
//-----------------------------------------------------------------------

stmt = ( ws_opt primary ws_opt raku_semi );

//-----------------------------------------------------------------------
// Compiland — canonical cross-PARSER spine.
//
// Accumulates all body stmts via ARBNO(*stmt), then calls
// build_main_wrapper() once to emit the oracle-matching STMT tree.
// nPush()/nPop() bracket the stack frame; reduce('Parse', 'nTop()')
// mirrors parser_prolog.sc / parser_icon.sc convention.
//-----------------------------------------------------------------------

// reduce('Parse', 1): build_main_wrapper always pushes exactly 1 STMT,
// so we pop exactly 1 item into the Parse parent.  Unlike the prolog
// parser which uses nInc()/nTop() to track per-clause count, Raku RK-0
// always produces a single STMT regardless of body-atom count.
Compiland = epsilon . *reset_body_count()
            nPush()
            ARBNO( stmt )
            (DIFFER(body_count) . *build_main_wrapper() | epsilon)
            reduce("'Parse'", 1)
            nPop();

//-----------------------------------------------------------------------
// Driver loop — accumulate full source into Src, run Compiland once,
// then TDump each STMT child.
// No goto/labels (per RULES.md style invariant for new parser_<lang>.sc).
//-----------------------------------------------------------------------

InitCounter();
InitStack();

// Accumulate full source, skipping Raku '#' comment lines at ingestion.
Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt raku_comment))) {
        Src = Src Line nl;
    }
}

// Single Compiland match against full source.
ok = (Src ? Compiland);

// Pop the Parse tree and emit one line per STMT child.
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

_parser_rk_done = '';
