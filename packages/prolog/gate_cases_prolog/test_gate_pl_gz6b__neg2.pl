:- initialization(main).
p(a).
main :- write(start), nl, ( p(X), write(X), nl, fail ; true ).
