  odd(N) :- N = 0 -> false; 0 is lsb(abs(N)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines odd/1 and never calls it; the driver classifies -3..6.
:- initialization(forall(between(-3, 6, N), (odd(N) -> format("~w is odd~n", [N]) ; format("~w is even~n", [N])))).
