main :- X = [(?-), (:-)], writeq(X), nl, Y = (?- p(1)), writeq(Y), nl, Y = '?-'(A), writeq(A), nl.
:- initialization(main).
