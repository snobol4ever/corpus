# aoc2017_prolog (PrologAoc2017)

Advent of Code 2017 in Prolog, by Average-user (Lucas Polymeris), written for SWI-Prolog 7.2.3
(https://github.com/Average-user/adventofcode-pl-2017, commit f30da3b of 2017-12-26; MIT licence). One file a day, `src/dayNN.pl`, answering
the day's two parts from `src/Inputs/dayNN.txt`, the author's own puzzle input, shipped with the code; `src/tools.pl` holds the helpers every
day loads. Read IN PLACE from `/home/resources/prolog-demos/aoc2017-prolog-average-user/src` (`ALL.source`); no program of it is stored here.

THE QUERIES ARE OURS (`OUR-QUERIES.tsv`): a day runs nothing by itself, its README asks `?- day01a(A), day01b(B).` at the top level, so each
day is put `dayNNa(X).` and `dayNNb(X).` through `drive.pl`, ours (`ALL.launch`: `around - drive.pl`; the ProCovington driver's code,
unchanged). `NAME.in` holds the queries the oracle answers inside 60 s (`QUERIES.tsv`, cut by `sl_cut.py --form table`): 41 of 49. Left out:
`day05b` and `day22b`, which never end (the README names both as unsolved), and `day17b` and `day21b`, which run past the cap. Days 14 and 15
are out whole, both their parts past the cap, with `tools` (`EXCLUDED.tsv`).

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --mine CENSUS.tsv --twice`
(the grader 2026-11-15): 23 entries. Each answer is the day's own printing, then `?- dayNNa(X).` and the binding.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 12 of 23.
