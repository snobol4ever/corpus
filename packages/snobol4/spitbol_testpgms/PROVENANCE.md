# SPITBOL's own test programs (testpgms 1-4)

**What these are.** The four standard diagnostic programs shipped with SPITBOL itself, which
exercise functions, operators, datatype manipulation, pattern matching and the error/interrupt
machinery. `-TITLE SPITBOL TEST PROGRAM #1 -- DIAGNOSTICS PHASE ONE` is the upstream banner, kept
byte-identical. They read one shared data file, `testpgms.in`, on stdin.

**Why they are vendored here.** Lon, 2026-09-04 17:57 CDT: SPITBOL's own testpgms 1-4 must run.
A package directory is where a graded industry-standard suite lives (`corpus/packages/<lang>/<pkg>/`),
and `V` — the vendored-suite column — is the only column the 100% figure is computed from.

**Where they came from.** Copied byte-identical from `corpus/benchmarks/snobol4/testpgms-test<N>.spt`
plus `testpgms.in`, which remain there for timing work. ⛔ The copies are deliberate and the two sets
must not drift: these are graded for CORRECTNESS against the oracle, those are timed. `corpus/benchmarks/snobol4/testpgms.spt`
is the four programs CONCATENATED and is not vendored here — a multi-program file has no single
answer to grade.

**How they are graded.** `SCRIP/scripts/test_snobol4_spitbol_testpgms_suite.sh`, both modes, against
refs cut LIVE from `sbl -bf` fed `testpgms.in` on every run. ⛔ There are NO stored `.ref` files in
this directory ON PURPOSE: a stored ref proves only "unchanged since someone cut it", and cannot tell
a cured compiler from a ref that was cut while the compiler was broken.

**⛔ CORRECTED AGAIN 2026-09-04 18:5x — THERE ARE EIGHT PROGRAMS, NOT FOUR, AND THE COMBINED FILE IS CORRUPTED.**
hq_P measured that `corpus/benchmarks/snobol4/testpgms.spt` holds **eight** `-TITLE SPITBOL TEST PROGRAM` banners;
only #1-#4 had ever been split out. All eight are now vendored here, cut at their measured boundaries
(start/END line pairs 1/422 · 424/683 · 685/743 · 745/844 · 863/939 · 965/1063 · 1075/1216 · 1280/1411).
#5 TREESORT4 · #6 TOPOLOGICAL SORT · #7 SYMBOL TABLE GENERATOR · #8 BRIDGE DEALER were absent from every
runner and master before this.

⛔⛔ **NEITHER SOURCE IS WHOLE, AND THAT IS WHY BOTH ARE KEPT.** In the combined `testpgms.spt`, every `!`
character has been replaced by a **newline** — so `TEST = !(IDENT(A,'A') ...)` became a line ending in `TEST = `
followed by a line starting with `(`, and `ANY('+-&.$*?!@%#')` became an unterminated string. Splitting #1 and
#4 straight out of it therefore REGRESSED two programs that already worked here (#1 rc=0 → rc=231 at line 119,
#4 rc=0 → rc=231 "unmatched string quote" at line 25). The per-program files carry a hand repair of that damage;
the combined file carries four programs the split never had. So: **#1-#4 keep the repaired text, #5-#8 come from
the combined file**, and both facts are written down because a future re-split from either source alone will
silently undo half of this.
✅ **CORROBORATED BY TWO INDEPENDENT METHODS (hq_P and seat09, 2026-09-04).** seat09 found the same corruption
from the benchmarks side by RAW-BYTE inspection, without having read this census, and agreed on every program
including that #3 was spared. hq_P then measured it a third way, and this is the cleanest statement of the damage
any of us has: **a WHOLE-FILE count of literal `!` characters: combined `testpgms.spt` = 2 in the entire file; vendored
`test1.spt` = 23, `test3.spt` = 2, `test4.spt` = 1.** ⚠ Quoted as what it is, at hq_P's own insistence: that is a
file-level census, NOT a per-span count of the #1 and #4 regions. It CORROBORATES the signature census below and
it does not independently establish the per-program boundaries — those rest on the `-TITLE`/`END` line pairs
recorded above. ⭐ That matters most for #5-#8, whose clearance here rested partly on an EYEBALL (#5's odd quote
run down to the apostrophe in `FLOYD'S TREESORT3`); seat09's raw-byte pass over the same span agrees, by a method
that cannot make that mistake.
⛔ **`corpus/benchmarks/snobol4/testpgms.spt` IS NOT TO BE REPAIRED** (hq_P's ruling, endorsed): nothing consumes
it (the three scripts naming testpgms read the split files), both its roles are served by these copies and the
benchmarks splits, and a line-count-changing edit would invalidate the start/END boundary ledger above while rows
are reading against it. Repairing it would trade a known-damaged archive for an unknown-damaged one.

⭐ The damage has a signature worth reusing: a line ending in `= ` followed by a line starting with `(`, or a
line with an odd number of `'`. Censused across all eight — #1 (5 orphan parens, 23 trailing `=`) and #4 (4
odd-quote lines) are damaged in the combined file; #5-#8 are clean (#5's single odd quote is an apostrophe in a
comment, `FLOYD'S TREESORT3`, checked by eye — a signature is a candidate, never a verdict).

⚠ **`rc=0` IS NOT `PASS`, AND THIS FILE SAID SO TOO LOOSELY (seat09, hq_P lane, 2026-09-04).** Several of these
programs print an internal SPITBOL diagnostic partway through — #4 an `ERROR 116` on an INPUT unit-number call,
#5 the same, #6 and #7 an `ERROR 248` redefinition, #8 an `ERROR 160` — and then **exit 0 anyway**. So a line
below reading "rc=0, 16 lines" means *the oracle terminated normally*, not *the program did what it was written
to do*. The runner is unaffected, because it grades SCRIP against whatever the oracle actually produced, and a
truncated-but-clean-exit oracle answer is still a real answer to diff against. But nobody should read this table
as a statement that the eight programs run correctly under SPITBOL: four of them announce an error first.

**Measured on the shared oracle after the repair (`sbl -bf`, fed `testpgms.in`):** seven of eight run clean —
#1 rc=0/120 lines · #3 rc=0/46 · #4 rc=0/16 · #5 rc=0/16 · #6 rc=0/44 · #7 rc=0/16 · #8 rc=0/16. Only **#2**
still exits rc=231, at `test2.spt(238)`, on a `;`-separated statement followed by a `.` continuation line whose
region is byte-identical to the combined file — genuinely rejected by this SPITBOL build, named and UNSCORED.


**⭐ 2026-09-26 hq_snobol4 — `compile_args` AND `run_args` ARE DECLARED IN `ALL.csv` (RULES.md hard-cap rule clause 8 (f), CEO-1281; Lon in-chat 2026-09-26: *"the command-line switches are stored in the per-test attribute file for each test suite. So add the required switches to the tests that need them."*).**
test1, test2 and test6 declare `--stlimit`: test1 and test2 print `&LASTNO` from a SETEXIT handler and run under `TRACE`/`&TRACE`,
and test6's `&DUMP` prints `&STCOUNT` — keywords SCRIP maintains only under the statement instrumentation, which is off by
default (Lon 2026-09-24 16:0x). `--stlimit` is a COMPILE switch: it goes before the source on `scrip --run` and on
`scrip --compile`; the mode-4 binary does not read it. Measured on SCRIP 6974ab821: test1 without it prints every trap as
`ERROR AT 58` (a stale `&LASTNO`) where `sbl -bf` prints the failing statement; with it, 23 of the 29 trap lines agree.
The runner's own `export SCRIP_SNO_STMTKW=1` is the typed-by-the-runner switch this column retires once the one reader
(the coo's row `instruments-every-test-unit-s-attribute-row-carries-its-compile-args-and-run-args-…`) applies the column.

**⭐ 2026-09-27 hq_snobol4 — THE FIVE POST-MORTEM PROGRAMS ARE GRADED (ceo CEO-1316, on Lon's word: *"I want to see TPgm go to 8/8. I'm tired of seeing that 1/8."*).**
test4, test5, test6, test7 and test8 are no longer OUTSIDE. sbl -bf still stops each of them with a fatal error (116, 116, 248, 248, 160) and exits 0 carrying SPITBOL's post-mortem block, and that answer is now graded: `SCRIP/scripts/util_spitbol_post_mortem.py` removes the block only when it has exactly the measured shape (3 blank lines, the `file(line) : ERROR nnn -- text` banner, 5 blank lines, `in file`, `in line`, `in statement`, `stmts executed`, `execution time msec`, the three `stmt /` throughput lines exactly when the time is above 0 ms, `REGENERATIONS`, `memory used`, `memory left`, 1 blank line — read from `stopr` in `/home/resources/x64/sbl.min`) and refuses any other shape; the rest of stdout is compared byte for byte (test6's whole crash-time `&DUMP` included), and the banner and statement are compared with our stderr through `util_render_error_voice.py spitbol`. The accounting is never graded (CEO-420 (b)). ⚠ **They pass by stopping exactly where SPITBOL x64 stops.** They are Macro SPITBOL 370 programs — an `INPUT` with a record length, a FORTRAN FORMAT as `OUTPUT`'s third argument, `DATA` naming `ITEM` and `CHAR` — and running them to completion would widen the dialect against the one oracle, which is Lon's call and is not taken. test2 stays OUTSIDE: sbl exits rc 231 at compile time with no answer.

**⭐ 2026-09-27 hq_snobol4 — KEPT ENHANCEMENTS THE ORACLE LACKS, graded through `ALL.mask` (ceo CEO-1293, CEO-1316 (2)).** Each is one named line at a time, the oracle staying live, never a hand-edited ref:
- **VALUE** — Lon, in-chat 2026-09-26: *"Keep the VALUE function we like new features."* test1's statement 137, `TEST = DIFFER(VALUE('B'),B) STARS`: sbl -bf has no VALUE and its SETEXIT handler prints the trap line `****  ERROR AT  137      &ERRTYPE =      22 ****`, which we never print. That line is an **ORACLE-ONLY** row (removed from the oracle's stream only, by exact text; a missing or extra line of ours still reds), and the four counts it moves by one — NUMBER OF ERRORS DETECTED, DIAGNOSTICS, &ERRLIMIT, &TRACE — are ordinary replace rows. Measured 2026-09-27 under test1's declared `--stlimit`: those five lines are test1's whole divergence from sbl -bf; with them masked test1 passes both modes (5 of its 140 oracle lines masked, counted on the board).

**⭐ 2026-09-27 hq_snobol4 — test2 GRADED BY ITS COMPILE REFUSAL (ceo CEO-1323, on Lon's *"I want to see TPgm go to 8/8"*).** sbl -bf refuses to compile test2 (rc 231, `test2.spt(238) : ERROR 214 -- bad label or misplaced continuation line`, deterministic 30 of 30 runs): statement 237 ends with `;` and line 238 continues it with a lone `.`, and SPITBOL x64 reads a continuation line where no statement is open as a misplaced one. SCRIP now refuses what the one oracle refuses — the same ERROR 214 at the same line through the one error voice, no code generated — and the runner grades a compile refusal by the code and line of every diagnostic (`scripts/util_spitbol_compile_refusal.py`), never by the rc alone. test2 passes by being refused where SPITBOL x64 refuses it; OUTSIDE_SPITBOL_BASELINE.tsv and UNGRADABLE.tsv are empty. The eight programs are all graded.
