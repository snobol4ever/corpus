largest_int_v1(In, Out) :-
	maplist(name, In, LC),
	aggregate(max(V), get_int(LC, V), Out).


get_int(LC, V) :-
	permutation(LC, P),
	append(P, LV),
	name(V, LV).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines largest_int_v1/2 and never calls it; the driver runs the task's two lists.
:- initialization(forall(member(L, [[1, 34, 3, 98, 9, 76, 45, 4], [54, 546, 548, 60]]), (largest_int_v1(L, N), format("~w~n", [N])))).
