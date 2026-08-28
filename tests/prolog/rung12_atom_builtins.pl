%---------------------------------------------- 1 rung12_atom_builtins_atom_case
:- initialization(main).
main :-
    upcase_atom(hello, U),
    write(U), nl,
    downcase_atom('WORLD', D),
    write(D), nl,
    atom_length(abcde, N),
    write(N), nl.
%--------------------------------------------- 2 rung12_atom_builtins_atom_chars
:- initialization(main).
main :-
    atom_chars(hi, Cs),
    write(Cs), nl,
    atom_chars(A, [w,o,r,l,d]),
    write(A), nl.
%--------------------------------------------- 3 rung12_atom_builtins_atom_codes
:- initialization(main).
main :-
    atom_codes(hi, Cs),
    write(Cs), nl,
    atom_codes(A, [104,101,108,108,111]),
    write(A), nl.
%-------------------------------------------- 4 rung12_atom_builtins_atom_concat
:- initialization(main).
main :-
    atom_concat(foo, bar, R),
    write(R), nl,
    atom_concat(hello, ' world', R2),
    write(R2), nl.
%-------------------------------------------- 5 rung12_atom_builtins_atom_length
:- initialization(main).
main :-
    atom_length(hello, N),
    write(N), nl,
    atom_length('', Z),
    write(Z), nl.
