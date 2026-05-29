:- initialization(main).
main :-
    ( ground(g(a,b))  -> write(yes) ; write(no) ), nl,
    ( ground(g(a,X))  -> write(yes) ; write(no) ), nl.
