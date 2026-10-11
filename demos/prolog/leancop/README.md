# leanCoP 2.1 — a theorem prover as a SCRIP demo

Lon, 2026-10-09 (CEO-1583): *"A theorem prover or LEAN thing would be a neat demo."*

leanCoP is Jens Otten's lean connection prover for classical first-order logic
(<http://www.leancop.de>). `leancop.pl` is the leanCoP 2.1 distribution
(`/home/resources/prolog-demos/provers/leancop21`) in one file — `def_mm.pl`,
`leancop21_swi.pl`, `leancop_proof.pl`, `leancop_equal/2` from `leancop_tptp2.pl`
and `output_result/5` from `leancop_main.pl` — with a driver that reads
`problem(Name, Formula)` terms from standard input and proves each with leanCoP's
complete strategy `[cut,comp(7)]`, printing the readable proof.

`leancop.in` holds Pelletier's problems 1–12 and 17–23, a syllogism, an equality
problem (`group_eq`) and three non-theorems: 21 theorems with their proofs and 3
non-theorems, 1,493 lines of output.

## Licence

leanCoP is © Jens Otten and distributed under the GNU General Public License, as
every source file's header states (no version is named); `LICENSE` is the GPL's
text. The port below is distributed under the same licence.

## Oracle and port (the ceo's ruling (b), 2026-10-09)

`leancop.ref` is GNU Prolog 1.6.0's output for this file
(`scripts/oracle_gplc.sh --no-top-level leancop.pl -o lc && ./lc < leancop.in`),
and SCRIP runs the same file. The port from the SWI version to ISO / GNU Prolog is
listed in the file's header, every change: operand brackets around the prefix
operators `ex`/`all` and around `=`; one `dynamic/1` directive per predicate (as
Otten's own SICStus version writes it); `assert/1` as `assertz/1`; the
`proof(readable)` setting as a fact; the proof printed with its variables numbered
`A`, `B`, … (an unbound variable's printed name belongs to the system); and a
failure-driven driver loop. `leancop.in` is written in standard syntax (`~ (p=>q)`,
not the functional `~(p=>q)` whose argument exceeds priority 999).

## Sizes

`leancop.stack` declares 8 MB: at 4 MB the test input overflows in both modes, at
8 MB it passes (two readings each). The heap is the default. `leancop.workhorse`
times the 24 problems twenty times.
