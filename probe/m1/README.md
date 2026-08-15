# probe/m1 — MILESTONE-1 (beauty self-host) root-cause witnesses (minted 2026-08-15 s92, Fable 5)
Every `.ref` is the live x64 sbl oracle output (`sbl -b f.sno </dev/null`). Score with `SCRIP/scripts/scorecard_snobol4.sh` or by hand (m3 `--run`; m4 `--compile`→`gcc -no-pie … -lscrip_rt`).
| file | class | HEAD 2a6a76ab verdict |
|---|---|---|
| m1_alt_arm1_cap / m1_alt_arm2_cap / m1_alt_cap_stored / m1_alt_arm2_capfn_var | conditional capture `.` INSIDE an alternation arm — the capture's β/ω ports are referenced by the ALT arm but NEVER EMITTED (`undefined reference nN_match_assign_cond_β`, both media). THE beauty-family root cause (s91 saw it as `n7498_match_assign_cond_α` in beauty.sno). Position (arm1/arm2), subject kind (literal/var), stored-vs-inline, and LEN() body all irrelevant. | m3 COMPILE_FAIL(rc134) · m4 ASM_FAIL |
| m1_alt_cap_outside_control (`(A\|B) . Y`) · m1_cat_cap_control (`(A . X) B`) | controls — capture OUTSIDE the alternation / in concatenation | PASS both modes |
| m1_define_return_m3 | six-line `DEFINE` + `:(RETURN)` — the m3-only unresolved-RETURN class (s90); m4 PASSES | m3 COMPILE_FAIL · m4 PASS |
