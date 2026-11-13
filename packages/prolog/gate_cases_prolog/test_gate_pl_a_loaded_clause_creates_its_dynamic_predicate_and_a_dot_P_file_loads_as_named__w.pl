:- initialization(main).
t(N, G) :- catch((call(G) -> R = yes ; R = no), error(E, _), (E =.. [F|_], R = err(F))), write(N-R), nl.
main :- load_files('ld.pl', []), t(new_program, new_program), findall(X, query(X), L), write(L), nl, findall(B, rule(p, B), Bs), write(Bs), nl,
        t(again, new_program), findall(X, query(X), L2), write(L2), nl, halt.
