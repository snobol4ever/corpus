# KEEP — permanent standalone file, not suite-consolidated

- `coverage_sno_nodes.sno`

Has no `.ref` at all and is genuinely never graded — its only reference
anywhere in either repo is a historical comment in
`scripts/util_s_md5_sweep.sh:15` (an s149 measurement note, not a live
invocation or grading wire-up). Never part of any oracle-diffed board
(`test_corpus_snobol4.sh`'s per-file loop already requires both a `.sno`
and a `.ref`). Documented permanent exception per CEO-16 (never-graded by
design) and `corpus-suites-consolidation.task.md` LEDGER, seat08
2026-08-27: "coverage — CLOSED, permanent, confirmed not just assumed... 
Staying as a documented permanent exception". Not pending, not a gap —
out of scope by ruling.
