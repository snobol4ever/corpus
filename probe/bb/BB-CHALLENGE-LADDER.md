# BB CHALLENGE LADDER — one construct, one problem, one oracle-exact witness

Simple → complex. Each case isolates ONE technical challenge. C reference = hand-written Byrd boxes;
oracle = `/home/claude/x64/bin/sbl -b`. A case is GREEN only when C output == SPITBOL output exactly.

| # | pattern | challenge isolated | C | oracle | state |
|---|---|---|---|---|---|
| 1 | `POS(0) ARBNO('Bird'\|'Blue'\|LEN(1)) $ OUTPUT RPOS(0)` | ARBNO⊗ALT · shy-null · derived-vs-accumulated result · per-iteration arm index | `test_sno_1.c` | `t1.sno` | ✅ GREEN |
| 4 | `POS(0) ARBNO(('Bird'\|'Blue'\|LEN(1)) . W) RPOS(0)` | **conditional capture INSIDE the body** — unbounded pending entries; push/pop/commit. The rung that reverted SCRIP ZW16. | `test_sno_4.c` | `c4.sno`,`c4b.sno` | ✅ GREEN |
| 5 | `POS(0) ARBNO(SPAN('0-9')\|LEN(1)) $ OUTPUT RPOS(0)` | **variable-extent arm** — β cannot restore the cursor arithmetically; first genuinely-needed per-instance saved δ | — | `c5.sno` | oracle only |
| 6 | `POS(0) ARBNO(LEN(1)) $ OUTPUT FENCE 'X' RPOS(0)` | **FENCE backward-abort** — oracle proves ARBNO is never retried (one null yield, then fail) | — | `c6.sno` | oracle only |
| 7 | `P = LEN(1); POS(0) ARBNO(*P) $ OUTPUT RPOS(0)` | **deferred/unevaluated** `*VAR` — which pattern arrives is decided at match time; per-iteration extent varies | — | `c7.sno` | oracle only |
| 8 | treebank | **nested ARBNO + recursive sub-pattern** | `test_sno_2.c` | corpus | unrun |
| 9 | expr grammar | **mutual recursion** E/X/C, deep | `test_sno_3.c` | corpus | unrun |
| 10 | claws5 / json | full programs, nested ARBNO at scale | corpus demos | corpus | future |

## ⭐ SCRIP MEASURED STATE — 2026-08-04 (instrument: `bb_witness_ladder.sh`, 6 pass / 3 fail)

The C references say what the semantics ARE. `bb_witness_ladder.sh` says what SCRIP DOES about them —
nine two-line programs, each isolating ONE variable, full-output compare against `sbl -b`.

⛔ **FIRST RESULT OF HARDENING: A FALSE GREEN.** SCRIP installs a SIGSEGV handler that swallows the
fault and **exits 0**, and the shell's "Segmentation fault" text never enters the child's stderr — so a
crashing program passes both an exit-status check AND an output check. `outer capture, no ARBNO` emits
`abcd` **correctly and then crashes**; it was scored PASS by the first version of this instrument.
**Any gate on this corpus that reads only stdout or only `$?` is measuring nothing.** The instrument now
reads the wait-status of a wrapping `bash -c`, the one signal that survives both.

**GREEN in SCRIP today (5/9):** ARBNO retried without capture · capture INSIDE a retried ARBNO ·
ARBNO not retried + outer capture · **case 1 inner** (ARBNO⊗ALT with the shy null and the `'Bird'` hit
at position 8 — all 11 yields byte-exact) · **case 5** (variable-extent SPAN arm — the ladder listed
this as oracle-only; it is GREEN, no C reference needed).

⭐ **REVISED BRACKET (supersedes the paragraph below): outer capture on a parenthesized SEQUENCE
crashes, with or without ARBNO.** ARBNO is not the trigger — it is an AMPLIFIER: without it the value
is right and only the process dies; with it the value is also lost (empty) and memory runs away. So
there are TWO defects stacked, and the crash is the deeper one. Fix the sequence-capture crash FIRST;
re-measure before touching ARBNO at all.

**RED — ONE defect, three spellings:** `$ OUTPUT`, `. VAR`, and case 1 FULL all fail identically.
Minimal witness is two lines: `SUBJ ? (POS(0) ARBNO(LEN(1)) RPOS(0)) $ OUTPUT` → unbounded growth
(512 MB heap exhaustion) or empty result, **nondeterministically** (same binary, same input, both
outcomes observed — treat any single run as unreliable evidence).

**(SUPERSEDED — see REVISED BRACKET above.)** ~~THE BRACKET: a capture whose extent SPANS a retried construct.~~ Not ARBNO (green alone), not
capture (green alone), not retry (green alone) — only the composition. Reproduces IDENTICALLY in
mode-3 and mode-4, so it is a template defect, not a JIT artifact, and the 1:1 mode correspondence
holds even in failure. Case 1 is **11 of 12 lines byte-exact**; only the outer `$ OUTPUT` fails.

⛔ **`SCRIP_U2=1` IS INERT ON ALL NINE ROWS — MEASURED, NOT ASSUMED.** The W-1c.1 expectation that
flipping it is "the cheapest real win on the board" is FALSIFIED for this defect class. An earlier
reading that U2 fixed the runaway was the nondeterminism above, seen once and believed. It also gates
`arbno_u2_frame()`'s σ/φ view-restore, so U2 is not a fence-only switch.

⚠ The emitted chain arm re-bases `rbp := rsp + (24 - op_sa)` at β (`bb_match_arbno.cpp:226-227`) while
α pushes no element cell — so `as`/`af` address the iteration-cell layout through a base α never
established. That is the leading suspect and it is RULING 1's exact territory, but it is **not yet
proven to be this bug** — the no-capture control passes, so something compensates. MONITOR-FIRST before
editing: do not patch on this paragraph alone.

## Findings so far

⚠ **CASE 1 GREEN WAS RE-PROVED 2026-08-04 (later session) AND WAS FALSE AT THAT COMMIT — FOURTH BUG.** `ARBNO_γ` called `write_str(out, ARBNO)` *and* `write_nl(out)`, but `write_str` already terminates its line (`printf("%.*s\n", …)`), so every `$ OUTPUT` line was double-spaced: 24 lines emitted where the oracle emits 13. The derive-don't-accumulate rewrite (bugs 1–3) was correct and is retained; the harness call was not. Two lineages had each half the answer — `SCRIP/seed/` had the correct `ARBNO_γ` but still accumulated, `corpus/probe/bb/` derived but double-spaced — and neither was ever diffed against the other. **All four copies (`corpus/probe/bb/`, `SCRIP/seed/`, `SCRIP/bench/`, `.github/`) are now one byte-identical file, each independently verified against `sbl -b`.** ⛔ LESSON: "GREEN" recorded in prose is the same structurally-unverifiable claim as a PUSH-PENDING banner (RULES.md stale-orientation rule) — **re-run the oracle diff, do not read the state off the table.**

**Case 1 — three bugs in the hand-written reference, all fixed, now oracle-exact:**
1. Missing shy-null: `ARBNO_α` went straight to the child. α must YIELD null; **β** launches the first instance.
2. `assign_γ: seq = cat(seq, BIRD)` — wrong operand, read a stale global.
3. ⭐ **Accumulators double-count on re-entry.** `seq = cat(seq, X)` mutates in place and γ is re-entered once per retry, so it summed 11 times and reached the right answer by accident. **FIX = DERIVE, DON'T ACCUMULATE:** `str(Σ+Δ0, Δ−Δ0)`. Idempotent under re-entry, kills the whole bug class, and deletes the per-iteration accumulator: `_1_t` went from `{str_t ARBNO; str_t alt; int alt_i;}` to `{int alt_i;}`.

**ARBNO's local storage, measured:** ONE datum — the cursor at α (`Δ0`). Not a counter, not a depth, not an accumulator. Result, null-match and exhaustion-restore are all derivable from it.

**Stack-depth locals are redundant BY INDUCTION** — one own-K unwind step lands exactly on the previous iteration's cell, so `[rsp+0]` addresses it with no register. The induction premise is 100% ω-coverage; until the ladder is green, a per-iteration entry-rsp cell is available as insurance.

**Case 4 — CORRECTED 2026-08-04 (Lon ruling + `f1.sno` witness): the CAS MUST STAY A SEPARATE ARENA.** The claim below holds ONLY on the failure path; it is FALSE across a forward whack. WHACK-free on FENCE0/FENCE1 is MANDATORY (memory: O(activations)→O(depth)), and a pending `.` entry must SURVIVE that whack without committing at it (`f1.sno`: capture behind a fence stays unset when the match later fails). Therefore the entry cannot live in the whacked region. What survives is SCOPE: the CAS becomes MATCH-scoped, not the process-wide 8MB pin. Original (failure-path-only) reasoning follows.

**Failure-path story.** A pending `.` entry lives in the capture box's OWN ζ cell, allocated at its α inside the iteration, freed at its ω. The zeta stack IS the CAS. The only irreducible datum is WHICH cells are still pending → a LINK per cell, `cas_top → newest → … → oldest`. **That chain is read at exactly ONE place: the commit on match success (final / fenced).** Never on the failure path — a pop is one store and the unwind reaches it via the box's own ω. This is the linked-list-in-ζ design applied to captures, and it needs no RBP.
