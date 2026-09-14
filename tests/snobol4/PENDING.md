# PENDING.md — tests/snobol4/ (root-level loose pairs deferred to another row)

Written cfo 2026-09-13. This is NOT a KEEP.md: a keeper says "stays loose forever, on purpose";
these two convert into the master the day the row named below lands. Modelled on
`tests/icon/PENDING.md` and on `test_gate_suite_conversion_complete.sh`'s fourth bucket; the
matcher is `util_build_master_suite.py`'s `_pending_deferral`, a delimited substring search over
the `## DEFERRED` items, live only while the named row is live.

⛔⭐ **WHY THESE TWO ARE DEFERRED RATHER THAN ABSORBED RED, AND IT IS A FINDING ABOUT THE
INSTRUMENT AND NOT A PREFERENCE OF MINE.** The ladder law is that a witness exposing a compiler
defect *stays in the master red, never xfail* (`THERE IS NO XFAIL`, Lon 2026-09-03 21:30). But
`util_build_master_suite.py` runs every plain loose pair in both modes before absorbing it and
mints `xfail=not _green` — an XFAIL marker in the banner, with **no reason block and no flag to
decline** (the code says so in its own comment: "auto-XFAIL by source verdict"). I absorbed these
two once, measured the result, and reverted it: both landed as XFAIL entries carrying no reason,
which `test_gate_xfail_has_reason.sh` would call a defect and which moves
`test_gate_no_xfail_survives.sh`'s population the wrong way on the night it is counting to zero.
So the sanctioned path into the master cannot carry a red witness honestly, and the deferral
contract can. Reported to hq_T, who owns the master-suite instruments.

## DEFERRED snobol4-fence-then-an-operand-then-an-alternation-in-a-pattern-variable-never-backtracks
- `fence_then_operand_then_alternation_never_backtracks` — the four-arm minimal witness. Arm Y1 is
  RED in both modes, measured at mint on SCRIP `1b20c19ae`+; arms Y2, Y3 and Y4 are the controls
  and are GREEN in both modes, which is what makes the class *all three conditions together*: a
  bare FENCE, an alternation that is not the first element after it, and the whole pattern reached
  through a variable. Converts green.
- `tpgm4_syntactic_recognizer` — SPITBOL TEST PROGRAM #4 decomposed into a master entry on CEO-725
  (Lon: "You should do all 8 SPITBOL test programs"). The oracle runs it whole, 1366 lines, and
  SCRIP disagrees on exactly FOUR: it says SYNTACTIC ERROR where SPITBOL says NO SYNTACTIC ERROR,
  for every statement carrying a two-part goto `:S(A)F(B)` or `:F(B)S(A)`. That is the row above,
  reached through the recognizer's own `GOTO_FIELD` pattern, and NOT a second defect — proven by
  the minimal witness beside it rather than asserted. Its three siblings (tpgm5 TREESORT4, tpgm7
  SYMBOL TABLE GENERATOR, tpgm8 BRIDGE DEALER) are absorbed and green in both modes; this one waits
  for its cure so that it converts as a pass rather than as an excuse.
