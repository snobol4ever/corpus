# probe/eval — EVAL() witnesses (minted s112)

`EVAL` is broken at the ROOT in SCRIP: **every** shape here SIG11s in m3, including
`EVAL('1 + 2')`, whose oracle answer is `3`.  Reduced from beauty.sno's first
*non-monitor* divergence — the 2-way IPC sync-step monitor reached step 1041 of the
self-host and stopped at `semantic.inc:17`:

    reduce  reduce = EVAL("epsilon . *Reduce(" t ", " n ")")   :(RETURN)

The bisect below shows the pattern/capture/deferred-call composition in that line is
**incidental**: the defect is EVAL itself, so do not chase `.` capture or `*` deferral.

| probe | shape | oracle |
|---|---|---|
| `ev_min_arith`       | `EVAL('1 + 2')`                    | `3` |
| `ev_pat_builtin`     | `EVAL('LEN(0)')`                   | `PATTERN` |
| `ev_pat_var`         | `EVAL('e')` where e is a pattern   | `PATTERN` |
| `ev_pat_capture`     | `EVAL('e . OUT')`                  | `PATTERN` |
| `ev_pat_defer_call`  | `EVAL('e . *F()')`                 | `PATTERN` |
| `ev_beauty_shape`    | the semantic.inc:17 shape, matched | `DT=PATTERN` / `OK` |

`ev_min_arith` is the instrument — one line, no patterns, no functions.

MANUAL AUTHORITY (Ch.18, EVAL function): *"If the argument is a string (other than a
simple number), EVAL tries to compile it as a SPITBOL expression"*; case 1, *"If the
argument is an integer or real number, or a number in string form, the number is
returned as the function result"*.  `EVAL` fails (does not crash) if evaluation of the
argument fails or the argument cannot be compiled.

Related, pre-existing and consistent: the s108 benchmark sweep recorded
`eval_dynamic` / `eval_fixed` SEGV in BOTH killswitch arms.  This is that class,
now reduced to one line.

## s112 localisation — read this before opening the hunt

**Faulting site (gdb, `SCRIP_NO_SEGV_HANDLER=1`, on `ev_min_arith`):**

    Program received signal SIGSEGV
    #0  0x00007ffff7ffd000 in _rtld_global () from ld-linux-x86-64.so.2
    #1  0x000000000041ad68 in __frame_dummy_init_array_entry ()
    rip = 0x7ffff7ffd000 <_rtld_global>

`rip` in ld.so DATA is **the s103/s110 `omega_driver` signature** — a transfer through a
junk continuation (`jmp` to popped garbage), and `0x41ad68` is the same scrip static s110
observed sitting in the pair slots. So EVAL ends in a WILD JUMP, not in a bad computation.

**⛔ BUT IT IS NOT THE CALL-ARM FAMILY — MEASURED, AND THIS IS THE POINT OF THIS NOTE.**
The whole s110/s111/s112 arc has been about call-site arm selection and the `{γ,ω}` pair.
EVAL is untouched by every one of those knobs:

| regime | result |
|---|---|
| default · `SCRIP_SLIM_PAIR=1` · `SCRIP_NO_TINY=1` · `SCRIP_SCC_OFF=1` | SIG11 |
| `SCRIP_NO_TINY=1 SCRIP_SLIM_PAIR=1` (the combo that fixed `mon_define_call_min`) | SIG11 |
| `SCRIP_FN_RBP=0` (the s58 BOMB-floater descent instrument) | SIG11 |
| `SCRIP_RET_FIX=0` (s112 rung-1 killswitch) | SIG11 |
| **m4 `--compile` + `gcc -no-pie`** | SIG11 (m3 ≡ m4) |

Regime-independent, arm-independent, mode-independent.  It shares the SYMPTOM with the
omega_driver class and not the CAUSE.  **Do not re-derive the call-arm story here.**

**Where to start instead:** EVAL must compile a string at run time and transfer into the
freshly built code.  The wild jump says that transfer target is junk.  Look at how the
run-time-compiled unit is sealed and entered (the `m3_seal_entry_cells` / `LBL__` driver
loop that fills `body$<FN>` at main seal is the nearest analogue that DOES work), not at
`{γ,ω}` depth.  `ev_min_arith.sno` is one line and needs no monitor.
