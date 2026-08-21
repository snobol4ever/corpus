:- initialization(main).
f(a).
f(b).
f(c).
main :- ( f(X), write(X), nl, fail ) ; true.
