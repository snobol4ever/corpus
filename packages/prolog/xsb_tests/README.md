# XSB's own test programs (XSBTests)

XSB's regression test programs, vendored on Lon's word (2026-10-10, in-chat to the ceo, verbatim: "Let's begin making entries for
demos and test suites."; row prolog-suite-the-xsb-test-programs-vendored-as-a-package-with-swipl-refs-and-graded-as-a-suite-row,
CEO-1595). One FLAT package, one container (ALL.pl / ALL.ref / ALL.csv, built by SCRIP/scripts/util_build_package_suite.py
`--lang prolog --twice`), every ref CUT FROM THE ORACLE. Since 2026-10-23 the oracle is XSB 5.0.0 itself (§ THE ORACLE IS XSB, below);
until then it was swipl -q, and the paragraphs on drivers and the dialect marker below date from then.

## THE ORACLE IS XSB (ceo CEO-1927, 2026-10-23)

Lon 2026-10-23 11:3x CDT, in-chat to the cfo, verbatim: *"Since SWIPL does not have all XSB, we should begin to use XSB system as the third
oracle."* (RULES.md § Oracles, FACT RULE XSB IS THE THIRD PROLOG ORACLE, FOR THE XSB PACKAGE.) CONTRACT.tsv declares it: `oracle xsb-gentest`,
`upstream /home/resources/prologs/xsb/xsbtests`, `compare ignore-all-space`. Each ref is XSB's answer to the run XSB's OWN test scripts make
(ORACLE_RUNS.tsv: directory, options, FILE, CMD -- recorded by RUNNING every directory's test.sh, and incremental_tests' stest.sh, the one
stest.sh testall.sh runs by default, with a recording XEMU in front of xsb_bin(): harness util_xsb_oracle_runs.py record, twice), in a fresh
copy of the upstream test directory: `[FILE]. tell(temp). CMD. told.` on the stdin of `xsb -e segfault_handler(warn).`, the answer the file
temp, its non-empty lines sorted -- the same shape the vendored driver xsb_sorted_output prints SCRIP's in. SCRIP's output is graded
against it ignoring white space within a line, as gentest.sh's `diff -w` does (ALL.csv's compare column). ALL.xsbold names, per entry,
XSB's answer against the NAME_old XSB ships; the ref is XSB's answer either way (CEO-1927 (1)). Rebuild:

    TIMEOUT=120 python3 ../harness/scripts/util_build_package_suite.py ../corpus/packages/prolog/xsb_tests --lang prolog --twice

ALL.prelude still selects SCRIP's SWI dialect (CEO-1712, chosen when swipl cut the refs); how SCRIP reads XSB's programs is SCRIP's lane.

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

THE DIALECT MARKER (hq_packages 2026-10-22, measured the same day): every program that carries a driver begins with the line `:- use_module(library(lists)).` (the FIRST line: a marker carrying a long trailing comment,
placed just before the appended driver clauses, made the compiled mode-4 binary of table_tests_abol_test print nothing while mode 3 was right -- measured; row
prolog-m4-a-long-comment-after-a-use-module-directive-before-the-clauses-silences-the-program). These programs are graded against
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

- CONTAINERS.tsv -- not programs (util_container_or_library.py verify re-derives every row): the 8 of 2026-10-11 (2 LOADED_BY by a load
  directive, 6 NO_DEFINITION), and 148 LOADED_BY a run of XSB's own scripts: a file XSB OPENED while running another program and that its
  scripts run nowhere themselves (ORACLE_LOADS.tsv, strace of the scripts' runs) -- a library the suite loads, neither a test nor a failure
  (CEO-1927 (4)).
- EXCLUDED.tsv -- out of the denominator, each with its measurement, a declaration the builder honours on every rebuild: NO_ORACLE_ANSWER
  (XSB answers differently from run to run -- the 3 socket tests, prolog_db_tests, preproc_test, whose answer carries XSB's own cpu-time load
  messages -- prints nothing where its NAME_old has lines, or its scripts neither run nor open the file) and FAKEABLE_NO_OBSERVABLE (XSB's
  answer is empty, as its NAME_old is: a silent engine would pass it, CEO-1865).
- STAGED.tsv -- the 128 entries whose SCRIP run is staged in their upstream test directory (corpus_suite_harness.py stage_upstream, the
  coo's phase 2 of CEO-1927): every vendored file of the entry's test directory written there under its upstream name (as .pl, and under
  its own name), the appended drivers cut off -- the 72 wfs_tests pNN, whose answer is the file temp wfs_test.P writes (answer=temp-sorted;
  their drivers, appended in the same landing, consult wfs_test and run test(pNN) as wfs_tests/test.sh does), and 56 programs whose XSB
  run opens a vendored sibling by its upstream name.
- UNGRADED.tsv -- NEEDS_RUNNER_WIRING, owed: json_tests_jsontest (its answer carries a carriage return no ref can hold, and it reads
  data/*.json), pip_0110_format_test (format_tests/format.tst) and three utf8 tests (utf8.txt) -- a data file this package does not vendor.
- UNGRADABLE.tsv -- empty: its rows were swipl's refusals.

INVENTORY, MEASURED 2026-10-23 (util_build_package_suite.py --twice, XSB 5.0.0): 907 files vendored = 545 graded (in the table, refs cut from
XSB) + 156 containers + 201 EXCLUDED (194 NO_ORACLE_ANSWER, 7 FAKEABLE_NO_OBSERVABLE) + 5 UNGRADED NEEDS_RUNNER_WIRING. XSB's scripts run
564 of the vendored programs (ORACLE_RUNS.tsv); of the 545 refs, ALL.xsbold reads 500 MATCH and 36 MATCH-w against NAME_old, and 9 DIFF
(today's XSB 5.0.0 answers otherwise than the file it ships; the ref is XSB's run, CEO-1927 (1)): float_tests roots, roots_int_comp and vac
print full float precision; prolog_tests test_write_read writes operator terms -(','(a,b)) where NAME_old has -(?); cdf_tests checks,
type0QueryExt, updateDL, updateExt and updateInt (a directory XSB's testall.sh does not run by default).
