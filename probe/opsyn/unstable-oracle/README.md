# probe/opsyn/unstable-oracle/ — witnesses whose sbl output is NOT byte-stable

`sbl` terminates an ERROR-156 run with a diagnostic banner containing
`execution time msec`, `memory used (bytes)`, `memory left (bytes)` and
`REGENERATIONS`.  Those fields vary run to run, so a `.ref` pinned from live
`sbl` can never compare byte-equal: as a graded probe this program would sit
on the board as a permanent DIFF that no code change can clear.

The scorecard has NO `.xfail` handling (`grep -c xfail scorecard_snobol4.sh` == 0),
and its `probes_misc` sweep is RECURSIVE (`probe -name *.sno -not -path */bb/*`),
so a subdirectory does not exclude anything.  The files therefore carry a
`.manual` suffix — `opsyn_used_op_err156.sno.manual` does not match `*.sno`
and is not swept.  Run it by hand:

    /home/claude/x64/bin/sbl -b opsyn_used_op_err156.sno.manual

⛔ MANUAL-CHECK witness owned by **GOAL-SNOBOL4-100 R-8(c)**.  The committed
`.ref.manual` is verbatim live-`sbl` output INCLUDING the unstable tail — kept
as a record of the oracle's exact wording, not as a grader input.  The single
assertion that matters:

    <file>(<line>) : ERROR 156 -- opsyn first arg is not correct operator name

Measured s105: SCRIP silently ACCEPTS `OPSYN('+','PLUS',2)` and prints `3`.

R-8(c) must either (a) teach the grader to normalise the sbl error banner —
the `norm=` column already exists in the scorecard SUITES table and `ms` is the
precedent — then rename back to `.sno` and promote to `probe/opsyn/`, or
(b) leave it manual.  ⛔ Do NOT pin a hand-trimmed `.ref` that live `sbl` does
not actually produce: that trades a visible red for an invisible lie.

Same oracle-instability class as `test_stack` (R-3(f)).
