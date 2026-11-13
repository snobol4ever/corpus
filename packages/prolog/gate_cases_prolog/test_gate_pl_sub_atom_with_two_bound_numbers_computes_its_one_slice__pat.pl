:- initialization(main).
e(G) :- findall(G, G, R), write(R), nl.
main :- e(sub_atom(abc, B, L, A, S)), e(sub_atom(abc, 1, L, A, S)), e(sub_atom(abc, B, 2, A, S)), e(sub_atom(abc, B, L, 1, S)),
        e(sub_atom(abc, 1, 1, A, S)), e(sub_atom(abc, 0, L, 1, S)), e(sub_atom(abc, B, 1, 0, S)), e(sub_atom(abc, 1, 1, 1, S)),
        e(sub_atom(aaa, B, L, A, aa)), e(sub_atom(abcab, B, L, A, ab)), e(sub_atom(abc, B, L, A, '')), e(sub_atom(abc, 2, L, A, c)),
        e(sub_atom(abc, 1, L, A, c)), e(sub_atom(abc, 4, L, A, S)), e(sub_atom(abc, B, 4, A, S)), e(sub_atom(abc, B, L, 7, S)),
        e(sub_atom('', B, L, A, S)), e(sub_atom('héllo', 1, 3, A, S)), e(sub_atom('héllo', B, L, A, 'll')), e(sub_atom('héllo', B, 2, 0, S)),
        e(sub_atom(abc, 0, 3, 0, abc)), e(sub_atom(abc, 0, 3, 0, abd)).
