# probe/opsyn/unstable-oracle/ — ⛔ CLOSED s192: THE THIRD OPTION EXISTED AND IT IS `&ERRLIMIT`

This directory quarantined `opsyn_used_op_err156` because an ERROR-156 run of `sbl`
ends in a diagnostic banner (`execution time msec`, `memory used (bytes)`,
`REGENERATIONS`, and every line **doubled**) that a `.ref` cannot compare against.
The old text posed the disposition as a choice owned by **GOAL-SNOBOL4-100 R-8(c)**:
(a) teach the grader to normalise the banner, or (b) leave it manual.

**There is a third option, it needs no grader change, and it is now landed**
(s192 seat5, queue row `opsyn-3arg-ruling`): make the **program** ask the oracle to
convert the error. Manual Ch.16 `&ERRLIMIT` — *"it is decremented by one, **no message
is displayed**, and … SPITBOL converts the error to statement failure"* — so a witness
that sets `&ERRLIMIT` and reads `&ERRTYPE` on its `:F` branch gets the error **code as
ordinary output**. No banner, no unstable tail, nothing to normalise. The graded witness
is **`probe/opsyn/opsyn_kind_selector.sno`**, `.ref` byte-identical to live `sbl -bf`,
green in both modes, and it carries this file's assertion (`used-op i=2 -> 156`) as one
of its thirteen lines. SCRIP raises 156 through `kwb_error`, the same `&ERRLIMIT`
adjudicator 208/209/210 use, so the conversion is real rather than imitated.

⛔ **AND THE PREMISE ABOVE DID NOT REPRODUCE, WHICH CHANGES THE LESSON.** Five live
draws of `opsyn_used_op_err156.sno.manual` returned **one md5, five times** — this
witness is small enough that `execution time msec` and `REGENERATIONS` are both 0 and
`memory used` is fixed. So instability is not what makes the banner unpinnable. What
does is that **`sbl` exits 0 while dying** (s190; s191 `gimpel-suite-harness`), so a
banner-shaped `.ref` pins a *successful-looking* error dump. The quarantine reached the
right answer for a reason that is not the strongest one available.

**The `.manual` pair is kept, unswept, as the record of the oracle's exact wording.**
`&ERRLIMIT` is the general instrument for any SPITBOL error class a `.ref` must pin —
`test_stack` (R-3(f)) is the obvious next candidate and is **not** claimed here.
