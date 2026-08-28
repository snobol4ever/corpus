# opsyn — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`).** This is a STATUS record, not a policy keep.

## Converted 2026-08-28 (probe-consolidate-m1-and-small, seat02)

`opsyn_alias_plain_function` and `opsyn_apply_alias_sigsegv` are now entries 19-20 of
`tests/snobol4/probe/opsyn.sno`/`.ref` (20/20 green both modes, verified post-merge).

⭐ **`opsyn_apply_alias_sigsegv` no longer crashes** — re-verified fresh via the harness (not
trusted from its name or the old citation): `APPLY('aliasName', args)` now prints `42` cleanly,
rc=0, matching the oracle-verified `.ref` (GOAL-SNOBOL4-100.md:143 minted it in an already-oracle-
verified state and flagged it to hq_C as a pre-existing, not-fixed-there SIGSEGV;
`FINDING-2026-08-27-seat11-opsyn-apply-alias-sigsegv-rt-proc-enter-named.md` has the trace). Some
compiler change between then and today's build (SCRIP tree at time of this row) appears to have
fixed it as a side effect — did not bisect which commit (out of scope for a consolidation row);
flagged non-blocking (`s4e_msg.sh ask hq_C opsyn-apply-alias-sigsegv-appears-fixed`) so whoever owns
that FINDING can confirm and close it rather than leaving a stale open-crash citation.

## BLOCKED on xfail representation — still genuinely red, re-verified fresh

`opsyn_builtin_target` (m3 parse/FATAL rc=1, m4 `scrip --compile` itself fails) and
`opsyn_unary_target` (m3 AND m4 both wrong-answer, rc=0) — both re-run through
`corpus_suite_harness.py convert` directly (not a manual stdout+stderr-merged check, which is
unreliable here since `classify()` grades stdout only) and both correctly REFUSED as "original file
itself is not green." Matches `GOAL-SNOBOL4-100.md`'s 2026-08-27 seat06 finding (OPSYN-to-a-BUILTIN
and unary `!` in a pattern operand, "a different, still-unopened gap" from the rest of R-8). Same
xfail-format gap as `probe/gimpel`'s 13 still-red witnesses — see that family's `KEEP.md` for the
full reasoning; not re-derived here. Left loose.

`unstable-oracle/opsyn_used_op_err156.sno.manual` — pre-existing `.manual` exclusion with its own
README (ERROR-156 banner unpinnable per `&ERRLIMIT`/`&ERRTYPE` design, R-8(c) ruling
`FINDING-2026-08-20-s192-...md`), untouched by this row, not a probe-consolidation target (already
`.manual`, not `.sno` — the DONE-WHEN's glob does not see it).
