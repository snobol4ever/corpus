:- module(m1, []).
main :- freeze(X, writeln(x)), frozen(X, G), copy_term(G, C, _), numbervars(C, 0, _), writeq(C), nl.
:- initialization(main).
