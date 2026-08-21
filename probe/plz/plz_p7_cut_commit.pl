:- initialization(main).
f(a) :- !.
f(b).
main :- ( f(X), write(X), nl, fail ) ; true.
