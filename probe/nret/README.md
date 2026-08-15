# probe/nret — NAME datatype / NRETURN / computed-name capture targets (minted s103)

The class that blocks **MILESTONE 1**. `beauty.sno:192` is
`SGoto = ('S' | 's') . *assign(.sf, *'S')` — a conditional assignment whose TARGET is a
DEFERRED CALL, with NAME (`.sf`) arguments. `beauty_suite/semantic.sno` + `counter.sno` are the
same idiom (`epsilon . *PushCounter()`, body `PushCounter = .dummy :(NRETURN)`).

Manual authority: p.133-134 (NRETURN returns the *name* of a variable to which the caller may
assign) and the verbatim idiom `'ABCDE' ? LEN(2) . *PUSH() 'D' LEN(1) . *PUSH()` — "the calls to
PUSH() are deferred until assignment takes place". Error 243 = result in NRETURN is not a name.

Every `.ref` is the live `x64/bin/sbl` oracle.

| witness | construct | m3 at s103 |
|---|---|---|
| `nret_control_plain_capture` | `LEN(2) . x` | **PASS** (control — the axis that works) |
| `nret_name_op_return` | `G = .dummy :(RETURN)`, `DATATYPE(G())` | DIFF: `[]`/`STRING`, oracle `[DUMMY]`/`NAME` |
| `nret_lvalue_plain` | `F() = 43` | BOMB `rt_assign_var: lvalue is not a variable (dtype=0)` |
| `nret_cond_nondeferred` | `LEN(2) . F()` | FATAL lower_snobol4 GZ#5 subset decline |
| `nret_cond_defer_call` | `LEN(2) . *F()` | BOMB (was **SIG11** before the s103 guard) |
| `nret_cond_stored_blob` | `P = LEN(2) . *F()` then `S ? P` | BOMB (was **SIG11** before the s103 guard) |
| `nret_imm_defer_call` | `LEN(3) $ *F()` | BOMB (already honest before s103) |

## Root, in order of depth
1. **The unary `.` name operator does not produce a NAME.** `DATATYPE(.dummy)` = `STRING` in SCRIP,
   `NAME` in the oracle; a function returning `.dummy` yields the null string, not `DUMMY`.
   `DT_N` + `NAMETRAP()` + `IS_VARREF_fn()` exist in `contracts/descr.h` and the runtime
   (`pattern_match.c` builds NAMETRAPs), so the datatype is modelled — the COMPILE path is what
   never produces one.
2. NRETURN therefore cannot deliver a usable name (`nret_lvalue_plain`).
3. Capture targets that are computed names decline (`bb_match_capture.cpp` guards), because the
   `*VAR` path (`rt_cap_open` ARM B / `c_rt_cap_open`, `g_capx`) is still C and was never rebuilt.

⛔ **OPEN RULING (Lon):** the header of `bb_match_capture.cpp` records that Lon directed DELETION of
the C `*VAR` path "in favor of ordinary BB RESULT/operand dataflow", blocked on this bug. Both
roads are open and they are not the same rung — see GOAL-SNOBOL4-100 LIVE CURSOR.
