comb_Prolog(L, M, N) :-
    length(L, M),
    fill(L, 1, N).

fill([], _, _).

fill([H | T], Min, Max) :-
    between(Min, Max, H),
    H1 is H + 1,
    fill(T, H1, Max).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines comb_Prolog/3 and never calls it; the driver prints the task's 3 comb 5, numbered 1..5.
:- initialization(forall(comb_Prolog(L, 3, 5), format("~w~n", [L]))).
