# JCON compiler — Icon source

The JCON translator (`jtran`) and linker (`jlink`): a compiler for the Icon
programming language, itself written in Icon. Included here as a large, complete,
real-world Icon program for the SCRIP Icon front-end to compile and run.

## Origin

Sourced verbatim from JCON (`jcon-master/tran/*.icn`) by Gregg Townsend and
Todd Proebsting, Arizona Board of Regents (1998–1999). JCON's license permits
redistribution with modifications provided its notice travels with the copies;
the full text is in `COPYRIGHT` in this directory.

## The only modification: semicolons

Pure Icon does not require `;` between statements — `icont` inserts them at
newlines using the Beginner/Ender token rule. SCRIP's Icon front-end instead
**requires** explicit `;` (it does zero newline processing, by design). So these
sources have had semicolons added at the exact points `icont` would insert them
(same Beginner/Ender rule, applied once to the source). Nothing else is changed,
with one exception noted below. This is a one-time conversion, not a build step.

Exception: `preprocessor.icn` contained a single `$ifdef _MACINTOSH … $endif`
conditional block. `_MACINTOSH` is undefined in a normal build, so that block is
dropped here (exactly as JCON's own preprocessor would drop it).

## Modules and build order

`jtran` is a **17-module** program. Its link order (from JCON's `tran/Makefile`) is:

    dump do_ops preprocessor lexer ast parse ir keyword irgen
    gen_bc gen_symbolic gen_dot gen_ucode optimize interface bytecode jtran_main

⛔ **Two of those seventeen are GENERATED, not hand-written** — `do_ops.icn` (by
`oplexgen`) and `interface.icn` (by `interfacegen`), exactly as JCON's own Makefile
builds them. They are checked in here beside the hand-written modules, each carrying a
`#GEN:` header. Regenerate with `scripts/util_regen_jcon_generated_sources.sh`; never
hand-edit them.

⭐ **This list said fifteen modules until 2026-09-03, and omitted both generated ones.**
That is worth recording because of how quietly it failed: a `jtran` linked from the
other fifteen *builds and runs*, so nothing looks wrong — but `lexer.icn` reaches into
`do_ops` at its very first token, so every pipeline stage past `preproc` died at
`lexer.icn:14` with `procedure or integer expected, offending value: &null`. A missing
build input presented as a lexer bug.

Only `jtran_main.icn` (plus the standalone generators `interfacegen.icn` and
`oplexgen.icn`, and the linker `linker.icn`) defines `procedure main()`. The rest are
library modules and only compile as part of the whole program.

⛔ **Do not compile this package by handing SCRIP all 18 files at once** — that merges
JCON's four separate `procedure main`s into one program. The demo entries in
`corpus/demos/icon/jcon/` name the right module set per program, through SCRIP's own
`link` directive; use those.

## Status

All modules parse cleanly under SCRIP. Graded state, measured 2026-09-03 by
`scripts/test_demo_icon_jcon.sh` against an `icont` oracle built from these same
sources (see `corpus/demos/icon/jcon/` for the demo entries):

| program | m3 | m4 | vs oracle |
|---|:---:|:---:|---|
| `interfacegen` | ✅ | ✅ | byte-identical |
| `jlink` (2 modules) | ✅ | ✅ | byte-identical |
| `oplexgen` | ⚠ | ⚠ | same 611 lines, different `key(table)` order |
| `jtran` (17 modules) | ⛔ | ⛔ | does not build |

⛔ **`jtran` does not currently build in either mode**, so there is no self-host
toolchain at this HEAD. It compiles to assembly (638,965 lines) but the compiler
stops before a binary exists: m3 aborts with `bb_emit_end: 2 unresolved forward
reference(s)`, and m4's assembly fails at `ld` with `undefined reference to
n<N>_var_β`. Both sites are in `lexer.icn`, on `EXPR ? { while COND do … suspend … }`
— the scan's resume path lands on the loop *condition*'s β port, and a non-resumable
condition emits only an α entry. Tracked as
`icon-scan-resume-through-non-resumable-while-condition` (see
`corpus/demos/icon/jcon/jtran.knowndiff` for the two-line minimal witness).

The remaining blocker is a value-alternation case selector nested inside a live
string-scan environment (`preprocessor.icn` `case move(1) of { "\"" | "'": ... }`):
entering such a selector fresh is required for correctness but currently
disturbs the scan registers, so non-trivial programs that exercise that path
still crash. Root-caused to the emitter's chain walk (not the lowerer); tracked
in `.github/GOAL-ICON-BB.md` (LIVE CURSOR: ICN-CASE-ALT-SELECTOR) and
`.github/GOAL-JCON-IN-SCRIP.md`.
