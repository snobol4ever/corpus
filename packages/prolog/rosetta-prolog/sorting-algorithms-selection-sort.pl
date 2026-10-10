selection_sort([], []).
selection_sort([H | L], [H1 | L2]) :-
	exchange(H, L, H1, L1),
	selection_sort(L1, L2).


exchange(H, [], H, []).

exchange(H, L, H1, L1) :-
	min_list(L, H2),
	(   H < H2
	->  H1 = H, L1 = L
	;   H1 = H2,
	    % does the exchange of the number H
	    % and the min of the list
	    nth0(Ind, L, H1, L2),
	    nth0(Ind, L1, H, L2)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines selection_sort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((selection_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
