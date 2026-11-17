% YAP compatibility, the grader 2026-11-17: the program below is the YAP JIT example as YAP ships it; these lines give swipl and SCRIP
% the three YAP builtins it calls, and its one command-line argument, fixed at 1000 (unix(argv(L)) in YAP).
unix(argv([A])) :- atom_number(A, 1000), !.
unix(argv(['1000'])).
number_atom(N, A) :- atom_number(A, N).
yap_flag(F, V) :- set_prolog_flag(F, V).

:- initialization(main).

:- use_module(library(random)).

generate(L, N) :-
    generate(L, [], N).

generate(L, L, 0) :- !.
generate(L, X, N) :-
    A is N - 1,
    random(0, 1000000, B),
    generate(L, [B|X], A).

append_([],L,L).
append_([X|L1],L2,[X|L3]) :-
    append_(L1,L2,L3).

main :-
    unix( argv([H|_]) ), number_atom(N,H),

    generate(List, N),

    append_(List, [], _),

    statistics,
    statistics_jit,
    halt.
