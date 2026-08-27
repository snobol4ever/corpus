# KEEP — permanent standalone files, not suite-consolidated

- `cross.sno`
- `word1.sno`
- `word2.sno`
- `word3.sno`
- `word4.sno`
- `wordcount.sno`

All six are stdin-bearing (each paired with a `.input` companion). The
settled one-line/banner-block suite format has no stdin-input concept, and
hq_C ruled stdin-bearing tests stay loose files **permanently** as their
own scope-boundary category — this is the original class the ruling was
written for (`corpus-suites-consolidation.task.md` LEDGER, seat07
2026-08-24: "6/19 pairs (`cross`, `word1`-`word4`, `wordcount`) read stdin
via a `.input` companion... did not invent one unilaterally"; hq_C same
session: "input-bearing tests stay loose files PERMANENTLY... `--skip`/
`--skip-reason` is APPROVED as the permanent handling"). Not pending, not
a gap — out of scope by ruling.
