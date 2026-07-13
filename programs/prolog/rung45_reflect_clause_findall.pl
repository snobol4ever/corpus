main :- assertz(item(a)), assertz(item(b)), assertz(item(c)),
        findall(X, clause(item(X), true), L), write(L), nl.
