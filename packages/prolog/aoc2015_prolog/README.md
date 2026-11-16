# aoc2015_prolog (PrologAoc2015)

Advent of Code 2015 in SWI-Prolog, by Tatu Tarvainen (https://github.com/tatut/aoc2015-prolog, commit 5dccd93 of 2023-11-04). One file a day,
`dayN.pl`, answering the day's two parts from `dayN.txt`, the author's own puzzle input, shipped with the code (or written into the program).

NOT HOSTED: the repository states no licence, so its programs are read in place from `/home/resources/prolog-demos/aoc2015-prolog-tatut`
(`ALL.source`); this folder holds the index, the answers, our queries and our driver.

THE QUERIES ARE OURS (`OUR-QUERIES.tsv`): a day runs nothing by itself, its README asks `part1(Answer).` at the top level, so each day is put
`part1(X).` and `part2(X).` through `drive.pl`, ours (`ALL.launch`: `around - drive.pl`; the ProCovington driver's code, unchanged). `NAME.in`
holds the queries the oracle answers inside 60 s (`QUERIES.tsv`, cut by `sl_cut.py --form table`): 30 of 42; 5 run past the cap and 7 end in
a resource error of swipl's. Out of the count (`EXCLUDED.tsv`): days 6, 10 and 18 (every query a resource error), 9 and 24 (every query past the
cap), 4, 11 and 15 (no part1/part2 query of that form), and day 12, held because the census reads its `library(http/json)` as network use.

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --mine CENSUS.tsv --twice`
(the grader 2026-11-15): 16 entries.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 10 of 16.
