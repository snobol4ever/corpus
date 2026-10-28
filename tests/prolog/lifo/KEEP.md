# corpus/tests/prolog/lifo -- THE WITNESSES OF DESIGN-PLAN: prolog-lifo (the cto, 2026-10-28, CEO-1997/1998; ARCH-PROLOG-ACTIVATION-LIFETIME.md section 9)

These are standalone witness programs, NOT entries of the ProRungs master (ALL.pl): each `lifo_*.pl` has its `.ref` cut from swipl 9.0.4 (`swipl -q -t halt`, twice, equal), and STEPS.tsv assigns each to the design step whose landing turns it green. They are graded by `harness/scripts/test_design_prolog_lifo_steps.sh --step N` in both modes under `SCRIP_ZD_RTCHECK=1`, never by the suite runner; a witness that stays red after its step lands is that step's row, and one that reveals a defect outside the plan is harvested into the master through the usual road. Kept loose so an HQ can run one by name and so the step harness owns their grading.

| file | step | what it witnesses |
|---|---|---|
| `lifo_retry_fail_loop.pl` | 1, 6 | a clause retry after a failure-driven loop over a generator |
| `lifo_retract_fail_loop.pl` | 1 | a failure-driven loop over retract/1 whose folded fail is a backward gamma into the db walk (ed87ee3ac) |
| `lifo_clause_fail_loop.pl` | 1 | the same over clause/2 |
| `lifo_between_retaining_fold.pl` | 1 | a retaining call between the generator and the folded fail (the edge the TO beta anchor covers) |
| `lifo_db_walk_in_disjunction.pl` | 1 | a db walk inside a disjunction whose gamma pops its operands (c33d10f89) |
| `lifo_fd_label_neq.pl` | 2 | clpfd propagation and labeling, deterministic |
| `lifo_fd_sum.pl` | 2, 3 | clpfd sum and ordering constraints: the depth check fires at a join in clpfd_run_propagator/2 at c33d10f89 |
| `lifo_fd_queens4.pl` | 2, 3, 6 | 4-queens under clpfd, the reduced queens_clpfd: the same join fire |
| `lifo_ite_join_depths.pl` | 2, 3 | if-then-else and disjunction joins whose arms exit at different depths |
| `lifo_ite_throw_arms.pl` | 3, 4, 6 | ec65ae574's v(q(1)) witness: arms that throw or fail without reaching the join |
| `lifo_disjunction_retaining_arms.pl` | 3 | a disjunction both of whose arms retain |
| `lifo_soft_cut.pl` | 3, 4 | the soft cut |
| `lifo_ite_retaining_condition.pl` | 4 | a condition that retains, committed |
| `lifo_catch_findall.pl` | 4 | catch/3 and findall/3 BOUND records with a throw |
| `lifo_negation_retaining.pl` | 4 | negation over a retaining goal |
| `lifo_nested_conditions_throw.pl` | 4 | nested if-then-else conditions with a throw |
| `lifo_value_across_retaining_call.pl` | 5 | a value produced before a retaining call and read after it |
| `lifo_variable_across_excursion.pl` | 5 | a frame variable read after an excursion |
| `lifo_record_after_excursion.pl` | 5 | a construct record read after an excursion |
| `lifo_wakeup_concede.pl` | 5, 6 | a clause conceding from inside an attribute wakeup's indefinite run (freeze/2) |
| `lifo_dif_concede.pl` | 6 | the same through dif/2 |
| `lifo_cut_after_retaining_call.pl` | 6 | a cut after a retaining call then the next clause |
| `lifo_throw_through_clauses.pl` | 6 | a ball thrown from a clause while sibling clauses remain |
