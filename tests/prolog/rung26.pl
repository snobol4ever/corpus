%------------------------------------------------------------------------ 1 alc2
:- initialization(main).
main :-
    atomic_list_concat([hello, world], A), write(A), nl,
    atomic_list_concat([1, 2, 3], B), write(B), nl.
%------------------------------------------------------------------------ 2 alc3
:- initialization(main).
main :-
    atomic_list_concat([hello, beautiful, world], ' ', A), write(A), nl,
    atomic_list_concat([a, b, c], '-', B), write(B), nl.
%------------------------------------------------------------- 3 copy_term_basic
:- initialization(main).
main :-
    copy_term(f(X, X), f(A, B)),
    (A == B -> write(same) ; write(diff)), nl,
    copy_term(hello, C), write(C), nl.
%------------------------------------------------------------ 4 copy_term_ground
:- initialization(main).
main :-
    copy_term(foo(1,2), T), write(T), nl.
%-------------------------------------------------------------- 5 string_to_atom
:- initialization(main).
main :-
    string_to_atom(hello, A), write(A), nl,
    string_to_atom(S, world), write(S), nl.
