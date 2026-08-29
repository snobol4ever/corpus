# probe/meetbomb — the guaranteed meet point that does not meet (minted s134)

**Lon's ruling, in-chat s134:** *"Both STATEMENT_BEGIN and MATCH_BEGIN must be guaranteed MEET points"*
and, on the retry landing, *"MATCH_BEGIN's BETA better be a meet and NOT a WHACK. That is the total
unwound spot. Duh! So remove the KLUDGE hiding some bug elsewhere."*

Both kludges are removed in SCRIP `zeta_depth.c` and this pair is the witness that the removal earned.

| probe | oracle (`sbl -b`) | meet-point bombs (`SCRIP_ZDP=1 SCRIP_ZDP_BOMB=1 --compile`) |
|---|---|---|
| `meetbomb_nomatch_grn` | `3` | **0** — `top_join=0`, every node SPINE |
| `meetbomb_barematch_red` | `abc` | **1** — `IR_STATEMENT_BEGIN SOURCE-DISAGREE` |

**THE DISCRIMINATOR IS THE MATCH, AND NOTHING ELSE.** `_grn` is three ordinary statements with a
producer chain (`A = 1`, `B = 2`, `OUTPUT = A + B`) — the exact shape that would fire if the
disagreement were an artifact of the lattice's unmodelled release on the γ side. It does not fire.
`_red` adds the simplest possible pattern match, `S ? "a"` — one literal, no alternation, no ARBNO,
no capture, no defer, no failure goto — and one `IR_STATEMENT_BEGIN` immediately receives two
DISTINCT FINITE depths.

**WHY THAT IS A BUG REPORT AND NOT AN IMPRECISION.** A statement landing is at claim base on arrival
by the UNWIND LAW — that is emit.cpp:2104's own wording, not an assumption of the analysis. So the
incoming frontier there is fixed, and two distinct finite values arriving means a box on one of the
two paths did not release what it carved. `zdp_out_omega`'s own comment named this class before the
instrument could see it: *"a box that fails to release on omega diverges from this and that
divergence IS the bug class."*

**SOURCES, NEVER TAINT.** The first cut of the bomb tested for TOP and reported 13,801 hits over 552
of 654 programs. That number is worthless: TOP is absorbing, so one unsound point floods everything
downstream and a raw TOP count measures the shadow. Restricted to nodes whose OWN meet put two
distinct finite depths together, the corpus reads **3,938 bombs over 519 of 654 programs — 3,933
`IR_STATEMENT_BEGIN`, 5 `IR_MATCH_BEGIN`, and `IR_STATEMENT_END` falls to ZERO** (it was pure taint).
Any future citation of a bomb count that has not been restricted to sources is void.

## What this witness does NOT establish

- **Which box fails to release.** The bomb names the landing, not the culprit. The next step is the
  ω-path walk from this statement's landing back to the two disagreeing predecessors — two paths, one
  literal match, so the search space is tiny by construction. That is why this pair was minted small.
- **That it is the beauty blocker.** It is the same *class* as the open corpses (`deferclob`,
  `clobarm`), and it is upstream of all of them, but no measurement here connects it to beauty and
  none should be claimed.
- **Anything about the runtime.** These bombs are COMPILE-TIME. The runtime bomb — `cmp rsp` against
  the standing base at the landing, trapping through the existing `bomb_text`/`bomb_bytes` both-medium
  pair — is the stronger instrument and is the named next rung; it is a codegen change and needs its
  own killswitch, byte-identity gate and regens ×3.
