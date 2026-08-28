%---------------------------------------------- 1 rung25_term_string_term_string
:- initialization(main).
main :-
    term_string(point(3,4), S), write(S), nl,
    term_string(42, S2), write(S2), nl.
%--------------------------------------------- 2 rung25_term_string_term_to_atom
:- initialization(main).
main :-
    term_to_atom(foo(1,2), A), write(A), nl,
    term_to_atom(hello, B), write(B), nl,
    term_to_atom([1,2,3], C), write(C), nl.
%--------------------------------------- 3 rung25_term_string_term_to_atom_arith
:- initialization(main).
main :-
    term_to_atom(1+2, A), write(A), nl,
    term_to_atom(f(a,b,c), B), write(B), nl.
