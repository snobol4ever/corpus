a_to_z(From, To, L) :-
	maplist(atom_codes, [From, To], [[C_From], [C_To]]),
	bagof([C], between(C_From, C_To, C), L1),
	maplist(atom_codes,L, L1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines a_to_z/3 and never calls it; the driver prints a_to_z(a, z, L), the task's lower-case alphabet.
:- initialization((a_to_z(a, z, L), format("~w~n", [L]))).
