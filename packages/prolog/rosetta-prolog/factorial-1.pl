fact(X, 1) :- X<2.
fact(X, F) :- Y is X-1, fact(Y,Z), F is Z*X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fact/2 and never calls it; the driver prints 0! .. 10! (its first answer each: backtracking into it does not end).
:- initialization(forall(between(0, 10, N), (once(fact(N, F)), format("~w! = ~w~n", [N, F])))).
