# probe/deferclob — nested IR_MATCH_DEFER siblings inside one ALTERNATE (minted this session)

Distilled directly from `beauty.sno`'s own `Command`/`Stmt` grammar (`demo/beauty/beauty.sno:196-219`)
while chasing beauty's M1 blocker with the smallest possible reproduction. This is a SIBLING
class to `probe/clobarm/` (s129) and `probe/altdepth/` (s127) — same family ("a resumed arm whose
interior contains DEFER/CALL must re-establish the inner suspension's records/wires before the
outer record's resume fires", s128 NEXT RUNG, still unstarted at time of minting) — but this
witness needs **no ARBNO and no explicit backtrack demand**: it fails on the FIRST forward pass
through a FENCE'd ALTERNATE whose one non-leaf arm (`*Stmt`) is itself built from several nested
`*label-pattern` (IR_MATCH_DEFER) references.

| probe | oracle (`sbl -b`) | SCRIP default | `SCRIP_CHOICE_RBP=1` | `SCRIP_SPAN_FRAME=1` | both |
|---|---|---|---|---|---|
| `deferclob_stmt_alt_red` | `match` | **rc=139** | rc=139 (neutral) | rc=139 (neutral) | rc=139 (neutral) |
| `deferclob_stmt_standalone_grn` | `match` | **`match` ✅** | — | — | — |

**THE PASSING SIBLING, MEASURED THIS SESSION — SHARPENS THE CLASS.** `_grn` is the byte-identical
`Stmt` pattern (same six nested `match_defer` nodes, same inner `White|epsilon` ALTERNATE) matched
DIRECTLY (`POS(0) *Stmt nl RPOS(0)`), with the outer `Command = FENCE(*Leaf1 nl | *Leaf2 nl |
*Stmt nl)` wrapper removed entirely. It PASSES cleanly. **So DEFER-nesting alone is exonerated
as the trigger — the defect requires the multi-DEFER interior to sit as ONE ARM of an enclosing
multi-arm ALTERNATE.** That narrows "re-establish the inner suspension's records/wires" (s128) to
specifically: whatever the enclosing ALTERNATE's OWN choice-record construction does to the stack
region a nested DEFER assumes is exclusively its own.

Neither existing opt-in switch reaches the red witness — measured this session. `SCRIP_CHOICE_RBP`'s
admission gate (`blob_choice_rbp_scan`) refuses wire-clobber interiors by design (the s127/s128
decline, unchanged); `SCRIP_SPAN_FRAME`'s leaf-family widening (s130/s131) only re-homes single
SPAN/TAB/etc. leaf-suspension cells, not multi-DEFER interiors.

## The mechanism, as far as localized (gdb + emitted `.s`, no code changed)

`gdb --run`: SIGSEGV, `rip = 0x100000002`. Low 32 bits (`0x00000002`) match `DT_CHARS_BIT`
(`src/contracts/descr.h:42`) — the crash lands on a DESCRIPTOR's type word being executed as
code, not on a null/garbage address. This is a DIFFERENT bit-signature than the previously-named
"rip=0 bomb" class (s127's `altdepth` witnesses, ARBNO-af-cursor-dword shape) — worth keeping
as a distinct signature when the next seat bisects.

Static confirmation in the `--compile` `.s` (`m4`, no gdb needed — RULES "cheapest discriminating
experiment"): `IR_MATCH_DEFER`'s β port is emitted as a **bare, zero-offset indirect jump**:
```asm
n34_match_defer_β:   jmp   qword ptr [rsp]
n41_match_defer_β:   jmp   qword ptr [rsp]
```
— "my resume address is whatever sits at `[rsp]`, no record, no validation" — while the
enclosing `IR_MATCH_ALTERNATE` node in the SAME blob reads its own resume from a 2-word record:
```asm
n33_match_alternate_β:  mov  rax, qword ptr [rsp + 8];  jmp  rax
```
This witness's `Stmt` arm carries SIX `match_defer` nodes (`Label`, `White`, `Expr`, and the
grammar's own recursive derefs) sharing this stack region under one FENCE'd ALTERNATE. The
working hypothesis — NOT yet gdb-watchpoint-confirmed to the instruction that writes the bad
word, so state it as a hypothesis, not a finding — is that a sibling defer/ALT record's own
push lands where a DEFER site's naive `[rsp]` read expects to find ITS OWN resume address,
so backtracking (or, per this witness, even straight-through first-pass entry) into one DEFER
resumes through a neighbour's word instead.

## What this witness does NOT establish
- The exact instruction that OVERWRITES `[rsp]` with the wrong value (needs a spin-count gdb
  breakpoint on the write, not just the eventual crash — not done this session, budget-bounded).
- Whether the fix is "give MATCH_DEFER its own record" (matching ALTERNATE's `+8` convention) or
  something in how nested DEFER/ALTERNATE share the frame's zd-priced region (per s128's
  `blob_frame_bytes` precedent — pricing must SEE the frame, stated but not built).
- Whether this is the SAME root cause as `deferclob`'s beauty-scale symptom (`Error 22 Undefined
  function called` instead of SIGSEGV) at one extra layer of `*Pattern` indirection — plausible
  (same wild-jump mechanism landing on a different byte pattern at a different stack depth) but
  UNPROVEN; see w2/w9 ladder in this session's chat transcript, not yet re-derived as a probe pair.

## Next rung, if picked up
Per s128's own NEXT RUNG language: this is the "cheap witness" it asked for. GDB spin-count
breakpoint on the write to the corrupted `[rsp]` slot (condition on address, not a HW watchpoint —
those don't work in this container per RULES.md), single-step to find which node's emission
writes there, then decide the record-widening shape. Gate on: this witness green in both media,
`clobarm`+`altdepth`+`leafsib` unmoved, `arbnostore`/`seam`/`arbnofence` unmoved, crosscheck full
A/B zero movers, beauty re-measured (may reveal a FURTHER blocker — do not assume this is the
last one), regens ×3.
