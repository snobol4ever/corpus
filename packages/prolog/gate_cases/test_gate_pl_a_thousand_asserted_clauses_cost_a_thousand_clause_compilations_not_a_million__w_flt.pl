:- dynamic d/2.
main :- forall(between(1, 1000, I), (F is float(I), assertz(d(F, I)))), write(done1), nl, forall(between(1, 1000, I), (F is float(I), d(F, I2), I2 == I)), write(done2), nl, retractall(d(_, _)), ( d(_, _) -> write(left) ; write(empty) ), nl.
:- initialization(main).
