# corpus/packages/raku/roast -- the attribute file (ALL.csv, CEO-1168) for the Raku roast suite, whose .t sources are the upstream drop read in place from /home/resources/roast-master (SCRIP/refs is gone since CEO-765; raku_roast_scoreboard.sh finds them there). Origins are paths relative to that drop. heap_kb carries a program's DECLARED arena in KB (Lon 2026-09-23, CEO-1167); empty = the shipped default.

## The files form, read in place (2026-11-11, COO-508, COO-509, CTO-591)

`ALL.source` names the collection (`/home/resources/roast-master`, `copy root`, `cwd root`: each test runs from the top of a scratch copy of the
whole tree, so a file finds `packages/Test-Helpers` above its folder). The `path` cell is the file's path from that root; `language` is raku
(the extension `.t` does not say it); `compare` is tap: a file is graded on its plan and on each test's number and ok or not ok, not on its bytes
(rakudo prints memory addresses and hash orders inside test descriptions). THE GRADED UNIT IS THE RAKUDO-FUDGED FILE (CTO-514 ruling 4 (iii)): for
the 216 files roast's own `fudge rakudo` changes, the fudged text is stored here under the file's own path and is laid over the copy for its run;
every other program is read in place and none is stored. `NAME.out` is rakudo 2026.05's standard output on the fudged file, cut twice
(`/tmp` runner of the coo, 2026-11-11); a file rakudo fails fudged, or answers differently twice in its tests, is NO_ORACLE_ANSWER in
`EXCLUDED.tsv`. `ALL.omit` names every excluded file so no grader runs it. The census is `/home/resources/progress/MINING-ROAST-SOURCE-CENSUS.tsv`.
