# gimpel — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`): "it matters not the number of lines... make
them all use the multi-liner or one-liner Python harness as appropriate."** What follows is a
STATUS record, not a policy keep — every file named here is blocked on a specific, named,
still-open mechanism, never held back by choice.

## Removed 2026-08-28 (probe-consolidate-m1-and-small, seat02) — exact duplicates

`BALREV.sno`, `BLANKS.sno`, `DIFF.sno`, `OR.sno` were byte-identical (`diff -q`, confirmed before
removal) to `packages/snobol4/gimpel/{BALREV,BLANKS,DIFF,OR}.sno` — the imported-suite copy that
already owns provenance for the whole Gimpel package (corpus re-grid map,
`corpus-suites-consolidation.task.md` line 144: `gimpel` is a named `packages/{lang}/` import).
Not "converted" — they were never probe-specific content, just stray duplicates; `git rm`'d, no
suite entry needed, nothing lost (still present under `packages/`, still in git history here too).

## BLOCKED on xfail/xpass representation — 13 live compiler defects, re-verified fresh 2026-08-28

`gim_blanks_min_wrong`, `gim_defer_cassign_array_elt`, `gim_double_include_hang`,
`gim_fortput_m4_only_segv`, `gim_goto_function_call_parse`, `gim_indirect_read_third_operand`,
`gim_name_of_field_store`, `gim_not_op_no_template`, `gim_omitted_arg_shift`,
`gim_or_single_alternative_crash`, `gim_real_literal_parse`, `gim_seq_code_loop_in_function`,
`gim_span_self_rebind_wrong` — re-ran every one against today's `scrip` (fresh build, not trusted
from the old citation): all 13 are **still red** (mix of wrong-output rc=0, parse/FATAL rc=1,
SIGABRT rc=134, SIGSEGV rc=139 — `gim_not_op_no_template` and `gim_seq_code_loop_in_function`
specifically crash). `corpus_suite_harness.py`'s `convert`/`convert-blocks` both REFUSE any entry
whose original file is not itself green against its `.ref` — there is no way to land a "this is
*expected* to fail" entry today. **This is the exact gap `corpus-crosscheck-probe-total-conversion`
names as in-scope, unbuilt work ("xfail/xpass representation... format amendments recorded in
corpus-suites-consolidation.task.md, the format's home").** Not designed here deliberately: hq_C is
concurrently working the identical question for Pascal's self-pinned refs in that row's own `## QA`
("A ref pinned to the implementation under test cannot fail that implementation... I must not settle
it myself... That belongs to Lon") — a second, independently-invented xfail convention from this row
risks landing incompatible with whatever that one settles on. Flagged non-blocking:
`s4e_msg.sh ask hq_C gimpel-xfail-needed`. **One re-verification correction from the old KEEP.md**:
`gim_double_include_once_control` was listed here as still-red; it is NOT — see below, it is GREEN,
the old listing was stale. 14 named, 13 actually still red.

## BLOCKED on -INCLUDE (no suite-format representation) — a 3-file coherent unit, not 3 defects

`gim_double_include_hang.sno` (still red, hangs — see above), `gim_double_include_hang_A.sno` (the
`-INCLUDE`d DI_COUNT module both siblings need — not runnable standalone, has no `.ref` of its own
by design), and **`gim_double_include_once_control.sno`, RE-VERIFIED GREEN 2026-08-28** (rc=0, m3
AND m4 both PASS, 11 fresh runs, no flakiness found — corrects the prior KEEP.md, which had it
filed as still-red). The suite format has no `-INCLUDE` concept (same scope boundary as
`probe/m1/m1_include_sort_loop`, `corpus-suites-consolidation.task.md`'s stdin-bearing-tests
precedent): a one-line/banner-block entry must be self-contained, and `convert`'s own byte-equal
validation writes each CANDIDATE entry to a fresh temp dir with no sibling file, so an `-INCLUDE`
line inside a joined/block entry cannot resolve even when the original (with its real sibling
alongside it) is itself green. **Did not convert `once_control` alone despite being green**: Lon's
GOAL text for this initiative cites all three of `gim_double_include_hang{,_A,_once_control}` as one
investigation unit (`GOAL-SNOBOL4-100.md`, "Witness/control:" line); splitting the green control out
while its hang sibling and shared dependency stay loose fragments that unit for no format-law reason
`m1`'s precedent didn't already cover (that file had a pre-existing INLINE TWIN already converted
elsewhere; this trio does not — authoring one was judged out of scope for a mechanical consolidation
pass, since it would mean writing new witness content, not converting existing content).

## BLOCKED on the same open question as gim_double_include_hang_A — no `.ref`, not a runnable witness alone

`gim_cassign_array_elt_loud.sno` — deterministic FATAL refusal (verified 2x, byte-identical), but
the refusal text goes to **stderr**; `corpus_suite_harness.py`'s grading (`classify()`) compares
**stdout only**, so a suite entry here would only ever assert "produces no stdout" — true today, but
not a meaningful regression check on the thing this witness actually documents (SCRIP's GZ#5 subset
boundary, `GOAL-SNOBOL4-BB.md`). Same self-pinned-ref-grading question as the xfail bucket above,
same reason not to invent an ad hoc answer solo. Left loose, grouped with the xfail-blocked set for
whoever lands that mechanism.
