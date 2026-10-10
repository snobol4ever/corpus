% pingpong -- Two mutually recursive predicates:
% Source: corpus/benchmarks/prolog/src/swi-vanroy/pingpong.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% *BENCH kernel=pingpong -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against pingpong.ref (oracle-cut, swipl: pingpong.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
enable_tabling.                         % so we can expand

:- table d/1.
:- table e/1.

top :- abolish_all_tables, d(_), fail.
top.

% Two mutually recursive predicates:
d(X) :- e(Y), Y < 20000, X is Y + 1.
d(0).

e(X) :- d(Y), Y < 20000, X is Y + 1.
e(0).
