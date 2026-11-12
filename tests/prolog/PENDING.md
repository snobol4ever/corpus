# PENDING.md — corpus/tests/prolog

Every deferral this file held is void: its rows (tests-consolidate-prolog-pz4-blocked-33, prolog-queens-and-sentences-segv-are-more-rt-jmp-frame-lexprep2-witnesses, prolog-backtracking-yields-first-solution-only, prolog-existence-error-not-catchable-iso) are no longer live, and the programs they deferred are entries of the master since row tests-folder-consolidation-cto (2026-11-12).

Loose, declared, until the master can carry it (row tests-folder-consolidation-cto):

- `gnu_gaps/gg_listing_0.pl` with its `.ref`: GNU Prolog's listing/0 prints the consulted file's absolute path, so an answer cut by the witness tool differs run to run (it refused: NONDETERMINISTIC) and no staged entry could match it; test_design_prolog_gnu_gaps_steps.sh step 7 reads the loose pair with the path written DIR.
