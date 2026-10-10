flatten(List, FlatList) :-
	flatten(List, [], FlatList).

flatten(Var, T, [Var|T]) :-
	var(Var), !.
flatten([], T, T) :- !.
flatten([H|T], TailList, List) :- !,
	flatten(H, FlatTail, List),
	flatten(T, TailList, FlatTail).

flatten(NonList, T, [NonList|T]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines flatten/2 and never calls it; the driver flattens the task's list.
:- initialization((flatten([[1], 2, [[3, 4], 5], [[[]]], [[[6]]], 7, 8, []], F), writeln(F))).
