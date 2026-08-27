%--------------------------------------------------------------- 1 char_code_fwd
:- initialization(main).
main :- char_code(a, N), write(N), nl.
%--------------------------------------------------------------- 2 char_code_rev
:- initialization(main).
main :- char_code(C, 65), write(C), nl.
%---------------------------------------------------------------- 3 number_chars
:- initialization(main).
main :- number_chars(42, C), write(C), nl.
%---------------------------------------------------------------- 4 number_codes
:- initialization(main).
main :- number_codes(42, C), write(C), nl.
%------------------------------------------------------------------ 5 updowncase
:- initialization(main).
main :-
    upcase_atom(hello, U), write(U), nl,
    downcase_atom('HELLO', D), write(D), nl.
