%----------------------------------------------------- 1 rung26_copy_concat_alc2
:- initialization(main).
main :-
    atomic_list_concat([hello, world], A), write(A), nl,
    atomic_list_concat([1, 2, 3], B), write(B), nl.
%----------------------------------------------------- 2 rung26_copy_concat_alc3
:- initialization(main).
main :-
    atomic_list_concat([hello, beautiful, world], ' ', A), write(A), nl,
    atomic_list_concat([a, b, c], '-', B), write(B), nl.
%---------------------------------------------- 3 rung26_copy_concat_concat_atom
:- initialization(main).
main :-
    concat_atom([foo, bar, baz], A), write(A), nl.
%------------------------------------------------ 4 rung26_copy_concat_copy_term
:- initialization(main).
main :-
    copy_term(f(X, X), f(A, B)),
    (A == B -> write(same) ; write(diff)), nl,
    copy_term(hello, C), write(C), nl.
%------------------------------------------- 5 rung26_copy_concat_string_to_atom
:- initialization(main).
main :-
    string_to_atom(hello, A), write(A), nl,
    string_to_atom(S, world), write(S), nl.
