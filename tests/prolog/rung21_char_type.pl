%------------------------------------------------------ 1 rung21_char_type_alpha
:- initialization(main).
main :- ( char_type(a, alpha) -> write(yes) ; write(no) ), nl,
        ( char_type('3', alpha) -> write(yes) ; write(no) ), nl.
%-------------------------------------------------- 2 rung21_char_type_digit_val
:- initialization(main).
main :- char_type('7', digit(V)), write(V), nl.
%------------------------------------------------ 3 rung21_char_type_space_alnum
:- initialization(main).
main :- ( char_type(' ', space) -> write(yes) ; write(no) ), nl,
        ( char_type(a, alnum) -> write(yes) ; write(no) ), nl,
        ( char_type('3', alnum) -> write(yes) ; write(no) ), nl.
%--------------------------------------------- 4 rung21_char_type_to_upper_lower
:- initialization(main).
main :- char_type(a, to_upper(U)), write(U), nl,
        char_type('Z', to_lower(L)), write(L), nl.
%------------------------------------------------ 5 rung21_char_type_upper_lower
:- initialization(main).
main :- char_type('A', upper(L)), write(L), nl,
        char_type(b, lower(U)), write(U), nl.
