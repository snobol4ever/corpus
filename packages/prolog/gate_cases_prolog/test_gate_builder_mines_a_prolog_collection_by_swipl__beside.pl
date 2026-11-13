:- initialization(main, main).
main :- open('beside.txt', read, S), read_term(S, X, []), close(S), write(X), nl.
