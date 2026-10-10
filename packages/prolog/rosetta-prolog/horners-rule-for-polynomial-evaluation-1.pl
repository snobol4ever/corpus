horner([], _X, 0).

horner([H|T], X, V) :-
	horner(T, X, V1),
	V is V1 * X + H.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines horner/3 and never calls it; the driver evaluates the task's 6x^3 - 4x^2 + 7x - 19 at x = 3.
:- initialization((horner([-19, 7, -4, 6], 3, V), format("~w~n", [V]))).
