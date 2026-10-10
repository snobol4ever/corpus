:- use_module(library(clpfd)).

comb_clpfd(L, M, N) :-
    length(L, M),
    L ins 1..N,
    chain(L, #<),
    label(L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines comb_clpfd/3 and never calls it; the driver prints the task's 3 comb 5, numbered 1..5.
:- initialization(forall(comb_clpfd(L, 3, 5), format("~w~n", [L]))).
