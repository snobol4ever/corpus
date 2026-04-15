:- initialization(main).
main :-
    copy_term(foo(1,2), T), write(T), nl.
