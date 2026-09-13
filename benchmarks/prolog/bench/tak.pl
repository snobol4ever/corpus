% tak — (almost) Takeuchi function, recursive integer arithmetic.
% Bottleneck: deep recursion + is/2 + arithmetic comparison; no list/struct.
% Source: SWI-Prolog/bench (Evan Tick, from Gabriel's Lisp tak). Prints A.
% *BENCH kernel=tak -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against tak.expected (oracle-cut).
:- initialization(main).
bench_work(A) :-
    tak(18,12,6,A).
main :- bench_work(Res), write(Res), nl.
tak(X,Y,Z,A) :- X =< Y, Z = A.
tak(X,Y,Z,A) :-
        X > Y,
        X1 is X - 1, tak(X1,Y,Z,A1),
        Y1 is Y - 1, tak(Y1,Z,X,A2),
        Z1 is Z - 1, tak(Z1,X,Y,A3),
        tak(A1,A2,A3,A).
