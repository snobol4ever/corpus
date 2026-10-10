lcm(X, Y, Z) :-
	Z is abs(X * Y) / gcd(X,Y).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lcm/3 and never calls it; the driver prints the task's lcm(12, 18) and two more.
:- initialization(forall(member(A-B, [12-18, 4-6, -5-3]), (lcm(A, B, Z), format("lcm(~w, ~w) = ~w~n", [A, B, Z])))).
