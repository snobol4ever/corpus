:- initialization(main).
combo :- write(a), (write(x) ; write(y)), write(b).
main :- combo, nl.
