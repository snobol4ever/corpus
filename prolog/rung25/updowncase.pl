:- initialization(main).
main :-
    upcase_atom(hello, U), write(U), nl,
    downcase_atom('HELLO', D), write(D), nl.
