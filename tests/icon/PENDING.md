# PENDING.md — tests/icon/ (root-level loose files deferred to another row)

Per `tests-consolidate-icon`. Modelled on `test_gate_suite_conversion_complete.sh`'s fourth bucket
(hq_B 2026-08-29, mechanism landed SCRIP `a63cef7f`). This is NOT a KEEP.md: a keeper says "stays
loose forever, on purpose"; these convert once the row named in each section heading lands.

⛔ **2026-08-30 (seat14) — RE-POINTED, NOT RE-CHARACTERIZED: the old shared `icon-n2-generator-
activation-frames` deferral for these two files EXPIRED (that row is now `DONE` in `QUEUE.tsv`, per
`tests-consolidate-icon`'s own gate) without curing either.** Re-verified both fresh against a
pristine post-N-2 build before deciding anything (neither is a clean witness now, so neither
converts; see each file's own `## DEFERRED <row>` section below for its current shape). Rather than
move either to a generic re-deferral, pointed each at the row that ALREADY, explicitly claims that
exact witness by name in its own GOAL text — a correction reflecting decisions already made
elsewhere (ceo's own scan/scan2 re-scope, `tests-consolidate-icon` LEDGER 2026-08-30; and
`icon-coexpression-support-design`'s GOAL naming `cxprimes` since its own mint), not a fresh
re-deferral invented to keep this gate quiet. Full detail in each section and in
`.github/FINDING-2026-08-30-seat14-icon-cxprimes-coexpression-reassignment-corrupts-state.md`.

⭐ **seat05, same day, same discovery, independently:** hit the identical EXPIRED-deferral gate
failure from a cold `next` claim (no knowledge of seat14's concurrent work) and wrote an equivalent
re-pointing before pulling and finding this conflict. Resolved in seat14's favor — their cxprimes
diagnosis is strictly more complete (isolated minimal repro + FINDING, not just a re-verified
symptom) and their scan2 section below already carries the `tests-consolidate-icon` LEDGER
cross-reference. Re-verified after resolving: gate shows `stale-deferral: 0`,
`deferred-to-live-row: 3`, matching seat14's own reported numbers exactly.

## DEFERRED icon-coexpression-support-design
- rung36_jcon_cxprimes.icn — **SIGSEGV both modes, rc=134 (was rc=139 pre-N-2 — shape drift, not a
  fix)**, `scrip_coexpr: activate of NULL coexpression (operand slot held garbage -- LOWER/driver
  wiring bug)` (`rt_coexpr.c:183`). Isolated to a minimal trigger (not the sieve algorithm's own
  specifics): reassigning a variable already holding a live coexpression to a NEW `create(...)`
  result, inside a loop that keeps `@`-activating that variable, corrupts state and eventually
  crashes. This row's own GOAL already names `cxprimes` as its witness (co-expressions are
  unimplemented as real coroutines) — this is a repoint to the row that already claims this file,
  not a new deferral target, and the isolation above is new information that row didn't have.

## DEFERRED icon-scan-env-value-residue
- rung36_jcon_scan2.icn — clean exit both modes (rc=0), WRONG output (both m3/m4 identically short
  several lines vs `.expected`; the specific remaining diff matches this row's own "non-local"
  hunk: `z`/`x`/`3`/`c` printed where `q`/`w` are expected). This row's own GOAL text already names
  `rung36_jcon_scan2` as one of its three witnesses (scan1/scan2/scan), and its NEXT block precisely
  describes the exact remaining mechanism (`foo()` suspending inside its own scan environment leaves
  the CALLER's scan state stale — γ-SUSPEND must save Σ/δ/Δ into the activation state, β must
  reinstate). `tests-consolidate-icon`'s own LEDGER (2026-08-30, ceo) already recorded this
  ownership transfer from the old icon-n2 umbrella to this row specifically — this section just
  makes the gate's own record match that already-made decision.

## DEFERRED icon-v9gen-augmented-assign-and-unary-refresh-plus-two-emitter-gaps
- rung36_jcon_proto.icn — V9GEN Icon-syntax stress test; 6 parser gaps (unary prefix `^`/REFRESH;
  augmented `|||:=`/`===:=`/`~===:=`/`&:=`/`@:=`) plus 2 emitter-level gaps (`op=120` GOUGE, `op=122`
  no-template) — full catalog in
  `.github/FINDING-2026-08-29-seat08-icon-proto-v9gen-kitchen-sink-multiple-frontend-emitter-gaps.md`
  (seat08). This is a SEPARATE row from either of the two above — a per-section `## DEFERRED <row>`
  heading (hq_B 2026-08-29, SCRIP `18e04c63`, landed for exactly this "one directory, multiple
  different owning rows" shape) is what makes all three declarations legal in the same file. As of
  the 2026-08-30 re-pointing above, every section here names its own row explicitly — there is no
  file-level `ROW:` line or bare section anymore for any of them to fall back to.

## NOT included here, deliberately: `recogn` and `genqueen`

Both are ALSO ultimately blocked on `icon-n2-generator-activation-frames`, but their DIRECT,
dedicated blocking row is `icn-recogn-genqueen-suspend-shape` (QUEUE.tsv rank 1, unassigned). A
PENDING.md names exactly one row (`test_gate_suite_conversion_complete.sh`'s own design: "a file
that needs two owners has not been split yet"), and this directory can hold only one `PENDING.md`.
Pointing `recogn`/`genqueen` at `icon-n2-generator-activation-frames` directly would risk a FALSE
stale-deferral the moment that row closes, while `icn-recogn-genqueen-suspend-shape`'s own follow-up
work is still outstanding — so they stay loose-but-undeclared rather than misattributed. Re-verified
fresh today for the record: `recogn` now exits cleanly both modes (rc=0) but prints NOTHING where
`.expected` has 8 lines — same crash→silent-wrong-output transition as `scan2`. `genqueen` still
aborts both modes (rc=134, SIGABRT — the GENHOST forward-reference/recursive-frame refusal hq_B's
table already recorded).

⭐ **STATE UPDATE 2026-08-30 (seat05):** `icn-recogn-genqueen-suspend-shape` is no longer
`PARKED-AWAITING` (it self-cleared when `icon-n2-generator-activation-frames` went `DONE`, per this
project's normal self-clearing-park mechanism) — QUEUE.tsv now shows it `CLAIMED:seat12`, actively
being worked. Not declaring `recogn`/`genqueen` here myself mid that pass: their own row's active
worker is best placed to judge when "scope is clear enough to name precisely" (the standing
criterion above), and writing a declaration now risks the same stale-the-moment-it's-written trap
this file already hit twice today. Whoever next touches this file should re-check
`icn-recogn-genqueen-suspend-shape`'s state before assuming this note is still current.
