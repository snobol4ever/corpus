%------------------------------------------------ 1 rung24_string_io_atom_string
:- initialization(main).
main :-
    atom_string(hello, S), write(S), nl,
    atom_string(A, "world"), write(A), nl,
    atom_string(42, S2), write(S2), nl.
%---------------------------------------------- 2 rung24_string_io_number_string
:- initialization(main).
main :-
    number_string(42, S), write(S), nl,
    number_string(N, "99"), write(N), nl.
%------------------------------------------------ 3 rung24_string_io_string_case
:- initialization(main).
main :-
    string_upper("hello", U), write(U), nl,
    string_lower("WORLD", L), write(L), nl,
    string_upper(foo, U2), write(U2), nl.
%---------------------------------------------- 4 rung24_string_io_string_concat
:- initialization(main).
main :-
    string_concat("foo", "bar", S), write(S), nl,
    string_concat(hello, ' world', S2), write(S2), nl.
%---------------------------------------------- 5 rung24_string_io_string_length
:- initialization(main).
main :-
    string_length("hello", N), write(N), nl,
    string_length(abcde, M), write(M), nl.
