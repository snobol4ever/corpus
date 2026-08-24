:- initialization(main).
main :-
    ( callable(f(x)) -> write(yes) ; write(no) ), nl,
    ( atom(f(x))     -> write(yes) ; write(no) ), nl.
