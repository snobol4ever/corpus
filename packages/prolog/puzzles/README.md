# Prolog puzzle sets (ProPuzzles)

Every Prolog puzzle program set found with a stated license, vendored on Lon's word (2026-10-09, in-chat to the ceo, verbatim:
"We want every Prolog puzzle program sets we can find."; row prolog-puzzles-..., CEO-1583, rulings CEO-1593). One FLAT package, one
container (ALL.pl / ALL.ref / ALL.csv, built by SCRIP/scripts/util_build_package_suite.py), every ref CUT FROM THE ORACLE, swipl -q.

## Sources and licenses

| set | upstream | license | files here |
|---|---|---|---|
| hakank/swi_prolog | Hakan Kjellerstrand's combinatorial models and puzzles, https://github.com/hakank/hakank (`swi_prolog/`), shallow clone at commit 2823c48 | MIT, `LICENSE.hakank` | 260 (`hakank_swi_*.pl` and the three modules below) |

SOURCES.tsv maps every vendored file to its set, its path in the upstream tree and its license. Sets to come in this package (hq_pascal's,
CEO-1595): hakank/sicstus (MIT) and 99-prolog-problems (MIT). Sets found and NOT vendored are named with the reason in NOT_VENDORED.tsv:
three state no license (Bratko's 4th edition, Triska's clpfd examples, mmalita's PrologPuzzles) and Rosetta Code's Prolog solutions are
their own package, rosetta-prolog.

THE SICSTUS SET (hq_pascal 2026-10-10, CEO-1595): hakank/sicstus at the same commit 2823c48, MIT (`LICENSE.hakank`), 148 programs as
`hakank_sicstus_<stem>.pl`, each defining go/0 with `:- initialization(go).` appended (DRIVERS.tsv, 147 rows; one already called it).
50 more are NOT vendored and named in NOT_VENDORED.tsv: they `ensure_loaded(hakank_utils)` meaning the SICStus set's own
hakank_utils.pl, which differs from the SWI set's file this flat package ships under that name -- vendored here they would load the
SWI file and be graded as programs they are not. Measured at the build (TIMEOUT=60, --twice): 12 graded, all CLP(FD) and named
OUTSIDE_CLPFD; 136 UNGRADABLE ORACLE_REFUSES, swipl's first error line quoted (SICStus' domain/3, operators and syntax swipl lacks).

## Layout

Flat (the container runner counts the `*.pl` at depth 1): each program carries its set prefix (`hakank_swi_`; the SICStus tree repeats 180
of the SWI tree's 199 stems, so a prefix is the only collision-free name). A module a program loads by name keeps its loadable name:
`hakank_utils.pl`, `euler_utils.pl`, `bplan.pl`.

DRIVERS (CEO-700: a library is graded through a driver written for it): a hakank program defines `go/0` and never calls it, so it prints
nothing under swipl -q; the 257 programs DRIVERS.tsv names carry one appended line, `:- initialization(go).`.

## Classes

- EXCLUDED.tsv -- OUTSIDE_CLPFD: a program whose load closure reaches `library(clpfd)` (250 of the 260 hakank/swi_prolog files), in the
  container with its swipl ref and out of the published denominator (Lon, CEO-579: "Do not count the FD as failures for us."; CEO-1593),
  struck the day SCRIP's Prolog carries a finite-domain solver.
- UNGRADABLE.tsv -- NONDETERMINISTIC: swipl answers differently on two runs (`util_build_package_suite.py --twice`).
- UNGRADED.tsv -- TIMEOUT (no answer under the build's 60 s, twice) and NEEDS_DRIVER (a module that defines no entry); debt, in the
  denominator unless EXCLUDED.tsv names it (CEO-1286). The two CLP(R) programs (mortgage, spreadsheet) are graded and stay in as debt.

## Rebuild

    TIMEOUT=60 python3 SCRIP/scripts/util_build_package_suite.py corpus/packages/prolog/puzzles --lang prolog --twice

The suite row is the coo's instrument (CEO-1342), minted from this package: `container_package_run prolog pl puzzles <dir> <gate>`
(lib_container_package_runner.sh), as the Rosetta rows.
