# rakudo_tests

Rakudo's own tests (https://github.com/rakudo/rakudo, release 2026.05, Artistic License 2.0): the folder `t` of the release WITHOUT `t/spec`,
which is Roast and a suite of its own (COO-503). Read IN PLACE from `/home/resources/rakudo-own-tests` (`ALL.source`): an unchanged copy of the
release's `t` (less `t/spec`), `lib`, `LICENSE` and `VERSION`, made on 2026-11-11 so a test runs from a 17 MB top instead of the 487 MB build tree
(the tests name `t/packages/Test-Helpers`, `t/04-nativecall` and `lib` from the top, so `copy root` and `cwd root`). No program of it is stored
here (CIO-92, CIO-96). This folder holds our index (`ALL.csv`, the `path` cell is the path from that top), each entry's answer `NAME.out` cut from
rakudo 2026.05, and `ALL.omit`, which names every test that is no entry with its verdict. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/raku/rakudo_tests --lang raku --mine CENSUS.tsv` (2026-11-11, COO-516); the census is
`/home/resources/progress/MINING-RAKUDO-TESTS-CENSUS.tsv`: 175 tests, 120 ENTRY, 42 NEEDS-DISPLAY (the builder's word for a source that names
NativeCall or a terminal library), 5 DIFFERS-BETWEEN-RUNS, 3 NEEDS-NETWORK, 3 LIBRARY, 1 ORACLE-REFUSES, 1 DOES-NOT-END.

An entry is a test rakudo answers the same twice with standard input closed, inside 60 s, with something on standard output; it is graded on
standard output (its TAP lines) and exit status.
