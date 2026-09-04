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

**⛔ CORRECTED 2026-09-04 18:4x — MOST OF WHAT LOOKED LIKE AN ORACLE CRASH WAS OUR OWN SPLIT DAMAGE.** The first
version of this file said the oracle SIGSEGVs on tests 2-4. Re-measured after the 18:19 oracle swap, against
BOTH binaries, and then against a repaired split:

| program | OLD oracle (pre-swap) | NEW oracle | after stripping the stray first line |
|---|---|---|---|
| test1 | rc=0, 120 lines | rc=0, 120 lines (**byte-identical**) | rc=0, 120 lines |
| test2 | rc=231, 8 lines | rc=231, 8 lines | **rc=231** — genuine, see below |
| test3 | rc=139 (SIGSEGV), 5 lines | rc=231, 5 lines | **rc=0, 46 lines** |
| test4 | rc=139 (SIGSEGV), 5 lines | rc=231, 5 lines | **rc=0, 16 lines** |

⛔ **The stray first line was `./*`, and it is the separator that FOLLOWS `END` in the concatenated upstream
file.** Whoever split `testpgms.spt` into `testpgms-test<N>.spt` put each program's trailing separator at the
HEAD of the next file. A `.` in column 1 is SPITBOL's continuation marker, so every affected program died at
line 1 with `ERROR 214 -- bad label or misplaced continuation line` — before executing a single statement.
⭐ **That is why the run status is not enough on its own to say whose fault a failure is.** Three programs
looked like an oracle defect for as long as nobody read the first line of the file. The oracle swap was real
and did fix the SIGSEGVs, but it converted them into a graceful error exit on OUR broken input, not into a
pass — so the swap alone would have left this suite reading 1 of 4 forever.

**test2 is genuinely rejected, and it is not split damage.** The oracle stops at `test2.spt(238)`:

```
D75      TEST NOTANY(*'ABCDEFGHJKLMPQRSTUWXYZ') $ VARA :S(D77) ;
.                                                          ERROR()
```

A `;`-separated statement followed by a `.` continuation line. That region is **byte-identical** to the
upstream concatenation (`testpgms.spt` lines 659-662, checked), so nothing we did produced it: this build of
SPITBOL rejects the construct under `-bf`. Named and UNSCORED, never counted as a SCRIP failure.

⚠ **The upstream file holds at least SIX programs, not four** (`-TITLE SPITBOL TEST PROGRAM #5` and `#6` are
in `corpus/benchmarks/snobol4/testpgms.spt` at lines 863 and 965). Lon's order named 1-4 and that is what is
vendored here; 5 and 6 are available for a later row and are not lost.

