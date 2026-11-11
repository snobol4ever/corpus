# freepascal_tree

Free Pascal's own test tree (https://github.com/fpc/FPCSource, folder `tests`, GPL 2 with the library exception), read IN PLACE from
`/home/resources/FPCSource/tests` (`ALL.source`); no program of it is stored here (CIO-92, CIO-96). This folder holds our index (`ALL.csv`, the
`path` cell is the path from the collection's root, the `dialect` cell the fpc mode that cut the answer), each entry's answer `NAME.out` cut from
fpc 3.2.2, and `ALL.omit`, which names every program that is no entry with its verdict. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/freepascal_tree --lang pascal --mine CENSUS.tsv --mine-under tbs --mine-dialects fpc`
(2026-11-11, COO-508); the census is `/home/resources/progress/MINING-FREEPASCAL-TESTS-CENSUS.tsv`.

THE FIRST FOLDER IS `tbs` (784 programs): 205 entries; 431 print nothing on standard output and are no entry (a silent engine would earn the
same answer); 85 are units; 49 fpc refuses as they stand (a missing unit of the tree's `units` folder, an option the test asks for in a
`%OPT` line); the rest need a display, input or the network, or answer differently twice. The folders `test`, `webtbs`, `tbf` and `webtbf`
follow, one a landing. An entry is graded on standard output and exit status.

THE SECOND FOLDER IS `webtbs` (2,758 programs, added with `--mine-under webtbs --mine-add`, 2026-11-11): 853 entries; 1,151 print nothing; 320 are
units; 369 fpc refuses as they stand; 26 need input, 26 differ between runs, 9 need a display, 2 the network, 2 do not end. The suite is 1,058
entries. The folders `test`, `tbf` and `webtbf` follow.
