:- initialization(main).
f(X) :- Y is X + 1, write(Y), nl.
g(Z) :- f(Z).
main :- g(1).
