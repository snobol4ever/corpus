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
⭐ The damage has a signature worth reusing: a line ending in `= ` followed by a line starting with `(`, or a
line with an odd number of `'`. Censused across all eight — #1 (5 orphan parens, 23 trailing `=`) and #4 (4
odd-quote lines) are damaged in the combined file; #5-#8 are clean (#5's single odd quote is an apostrophe in a
comment, `FLOYD'S TREESORT3`, checked by eye — a signature is a candidate, never a verdict).

**Measured on the shared oracle after the repair (`sbl -bf`, fed `testpgms.in`):** seven of eight run clean —
#1 rc=0/120 lines · #3 rc=0/46 · #4 rc=0/16 · #5 rc=0/16 · #6 rc=0/44 · #7 rc=0/16 · #8 rc=0/16. Only **#2**
still exits rc=231, at `test2.spt(238)`, on a `;`-separated statement followed by a `.` continuation line whose
region is byte-identical to the combined file — genuinely rejected by this SPITBOL build, named and UNSCORED.

