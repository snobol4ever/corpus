:- initialization(main).
main :- ( ( X = a ; X = b ), write(X), nl, fail ) ; true.
