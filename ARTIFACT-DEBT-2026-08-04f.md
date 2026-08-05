# .s ARTIFACT DEBT NOTE — 2026-08-04f (Opus session 7, MON-RE)

The two regen commits immediately preceding this note
(`benchmark x86 .s artifacts: SEQ-ERAD MON-RE`, `x64 demo artifacts: SEQ-ERAD MON-RE`,
plus the feature-test regen in the SCRIP repo) carry the MON-RE rung name because that
is the rung that RAN handoff step 4. **The byte changes are NOT caused by the MON-RE
edits.**

MEASURED, both directions:
- The MON-RE edits (`src/emitter/emit.cpp`: `op_stno` promotion + `IR_GOTO` tap gate) are
  codegen-NEUTRAL. `scrip --compile` output is BYTE-IDENTICAL with and without them.
- The artifacts were ALREADY STALE at pristine `a1caa5b6`. With the working-tree change
  stashed, the pristine compiler emitted 2463 lines for `benchmarks/snobol4/roman.s` while
  the COMMITTED artifact held 2533 — they already disagreed before this session touched
  anything.

Cause: session s6 landed `a1caa5b6` in a NOT-GATE-GREEN state and did not run handoff
step 4. This handoff pays that debt.

Per RULES.md the `.s` is the HONEST CURRENT compiler output, never a pinned golden, and
`.s` byte-identity is NEVER wired into a gate — so committing them as-is is correct even
while the gate is red (78 pass / 31 xfail / 15 XPASS / 17 REGRESSION).

See `.github/FINDING-2026-08-04f-CLAUDE-SN4-SEQ-ERAD-SE6-THE-CURSORS-BLOCKER-IS-FALSE-AND-THE-MONITOR-WAS-DARK-ON-THREE-DEFECTS.md`.
