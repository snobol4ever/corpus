# probe/seam — THE LEFTWARD SEAM WALK (minted s124)

A stored pattern (`P = ...` then `S ? *P`) compiles to a `PAT$N` blob.  When the match
downstream of the blob fails, control arrives at `PAT$N_β`, which must route INTO the
blob's interior chain of choice points.

**The interior seam is built correctly and always has been.**  Each element's β is a
self-undo that jumps LEFTWARD to the previous element's β; only the LEFTMOST element's β
routes to `PAT$N_ω` (total failure).  Measured s124:

```
n1_match_len_β:   sub r14d, 0;  jmp  n0_match_arbno_β     <- walks LEFT
n0_match_arbno_β:               jmp  n2_match_defer_α     <- extends
```

The defect was solely that `PAT$N_β` REFUSED TO ENTER the seam unless the published
carrier (`body_root` = the SEQ's rightmost element) happened to be a leaf generator
(`ARB`/`ARBNO`/`BAL`).  When the rightmost element was deterministic, the dispatch fell to
its `lbl_ω` default and the blob reported total failure instead of backtracking:

```
PAT$0_β:   jmp  PAT$0_ω          <- the dead end (s122 named it; s124 root-caused it)
```

## The discriminator is POSITION, not deferral

| pattern                          | rightmost element | pre-s124 |
|----------------------------------|-------------------|----------|
| `ARBNO(*C)`                      | generator         | GREEN    |
| `LEN(0) ARBNO(*C)`               | generator         | GREEN    |
| `LEN(0) LEN(0) ARBNO(*C)`        | generator         | GREEN    |
| `ARBNO(*C) LEN(0)`               | deterministic     | **RED**  |
| `LEN(0) ARBNO('a') LEN(0)`       | deterministic     | **RED**  |

`LEN(0) ARBNO('a') LEN(0)` is RED with an INLINE LITERAL argument and no `*` anywhere,
which retires the last of the deferral hypotheses: the star was never the ingredient.

## Boundary — why beauty still needs one more rung

`beauty.sno:225` is `Parse = nPush() ARBNO(*Command) (…) nPop()`.  Its rightmost element is
`nPop()`, an `IR_MATCH_DEFER`, whose β is **not** a self-undo:

```
n2_match_defer_β:   jmp  qword ptr [rsp]
```

That is a resume-THROUGH-RECORD.  Entering it from `PAT$N_β` with no live record at `[rsp]`
is a wild jump, so `IR_MATCH_DEFER` is deliberately REFUSED by the s124 whitelist.  The next
rung must either give a deterministic defer a self-undo β, or let the walk STEP OVER an
element whose own undo is provably a no-op — which needs a cursor-restore story, because
skipping an element that consumed characters would corrupt r14d.

Killswitch: `SCRIP_SEAM_WALK=1` (default OFF, measured byte-identical over 318 programs).
Requires `SCRIP_DEFER_RESUME=1`.
