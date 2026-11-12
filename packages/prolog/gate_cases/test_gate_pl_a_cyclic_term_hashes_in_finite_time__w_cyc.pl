main :- X = f(X), write(a), nl, term_hash(X, T), write(b), nl, ( integer(T) -> write(ok) ; write(no) ), nl,
        L = [a|L], term_hash(L, T2), ( integer(T2) -> write(ok2) ; write(no2) ), nl,
        Y = g(1, Z, h(Y)), Z = k(Y), term_hash(Y, T3), ( integer(T3) -> write(ok3) ; write(no3) ), nl.
:- initialization(main).
