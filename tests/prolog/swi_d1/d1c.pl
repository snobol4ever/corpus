:- initialization(main).
main :- freeze(X, a), freeze(X, b), freeze(X, a), freeze(Y, c), T = f(Y, X, X), frozen(T, G), copy_term(G, C, _), numbervars(C, 0, _), writeq(C), nl, frozen(_, H), writeq(H), nl.
