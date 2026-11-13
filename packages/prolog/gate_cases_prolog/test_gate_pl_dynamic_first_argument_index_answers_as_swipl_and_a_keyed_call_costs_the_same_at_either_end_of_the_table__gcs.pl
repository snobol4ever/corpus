:- dynamic g/2.
fill(N) :- forall(between(1, N, I), (J is I * 3, assertz(g(I, J)))).
chk(N) :- forall(between(1, N, I), (J is I * 3, ( clause(g(I, X), true) -> true ; X = none ), ( ( X == J ; X == none, I mod 2 =:= 0 ) -> true ; write(bad(I, X)), nl ))).
drop(N) :- forall(between(1, N, I), ( I mod 2 =:= 0 -> retract(g(I, _)) ; true )).
:- fill(600), chk(600), drop(600), chk(600), forall(between(601, 700, I), assertz(g(I, I))), findall(K, clause(g(K, _), true), L), length(L, Len), write(Len), nl.
