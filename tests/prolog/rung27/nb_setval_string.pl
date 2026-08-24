:- initialization(main).
main :-
    nb_setval(msg, hello),
    nb_getval(msg, X),
    write(X), nl.
