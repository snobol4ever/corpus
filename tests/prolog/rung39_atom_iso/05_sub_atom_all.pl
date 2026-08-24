% sub_atom in determinate mode: Before and Length both bound
main :-
    sub_atom(hello, 1, 3, _, Sub1),
    write(Sub1), nl,
    sub_atom(hello, 0, 5, 0, Sub2),
    write(Sub2), nl,
    sub_atom(hello, 0, 0, _, Sub3),
    write(Sub3), nl.
