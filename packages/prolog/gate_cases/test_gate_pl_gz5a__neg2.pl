:- initialization(main).
q(X) :- X = f(a).
main :- q(Z), write(Z), nl.
