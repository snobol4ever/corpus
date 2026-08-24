# corpus/programs/raku/parser-coverage/

**Parse-only test corpus for `parser_raku.sc`.**  Fixtures here are graded
by `scripts/test_parser_raku_coverage.sh`, which checks that the parser:

1. Exits 0 on the input.
2. Produces non-empty output.
3. Does not emit `Parse Error`.
4. Emits a tree whose first non-blank line begins with `(STMT`.

There is **no** oracle-comparison gate.  Tree contents are not graded —
the goal is parse coverage, not execution semantics.  When a Raku
construct cannot be expressed in `ir.h`'s existing E_* kinds, a
placeholder lowering of the form `(E_FNC raku_<name> args...)` is
acceptable and intentional.

## Why this directory exists

`parser_raku.sc`'s original goal (RK-0..RK-27) was byte-for-byte
oracle parity with the C frontend `--dump-ast`.  That goal CLOSED at
PASS=147 FAIL=0 (≈95% of `raku.y` covered).

The post-PIVOT goal (RK-28..RK-50) is full coverage of the **official
Raku grammar** — `rakudo/src/Perl6/Grammar.nqp` — most of which the C
frontend does not implement.  Programs exercising those constructs
cannot be tested via oracle parity (oracle would reject them) but
still must parse without aborting.  This directory holds those
programs.

The original `parser/` directory (oracle-parity fixtures) stays in
place, untouched, as a regression guard.  Both gates run on every
commit.

## Naming convention

One fixture per `Grammar.nqp` `:sym<X>` arm.  Filename mirrors the arm:

  - `stmt_ctrl_without.raku`   ← `statement_control:sym<without>`
  - `stmt_prefix_BEGIN.raku`   ← `statement_prefix:sym<BEGIN>`
  - `pkg_decl_grammar.raku`    ← `package_declarator:sym<grammar>`
  - `term_now.raku`            ← `term:sym<now>`
  - `infix_op_zip.raku`        ← `infix:sym<Z>`
  - `circumfix_quote_w.raku`   ← `circumfix:sym<<< >>>`

Fixtures should be MINIMAL — exercise exactly the one arm under test.
A complex multi-arm program belongs in RK-50's real-world corpus,
not here.

## Adding a fixture

1. Write the smallest `.raku` program exercising the target arm.
2. Run `bash scripts/test_parser_raku_coverage.sh` — it should PASS.
3. Run `bash scripts/test_parser_raku.sh` — must remain at PASS=147
   FAIL=0.  Coverage work that breaks the oracle gate gets reverted.
4. Commit both the fixture and any matching `parser_raku.sc` change
   in one commit.
