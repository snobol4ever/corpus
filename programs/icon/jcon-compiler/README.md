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

`jtran` is a multi-module program. Its link order (from JCON's Makefile) is:

    dump preprocessor lexer ast parse ir keyword irgen
    gen_bc gen_symbolic gen_dot gen_ucode optimize bytecode jtran_main

Only `jtran_main.icn` (plus the standalone utilities `interfacegen.icn`,
`oplexgen.icn`, and the linker `linker.icn`) defines `procedure main()`. The rest
are library modules and only compile as part of the whole program.

To compile the whole translator with SCRIP, pass all modules together in the
order above; the driver merges them into one program.

## Status

All 18 modules parse cleanly under SCRIP. The full self-host toolchain now
BUILDS: the 17-module merged translator (`jtran`) and the 2-module linker
(`jlink`) both compile to x86 assembly and link against `libscrip_rt.so`, and
the JCON Java runtime (`jcon.zip`) builds from the SCRIP-generated iTrampoline.
End-to-end self-host of a trivial program (`hello, world`) succeeds:
SCRIP-`jtran` -> SCRIP-`jlink` -> JVM matches the icont/iconx oracle.

The remaining blocker is a value-alternation case selector nested inside a live
string-scan environment (`preprocessor.icn` `case move(1) of { "\"" | "'": ... }`):
entering such a selector fresh is required for correctness but currently
disturbs the scan registers, so non-trivial programs that exercise that path
still crash. Root-caused to the emitter's chain walk (not the lowerer); tracked
in `.github/GOAL-ICON-BB.md` (LIVE CURSOR: ICN-CASE-ALT-SELECTOR) and
`.github/GOAL-JCON-IN-SCRIP.md`.
