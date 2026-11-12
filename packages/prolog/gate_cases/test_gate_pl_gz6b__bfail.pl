:- initialization(main).
p(a).
q(z).
main :- ( p(X), write(X), nl, fail ; true ), q(w), write(never), nl.
