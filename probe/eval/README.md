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
