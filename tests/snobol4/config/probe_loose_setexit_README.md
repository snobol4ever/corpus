# `probe/setexit/` — THE SETEXIT / &ERRLIMIT FACE CENSUS

Witness set for queue row **`setexit-write-only-stub`**. Five of six rows are **RED BY DESIGN**
at mint time (SCRIP `e92aebfe`, s249, seat2) — they exist to make a missing MECHANISM measurable.
Every `.ref` is baked from the **live SPITBOL oracle**, `x64/bin/sbl -bf`, and each was generated
twice and byte-compared before being checked in.

## THE CONTRACT, AND WHERE IT COMES FROM

The authority is not folklore: it is SPITBOL's own decision code, `x64/sbl.min:29377-29420`
(`err05`/`err06`/`err07`), whose comment reads *"the action taken on an error is as follows"*.
Read in order, an execute-time error does this:

1. **`&ERRLIMIT` is zero ⇒ ABORT.** No trap runs, however armed (`bze kverl,labo1`).
2. Otherwise set `&ERRTEXT`/`&ERRTYPE`, then **abort anyway if 3+ fatal errors have occurred**,
   "regardless of errlimit and setexit — looping is all too probable otherwise."
3. **Decrement `&ERRLIMIT`** (`dcv kverl`).
4. Save the failure offset (for `:(CONTINUE)`) and the code offset (for `:(SCONTINUE)`).
5. **No trap armed ⇒ take the erroring statement's own FAILURE exit** and keep running.
6. **Trap armed ⇒ clear the trap (`zer r_sxc`), reset the stored argument to null
   (`mov stxvr,=nulls`), and jump to the trap's first statement.**

So `SETEXIT` is a **ONE-SHOT** trap, and `&ERRLIMIT` is a **separate, load-bearing half**: it
decides whether an error is survivable at all, while `SETEXIT` decides only where control goes.
`SETEXIT`'s argument must be a label name or null, else **ERROR 187** (`sbl.min:15596`).

## ⛔ THE TRAP THAT WILL MIS-MEASURE THIS ROW

`X = 1 / 0` and `OUTPUT = CHAR(1000)` are **constant-folded and diagnosed at COMPILE time** by
SPITBOL, before `SETEXIT` can arm. Probed with literal operands the oracle terminates and the
handler never runs — which reads exactly like "SETEXIT is selective by error code" and is not
true. Hide the operand in a variable (`D = 0` … `1 / D`) and the same errors are trapped
normally. Every witness here uses the variable form on purpose.

## THE ROWS

| witness | face | oracle |
|---|---|---|
| `se_retval` | `SETEXIT` returns the previously armed label | null, `FOO`, `BAR`, null |
| `se_trap_fires` | an armed trap takes control on a runtime error | `HANDLER … S4` |
| `se_notrap_failexit` | no trap + `&ERRLIMIT`>0 ⇒ statement takes its FAILURE exit | `CONTINUED` |
| `se_oneshot` | firing DISARMS the trap; the 2nd error is not caught | `HANDLER S4 / MID / AFTER` |
| `se_rearm` | a handler that re-arms catches the next error too | `… / MID / HANDLER S6 / AFTER` |
| `se_reset_null` | firing resets the stored argument to null | `PREV=[]` |

⭐ **`se_notrap_failexit` IS THE GREEN CONTROL AND IT IS NOT DECORATION.** SCRIP passes it in
both modes today. A probe set that was red in every row could not tell a missing mechanism from
a broken witness; this row is what proves the other five reds are the compiler's and not the
harness's.

## MEASURED AT MINT (SCRIP `e92aebfe`, RT_OPT `-O0`, oracle verified alive first)

`m3` and `m4` agree **exactly**: `se_notrap_failexit` PASS, the other five FAIL, both modes.
This is a lowering/runtime gap, not an m3≢m4 divergence.

`core.c:1273` `_setexit_label` has three writes and **zero reads**; `core.c:561` `kw_errlimit`
is written by the keyword table (`keywords.c:105`) and read by **nothing in the error path** —
`core_runtime_error` consults `g_error`/`g_core_errjmp_n`, which are set only inside the EVAL
boundary (`runtime_eval.c:264-270`), and otherwise `exit(1)`s on every arm. Both halves the row
names are write-only, and they are two mechanisms, not one.

## NOT REFFED ON PURPOSE

Two further faces were measured and are deliberately **not** checked in: `&ERRLIMIT = 0` with a
trap armed, and `SETEXIT(.NOSUCH)`. Both answer with SPITBOL's error-termination dump, which
embeds the source path and belongs to the class that must not be pinned as a `.ref`. Their
verdicts are recorded above and in the FINDING instead.
