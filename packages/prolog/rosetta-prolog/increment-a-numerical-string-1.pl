incr_numerical_string(S1, S2) :-
	string_to_atom(S1, A1),
	atom_number(A1, N1),
	N2 is N1+1,
	atom_number(A2, N2),
	string_to_atom(S2, A2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines incr_numerical_string/2 and never calls it; the driver increments three fixed numerical strings.
:- initialization(forall(member(S0, ["12345", "-10", "99"]), (incr_numerical_string(S0, S), format("~w -> ~w~n", [S0, S])))).
