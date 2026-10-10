fact(N, NF) :-
	fact(1, N, 1, NF).

fact(X, X, F, F) :- !.
fact(X, N, FX, F) :-
	X1 is X + 1,
	FX1 is FX * X1,
	fact(X1, N, FX1, F).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fact/2 and never calls it; the driver prints 1! .. 10! (fact(0, F) counts up from 1 and never ends).
:- initialization(forall(between(1, 10, N), (fact(N, F), format("~w! = ~w~n", [N, F])))).
