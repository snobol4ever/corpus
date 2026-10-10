doors_optimized(N) :-
	Max is floor(sqrt(N)),
	forall(between(1, Max, I),
	       (   J is I*I,format('Door ~w is open.~n',[J]))).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines doors_optimized/1 and never calls it; the driver runs it on the task's 100 doors.
:- initialization(doors_optimized(100)).
