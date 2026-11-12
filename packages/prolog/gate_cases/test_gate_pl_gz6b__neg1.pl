:- initialization(main).
p(a).
p(b).
main :- ( p(X), write(X), nl ; true ), write(done), nl.
