# uflex

IcnUflex: uflex 0.9, the lexical-analyzer generator of Unicon (`/home/resources/icon-demos/unicon-git/uni/uflex`, a lex in Unicon that
writes its scanners in Unicon), run on the 15 lex specifications of its own test folder (`numbers.l`, `wc.l`, `toy.l`, `calcscan.l`, a
C scanner `clex.l`, C++ `120lex.l`, Java `javalex.l`, Go `go.l`, Rust `rustlex.l`, Python `punylex.l`, Kotlin `k0lex.l`, uflex's own
`uniflex.l` and others). Each row hands one spec to uflex, and the answer is uflex's log on standard output followed by the scanner it
generates, `NAME.icn` (13 KB for `numbers` to 1.6 MB for `rustlex`). Unicon's licence is `COPYING.unicon`.

THE BUILD, as the distribution's Makefile does it: `iyacc -i -d flexgram.y` writes the parser `flexgram.icn` and its token table
`flexgram_tab.icn` (vendored here as the oracle's iyacc wrote them), and the ten modules are linked into one program. Here each row's
program is `run_NAME.icn`, one line of ours that links the ten (the files form keys an answer by its program's name), `ALL.args` hands it
`NAME.l`, and `CONTRACT.tsv` puts the package root on the link path and marks the package Unicon. `ulpp.icn`'s own `main` is under
`$ifdef MAIN` and is not compiled in.

THE CONVERSION: every module carries the semicolons SCRIP requires, inserted once by `util_icon_semicolons.py` (skill unicon; never
tracked), and each is PROVED by `unicon -s -c` giving the original and the converted text the same ucode, the uid line aside
(`CONVERSION-PROOF.tsv`). `flexgram.icn` is iyacc's output and its `#line` directives point into `flexgram.y`, and `automatadfa.icn`
includes `dfadebug.icn`; the parser reports positions through both, so the directive and the include were blanked to comments while
the tool ran and restored after, and `dfadebug.icn` was converted on its own. The oracle running the CONVERTED modules through the same
one-line driver gives the same answer, byte for byte, as uflex built from the original sources (MEASURED on `numbers`).

THE ANSWERS were cut from the oracle, uflex built by `unicon` from the original sources, each spec run twice in a fresh folder with
identical results, by the grader on 2026-11-14. The first SCRIP reading (mode 3): 0 of 15; every run stops at the start with error 106
(procedure or integer expected, an `&null` called from `main`), one cause for the fifteen.
