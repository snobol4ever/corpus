# unicon_uni

Unicon's `uni` tree (https://github.com/uniconproject/unicon; the GNU GPL for the extensions and the GNU LGPL for the class library, Unicon's
COPYING), read IN PLACE from `/home/resources/unicon/uni` (`ALL.source`); no file of it is stored here (CIO-96). This folder holds our index
(`ALL.csv`, the `path` cell is the path from the tree's root, the dialect cell unicon), each entry's answer `NAME.out` cut from the Unicon
translator (`unicon_bin`, each program translated inside a scratch copy of its own folder so the ucode the built tree ships beside it links), and
`ALL.omit`, which names every file that is no entry with its verdict. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/icon/unicon_uni --lang icon --mine CENSUS.tsv` (2026-11-11, COO-516); the census is
`/home/resources/progress/MINING-UNICON-UNI-CENSUS.tsv`: 710 files, 15 ENTRY, 566 LIBRARY (no procedure main: classes and library modules),
54 NO-OUTPUT, 43 NEEDS-DISPLAY, 19 ORACLE-REFUSES, 6 NEEDS-NETWORK, 4 NEEDS-INPUT, 2 DIFFERS-BETWEEN-RUNS, 1 READS-THE-ENVIRONMENT.

An entry is a program unicon answers the same twice with standard input closed, inside 60 s, with something on standard output; it is graded on
standard output and exit status. The tree's text carries no statement-ending semicolons (Unicon inserts them at line ends) and SCRIP's Icon asks
for them, so a first reading is expected red on the parse; the conversion is the row mining-a-test-suite-from-unicon-uni's amendment CIO-101.
