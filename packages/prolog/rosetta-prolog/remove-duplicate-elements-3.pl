member1(X,[H|_]) :- X==H,!.
member1(X,[_|T]) :- member1(X,T).

distinct([],[]).
distinct([H|T],C) :- member1(H,T),!, distinct(T,C).
distinct([H|T],[H|C]) :- distinct(T,C).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines distinct/2 and never calls it; the driver prints it for a sample list with duplicates (the task fixes none).
:- initialization((distinct([1, 2, 3, a, b, c, 2, 3, 4, b, c, d], U), format("~w~n", [U]))).
