# PROVENANCE — snoflake_suite

Vendored from https://github.com/atdt/snoflake (Ori Livneh), commit 54f7b80164905be8c029e26cb6baaaadc9a5f4a2 (2026-06-13), directory test/programs/ only.
License: BSD 2-Clause (see LICENSE beside this file; LICENSE-CSNOBOL4 covers incorporated CSNOBOL4-derived material). Redistribution permitted with notices retained — both are retained here.
Fixture format: each .sno is self-describing — header of `*` comment lines with @title/@options/@input/@expect/@match(exact|substring|error, /i)/@attribution/@nonstandard directives; program follows and runs unmodified under any SNOBOL4. gimpel/ holds .INC/.IN library support files.
Dialect: snoflake tracks the SIL 3.11 macro implementation (vanilla SNOBOL4) and cross-checks against CSNOBOL4 — NOT SPITBOL. Grade SCRIP against each fixture EMBEDDED @expect; a divergence may be dialect, check before calling it a defect (RULES.md dialect law). @nonstandard fixtures are implementation-defined: never hard-gate them.
Local reference clone: /home/resources/snoflake-master. Runner: SCRIP/scripts/test_snoflake_suite.sh.
