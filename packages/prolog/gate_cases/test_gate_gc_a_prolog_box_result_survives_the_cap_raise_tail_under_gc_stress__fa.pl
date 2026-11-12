:- initialization(main).
main :- findall(X, between(1, 3, X), L), write(L), nl, findall(Y-Z, (member(Y, [a, b]), Z = Y), P), write(P), nl, halt.
