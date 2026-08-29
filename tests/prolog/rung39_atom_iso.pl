%----------------------------------------------------------------- 1 01_sub_atom
main :-
    sub_atom(abcdef, 2, 3, _, Sub),
    write(Sub), nl,
    sub_atom(abcdef, B, 1, _, b),
    write(B), nl.
%-------------------------------------------------------------- 2 02_atom_number
main :-
    atom_number('42', N),
    write(N), nl,
    atom_number('3.14', F),
    write(F), nl,
    atom_number(A, 7),
    write(A), nl.
%---------------------------------------------------------------- 3 03_case_atom
main :-
    upcase_atom(hello, U),
    write(U), nl,
    downcase_atom('WORLD', D),
    write(D), nl.
%------------------------------------------------------------- 4 04_atom_to_term
main :-
    atom_to_term('foo(1,2)', T, B),
    write(T), nl,
    write(B), nl,
    atom_to_term(A, bar(x), []),
    write(A), nl.
%------------------------------------------------------------- 5 05_sub_atom_all
% sub_atom in determinate mode: Before and Length both bound
main :-
    sub_atom(hello, 1, 3, _, Sub1),
    write(Sub1), nl,
    sub_atom(hello, 0, 5, 0, Sub2),
    write(Sub2), nl,
    sub_atom(hello, 0, 0, _, Sub3),
    write(Sub3), nl.
