:- initialization(main).
main :- findall(X, for(X,1,4), L), write(L), nl,
        ( for(Y,1,2), write(Y), nl, fail ; true ).
