# prolog_aoc -- Advent of Code in prolog, every repository GitHub lists

One folder a repository (owner_repo) under /home/packages/prolog/prolog_aoc, read in place. Cut by util_build_package_suite.py --mine, twice on the oracle (the grader 2026-11-18,
on Lon's order in the grader's window: "Get all AoC and cut, grade, and score.").

Cut again with drive.pl after each program (ALL.launch; the grader 2026-11-20, Lon: "keep on cutting, grading, and scoring."), since 1826 of the 1948 printed
nothing: their goals are defined and never called. The driver, ours, calls main/0 alone when the program defines it, else each goal it defines among solve,
run, go, start, solution, answer and the parts (part1, p1, star1, task1, q1 and their twos), a goal of one argument printed when the call binds it; a program
that has already printed when it is loaded is left as it stands, so the entries cut before keep their answers.

hakank_hakank added 2026-11-22 (the grader; Lon: "cut, grade, and score."): Hakan Kjellerstrand's SWI-Prolog Advent of Code programs from
github.com/hakank/hakank (MIT, LICENSE beside them, revision 2823c48), folders advent-of-code-2022 (days 1 to 6, his inputs beside them) and
advent-of-code-2023 (days 1 to 4; his repository holds no inputs for that year, so the oracle answers swipl's missing-file error, graded as an answer).
GitHub's language search does not find the repository, its main language being Picat. 10 entries, 269 in all.
