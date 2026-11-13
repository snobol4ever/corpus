:- initialization(main).
main :- length(L, 200000), maplist(=(0'a), L), atom_codes(B, L), sub_atom(B, 100000, 1, A, C), write(C/A), nl.
