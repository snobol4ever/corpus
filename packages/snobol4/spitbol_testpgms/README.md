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
runner and rungs before this.

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

**⭐⭐ 2026-10-02 ceo — test4, test5, test7 AND test8 MODERNIZED ON LON'S WORD; ALL FOUR NOW RUN TO COMPLETION UNDER sbl -bf (ceo CEO-1401).** Lon, in-chat to the ceo, verbatim: *"So, are these SNOBOL4 programs old? Mainframe old? It seems just fix the I/O associations to be modern. Done and done."* then *"Change the CHAR to CHR."* They are: Macro SPITBOL for the IBM 360/370, card images read 72 columns at a time, a line printer on FORTRAN unit 6 with carriage control, and a data field named CHAR before SPITBOL x64 made CHAR a builtin. SPITBOL x64 refused one of those statements near the top of each program, so until today its whole answer was a post-mortem and the runner graded these four by stopping where it stops (CEO-1316). THE EDITS, and nothing else: `INPUT(.INPUT,,72)` becomes `INPUT(.INPUT)` in test4, test5 and test7 (every card in `testpgms.in` is at most 72 columns, so the record length changed nothing); test7's data field CHAR becomes CHR on its eight code lines, comments untouched; test8's `OUTPUT('TITLE',6,'(14H1THIS IS HAND ,110A1)')`, `OUTPUT('DEALER',6,'(11H DEALER IS ,110A1)')` and `OUTPUT('SKIP',6,'(A1)')` become `OUTPUT(.TITLE)`, `OUTPUT(.DEALER)` and `OUTPUT(.SKIP)`, the two format literals move into the assignments (`TITLE = 'THIS IS HAND ' NTHDEAL`, `DEALER = 'DEALER IS ' DEAL`), and `SKIP = '        '` (a blank FORTRAN carriage-control line) becomes `SKIP = ''`; the page eject of the `1` carriage control is not reproduced. MEASURED: sbl -bf runs test4 to 1366 lines, test5 to 53, test7 to 1251 and test8 to 69, rc 0, no ERROR banner; SCRIP m3 and m4 byte-identical on all four. test8 exposed a SCRIP runtime defect, cured in the same landing (SCRIP, `_io_assoc_std` in core.c, gate `test_gate_sno_every_variable_keeps_its_own_standard_stream_association.sh`): a second OUTPUT(.X) evicted the first, so SCRIP printed only SKIP. The benchmark copies `corpus/benchmarks/snobol4/testpgms-test{4,5,7,8}.spt` carry the identical code edits, so the two sets still differ only by the data cards after END. `ORACLE_ACCEPTANCE.tsv` re-censused: unchanged (sbl OK, csnobol4 OK for all four). The originals stay in git history; hq_snobol4's statement-number gate, which used them as post-mortem witnesses, now carries the four refused statements inline. ⚠ test6 is the same class and was not touched: its `DATA('ITEM(COUNT,TOP)')` redefines SPITBOL's builtin ITEM (ERROR 248 at line 16), so it still passes only by stopping where sbl stops, with its answer cut short.

**⭐⭐ 2026-10-02 ceo — test6 MODERNIZED ON LON'S WORD AND GIVEN ITS OWN INPUT (ceo CEO-1410).** Lon, in-chat to the ceo, verbatim: *"Fix test6 also."* then *"Finish ORD and test6."* The same mainframe class as test4, 5, 7 and 8, with four edits and nothing else: the data type `ITEM` becomes `ITM` (SPITBOL x64 reserves ITEM as a builtin, ERROR 248 at line 16) on its two code lines; `INPUT(.INPUT,,72)` becomes `INPUT(.INPUT)`; `OUTPUT('OUT',6,'(121A1)')` becomes `OUTPUT(.OUT)` (sbl had read the FORTRAN format as a FILE NAME and written OUT's two lines into a file called `(121A1)`); and OUT's two texts lose their carriage-control characters (`1` page eject, `0` double space), not reproduced, as in test8. ⚠ AND test6 HAD NEVER READ ITS OWN DATA: every program here was fed `testpgms.in`, test4's syntax cards, so test6 read them as its relations. Its own 14 relation cards follow its END in the original combined deck (`corpus/benchmarks/snobol4/testpgms.spt`, the `./*` end-of-data card dropped) and are now `test6.in`; the runner feeds a program its `<stem>.in` when it has one (SCRIP `fea8b3b2f`), and ALL.csv's stdin column reads 1 for test6. The benchmark copy carries the identical code edits and already carried the cards after END. MEASURED: sbl -bf runs test6 to completion, 226 lines, the topological sort and its &DUMP, rc 0, no ERROR banner. SCRIP then differed in two dump details: the INPUT variable was missing from the dump (cured, SCRIP `fea8b3b2f`) and every data-object serial from the first NODE on is one higher, because SCRIP runs the right side of `X<I> = ITM(0,)` before the out-of-bounds subscript fails and so creates one ITM sbl never creates — the cfo's row `snobol4-an-assignment-evaluates-its-subscripted-subject-before-its-object-a-failing-subscript-never-runs-the-right-side` (CEO-1411). test6 reads RED on that defect until it lands; it no longer passes by stopping where sbl stops.
