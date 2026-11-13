main :- term_hash(f(a, [1, 2|g(x)], 3.5), H1), term_hash(f(a, [1, 2|g(x)], 3.5), H2), term_hash(f(a, [1, 2|g(y)], 3.5), H3),
        ( H1 == H2 -> write(same) ; write(differ) ), nl, ( H1 == H3 -> write(same) ; write(differ) ), nl, term_hash(_, U), ( var(U) -> write(unbound) ; write(bound) ), nl.
:- initialization(main).
