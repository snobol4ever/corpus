:- initialization(main).
main :-
    ( compound(f(a,b)) -> write(yes) ; write(no) ), nl,
    ( compound(foo)    -> write(yes) ; write(no) ), nl.
