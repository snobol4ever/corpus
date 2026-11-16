% fml_pel38.pl -- OURS (the grader 2026-11-15): one test formula of leanTAP (Beckert and Posegga, 1994), read in place from /home/resources/prolog-demos/provers/leantap:
% the formula pel38 of its own test data leantest.pl, put in negation normal form by its nnf.pl and given to its prover, prove/2, at the
% variable limit the test data states; the answer is whether the formula is proved.
:- use_module('/home/resources/prolog-demos/provers/leantap/leantest').
:- use_module('/home/resources/prolog-demos/provers/leantap/leantap').
:- use_module('/home/resources/prolog-demos/provers/leantap/nnf').
:- initialization(main).
main :- leantest:fml(pel38, L, F), nnf(F, N),
    ( prove(N, L) -> write('pel38 proved') ; write('pel38 not proved') ), nl.
