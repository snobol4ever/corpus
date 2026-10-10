% permut_Prolog(P, L)
% P is a permutation of L

permut_Prolog([], []).
permut_Prolog([H | T], NL) :-
	select(H, NL, NL1),
	permut_Prolog(T, NL1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permut_Prolog/2 and never calls it; the driver runs permutations-4's example over [ab, cd, ef].
:- initialization(forall(permut_Prolog(P, [ab, cd, ef]), writeln(P))).
