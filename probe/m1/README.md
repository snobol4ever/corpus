# probe/m1 — MILESTONE-1 (beauty self-host) root-cause witnesses (minted 2026-08-15 s92, Fable 5)
Every `.ref` is the live x64 sbl oracle output (`sbl -b f.sno </dev/null`). Score with `SCRIP/scripts/scorecard_snobol4.sh` or by hand (m3 `--run`; m4 `--compile`→`gcc -no-pie … -lscrip_rt`).
| file | class | HEAD 2a6a76ab verdict |
|---|---|---|
| m1_alt_arm1_cap / m1_alt_arm2_cap / m1_alt_cap_stored / m1_alt_arm2_capfn_var | conditional capture `.` INSIDE an alternation arm — the capture's β/ω ports are referenced by the ALT arm but NEVER EMITTED (`undefined reference nN_match_assign_cond_β`, both media). THE beauty-family root cause (s91 saw it as `n7498_match_assign_cond_α` in beauty.sno). Position (arm1/arm2), subject kind (literal/var), stored-vs-inline, and LEN() body all irrelevant. | m3 COMPILE_FAIL(rc134) · m4 ASM_FAIL |
| m1_alt_cap_outside_control (`(A\|B) . Y`) · m1_cat_cap_control (`(A . X) B`) | controls — capture OUTSIDE the alternation / in concatenation | PASS both modes |
| m1_define_return_m3 | six-line `DEFINE` + `:(RETURN)` — the m3-only unresolved-RETURN class (s90); m4 PASSES | m3 COMPILE_FAIL · m4 PASS |

## s139 defer-β ablation table (minted s140, per FINDING-2026-08-17-s139 sec.2/4)
Every `.ref` is live x64 sbl oracle output; every arm is oracle-`ok` by construction, so any scrip FAIL is a
defect, not a bad witness (unlike the s137 chain, which was measured on 3 oracle-FAIL programs and was
unusable — see the finding). Discriminator: **an ARBNO-body defer whose target CARVES.** Change exactly
one ingredient per file relative to `m1_defer_ALT`.

| file | ingredient isolated | HEAD `0887f44c` verdict (m3/m4, reproduced s140) |
|---|---|---|
| `m1_defer_ALT` | ARBNO body defers to a target whose tail is an undeferred ALT (`SPAN(' ')\|LEN(0)`) | **FAIL/FAIL** — the defect |
| `m1_defer_SPAN` | same, ALT dropped to `SPAN(' ')` alone (no alternation at all) — proves ALT is not the cause, carving is | **FAIL/FAIL** — the defect, same class |
| `m1_defer_LEN0` | same, ALT dropped to `LEN(0)` alone (never carves) | ok/ok — **standing counter-witness, must stay green** |
| `m1_inline_ALT` | the ALT moves inline into Command, no defer boundary around it | ok/ok — **standing counter-witness, must stay green** |
| `m1_nodefer_ALT` | `Sp` referenced directly (not `*Sp`) — no defer at all | ok/ok — **standing counter-witness, must stay green** |

⛔ Any defer-record widening (residue item (a), GOAL-SNOBOL4-100.md LIVE CURSOR s139) is invalid unless it
flips `defer_ALT`/`defer_SPAN` to ok/ok on **both** media WITHOUT moving any of the three standing-green
files off ok/ok. A single-witness green is exactly what punished the last two widenings (150/151,
`probe/arbnofence/`) — do not repeat that mistake here.
