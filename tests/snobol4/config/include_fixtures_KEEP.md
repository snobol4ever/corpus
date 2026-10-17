# include_fixtures_KEEP.md — tests/snobol4/config: the -INCLUDE fixtures master entries read

These five sources are not tests. They are Gimpel library functions that master entries pull in with
`-INCLUDE`, directly or through each other, and the grader resolves them from this directory (the rungs
companion closure, `util_rungs_companion_closure.py --lang snobol4`). Absorbing one into `ALL.sno` would
leave its includer naming a file that no longer exists, so each stays loose here on purpose.

| fixture | included by |
|---|---|
| `config/OR.sno` | the master entry `simple_output_70` (`-INCLUDE "OR.sno"`) |
| `config/BALREV.sno` | `config/OR.sno` |
| `config/REVERSE.sno` | `config/BALREV.sno` |
| `config/BLANKS.sno` | one master entry (`-INCLUDE "BLANKS.sno"`) |
| `config/DIFF.sno` | `config/BLANKS.sno` |

Measured 2026-10-17 by hq_snobol4 (row `snobol4-absorb-every-owed-source-into-the-one-master-unabsorbed-census-reads-zero`):
`grep -c '^-INCLUDE "OR.sno"' ALL.sno` and the same for BLANKS read 1 each; the other three are named only by
these fixtures' own `-INCLUDE` lines.
