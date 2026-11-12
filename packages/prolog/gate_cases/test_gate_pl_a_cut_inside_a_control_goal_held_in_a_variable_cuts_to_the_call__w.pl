:- initialization(main).
main :-
    G1 = (member(A, [1,2,3]), (A >= 2 -> ! ; true)), findall(A, G1, L1), writeq(then_cut(L1)), nl,
    G2 = (member(B, [1,2,3]), (B >= 2, ! ; true)), findall(B, call(G2), L2), writeq(arm_cut(L2)), nl,
    findall(N, (G3 = (length(_, N), (N >= 2 -> ! ; true)), call(G3)), L3), writeq(generator_cut(L3)), nl,
    G4 = (member(C, [1,2,3]), (C >= 2 -> true ; !)), findall(C, G4, L4), writeq(else_cut(L4)), nl,
    G5 = (member(D, [1,2,3]), (D >= 2 -> ! ; true)), forall(call(G5), (write(D), write(' '))), nl,
    G6 = (member(E, [1,2,3]), \+ \+ !), findall(E, G6, L6), writeq(negation_keeps_cut_local(L6)), nl,
    G7 = (member(F, [1,2,3]), true ; F = 0), findall(F, G7, L7), writeq(cut_free_keeps_all(L7)), nl,
    halt.
