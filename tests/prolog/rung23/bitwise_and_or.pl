:- initialization(main).
main :-
    X1 is 12 /\ 10, write(X1), nl,
    X2 is 12 \/ 3,  write(X2), nl,
    X3 is 12 xor 10, write(X3), nl.
