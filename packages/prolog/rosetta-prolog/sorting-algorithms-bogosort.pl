bogo_sort(L,Rl) :-
	min_list(L,Min),
	repeat,
	random_permutation(L,Rl),
	is_sorted(Rl,Min),
	!.
	
is_sorted([],_).
is_sorted([N|T],P) :-
	N >= P,
	is_sorted(T,N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines bogo_sort/2 and never calls it; it shuffles with random_permutation/2 until sorted, so only its running time varies, and the driver prints the sorted result for an eight-element list.
:- initialization((bogo_sort([3, 1, 4, 1, 5, 9, 2, 6], L), format("~w~n", [L]))).
