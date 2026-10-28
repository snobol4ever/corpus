:- dynamic q/1.
q(1). q(2).
main :- ( retract(q(_)), write(a), nl, fail ; true ), B = 1, write(B), nl, findall(X, q(X), L), write(L), nl.
:- initialization(main).
