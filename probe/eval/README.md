# probe/eval — EVAL() witnesses

## ⭐ s113 STATUS: EVAL WORKS AT THE ROOT.  ONE COMPOSITION REMAINS.

`EVAL('1 + 2')` prints `3`, m3 == m4.  All six original witnesses pass except
`ev_beauty_shape`, which now gets `DT=PATTERN` right and stops one line short.

## ⛔ CORRECTING THIS FILE'S OWN s112 TEXT (deleted below): IT WAS TWO DEFECTS, NOT ONE

s112 recorded EVAL as a single root defect and routed the next seat at
"run-time-compiled-unit sealing/entry".  `ev_min_arith` (`EVAL('1 + 2')`)
CONFLATES TWO INDEPENDENT DEFECTS, which is exactly why it measured
regime-, arm- and mode-independent under every call-arm knob.  Decomposing along
the manual's three EVAL argument forms (Ch.18) separated them in one experiment
set, before any code was read:

| shape | defect |
|---|---|
| `EVAL(19)` · `EVAL('19')` — numeric passthrough | never broken |
| `*(1)` · `*(1 + 2)` · `*(1 + N)` — leading INT literal | **B** (emitter, s113 FIXED) |
| `EVAL('N')` · `EVAL('1 + 2')` — run-time string compile | **A** (no way home, s113 FIXED) |
| `EVAL('lit')` INSIDE a DEFINE'd function | **C** — STILL OPEN, the beauty blocker |

**Defect B was a COMPILE-TIME EMITTER SIGSEGV, not a wild jump in emitted code.**
`IR_LIT` is a UNION; emit.cpp's role-3 shim read `.sval` on an `IR_LIT_INTEGER`
and strncmp'd the integer as an address.  Fixed at SCRIP `2fda853c`.

**Defect A: the chain had no way home.** CARVE-KILL deleted `xa_flat_prologue` —
the producer half of the jmp-entry protocol — so an EVAL chain gets no wire header
and exits with `ret`, while `rt_chain_enter` enters with `jmp` and pushes no return
address.  CODE fragments never showed it because they run to termination and never
take the jump back.  Fixed at SCRIP `efd2537b` (`rt_chain_enter_v`).

## ⛔⭐ DEFECT C — NEXT SEAT STARTS HERE.  THE DISCRIMINATOR IS LITERAL-vs-VARIABLE.

| probe | shape | verdict |
|---|---|---|
| `ev_fn_literal.sno`      | `F(x)` body `F = EVAL('1 + 2')` — **literal** arg | **SIG11** |
| `ev_fn_var.sno`          | `G()`  body `G = EVAL(s)` — **variable** arg | PASS |
| `ev_fn_beauty_shape.sno` | `R(t,n)` body `R = EVAL("epsilon . *Q(" t ", " n ")")` | PASS |
| `ev_fn_noeval.sno`       | same function shape, no EVAL | PASS |

⛔ **IT IS NOT ARITY** — `ev_fn_var` is a ZERO-argument function and passes;
`ev_fn_literal` takes one argument and dies.  ⛔ **IT IS NOT THE
PATTERN/CAPTURE/DEFERRED-CALL COMPOSITION** — `ev_fn_beauty_shape` is
`semantic.inc:17` verbatim in substance and PASSES.  The one moving part is
whether EVAL's argument is a COMPILE-TIME STRING LITERAL or a runtime value,
inside a program-defined function body.

Crash is the same wild-jump signature (`rip=_rtld_global`) but frame #1 is `0x0`,
not the `0x41ad68` of the s112 instance — a different instance of the class.

**⛔⛔ THE s113 HYPOTHESIS IS FALSIFIED — MEASURED, DO NOT RE-DERIVE IT.** This file
previously guessed that a constant argument let the lowerer/optimizer fold or
pre-mint the chain at COMPILE time, re-entering the emitter inside the enclosing
proc's emit context. **THAT IS WRONG.** gdb on `ev_fn_literal` shows
`eval_build_chain` firing at **RUN time**, from generated code, through the
ordinary runtime path — no compile-time fold anywhere:

    #0 eval_build_chain (s="1 + 2")           runtime_eval.c:233
    #1 eval_string_transient                  runtime_eval.c:308
    #2 _eval_str_impl_fn                      driver_hooks.c:6
    #3 EVAL_fn                                pattern_match.c:442
    #4 try_call_builtin_by_name (fn="EVAL")   by_name_dispatch.c:6901
    #5 rt_call_arr_impl · #6 rt_call_arr      by_name_dispatch.c:4699/4652
    #7 0x00007fffee4012ae in ??               <- COMPILED BLOB, i.e. the proc body

**⭐ THE REAL SIGNATURE IS `rip = 0x0000000000000002`, AND IT NAMES THE DEFECT.**
Not `_rtld_global` this time. `2` is the value the chain's own γ epilogue loads —
`add rsp,K · mov $0x2,%eax · ret` — so **the chain returned into its own DT tag**:
the return address `rt_chain_enter_v` pushed was NOT at `[rsp]` when the `ret`
executed. The chain's stack motion is UNBALANCED when it is built while the
program is already inside a proc activation (`fc_tables_reset`/`zls_reset` run at
`eval_build_chain` entry, and the chain's K derives from a graph lowered in that
state).

**ROUTE FOR THE NEXT SEAT — this is now an arithmetic question, not a mystery.**
Disassemble the `ev_fn_literal` chain at its `fn` pointer and sum its carves vs
releases (the top-level EVAL chain balances exactly: `sub 16 x3` then `add 48`,
then `add 0` at the shared epilogue). Compare against `ev_fn_var`, which PASSES in
the identical function context — **that is the passing sibling, one variable away,
and the asm diff of the two chains should convict directly.** Do NOT start from
`{γ,ω}` depth or the call-arm family; both were measured irrelevant at s112/s113.

## Beauty self-host state at s113
Oracle `sbl -bf beauty.sno < beauty.sno` = **622 lines, rc=0**, md5
`9cddff2534472b822438801d8db58a99` (the md5 question was CLOSED by Lon at s108 —
do not re-raise).  SCRIP m3 still SIG11.  The 2-way monitor reaches **step 1038**
and reports PARTIAL EOF (scr died) with spl still emitting `@591 RETURN nPush`.
`semantic.inc:17` is `reduce = EVAL("epsilon . *Reduce(" t ", " n ")")` — an EVAL
inside a function body, i.e. Defect C.

## Also minted s113, unrelated to C, NOT folded in
- `DATATYPE(CODE(...))` returns `STRING`, oracle says `CODE` (pre-existing; same in
  the `SCRIP_EVAL_RET=0` arm, so not caused by the s113 fix).
- `:< C >` with spaces fails to parse while `:<C>` parses and transfers correctly.

Every `.sno` here has a live-`sbl` `.ref` beside it.
