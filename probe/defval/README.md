# probe/defval — a BARE deferred expression as a whole pattern value (s119)

`C = *D` — a deferred expression standing ALONE as a variable's entire pattern value —
SIGSEGVs in SCRIP m3 and MATCHes under the oracle.  Compose it with anything and it is fine.

| witness | shape | oracle | SCRIP m3 |
|---|---|---|---|
| `defval_bare_red`         | `D='a'; C=*D; 'a' C`      | MATCH | **SIGSEGV** |
| `defval_bare_starred_red` | `D='a'; C=*D; 'a' *C`     | MATCH | **SIGSEGV** |
| `defval_chain3_red`       | 3-deep `*` chain           | MATCH | **SIGSEGV** |
| `defval_ctl_plain_green`  | `C='a'; 'a' *C`           | MATCH | MATCH |
| `defval_ctl_in_patfn_green` | `C=LEN(*N)` (manual p.85) | MATCH x=ab | MATCH x=ab |
| `defval_ctl_in_concat_green` | `C=*D 'b'`              | MATCH | MATCH |

THE DISCRIMINATOR IS NOT THE OUTER `*` — `defval_bare_red` has none and still crashes.
It is the VALUE being a bare deferred expression.  The three controls prove every other
ingredient innocent: a plain value works, a deferral nested in a pattern function works
(that is the manual's canonical form), and a deferral composed into a concatenation works.

FINGERPRINT (gdb, `SCRIP_NO_SEGV_HANDLER=1`): **PC=0, r10=r11=0**, frame #1
`0x0000000600000058` = a descr tagword jumped through.  Unseated gamma/omega wires —
the same signature as the s105 MV-BLOB-GLUE class (`jmp r11` with wires=0 => `jmp 0`).
THEORY, STATED AS THEORY (next seat VERIFIES, does not inherit): when the deferred
expression is the whole value there is no enclosing pattern structure to emit the blob
glue, so nothing seats the wires; composition supplies it, which is exactly why every
control is green.

WHY IT MATTERS: this is on the M1 critical path.  Bisecting beauty's `Parse` shows
`Parse = *Command` SIGSEGVs while `Parse = ARBNO(*Command)` silently mismatches — two
distinct defects stacked under the one-line `Parse Error` divergence.
