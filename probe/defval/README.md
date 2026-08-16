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

## s119 ASM DIFF — THE MECHANISM, MEASURED (not theory any more)

`scrip --compile` on the RED witness vs the concat control (they differ by ONE composition):

RED `C = *D` mints an EXPR$ thunk with **NO ACTIVATION FRAME**:
```
proc_EXPR$0_γ:    jmp   r10        <-- nothing ever seated these
proc_EXPR$0_ω:    jmp   r11
```
GREEN `C = *D 'b'` has the proper blob frame — `mov rbp,[rbp]; jmp r10` at γ and
`pop rbp; jmp r11` at ω — i.e. the s97 R-4(b) CLASS D activation whose base-32 frame
{saved rbp, entry-wire r10, entry-wire r11, pad} SAVES AND RESTORES THE ENTRY WIRES.
`pop rbp` count: RED 2, GREEN 3.  The bare-deferred shape never receives that frame,
so γ/ω jump through r10=r11=0 => `jmp 0` => PC=0.  That is the crash, exactly.

## THIS IS THE LONG-OPEN `*DIFFER(X)` EXPR$ CLASS, WITH A 5-LINE INSTRUMENT

`defval_bare_predicate_red.sno` (`X='q'; C=*DIFFER(X); 'a' C`) is the shape carried open
since s117 as `f6d` / `t6m` / `fence_probe` ("*DIFFER(X) EXPR$ thunks, Error 22").  It
SIGSEGVs here with the SAME frameless-thunk fingerprint.  The inherited note said they
"need the name-cell staging, not the entry fix" — that remains plausible for the Error-22
manifestation, but the CRASH manifestation is the missing blob activation frame, and this
witness is far smaller than any driver.  NEXT SEAT: apply the s97 blob-scope
`frame_slot_scan` arm to the bare-deferred EXPR$ shape and re-run all four RED witnesses.
