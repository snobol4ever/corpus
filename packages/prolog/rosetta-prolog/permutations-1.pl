:- use_module(library(clpfd)).

permut_clpfd(L, N) :-
    length(L, N),
    L ins 1..N,
    all_different(L),
    label(L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permut_clpfd/2 and never calls it; the driver runs permutations-2's example, the permutations of 1..3.
:- initialization(forall(permut_clpfd(L, 3), writeln(L))).
