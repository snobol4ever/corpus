% DESIGN-PLAN planner-finish witness: conjunctions whose first goal produces the value the next goal reads
:- initialization(main).
main :- X is 1+2, Y is X*2, Z is Y-X, write(Z), nl, p(3, R), write(R), nl, ( q(2, S), S > 3 -> write(S) ; write(none) ), nl.
p(N, R) :- M is N+1, q(M, R).
q(M, R) :- R is M*M.
