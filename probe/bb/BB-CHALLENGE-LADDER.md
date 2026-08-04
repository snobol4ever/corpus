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

## Findings so far

**Case 1 — three bugs in the hand-written reference, all fixed, now oracle-exact:**
1. Missing shy-null: `ARBNO_α` went straight to the child. α must YIELD null; **β** launches the first instance.
2. `assign_γ: seq = cat(seq, BIRD)` — wrong operand, read a stale global.
3. ⭐ **Accumulators double-count on re-entry.** `seq = cat(seq, X)` mutates in place and γ is re-entered once per retry, so it summed 11 times and reached the right answer by accident. **FIX = DERIVE, DON'T ACCUMULATE:** `str(Σ+Δ0, Δ−Δ0)`. Idempotent under re-entry, kills the whole bug class, and deletes the per-iteration accumulator: `_1_t` went from `{str_t ARBNO; str_t alt; int alt_i;}` to `{int alt_i;}`.

**ARBNO's local storage, measured:** ONE datum — the cursor at α (`Δ0`). Not a counter, not a depth, not an accumulator. Result, null-match and exhaustion-restore are all derivable from it.

**Stack-depth locals are redundant BY INDUCTION** — one own-K unwind step lands exactly on the previous iteration's cell, so `[rsp+0]` addresses it with no register. The induction premise is 100% ω-coverage; until the ladder is green, a per-iteration entry-rsp cell is available as insurance.

**Case 4 — CORRECTED 2026-08-04 (Lon ruling + `f1.sno` witness): the CAS MUST STAY A SEPARATE ARENA.** The claim below holds ONLY on the failure path; it is FALSE across a forward whack. WHACK-free on FENCE0/FENCE1 is MANDATORY (memory: O(activations)→O(depth)), and a pending `.` entry must SURVIVE that whack without committing at it (`f1.sno`: capture behind a fence stays unset when the match later fails). Therefore the entry cannot live in the whacked region. What survives is SCOPE: the CAS becomes MATCH-scoped, not the process-wide 8MB pin. Original (failure-path-only) reasoning follows.

**Failure-path story.** A pending `.` entry lives in the capture box's OWN ζ cell, allocated at its α inside the iteration, freed at its ω. The zeta stack IS the CAS. The only irreducible datum is WHICH cells are still pending → a LINK per cell, `cas_top → newest → … → oldest`. **That chain is read at exactly ONE place: the commit on match success (final / fenced).** Never on the failure path — a pop is one store and the unwind reaches it via the box's own ω. This is the linked-list-in-ζ design applied to captures, and it needs no RBP.
