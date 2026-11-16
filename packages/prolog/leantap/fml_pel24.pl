% fml_pel24.pl -- OURS (the grader 2026-11-15): one test formula of leanTAP (Beckert and Posegga, 1994), read in place from /home/resources/prolog-demos/provers/leantap:
% the formula pel24 of its own test data leantest.pl, put in negation normal form by its nnf.pl and given to its prover, prove/2, at the
% variable limit the test data states; the answer is whether the formula is proved.
:- use_module('/home/resources/prolog-demos/provers/leantap/leantest').
:- use_module('/home/resources/prolog-demos/provers/leantap/leantap').
:- use_module('/home/resources/prolog-demos/provers/leantap/nnf').
:- initialization(main).
main :- leantest:fml(pel24, L, F), nnf(F, N),
    ( prove(N, L) -> write('pel24 proved') ; write('pel24 not proved') ), nl.
