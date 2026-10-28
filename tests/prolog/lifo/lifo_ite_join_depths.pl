g(X, R) :- ( member(X, [1, 2, 3]) -> R = yes ; R = no ).
h(X, R) :- ( X > 1, member(Y, [a, b]) ; Y = c ), R = Y.
k(L) :- ( member(X, L), X > 1 ; X = none ), write(X), nl, fail.
k(_) :- write(k_second), nl.
main :- g(2, A), write(A), nl, g(9, B), write(B), nl, findall(R, h(2, R), Rs), write(Rs), nl, findall(R, h(0, R), Rs2), write(Rs2), nl, k([1, 2, 3]), write(done), nl.
:- initialization(main).
