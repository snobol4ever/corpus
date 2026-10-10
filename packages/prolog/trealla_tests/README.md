# Trealla Prolog's own test programs (TreallaTests)

Trealla Prolog's test programs, vendored on Lon's word (2026-10-10, in-chat to the ceo, verbatim: "Let's begin making entries for
demos and test suites."; row prolog-suite-the-trealla-test-programs-vendored-as-a-package-with-swipl-refs-and-graded-as-a-suite-row,
CEO-1595). One FLAT package, one container (ALL.pl / ALL.ref / ALL.csv, built by SCRIP/scripts/util_build_package_suite.py), every
ref CUT FROM THE ORACLE, swipl -q 9.0.4 -- never from Trealla's own `.expected` files, which are not vendored (ONE ORACLE).

## Source and license

| set | upstream | license |
|---|---|---|
| trealla/tests | Andrew Davison's Trealla Prolog, https://github.com/trealla-prolog/trealla, the `tests/` tree at commit 55ab046 (2026-09-14), fetched to /home/resources/prologs/trealla | MIT, `LICENSE.trealla` (as shipped) |

SOURCES.tsv maps every vendored file to its directory and path in the upstream tree. Upstream holds 456 programs under `tests/`:
`tests/` 116, `issues/` 200, `issues-OLD/` 54, `sundry/` 52, `misc/` 21, `janus/` 8, `floating-point/` 2, `slow/` 2, and
`dcg_reference.pl` at the top.

## Layout

Flat (the container runner counts the `*.pl` at depth 1): each program carries its upstream directory as a prefix (`tests_test0000`,
`issues_...`), because `issues/` and `issues-OLD/` repeat stems. Trealla's runner runs every program under `-g halt` from the
repository root; swipl runs each with `:- initialization(main)` as written, from the package directory.

## Classes

- UNGRADABLE.tsv -- what swipl gives no one ground truth for: ORACLE_REFUSES (swipl's first error line quoted; Trealla's defaults
  differ from swipl's, `double_quotes=chars` the first measured) and NONDETERMINISTIC. A Trealla-only builtin is the measurement,
  not an exclusion. In the denominator (CEO-1286).
- UNGRADED.tsv -- the work owed: NEEDS_DRIVER (it prints nothing -- Trealla grades some programs by exit status alone -- or it is a
  library others load, dcg_reference.pl), NEEDS_RUNNER_WIRING (it names a file relative to Trealla's repository root, where Trealla's
  runner starts) and TIMEOUT.

After the drivers (2026-10-10, 456 shipped): 329 graded -- 30 of them through DRIVERS.tsv, the silent regression tests Trealla grades by
exit status, whose driver prints whether main/0 succeeded, failed or raised -- 125 UNGRADABLE (122 ORACLE_REFUSES -- Trealla-only libraries
such as clpz, janus, freeze and dcgs, Trealla-only syntax, goals that fail or raise under swipl, three that fail to load and then run
past 60 s -- and 3 NONDETERMINISTIC), 2 UNGRADED NEEDS_RUNNER_WIRING (issues_test1097 and issues_test1114 write their fixtures under
tests/issues/ and read them back from where Trealla's tree puts the program). ⚠ 41 of the graded programs load under swipl with an error on stderr (a
Trealla-only library or syntax swipl lacks) and still print: their ref is swipl's output on the part it loaded -- the one oracle's
answer, as every package here takes it (the builder reads stdout); the names are in the landing that built this.

## Rebuild

    TIMEOUT=20 python3 SCRIP/scripts/util_build_package_suite.py corpus/packages/prolog/trealla_tests --lang prolog --twice

The suite row is the coo's instrument (CEO-1342): `container_package_run prolog pl trealla_tests <dir> <gate>`.
