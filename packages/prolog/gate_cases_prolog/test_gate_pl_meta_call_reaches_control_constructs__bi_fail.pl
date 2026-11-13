:- initialization(main).
main :- ( X = fail, call(X) ; write(elsepath) ), nl.
