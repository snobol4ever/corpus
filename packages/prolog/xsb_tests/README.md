# XSB's own test programs (XSBTests)

XSB's regression test programs, vendored on Lon's word (2026-10-10, in-chat to the ceo, verbatim: "Let's begin making entries for
demos and test suites."; row prolog-suite-the-xsb-test-programs-vendored-as-a-package-with-swipl-refs-and-graded-as-a-suite-row,
CEO-1595). One FLAT package, one container (ALL.pl / ALL.ref / ALL.csv, built by SCRIP/scripts/util_build_package_suite.py
`--lang prolog --twice`), every ref CUT FROM THE ORACLE, swipl -q -- never from XSB's own `<test>_old` expected files, which are not
vendored (ONE ORACLE).

## Source and license

| set | upstream | license |
|---|---|---|
| xsb/xsbtests | XSB's test tree (`xsbtests/`), fetched 2026-09-13 to /home/resources/prologs/xsb | GNU Library GPL, version 2, `LICENSE.xsb` (XSB's `XSB/LICENSE`, as shipped) |

SOURCES.tsv maps every vendored file to its path in the upstream tree. The vendoring proceeds one test directory at a time
(LARGE CHUNKS): `basic_tests` first, with the smoke; the other directories follow.

## Layout and drivers

Flat (the container runner counts the `*.pl` at depth 1). Each program keeps its upstream path as a prefix, any character that is not
a letter, digit or underscore spelled `_` (`basic_tests/preproc-opt/progr.P` is `basic_tests_preproc_opt_progr.pl`), because test
directories repeat stems and the harness stages a companion only under a plain atom name. Each file is otherwise byte for byte.

XSB's runner (`gentest.sh`) consults a test file, runs the goal its directory's `test.sh` names with output redirected to a file, and
compares that file SORTED with the expected one. Here each such goal is a DRIVER appended to the vendored file (CEO-700), one row of
DRIVERS.tsv: the goal's leading consult lists become `:- consult(<prefixed companion>).` directives, and the rest runs as
`:- initialization(xsb_sorted_output(Goal))`, which captures what the goal writes and prints its non-empty lines in standard order --
the same sort, so a tabled predicate's answers grade as a set, as XSB grades them. An error the goal raises is printed to standard
error and the lines written before it are kept. The ref is swipl's output of the driven program.

MEASURED 2026-10-10 on basic_tests, the reason for the sort: graded on swipl's unsorted output, 23 of the 27 programs SCRIP did not
match differed only in the order of tabled answers (identical once sorted); with the sorting driver SCRIP grades 23 of 28 in both modes.

## Classes

- CONTAINERS.tsv -- not programs (util_container_or_library.py, verified): a companion a driver loads (LOADED_BY) and files that
  define nothing (NO_DEFINITION). They leave the shipped population.
- UNGRADABLE.tsv -- ORACLE_REFUSES: swipl prints nothing for the driven program (an XSB-only builtin or syntax: `compiler_options/1`,
  module-qualified calls into an XSB-loaded file), swipl's own first lines quoted.
- UNGRADED.tsv -- NEEDS_DRIVER: files XSB's `test.sh` drives nowhere (variants and helpers beside the driven tests); NEEDS_RUNNER_WIRING
  when a program loads a sibling by its upstream name, which the flat package prefixes.

Inventory after basic_tests (2026-10-10): 45 files vendored, 4 containers; 41 shipped = 28 graded + 2 UNGRADABLE + 11 UNGRADED.
