:- initialization(main).
nm(P, K, F) :- number_codes(K, Cs), atom_codes(A, Cs), atom_concat(P, A, F).
main :- forall(between(0, 299, K), (nm(g, K, N), nb_setval(N, K))), nb_getval(g0, A), write(A), nl, nb_getval(g299, B), write(B), nl, nb_getval(g150, C), write(C), nl.
