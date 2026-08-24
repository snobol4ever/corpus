:- initialization(main).
main :- ( between(1,3,X), write(X), nl, fail ; true ),
        findall(Y, between(1,5,Y), L), write(L), nl,
        findall(Z, between(2,2,Z), S), write(S), nl,
        findall(W, between(3,1,W), E), write(E), nl.
