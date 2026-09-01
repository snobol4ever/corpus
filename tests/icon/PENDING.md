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

## DEFERRED icn-recogn-genqueen-suspend-shape
⛔ **2026-08-30 (seat09) — NOW DEFERRED; was deliberately excluded until today (old note preserved
below this section).** The exclusion held only while the row was `CLAIMED:seat12` and its scope
still actively evolving — declaring a target mid another session's live investigation is exactly
the stale-the-moment-it's-written trap this file hit twice on 2026-08-30 already. That condition has
since resolved: seat12's own fresh measurement
(`.github/FINDING-2026-08-30-seat12-icn-recogn-genqueen-recogn-is-confirmed-mutual-recursion-genqueen-crash-signature-drifted-to-clean-bound-refusal.md`)
fully characterized both witnesses and re-parked the row `PARKED-AWAITING:icon-n2-recursive-
generator-per-activation-storage` (confirmed live in `QUEUE.tsv`, `CLAIMED:seat03`) — a stable,
precisely-named state, not one still churning. Same standard as the three sections above: this row's
own name and GOAL are directly about these two witnesses, so it is the correct, most-specific defer
target — not the transitive `icon-n2-recursive-generator-per-activation-storage` dependency, same
reasoning as `cxprimes`/`scan2` pointing at their direct owners rather than the old umbrella row.
- rung36_jcon_recogn.icn — clean exit both modes (rc=0), prints NOTHING where `.expected` has 8
  lines. seat12 traced all three generator call sites (`s()`→`t()`, `t()`→`s()`) and confirmed
  genuine mutual recursion hitting the `N2_SELFREC_SLOTS` transitive-reserve refusal unconditionally,
  armed or not — a structural design exclusion documented in `x86_asm.h`'s own comment (general
  mutual/multi-hop recursion is explicitly out of that mechanism's scope), not a bug hiding behind an
  unexplored code path. No further investigation needed on this witness; it converts when the design
  question is ruled on.
- rung36_jcon_genqueen.icn — aborts both modes, rc=134. Crash signature has drifted since
  2026-08-29: was a wild SIGSEGV under the armed N-2 mechanism, now a clean, intentional
  `N2_SELFREC_SLOTS`-bound refusal (`bb_call_proc_staged.cpp:733`) — a real change, not a
  re-description of the old crash. seat12's new, unverified lead: the 64-slot bound is hit almost
  immediately against a 6-queens board (max concurrent depth ≈6–7), consistent with the counter
  tracking cumulative/backtracked activations rather than simultaneous recursion depth — worth a
  gdb trace of the banked value before revising the reservation formula, not yet done.

### SUPERSEDED — prior exclusion note (seat03/seat05, 2026-08-29/30), kept for the record
Both are ALSO ultimately blocked on `icon-n2-generator-activation-frames`, but their DIRECT,
dedicated blocking row is `icn-recogn-genqueen-suspend-shape` (QUEUE.tsv rank 1, unassigned).
Pointing `recogn`/`genqueen` at `icon-n2-generator-activation-frames` directly would risk a FALSE
stale-deferral the moment that row closes, while `icn-recogn-genqueen-suspend-shape`'s own follow-up
work is still outstanding — so they stay loose-but-undeclared rather than misattributed. **STATE
UPDATE 2026-08-30 (seat05):** `icn-recogn-genqueen-suspend-shape` is no longer `PARKED-AWAITING` (it
self-cleared when `icon-n2-generator-activation-frames` went `DONE`) — QUEUE.tsv now shows it
`CLAIMED:seat12`, actively being worked. Not declaring `recogn`/`genqueen` here mid that pass: their
own row's active worker is best placed to judge when "scope is clear enough to name precisely."

⛔ **2026-09-01 (seat06) — THREE SECTIONS ADDED (`level`, `scan`, `var`), closing this gate's last
`loose-but-undeclared` files.** Same standard as every section above, applied deliberately rather
than by analogy: each witness was **re-run fresh against a current build before being declared**
(never a carried-forward disposition — this row's own `args` had been carried as blocked for
several sessions and turned out to be already fixed, converted this session as `rung36_all` entry
40), and each is pointed at the ONE live row whose **own GOAL text names that exact witness by
name** — verified by grepping each candidate row for the witness stem, not by topical resemblance.
All three target rows confirmed live in `QUEUE.tsv` (`FREE`, not `DONE`) at declaration time.
⚠️ Two rows were REJECTED as targets despite looking apt, recorded so nobody re-derives it:
`icon-rung-ladder-absorption` (`CLAIMED:hq_P`, working `level`'s entry-side half) and
`icon-level-keyword-not-tracked-for-standard-role-procs` — **neither names any of these witnesses in
its GOAL**, and pointing at a row on topical resemblance is how a false stale-deferral is minted.
⭐ All three are **m3≡m4 identical** in their failure (verified, not assumed): none is a mode-
divergence, so none needs a per-mode deferral note.

## DEFERRED icon-level-keyword-not-tracked
- rung36_jcon_level.icn — clean exit both modes (rc=0), 16 lines out for 16 expected, all values
  wrong: prints `1 1 1 1 1 1 0 -1 -2 -3 -2 -2 -2 -2 -2 -3` where `.expected` has
  `1 2 3 4 5 5 4 3 2 1 2 2 2 2 2 1`. ⭐ **The negative drift is the EXPECTED transitional shape, not
  a new regression** — SCRIP `41730a7f` landed the EXIT side only (`xa_flat.cpp`'s Icon-scoped
  epilogue-γ arm decrements `rt_k_level`/`kw_fnclevel`; the entry-side increment is explicitly NOT
  yet landed, per that commit's own message), and decrement-without-increment predicts exactly this
  monotonic slide below zero. Recorded here so nobody chases the stale `1 1 1 1 1 1 1 1` description
  that predates the half-cure. Converts when the entry-side increment lands.

## DEFERRED icon-scan-env-value-residue
- rung36_jcon_scan.icn — clean exit both modes (rc=0), WRONG output: 115 lines against `.expected`'s
  133, 20 differing lines. The gap is scan-environment values going missing mid-run (e.g. `a`/`ab`/
  `abc` progression absent where a single stale `9` is printed instead) — the same residue mechanism
  this row's GOAL already names, and this row already owns the sibling witnesses `scan1` (since
  fixed and converted, SCRIP `9fd26a3e`) and `scan2` (declared above since 2026-08-30). `scan` is
  the third of the three witnesses its GOAL names; this section just makes the gate's record match
  an ownership that was already explicit.

## DEFERRED icon-assign-nameless-emit-guard-var
- rung36_jcon_var.icn — rc=134 both modes. ⭐ **NOT a crash — an INTENTIONAL guard, and reading it
  as a crash is the trap here** (it aborts and dumps core, so `m4` presents as a compiler blow-up):
  `FATAL emit_drive IR_ASSIGN guard: nameless 2-operand assign (assign-through-lvalue-producer:
  !x/?x element-variable or s[i:j] section) — LOWER's TT_ASSIGN terminal arm minted a placeholder;
  not a missing template.` The guard's own message names its owning work — *"ASSIGN-LV rung,
  GOAL-IR-IMMUTABLE-EMIT.md"* — and this row is named for that guard, so target and witness agree
  by construction rather than by inference. Fires in BOTH modes at emit time, so there is no partial
  m3 result to grade. Converts when the `TT_ASSIGN` terminal arm mints a real lvalue-producer assign.
