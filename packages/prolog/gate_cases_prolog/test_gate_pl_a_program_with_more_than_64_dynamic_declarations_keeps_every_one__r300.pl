:- initialization(main).
nm(P, K, F) :- number_codes(K, Cs), atom_codes(A, Cs), atom_concat(P, A, F).
main :- forall(between(0, 299, K), (nm(r, K, F), T =.. [F, K], assertz(T))), nm(r, 0, F0), G0 =.. [F0, A], call(G0), write(A), nl, nm(r, 299, F9), G9 =.. [F9, B], call(G9), write(B), nl, aggregate_all(count, (between(0, 299, K2), nm(r, K2, Fk), Gk =.. [Fk, _], call(Gk)), C), write(C), nl.
