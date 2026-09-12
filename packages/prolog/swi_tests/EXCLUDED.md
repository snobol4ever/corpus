# EXCLUDED -- nothing is excluded (Lon 2026-09-12, in-chat to cto: "Get all SWI tests graded.")

Every `.pl` under this package that declares a plunit unit (`:- begin_tests(...)`) is graded PER CASE by
`SCRIP/scripts/test_prolog_swi_suite.sh` against the `.ref` beside it, cut by `SCRIP/scripts/util_swi_cut_refs.sh`
from real swipl 9.0.4 running its own `library(plunit)`. A case the oracle could not grade (BLOCKED, an EMPTY unit,
an UNGRADABLE unit where swipl itself crashed or timed out) is named in the ref with the ORACLE's reason and counted
UNGRADED on the board -- never dropped, never a pass. The `.pl` files that declare no unit (drivers, helpers, data,
library modules) are named one per row in `UNGRADABLE.tsv` as CONTAINER_OR_LIBRARY.

The previous EXCLUDED.md (240 rows, every reason scrip-side -- "scrip produces zero PASS/FAIL/EMPTY lines for this
file today") is kept as `EXCLUDED-RETIRED-2026-09-12.md` for the record: a program excluded because our own compiler
fails it is a red moved out of the denominator (`lib_inventory.sh`). `PARSE-ERROR-CLASSES.md` still holds the census of
SWI-only syntax behind the per-dialect switch row (`prolog-dialect-compat-switch-swi-and-gnu`); those files are now in
the denominator as reds, which is where they belong until the switch lands.
