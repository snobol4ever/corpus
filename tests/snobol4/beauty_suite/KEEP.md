# beauty_suite/ — STANDALONE-KEEP, evaluated whole (task `tests-consolidate-snobol4-loose`)

Verdict: **every file in this directory stays loose.** None of it converts to corpus-suites-consolidation
suite format. This is a considered call, not a default — evidence below.

## Why

1. **Individually weighted in the scorecard.** `SCRIP/scripts/scorecard_snobol4.sh`'s `SUITES` table carries
   `beauty_suite 15 tests/snobol4/beauty_suite -maxdepth 1 -name *_driver.sno SELFDIR 60 -` — a **named,
   15-of-113-point suite** (second only to `beauty_self` at 20), scored by a literal `-name *_driver.sno`
   glob. A suite-format `.sno`/`.ref` blob is invisible to that glob: the row would silently score 0 programs
   found, not a FAIL — the exact shrunken-denominator false-green class RULES.md names repeatedly.
2. **Individually globbed a second time**, independently, in `test_corpus_snobol4.sh`'s own board
   (`for sno in "$BEAUTY"/*_driver.sno`) — the *_driver.sno/.ref pairs are graded there too, by the same
   literal-filename mechanism, not through the suite-family harness loop (which explicitly excludes this
   directory in its own comment to avoid double-counting it).
3. **~20 other scripts reference `beauty_suite`/`$BEAUTY` by path** (`board_beauty_m1.sh`,
   `test_gate_m1_self_host_fixed_point.sh`, `test_gate_sn7_beauty_self_host.sh`,
   `test_gate_em_beauty_subsystems_mode4.sh`, `test_beauty_snocone_all_modes.sh`,
   `test_beauty_snocone_subsystems.sh`, `util_run_beauty_oracle.sh`, `test_smoke_self_beautify.sh`, …) — this
   is the Milestone 1 (beauty.sno self-host fixed point) apparatus, this project's flagship gate.
4. **The file shapes don't fit the suite model even ignoring scoring.** Every subsystem is THREE cooperating
   files, not one self-contained test: `<name>.sno` (a beauty.sno subsystem source slice, read by name from
   its driver — not a standalone program), `<name>_driver.sno`/`.ref` (the individually-graded harness for
   that subsystem), and (for 12 of the 17) `<name>_tracepoints.conf` (sidecar instrumentation config with no
   suite-format equivalent — the format has no slot for a third parallel file). `io.sno` has no driver at all
   and is presumably read by something else in the M1 chain. None of these are "one complete program, run
   alone" in the sense the harness's `convert_one`/`run_suite_entry` assume.

## Inventory (63 files, all kept)

17 subsystems × (`_driver.sno` + `_driver.ref`) = 34 driver files, individually scored by name (see #1/#2):
`assign case counter fence Gen global match omega Qize ReadWrite semantic ShiftReduce stack TDump trace tree XDump`

16 of those 17 also have a bare `<name>.sno` subsystem source (no `fence.sno` — driver-only) = 16 files,
plus standalone `io.sno` = 17 subsystem/source files.

12 `_tracepoints.conf` sidecars (not all 17 subsystems have one): `counter Gen match omega ReadWrite
ShiftReduce stack TDump trace tree XDump semantic`.

17 + 17 + 12 = wait — recount: 34 (drivers) + 17 (subsystem/io sources) + 12 (tracepoints.conf) = 63. Matches
the directory's on-disk file count exactly.

## Scope note

This verdict covers whether these files convert to *suite format*. It says nothing about whether the
directory's *content* needs other work (e.g. `m1_min.in` having no matching `.ref`, noted in the sibling
`corpus-suites-consolidation` ledger for `crosscheck/beauty` — a different, already-flagged directory, not
this one). Nothing on disk here was modified by this evaluation.

## Exhaustive filename manifest (gate: `test_gate_suite_conversion_complete.sh` matches literal basenames)

The prose above names subsystems, not filenames — `test_gate_suite_conversion_complete.sh` does a literal
basename substring match against KEEP.md text, so the subsystem-name prose alone does not satisfy it. This
section is the mechanical declaration; the prose above remains the reasoning.

```
assign_driver.sno   assign.sno          case_driver.sno    case.sno
counter_driver.sno  counter.sno         fence_driver.sno   Gen_driver.sno
Gen.sno              global_driver.sno   global.sno         io.sno
match_driver.sno    match.sno            omega_driver.sno   omega.sno
Qize_driver.sno      Qize.sno            ReadWrite_driver.sno ReadWrite.sno
semantic_driver.sno  semantic.sno        ShiftReduce_driver.sno ShiftReduce.sno
stack_driver.sno    stack.sno            TDump_driver.sno   TDump.sno
trace_driver.sno    trace.sno            tree_driver.sno    tree.sno
XDump_driver.sno    XDump.sno
```

34 files, matching the directory's on-disk `.sno` count exactly.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
