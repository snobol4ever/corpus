dot_product(L1, L2, N) :-
	maplist(mult, L1, L2, P),
	sumlist(P, N).

mult(A,B,C) :-
	C is A*B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dot_product/3 and never calls it; the driver prints the task's [1, 3, -5] . [4, -2, -1].
:- initialization((dot_product([1, 3, -5], [4, -2, -1], N), writeln(N))).
