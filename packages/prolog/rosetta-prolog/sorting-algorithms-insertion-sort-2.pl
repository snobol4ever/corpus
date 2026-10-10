% insertion sort
isort(L, LS) :-
	foldl(insert, [], L, LS).


% foldl(Pred, Init, List, R).
foldl(_Pred, Val, [], Val).
foldl(Pred, Val, [H | T], Res) :-
	call(Pred, Val, H, Val1),
	foldl(Pred, Val1, T, Res).

% insertion in a sorted list
insert([], N, [N]).

insert([H | T], N, [N, H|T]) :-
	N =< H, !.

insert([H | T], N, [H|L1]) :-
	insert(T, N, L1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines isort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((isort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
