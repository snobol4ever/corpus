:- initialization(main).
main :- append([a], [b], L), member(X, L), write(X), nl, length(L, N), write(N), nl.
