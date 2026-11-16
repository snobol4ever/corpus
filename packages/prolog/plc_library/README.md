# plc_library (PrologBeekLibrary)

Wouter Beek's prolog_library_collection (https://github.com/wouterbeek/prolog_library_collection, commit bd4f5a6 of 2024-08-31; MIT, `LICENSE`
copied here): 58 SWI-Prolog library modules, six of which carry their own plunit tests. Three of those import only SWI-Prolog's own libraries
and are here, 83 cases: `string_ext` (6 units, 74 cases), `math_ext` (1 unit, 6), `closure` (1 unit, 3).

ONE CASE FILE A MODULE: `M/M.pl` is the module as it stands, after one comment line, its units inside it
(`/home/resources/progress/handoffs/grader-2026-11-16/plc_cut.py`). THE VERDICTS (`M.ref`, one line a case) were read from swipl 9.0.4's own
plunit bookkeeping after `run_tests`, one swipl a unit, by the driver of `util_swi_cut_refs.sh`, three times alike: all 83 pass under the oracle.

GRADED PER CASE (`CONTRACT.tsv` units plunit; `ALL.csv` grader swi-cases), as PrologExercism is.

Not cut: `atom_ext` and `call_ext` import the collection's own `dict` module, and `uri_ext` its `conf`, `dict` and `file_ext`; a case file is one
file, so they wait on a road that stages a module's local imports beside it.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 3 of 3, every one of the 83 cases agreeing with swipl. The
forall cases are matched by their names with the generator's values left out, which util_swi_match.py now cuts at the last list (these names
carry commas of their own, as `string_ellipsis(+,+,+)`).
