# corpus/tests/prolog/clause_source_record -- THE WITNESSES OF DESIGN-PLAN: consulted-clause-source-record (the cto, 2026-10-31, CEO-2064/2065; ARCH-PROLOG-DATABASE.md section 23)

Standalone witness programs, NOT entries of the ProRungs master (ALL.pl): each `csr_*.pl` has its `.ref` cut from swipl 9.0.4 (`swipl -q -t halt`, twice, equal), run from this folder (the file names in the refs are base names; `csr_consult_clause_property.pl` consults `csr_consulted_lib.pl` by a relative path). STEPS.tsv assigns each to the design step whose landing turns it green; `harness/scripts/test_design_clause_source_record_steps.sh --step N` grades a step in both modes. Every witness carries `:- use_module(library(lists))` as the SWI-dialect marker the suites carry.

| file | step | what it witnesses | at 74ea05930 (2026-10-31) |
|---|---|---|---|
| `csr_static_clause_property.pl` | 1 | clause_property/2 over a dynamic predicate with file clauses (the seed road), a static predicate reached through clause/3 (the static seed road), an asserted clause (no file), an erased clause, an unbound ref (instantiation_error) | existence_error clause_property/2 |
| `csr_consulted_lib.pl` | data | the file the consult witness loads: a rule, a block comment that moves a line, a fact, a DCG rule | |
| `csr_consult_clause_property.pl` | 2 | file and line of clauses consulted at run time, a DCG rule consulted, then their listing with source names | existence_error non_terminal/1 then clause_property/2 |
| `csr_clause_info.pl` | 3 | clause_info/5: file, the variable names of the re-read clause in source order, the read term's position | existence_error clause_info/5 |
| `csr_listing_names.pl` | 4 | the tests_test0084 shape without library(dcgs): goal_expansion, a DCG with a {} body, a DCG with a terminal body and pushback, a named singleton `_Bar`, an anonymous `_` | shape equal, every name lettered |
| `csr_listing_library.pl` | 4 | listing/1 and portray_clause/3 through the vendored library(listing) | shape equal, names lettered by listing/1; portray_clause/3 honours the bindings |
| `csr_listing_reshaped.pl` | measure | a DCG rule with a leading terminal: swipl folds the terminal into the head at compile time and its clause_info then fails to unify the re-read translation with the folded clause, so swipl LETTERS it; SCRIP today keeps the body unification `B=[hello|D]` (a shape red of the cqo's DCG fold row, not of this design). Once the fold lands STORE-SIDE (section 23.2 (c)), the re-read fails the same way and letters fall out | shape differs (unfolded) |
