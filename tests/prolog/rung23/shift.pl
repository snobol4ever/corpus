:- initialization(main).
main :-
    X1 is 1 << 4,   write(X1), nl,
    X2 is 256 >> 3, write(X2), nl.
