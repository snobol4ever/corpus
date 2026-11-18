# cmu_prolog (PrologCmuCode)

Prolog code of the CMU Artificial Intelligence Repository, `lang/prolog/code` (Prime Time Freeware for AI, Issue 1-1, 1994): benchmarks,
research, education and fun, most of it posted to comp.lang.prolog. No licence is stated for these files, so the programs are read in place from
`/home/packages/prolog/cmu_prolog` (`ALL.source`); this folder holds the tables, the answers, our queries and our driver.

None of the programs runs anything by itself, so THE QUERIES ARE OURS, in `NAME.in` beside each program's path, read by our driver
`drive.pl` (PrologSwiBench's, copied) after the program (`ALL.launch`): `fun/life/life.pl`, Conway's Game of Life by Jamie Andrews,
with a blinker and a block, as its header's `life(Num_R, Num_C, Live_cells, Gen)` says; `ext/trees/tree23.pl`, Mark Johnson's 2-3 trees,
with three queries of its own predicates; `eval/meta/interp.pl`, R. A. O'Keefe's meta-circular interpreter of 1984, with `append/3`, which
the oracle answers `raised(existence_error(procedure,system/1))`, since it asks for DEC-10 Prolog's `system/1`. The answers were cut from
swipl 9.0.4 twice a second apart by the mine road, identical.

Out: `bench/nrev.pl` (`EXCLUDED.tsv`: it prints its own timing). Owed (`ALL.omit`): `ext/env/env.pl` and `parsing/draw/draw.pl`, no query of
ours yet.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 2 of 3.
