# raku_examples

The Raku examples collection (https://github.com/Raku/examples, Artistic License 2.0), read IN PLACE from `/home/resources/raku-examples/categories`
(`ALL.source`); no program of it is stored here (CIO-92, CIO-96). This folder holds our index (`ALL.csv`, the `path` cell is the path from the
collection's root), each entry's answer `NAME.out` cut from rakudo 2026.05, and `ALL.omit`, which names every program of the collection that is no
entry with its verdict. Built by `harness/scripts/util_build_package_suite.py corpus/packages/raku/raku_examples --lang raku --mine CENSUS.tsv`
(2026-11-11, COO-508); the census is `/home/resources/progress/MINING-RAKU-EXAMPLES-CENSUS.tsv`.

An entry is a program rakudo answers the same twice with standard input closed, inside 60 s, with something on standard output; it is graded on
standard output and exit status. The eleven DOES-NOT-END verdicts were measured on a loaded box (load 15 of 16 cores) and are owed a second
measurement on a quiet one.
