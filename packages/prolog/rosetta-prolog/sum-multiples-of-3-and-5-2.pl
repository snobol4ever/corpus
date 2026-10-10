sum_of_multiples_of_3_and_5_fast(N, TT):-
	maplist(compute_sum(N), [3,5,15], [TT3, TT5, TT15]),
	TT is TT3 + TT5 - TT15.

compute_sum(N, N1, Sum) :-
	(   N mod N1 =:= 0
	->  N2 is N div N1 - 1
	;   N2 is N div N1),
	Sum is N1 * N2 * (N2 + 1) / 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum_of_multiples_of_3_and_5_fast/2 and never calls it; the driver prints it for the task's 1000 and its stretch 1e20.
:- initialization(forall(member(N, [1000, 100000000000000000000]), (sum_of_multiples_of_3_and_5_fast(N, S), format("~w: ~w~n", [N, S])))).
