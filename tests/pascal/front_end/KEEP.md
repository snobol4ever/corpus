# corpus/tests/pascal/front_end -- four programs held loose until their dependency lands

The rest of this folder is in the pascal master as entries front_end__NAME (corpus 02b6593fd, CIO-56); its step table is
harness/designs/front_end/STEPS.tsv. These four stay loose, on purpose, and the rungs builder must not absorb them
(its deferral contract keys on the file name below):

- pf20d_object_parent.pas and pf20e_object_new_dispose.pas: their answer is fpc's default mode; under the master's flat
  -Miso the oracle prints nothing (rc 126). They wait on the dialect column (run-switches steps 3 and 5, CTO-575).
- pf30_overload_unit.pas with its unit pf30_overload_unit_ovl.pas: the program needs the unit beside it; admitted alone it
  reads red in both modes. They wait on the witness tool's companion option (a file fence in format 2, CIO-55), after the
  pascal master's regroup to format 2 (CIO-59 (8)).

When a dependency lands, the program is admitted by util_add_ladder_witness.py and its line here goes in the same landing.
