e(X) :- length(L, 2), member(X, L), X = a, member(Y, [1, 2]), length(L, N), nth1(P, L, a), write(N-P-Y), nl, fail.
e(_) :- write(e_second), nl.
main :- e(_), write(done), nl.
:- initialization(main).
