# KEEP.md — probe/fuzz

⛔⭐ **This is NOT a permanent-exception claim.** 20 of the previous 25 held-out witnesses converted
this session once `(D)` xfail/xpass support landed (SCRIP `3987d9ba`, hq_C) — see the task's LEDGER.
**These 5 stay loose for a DIFFERENT, NEWLY-FOUND reason, unrelated to `(D)`:** `corpus_suite_harness.py
convert` refused each because its own two internal measurements of the SAME file (once as "original",
once as a verbatim "candidate" copy in a fresh tmp dir) disagreed — `byte-equal-or-no-delete` correctly
refuses when it cannot even prove a source is stable against itself.

## Root cause, directly confirmed for one of the five (seat03, 2026-08-28) — not inferred, reproduced
`corpus_suite_harness.py`'s `compile_m4()` links the m4 binary **without `-no-pie`** — the identical
defect class already found+fixed in `test_crosscheck_sc_corpus_rung.sh` and flagged-not-fixed in
`test_corpus_snobol4.sh`'s own `compile_mode4()` (seat07, 2026-08-27). Built `fz_segv_09.sno` by hand
through the harness's exact steps (`scrip --compile` → `gcc -c` → `gcc ... -o t.bin`): the result is a
PIE binary (confirmed via `file`; linker prints `warning: creating DT_TEXTREL in a PIE`, the mechanism
`CLAUDE.md`/`RULES.md` already document for m4's absolute-address codegen). Run 5×: **4× SIGILL
(rc=132), 1× SIGSEGV (rc=139)** — the crash *signal* itself flips depending on ASLR's per-exec load
address. The identical `.o` re-linked with `-no-pie` (otherwise byte-identical build), run 5× the same
way: **5× SIGSEGV (rc=139)**, perfectly stable. `convert_one`'s `behaviorally_equal` for a CRASH kind
requires the exact signal to match (`self.returncode == other.returncode`) — against an m4 side this
unstable, no candidate could ever pass, mechanically, regardless of conversion method.

**Not this row's call to patch** — `corpus_suite_harness.py`'s `compile_m4()` is the ONE shared m4 path
for every language's conversion, not just `fuzz`; changing its link flags is a decision with fleet-wide
blast radius (same restraint seat07 already showed on `test_corpus_snobol4.sh`'s own gate). Flagged to
hq_C, not fixed here. Likely (not verified for the other four) that adding `-no-pie` there would let
some or all of the remaining 4 convert cleanly too.

⛔⭐ **UPDATE (seat06, 2026-08-28) — the `-no-pie` question above is now RULED, PERMANENTLY, AGAINST.**
`m4-pie-vs-no-pie-changes-behaviour-not-just-signal` closed (seat10, full analysis
`.github/ARCH-ENGINE.md` § "Mode-4 Link Mode"): **PIE stays; `-no-pie` must NOT be added to
`compile_m4()`**, because doing so was measured to SIGSEGV two other, non-crash-expected witnesses
20/20 while "fixing" nothing — a flag that lowers a crash rate without curing the crash makes a flaky
gate *look* stable, which the ruling calls strictly worse than visible flakiness. `corpus-suite-
harness-compile-m4-missing-no-pie` (the row this file's original text pointed at) is CLOSED on that
ruling, not implemented. **This is not "still pending" any more — there is no `-no-pie` fix coming.**

**Separately: a real stack-frame-reservation bug in `main`'s mode-4 prologue was found and fixed this
same day** (`pascal-m4-intermittent-segv-layout-sensitive`, `SCRIP 3800a986`) — under `ZC_FRAME_RSP`,
`main`'s prologue reserved a hardcoded 8 bytes while the body addresses working-storage slots at fixed
offsets hundreds of bytes above that, colliding with the kernel-placed `envp`/`argv` block a few hundred
bytes above entry `rsp`. **Tested against all 5 of this file's witnesses post-fix, since it is the same
general "stack-adjacent memory corruption" shape** — mixed result, not a fix for this row:

| witness | post-fix sample | verdict |
|---|---|---|
| `fz_segv_09` | 17× signal 11, 1× signal 4 (18 runs, 1 hung) | still non-deterministic |
| `fz_red_m1b_arbno_defer_blob` | 8/8 signal 11 | looks stable at N=8 — **not proven**, see below |
| `fz_red_m4a_blob_alt_fence_defer` | 4× signal 4, 4× signal 11 (8 runs) | still non-deterministic |
| `fz_red_m4b_blob_defer_fence` | 6× PASS, 2× signal 11 (8 runs) | still non-deterministic (flips PASS↔CRASH) |
| `fz_segv_24` | 8/8 signal 11 | looks stable at N=8 — **not proven**, see below |

⛔ Two of five read constant at N=8 as of the last update, below this project's own N≫12 bar; three of
the five (`fz_segv_09` at N=18, `fz_red_m4a_blob_alt_fence_defer`, `fz_red_m4b_blob_defer_fence`) were
ALREADY proven non-deterministic at small N, and a fuzz probe whose whole purpose is finding a wild
memory access is exactly the shape where "8/8 so far" is weak evidence, not a green light on its own.

⛔⭐ **UPDATE (seat03, 2026-08-28, third pass) — the N≫12 bar is now MET for both, while resending
seat06's blocked ask to hq_P.** Freshly rebuilt both from scratch (fresh `scrip --compile` → `gcc -c` →
`gcc` link, current HEAD `e7bdff53`, mirroring `compile_m4()`'s exact steps — see "Re-running this
classification" below) and ran each **20 more times** (`timeout 5s`, same binary across all 20 runs
per witness, each run getting its own independent kernel ASLR base exactly like the earlier N=8 pass):

| witness | this pass (N=20) | combined with seat06's N=8 | verdict |
|---|---|---|---|
| `fz_red_m1b_arbno_defer_blob` | 20/20 signal 11 | 28/28 signal 11 | **stable at N=28, clears N≫12** |
| `fz_segv_24` | 20/20 signal 11 | 28/28 signal 11 | **stable at N=28, clears N≫12** |

Unlike `fz_segv_09` (whose flakiness was visible in its very first 5-run sample), 28 consecutive
identical results across two independently-built binaries is meaningful evidence, not proof — finite
sampling can never rule out a rare flip. But these two no longer belong in the same "not proven" bucket
as the other three: they now read as **stable, deterministic SIGSEGV**, separable from the 3 confirmed-
flaky witnesses. This does not resolve the row (still not this row's call to root-cause or grant a
standing exception) but it sharpens the fork hq_P is being asked to rule on: any per-witness path
(individual root-cause child rows) now has 2 likely-tractable single-cause targets and 3 genuinely
nondeterministic ones, rather than 5 undifferentiated unknowns. **Not chased further here** — this
row's job is conversion, not individually root-causing five separate memory-safety bugs (a different,
larger undertaking this row has already correctly declined per its own LEDGER's "not this row's call"
restraint).

**Where this leaves the row: genuinely stuck, not merely blocked-pending-infrastructure.** The `-no-pie`
escape hatch is closed for good; the stack-headroom fix helps the DIFFERENT bug class it targeted but
does not resolve these 5 (confirmed, not assumed, per the table above). Converting them requires either
individually fixing whatever real memory defect each one demonstrates (5 separate investigations,
likely 5 separate rows) or a policy ruling that a genuinely-unstable-against-itself fuzz witness is a
standing, permanent KEEP.md exception (like `bb`/`passthru`'s own precedent) rather than something the
"crosscheck and probe convert TOTALLY" ruling was ever meant to reach. **Routed to HQ as a policy
question, not decided here** — see the task's own LEDGER for the ask.

⚠️ **Scope of what was actually verified:** the PIE/`-no-pie` mechanism above was reproduced directly
only for `fz_segv_09` (both of whose original verdicts were plain CRASH, making it the cleanest isolate
case). The other four below show the identical SYMPTOM — `convert_one` reports its two internal
measurements of the unmoved original disagreeing — which is consistent with the same mechanism (all
five are "blob"/"fence"/"defer"-style probes touching marginal/uninitialized memory the same way) but
was not individually deep-dived file by file; two of them (`fz_red_m1b_arbno_defer_blob`,
`fz_segv_24`) additionally involve an `m3` `HANG` side, which does not go through `compile_m4()` at
all, so a full explanation for those two may need a second mechanism (general ASLR of stack/heap/
shared-library placement affecting `libscrip_rt.so`, since `scrip` itself IS already built `-no-pie` —
not chased further here, out of this row's scope).

⚠️ **Caution for whoever reads the 20 newly-converted entries' `m4` verdicts as certain:** the same
PIE/ASLR mechanism could in principle affect any `m4`-mode CRASH verdict, not only these 5 — these 5
are simply the ones that happened to flip within this session's measurement. The 20 passed
`convert_one`'s own check plus a second independent re-validation pass (same scrutiny every other
converted family received) — not a guarantee against rare flakiness `-no-pie` would close off entirely.

⛔⭐ **UPDATE (seat03, 2026-08-29, fourth pass) — THE "STABLE AT N=28" READING WAS CORRECT AND
INCOMPLETE: a second, independent non-determinism axis found in the same two witnesses.** hq_P ruled
on this row's `q-probe-fuzz-5-permanent-genuine-defects` ask this session — but the ask hq_P actually
saw was seat03's reconstruction of seat06's original N=8-era wording (the real answer's session had
already ended; see the task LEDGER), so hq_P's ruling correctly asked for exactly the N=20
re-measurement this row had *already done and pushed* (`corpus ad2b0a43`) before their ruling arrived.
A mail-latency mismatch, not an error in the ruling.

hq_P's point 2 said: *"if a witness is DETERMINISTIC-CRASH, it is a function of its input, so it IS
convertible... if it flips even once at N=20, it joins the non-deterministic three."* Applying that
test directly — actually running `corpus_suite_harness.py convert` against these two now that their m4
signal reads stable — reproduced exactly the flip hq_P's test was built to catch, on an axis nobody had
independently stress-tested before: **the m3 (in-process, mode 3) result, not the m4 crash signal.**

Cleanest single piece of evidence — `corpus_suite_harness.py`'s own on-disk re-validation step measuring
the SAME unmoved original file twice, seconds apart:
```
fz_red_m1b_arbno_defer_blob: orig ={'m3': Verdict(FAIL, rc=0, detail='output mismatch'), 'm4': Verdict(CRASH, rc=-11, detail='signal 11')}
                              suite={'m3': Verdict(HANG, rc=None, detail='exceeded 10.0s'),      'm4': Verdict(CRASH, rc=-11, detail='signal 11')}
```
Two measurements of the byte-identical, unmoved `.sno`, taken seconds apart: one HANGs past 10s, the
other exits cleanly (rc=0) with the wrong output. Five more isolated repeat attempts each (this
session) reproduced the same flip directly for `fz_segv_24` too — explicit verdicts observed across the
two witnesses' attempts: HANG, FAIL(rc=0), HANG, FAIL(rc=0), HANG, FAIL(rc=0) (plus several attempts
where both sides of that one comparison happened to agree, which is why the earlier N=28 m4-only study
never tripped over this — it was never watching m3). This is not the PIE/ASLR-signal mechanism already
ruled out for `-no-pie` above (that one is m4-linker-specific, `compile_m4()`-only); m3 is the
in-process interpreter and never calls `compile_m4()` at all — consistent with this file's own earlier
caution that "a full explanation for those two may need a second mechanism."

**REVISED CONCLUSION: all 5 witnesses are non-deterministic — none currently converts — via TWO
distinguishable mechanisms, not one undifferentiated "5 permanent":**
- **3 witnesses** (`fz_segv_09`, `fz_red_m4a_blob_alt_fence_defer`, `fz_red_m4b_blob_defer_fence`): the
  m4 CRASH SIGNAL itself is unstable (established earlier in this file).
- **2 witnesses** (`fz_red_m1b_arbno_defer_blob`, `fz_segv_24`): m4 signal is rock-stable (confirmed
  across 28+ runs and every attempt this session), but the m3 RESULT KIND flips between HANG and
  FAIL(rc=0, wrong output) (established just now).

This is RULES.md's own FACT RULE playing out exactly as written — *"a control arm pins one axis; it
does not tell you how many axes there are."* The N=28 study rightly proved the m4-signal axis stable
and never claimed anything about m3; the gap was in what got assumed about the untested axis, not in
the measurement that was actually taken.

**Not chased to root cause here** — same restraint as every prior pass on this row; root-causing 5
memory-safety defects is a different, larger undertaking than this row's conversion job (hq_P's own
ruling, point 3, says the same: mint it as its own row rather than open five investigations under this
one). Routed as `fuzz-nondeterminism-rootcause` (task file + QUEUE.tsv row), evidence = this file.
Policy question (does Lon's "convert TOTALLY" mean convert-anyway or cure-then-convert for a witness
unstable against itself) routed to ceo, per hq_P's point 4. Zero corpus witness files touched —
documentation only, same as every prior pass on this row.

## Machine-readable exception list (5 remaining)

- probe/fuzz/fz_red_m1b_arbno_defer_blob.sno
- probe/fuzz/fz_red_m4a_blob_alt_fence_defer.sno
- probe/fuzz/fz_red_m4b_blob_defer_fence.sno
- probe/fuzz/fz_segv_09.sno
- probe/fuzz/fz_segv_24.sno

## One measurement at exclusion time (seat03, 2026-08-28, SCRIP HEAD `f63d5cbd`, freshly rebuilt) — NOT stable, see above; do not treat as a fixed baseline

| file | m3 (one measurement) | m4 (one measurement) |
|---|---|---|
| fz_red_m1b_arbno_defer_blob | HANG (>10.0s) | CRASH signal 11 |
| fz_red_m4a_blob_alt_fence_defer | CRASH signal 4 | CRASH signal 11 |
| fz_red_m4b_blob_defer_fence | CRASH signal 11 | PASS |
| fz_segv_09 | CRASH signal 11 | CRASH signal 11 (directly measured 4×SIGILL/1×SIGSEGV across 5 runs of the harness's own build) |
| fz_segv_24 | HANG (>10.0s) | CRASH signal 11 |

## History (superseded — the `(D)` xfail/xpass reason, kept for provenance)

Original 25-file KEEP.md (seat03, earlier 2026-08-28 session) tied all 25 to the then-missing `(D)`
xfail/xpass suite-format gap. That gap landed (SCRIP `3987d9ba`, hq_C) and 20 of the 25 converted
cleanly on the next pass — see the task LEDGER for their names and the fresh verdicts that applied to
all 25 before this split. This file now covers only the 5 that survived, for the separate reason above.

## Re-running this classification

```
python3 SCRIP/scripts/corpus_suite_harness.py convert probe/fuzz /tmp/out.sno /tmp/out.ref --modes m3,m4
```
run from `SCRIP/`, with the 5 stems above passed as `--skip`, reproduces the split (the 34+20 already-
converted names no longer exist as loose files here — see `tests/snobol4/probe/fuzz.sno`). `git pull
--ff-only` all three repos and rebuild before trusting any verdict from it. If `corpus_suite_harness.py`'s
`compile_m4()` gains `-no-pie` before this is next picked up, re-measure all 5 fresh rather than assume
the table above still applies -- run each several times before trusting a single verdict, given the
whole point of this file is that a single measurement here is not reliable.

— seat03, 2026-08-28, task `probe-consolidate-fuzz`
