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

SOURCES.tsv maps every vendored file to its path in the upstream tree: all 907 Prolog files of `xsbtests/`, in 28 test directories
and their subdirectories (basic_tests landed first with the smoke, corpus bd610c90f; the rest in the second landing).

## Layout and drivers

Flat (the container runner counts the `*.pl` at depth 1). Each program keeps its upstream path as a prefix, any character that is not
a letter, digit or underscore spelled `_` (`basic_tests/preproc-opt/progr.P` is `basic_tests_preproc_opt_progr.pl`), because test
directories repeat stems and the harness stages a companion only under a plain atom name. Each file is otherwise byte for byte, but for
the 32 XSB shipped with CR-LF line endings (prolog_tests' parmod_tests and kin): their CRs at end of line are stripped, Lon's "just say
no to CR-LF" as CEO-1414 applied it to the earlier packages (none of them tests a carriage return; every ref re-cut identical).

XSB's runners (`gentest.sh`, and `sgentest.sh` / `agentest.sh`, the same contract under subsumptive tabling and call abstraction)
consult a test file, run the goal a directory script names (`test.sh`, `stest.sh`, `atest.sh`, following its `cd`s into
subdirectories) with output redirected to a file, and compare that file SORTED with the expected one. Here each such goal is a DRIVER
appended to the vendored file (CEO-700), one row of DRIVERS.tsv; a goal XSB's script has commented out drives its file only when no
active line does, and the appended comment says so: the goal's leading consult lists become `:- consult(<prefixed companion>).` directives, and the rest runs as
`:- initialization(xsb_sorted_output(Goal))`, which captures what the goal writes and prints its non-empty lines in standard order --
the same sort, so a tabled predicate's answers grade as a set, as XSB grades them. An error the goal raises is printed to standard
error and the lines written before it are kept. The ref is swipl's output of the driven program.

THE DIALECT MARKER (hq_packages 2026-10-22, measured the same day): every program that carries a driver begins with the line `:- use_module(library(lists)).` (the FIRST line: with the marker last, in the
driver block, mode 4 printed nothing for table_tests_abol_test while mode 3 was right -- a SCRIP divergence by the marker's position, observed and not yet rowed). These programs are graded against
swipl, and SCRIP reads a program as SWI-Prolog only when it carries a module/2 or use_module directive; without one it reads the ISO/GNU default (double_quotes codes, GNU's padding in format ~Ns,
no SWI listing/1, GNU's portray_clause and residual printing). The marker states what the oracle already is: swipl's output is unchanged (the refs are identical but one: test_termtoatom prints swipl's
numeric variable name, `_6254` became `_10430` because the program grew a line -- an answer nobody can match), no entry that passed changed (165 of 166 entries unchanged, the 166th reads a companion
data file), and seven were cured (format_test, listing_test, newfirst, abolish_cycle, abolish_dag, abol_test, pred_abolish_cycle). The container was rebuilt with `util_build_package_suite.py --lang prolog`
(244 absorbed, 663 excluded, balanced, a rebuild twice agreed); ALL.csv differs from before only in n_lines (+1, 234 rows) and PARTITION.tsv was rebuilt.

THE DIALECT MARKER (hq_packages 2026-10-22, measured the same day): every appended driver is preceded by `:- use_module(library(lists)).`. These programs are graded against swipl, and SCRIP reads a
program as SWI-Prolog only when it carries a module/2 or use_module directive; without one it reads the ISO/GNU default (double_quotes codes, GNU's padding in format ~Ns, no SWI listing/1, GNU's
portray_clause and residual printing). The marker states what the oracle already is, changes no output of swipl (the refs are identical but one: test_termtoatom prints swipl's numeric variable
name, `_6254` became `_10430` because the program grew a line -- an answer nobody can match) and changed no entry that passed (165 of 166 entries unchanged, the 166th reads a companion data
file); it cured seven (format_test, listing_test, newfirst, abolish_cycle, abolish_dag, abol_test, pred_abolish_cycle). The container was rebuilt with `util_build_package_suite.py --lang prolog --twice`
(244 absorbed, 663 excluded, balanced); ALL.csv differs from before only in n_lines (+1, 234 rows) and PARTITION.tsv was rebuilt.

MEASURED 2026-10-10 on basic_tests, the reason for the sort: graded on swipl's unsorted output, 23 of the 27 programs SCRIP did not
match differed only in the order of tabled answers (identical once sorted); with the sorting driver SCRIP grades 23 of 28 in both modes.

## Classes

- CONTAINERS.tsv -- not programs (util_container_or_library.py, verified): a companion a driver loads (LOADED_BY) and files that
  define nothing (NO_DEFINITION). They leave the shipped population.
- UNGRADABLE.tsv -- ORACLE_REFUSES: swipl prints nothing for the driven program (XSB-only builtins and syntax: `compiler_options/1`,
  `auto_table/1`, `index/2`, `load_dyn/1`, the `import ... from ...` directive and HiLog, module-qualified calls into an XSB-loaded
  file), swipl's own first lines quoted; ORACLE_CONTRACT_NOT_IMPLEMENTED: `compiler_tests`, whose runner diffs XSB's `.xwam` object.
- UNGRADED.tsv -- NEEDS_DRIVER: files no XSB script drives (helpers, data and variants beside the driven tests); NEEDS_RUNNER_WIRING:
  a program that loads a sibling by its upstream name (`['Driver']`), which the flat package prefixes, and `wfs_tests`' `pNN` programs,
  which XSB drives by a shell loop through a harness that loads them by name and writes to a file; TIMEOUT: no answer within 60 s, twice.

INVENTORY, MEASURED 2026-10-11 (inventory_line rc 0): 907 files vendored, 8 containers (2 LOADED_BY, 6 NO_DEFINITION); 899 shipped =
244 graded + 253 UNGRADABLE (249 ORACLE_REFUSES, 4 ORACLE_CONTRACT_NOT_IMPLEMENTED) + 402 UNGRADED (257 NEEDS_DRIVER, 141
NEEDS_RUNNER_WIRING, 4 TIMEOUT). 556 files carry a driver (40 of them from a line XSB comments out).
