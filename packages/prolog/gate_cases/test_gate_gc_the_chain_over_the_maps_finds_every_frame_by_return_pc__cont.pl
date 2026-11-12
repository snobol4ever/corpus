:- initialization(main).
p :- write(before), nl, shift(ball1), write(after), nl, shift(ball2), write(end), nl.
main :- reset(p, B1, C1), writeq(B1), nl,
        reset(C1, B2, C2), writeq(B2), nl,
        reset(C2, B3, C3), ( var(B3) -> writeq(no_ball) ; writeq(B3) ), writeq(C3), nl,
        reset(true, B4, C4), ( var(B4) -> writeq(no_ball) ; writeq(B4) ), writeq(C4), nl.
