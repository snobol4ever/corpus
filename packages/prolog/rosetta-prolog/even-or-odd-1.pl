  even(N) :-
     (between(0, inf, N); integer(N) ),
     0 is N mod 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines even/1 and never calls it; the driver classifies -3..6.
:- initialization(forall(between(-3, 6, N), (even(N) -> format("~w is even~n", [N]) ; format("~w is odd~n", [N])))).
