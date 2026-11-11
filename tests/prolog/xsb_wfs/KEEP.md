# KEEP.md -- tests/prolog/xsb_wfs (the cto, 2026-10-28, CEO-1996/1998)

The witnesses of DESIGN-PLAN: xsb-tabling-wfs (.github/ARCH-PROLOG-WFS-TABLING.md section 8), kept loose on purpose and written in XSB's syntax as `.P` files (the package they stand for, corpus/packages/prolog/xsb_tests, vendors XSB's own test tree): each sits beside its `.ref` cut from XSB 5.0.0 by XSB's gentest protocol and is run by `harness/scripts/test_design_xsb_tabling_wfs_steps.sh --step N` in both modes exactly as the package runs an entry. They are not suite entries and are never converted into `ALL.pl`. `xw01_prog.P` and `xw02_p33.P` are the siblings `xw01_loader_table.P` and `xw02_wfs_driver.P` consult at run time and have no ref of their own.

## The keepers, each named

`xw01_loader_table.P` `xw01_prog.P` `xw02_wfs_driver.P` `xw02_p33.P` `xw03_reading.P` `xw04_auto_table.P` `xw05_suppl_table.P` `xw06_builtins.P` `xw07_once_per_body.P` `xw08_scc_ring.P` `xw09_delay_print.P` `xw10_cut_over_table.P` `xw11_subsumptive.P`

## 2026-10-31 (cao, step 6 landing)

`xw13_nested_resume.P` and `xw14_three_table_scc.P` are the W6 witnesses of 8.10 (10) (hq_collector's n2 and n3, 2026-10-29), refs cut from XSB 5.0.0 by the gentest protocol. Both were red on the step-6 branch before its park froze the live choice points' heap marks (n2 [1,2], n3 [1,2,3]) and are green after. `delay_tests_ac_tests` moved from step 6's probe to step 8's on the cto's ruling of 2026-10-31 (its one differing line of 173 is the delay-list text CEO-2008 gave step 8).

`xw15_throw_abandons.P` (cao, 2026-10-31): an exception escaping a tabled evaluation abandons its incomplete tables (hq_prolog's witness of the single-leader regression); the ref is cut from XSB 5.0.0, and `q` picks the answer 4 by value because the order of a completed table's answers is the engine's own.

## 2026-11-10 (cio, CIO-102: the table-inspection design, steps 12 to 16)

`xw16_table_record`, `xw17_visitors`, `xw18_tables_in_progress`, `xw19_table_dump` and `xw20_answer_order` (each a `.P` beside its `.ref`) are the inspection witnesses of GOAL-CIO.md CIO-102: what XSB reads inside a table (its calls, answers and component; the readers of a completed incremental table; the tables in progress and their dependency graph; table_dump). Every ref is cut from XSB 5.0.0 by the plan's protocol (consult, tell(temp), test, told, the lines sorted). Steps 12 to 16 name the first four; `xw20_answer_order` has no step and is kept for the measurement of the order a completed table's answers are returned. Each step is red on the day it is admitted.

## 2026-11-10 (cio, CTO-587 answer 5: step 22)

`xw26_negative_ring.P` beside its `.ref`: a ring of eleven calls under negation, each answer printed with the count of answers made before it, so the sorted lines carry the order the scheduler wakes the tables that wait on a negation. XSB 5.0.0 makes the answer of the oldest table's waiter first (10, then 0 to 9). The cto's first form of the program is `w5.P` in his evidence folder of CTO-587.

## 2026-11-11 (cfo, CIO-102 and CIO-111: steps 17 to 21)

Five witnesses, each a `.P` beside its `.ref`, copied from `/home/resources/progress/XSB-INSPECT-WITNESSES` where the cio staged them on 2026-11-10 and admitted as steps 17 to 21 by the rows `prolog-xsb-wfs-the-parsort-witness-is-admitted-to-the-plan-as-step-17-red` and `prolog-xsb-wfs-the-four-undefined-value-witnesses-are-admitted-to-the-plan-as-steps-18-to-21-each-red`: `xw23_parsort` (step 17, thirteen lines), `xw21_bounded_rationality` (step 18, 27), `xw22_unsafe_negation` (step 19, 3), `xw24_residual_sccs` (step 20, 20), `xw25_exception_dump` (step 21, 21). Every answer was cut again from XSB 5.0.0 by the harness's `--cut` on 2026-11-11 and equals the staged cut byte for byte. Each step reads RED in both modes on SCRIP 4e8ecf889, never a refusal; step 18's mode-3 run ends by its 300 s timeout (rc 124), the other four end rc 0 with a different answer.
