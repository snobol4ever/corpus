:- initialization(main).
main :- wall_us(U), wall_ms(M), ( integer(U) -> write(us_ok) ; write(us_bad) ), nl,
        ( integer(M) -> write(ms_ok) ; write(ms_bad) ), nl.
