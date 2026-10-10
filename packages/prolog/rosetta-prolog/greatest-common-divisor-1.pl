gcd(X, 0, X):- !.
gcd(0, X, X):- !.
gcd(X, Y, D):- X > Y, !, Z is X mod Y, gcd(Y, Z, D).
gcd(X, Y, D):- Z is Y mod X, gcd(X, Z, D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines gcd/3 and never calls it; the driver prints gcd for five fixed pairs.
:- initialization(forall(member(A-B, [12-18, 1071-1029, 49865-69811, 0-5, 7-0]), (gcd(A, B, D), format("gcd(~w, ~w) = ~w~n", [A, B, D])))).
