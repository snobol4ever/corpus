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

**⛔ The oracle crashes on three of the four, measured 2026-09-04 (hq_T, shared oracle
`/home/resources/x64/bin/sbl`, `-bf`, fed `testpgms.in`):**

| program | oracle rc | oracle output |
|---|---|---|
| test1 | 0 | 120 lines |
| test2 | 139 (SIGSEGV) | 8 lines, truncated |
| test3 | 139 (SIGSEGV) | 5 lines, truncated |
| test4 | 139 (SIGSEGV) | 5 lines, truncated |

Those three are UNSCORED and named as such on every board line — never counted as passes, never
counted as failures, and never given a ref. A truncated oracle run is not ground truth, and pinning
one would grade SCRIP forever against the point where the oracle happened to die. The oracle defect
itself is hq_P's row `snobol4-oracle-sbl-bf-sigsegv-on-error-212-recovery-cuts-refs-silently`; when it
lands, these three become scored with no change to the runner.
