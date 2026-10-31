# unicon_tests -- Unicon's own test suite (UniTests)

**Source:** `/home/resources/unicon/tests` (the Unicon git drop d784f58, 2026-09-06; Unicon 13.3), vendored by `harness/scripts/util_vendor_unicon_tests.sh`. 267 `.icn` files ship upstream;
this package holds 221 of them (the categories below) plus `crypto/` (30, held until the oracle build has OpenSSL) and 16 helper files kept under `data/` and `bench/icon/` (depth 3, never units).

## Layout (upstream's, provenance kept)
`<category>/NAME.icn` beside its `NAME.dat` (upstream's `data/NAME.dat`, the program's stdin); upstream's `data/` and `stand/` are kept verbatim as subdirectories (`stand/NAME.std` is upstream's own expected
output; **the oracle's answer is the ref**, and a `.std` the oracle disagrees with is a finding, not a grading). Makefiles are not vendored.

## The contract (`CONTRACT.tsv`)
`stderr merged`: each program is compiled and run as upstream's `tests/Makefile.test` runs it, `prog < data/NAME.dat > out 2>&1`. `oracle unicon`: every ref is cut from the Unicon translator through
`unicon_bin()` (`lib_oracle_flags.sh`), `ALL.ref` by `util_build_package_suite.py --lang icon --twice` (a program whose two oracle runs differ is not absorbed). Never `unicon -E`, never a normalizer.

## The population
`ALL.icn / ALL.ref / ALL.csv` (declared `heap_kb`/`stack_kb`), `PARTITION.tsv`; `ALL.excluded.txt` names every shipped program the container does not absorb with its reason. `EXCLUDED.tsv` holds the
programs a ruled class leaves out of the denominator: bench (26, NOT_A_UNIT_TEST: library modules and benchmarks, CEO-1221), graphics (4, CEO-1315), database (9, the oracle build has no SQL/ODBC), and the
oracle's non-answers (CEO-1696: empty output, a crash, a hang, a nondeterministic answer, program monitoring). Five tests import precompiled packages (`unicon/FxPtTest`, `FxPtTest_OVLD`, `list_test`,
`udb/prime`, `udb/scopes`) and are shipped, ungraded and debt until the oracle runner can prebuild their packages.

## Grading
`harness/scripts/test_icon_unicon_suite.sh` (the coo's board; suite key `unitests`). Design: `.github/ARCH-UNICON.md`; lane goal: `.github/GOAL-UNICON-100.md`.
