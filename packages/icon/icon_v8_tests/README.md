# icon_v8_tests (IconV8Tests)

The ten tests of Icon 8.0b's own test suite (Arizona's FTP archive, `historic/v80b/v80b/tests`) that no later suite in the corpus holds:
`check`, `checkfp`, `endetab1`, `key`, `model`, `name`, `permute`, `speller`, `version7` and `version8`. Public domain, as the Icon
distribution's README says. The census that found them: the grader 2026-11-17, every `.icn` under a `tests` folder of every historic release
against every Icon file of the corpus and of `/home/resources/packages/icon` (15 names; `helloc`, `hellox`, `mem01c` and `mem01x` call C and
need a C build, `define` is a variant translator's file, so ten).

Each test reads its stdin from `NAME.in`, upstream's `NAME.dat`; `version7` also reads `concord.dat` (`in_files`) and `$HOME` (`env`,
`HOME=/home/s4e`). Upstream's 1990 standards (`historic/v80b/v80b/stand/NAME.out`) are not the refs: 9.5 answers `endetab1`, `name` and
`speller` as 8.0b did and the rest differently, and the oracle's answer is the ref.

All ten files were given the semicolons SCRIP Icon requires by `util_icon_semicolons.py` and proved same-code by the stock Arizona translator
(icont 9.5.25a with newline insertion, `-s -c`, `.u1` and `.u2` byte for byte; `CONVERSION-PROOF.tsv`).

Each answer was cut from icont and iconx 9.5.25a twice, a second apart, in two fresh copies, stderr merged. Nine are byte equal; `check`
differs in its `&clock` line alone. Run on the graphics build too, as skill icon section 1 asks where the two builds may differ, one moved:
`version7` prints `&features`, which the graphics build answers with graphics and X Windows, as SCRIP does, so its ref is the graphics
oracle's and it is a text entry of the graphics facility (`version7.display`). `check` ends with status 3, `version7` and `version8` with 1
(a run-time error each prints, an answer).

Masked (`ALL.mask`), each a system value or a clock, never the answer: `check`'s `&clock`, `&date`, `&dateline`, `&host` and `&version`
lines; `version7`'s `&host` and `&version` lines. `check` also prints `&time`, the milliseconds of processor time since the program began,
which read 0 on the oracle in every run. It is left graded: a mask of its bare number would cover 9 of check's 114 lines, and iconx counts it
from the program's start, after the translator, where SCRIP reads 87 (its own translation counted), a cure owed by SCRIP.

The first SCRIP reading (mode 3, SCRIP 8c757a3bc1, on the landing's worktree): 8 of 10. `check` stops in its last part with error 22 where
it calls `system` (and reads `&time` 87); `version7` ends with error 701 as the oracle does, but in SCRIP's own words.
