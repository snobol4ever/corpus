% YAP compatibility, the grader 2026-11-17: the program below is the YAP JIT example as YAP ships it; these lines give swipl and SCRIP
% the three YAP builtins it calls, and its one command-line argument, fixed at 10 (unix(argv(L)) in YAP).
unix(argv([A])) :- atom_number(A, 10), !.
unix(argv(['10'])).
number_atom(N, A) :- atom_number(A, N).
yap_flag(F, V) :- set_prolog_flag(F, V).

:- initialization(main).

han(N,_,_,_) :- N =< 0.

han(N,A,B,C) :- N > 0,
	       N1 is N-1,
	       han(N1,A,C,B),
	       han(N1,C,B,A).

main :-
    unix( argv([H|_]) ),
    number_atom(N,H),
    han(N,4,5,6),

    statistics,
    statistics_jit.
