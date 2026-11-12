:- use_module(library(lists)).
:- initialization(main).
q(_).
term_expansion(gen(H, B), [(H :- B)]).
gen(l1(X1), (f(_) = X1, q(X1))).
gen(l2(X1), (X1 = f(A), q(A))).
gen(l3(X1, X2), (X2 = k, X1 = j)).
gen(l4(X1), (X1 = f(_), q(X1))).
s(l1, T) :- clause(l1(X1), B), T = (l1(X1) :- B).
s(l2, T) :- clause(l2(X1), B), T = (l2(X1) :- B).
s(l3, T) :- clause(l3(X1, X2), B), T = (l3(X1, X2) :- B).
s(l4, T) :- clause(l4(X1), B), T = (l4(X1) :- B).
pr(T) :- copy_term(T, T1), numbervars(T1, 0, _), writeq(T1), nl.
main :- forall(s(N, T), (writeq(N), write(' '), pr(T))), halt.
