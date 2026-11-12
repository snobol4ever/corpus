:- initialization(main).
p(a).
p(b).
main :- p(X), !, write(X), nl, fail ; true.
