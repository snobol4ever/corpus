:- dynamic d/2.
main :- forall(between(1, 1000, I), (string_concat("a", I, D), assertz(d(D, I)))), write(done1), nl, forall(between(1, 1000, I), (string_concat("a", I, D), d(D, I2), I2 == I)), write(done2), nl.
:- initialization(main).
