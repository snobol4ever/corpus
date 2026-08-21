:- initialization(main).
t(1).
t(2).
t(3).
f(X) :- t(X), X > 1, !.
main :- f(X), write(X), nl.
