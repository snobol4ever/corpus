multiple_arrays(L1, L2, L3) :-
	maplist(display, L1, L2, L3).

display(A,B,C) :-
	writef('%s%s%s\n', [[A],[B],[C]]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines multiple_arrays/3 and never calls it; the driver runs it on the task's three arrays a b c, A B C, 1 2 3, as code lists (its writef %s takes a code).
:- initialization(multiple_arrays(`abc`, `ABC`, `123`)).
