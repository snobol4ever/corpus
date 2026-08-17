# probe/clobarm — the ALT-in-a-pattern-VARIABLE class (minted s129)

Minted while working the s128 next rung ("mint a minimal clobber-arm probe from 124's shape").
The hunt landed somewhere else and better: a **DEFAULT-ARM (no killswitch) memory corruption**
in the blob leaf-cell ZD pricing. Full argument:
`.github/FINDING-2026-08-16-s129-blob-leaf-cell-overshoots-standing-frame.md`.

Shape under test, in all five: an ALT with capture-carrying arms, reached through a pattern
VARIABLE (`t = (... | ...)` then `s ? POS(0) t RPOS(0)`), i.e. a `PAT$` blob — the minimal
`beauty.sno` `Command` shape. Oracle for every one is `id=iffoo` (live `x64/bin/sbl -b`).

| probe | OFF (default) | ON (`SCRIP_CHOICE_RBP=1`) | what it proves |
|---|---|---|---|
| `clob_altarm_trueinline_grn` | `id=iffoo` ✅ | `id=iffoo` ✅ | **THE PASSING SIBLING.** Same semantics written INLINE (no pattern variable ⇒ no blob). The ALT/capture/backtrack logic is correct; only the blob path is broken. |
| `clob_altarm_varcross_red` | `parse fail` | `parse fail` | the wire-clobber class (arms cross into other pattern variables). Refused by `blob_choice_rbp_scan`'s clobber gate BY DESIGN, so ON is a no-op. 124's shape minus the FENCE. |
| `clob_altarm_blobvar_red` | `parse fail` | **rc=139** | non-clobber, registry-demand-framed, single-choice, non-leaf ⇒ ADMITTED by the s128 gate. ON opens the backtrack, arm 2 runs, and the mis-priced SPAN cell fires. |
| `clob_altarm_samevar_red` | `parse fail` | **rc=139** | control: both arms capture the SAME variable. Falsifies "stale pending capture / last-write-wins" as the explanation. |
| `clob_altarm_arm2direct_red` | **rc=139** | **rc=139** | ⛔ **THE HEADLINE.** arm 1 fails outright so arm 2 runs on the FIRST pass — no backtrack, no choice record, no killswitch. Corruption is **PRE-EXISTING**, not s128's. |

## The measured mechanism (gdb, `clob_altarm_arm2direct_red`, default build)

`n2_match_span_α`'s suspension cell is `mov dword ptr [rsp + 164], r14d` — **byte-identical
OFF and ON** (so the instruction never changed; s128 only changed whether it is REACHED).

```
blob_rbp      = 0x7fffffffe8b8     blob_frame_bytes() = 56
rsp at write  = 0x7fffffffe850     (= blob_rbp-104: 56 frame + 32 ALT record + 16 assign_save)
target        = rsp+164 = 0x7fffffffe8f4 = blob_rbp+60 = standing_rbp-4
standing_rbp  = 0x7fffffffe8f8, and [standing_rbp-8] is the CAS MARK
⇒ the dword store lands on the UPPER HALF of the mark qword:
   0x00007ffff29ff030  ->  0x00000000f29ff030
```

The truncated mark then reaches `rt_match_end_all` → `c_rt_dcap_end_ok_open` →
`rt_dcap_pump` (`src/runtime/pattern_match.c:691`), which walks from a wild pointer. SIGSEGV.

**The disagreement is cross-blob:** the callee prices its leaf cell into caller territory at
`blob_entry+52`, while the caller (the `IR_MATCH_BEGIN` standing frame) carved 56 bytes for its
OWN slots and reserved nothing there. `blob_frame_bytes()>0` via registry demand with zd static
pricing still active is the broken combination — wire-clobber blobs escape only because dynamic
graphs decline zd pricing wholesale (the zdyn veto, `emit.cpp:2341`).

## Running them

```bash
for f in probe/clobarm/*.sno; do
  /home/claude/SCRIP/scrip --run "$f" < /dev/null; echo "rc=$? $f"
done
```

⛔ These are RED by design except `clob_altarm_trueinline_grn`. Do not "fix" a probe to make a
gate green — the `.ref` beside each is live-`sbl` truth.
