max_list(L, V) :-
	select(V, L, R), \+((member(X, R), X > V)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines max_list/2 and never calls it; the driver runs the example query of greatest-element-of-a-list-1, max_list([1,2,10,3,0,7,9,5], M).
:- initialization((max_list([1, 2, 10, 3, 0, 7, 9, 5], M), format("~w~n", [M]))).
