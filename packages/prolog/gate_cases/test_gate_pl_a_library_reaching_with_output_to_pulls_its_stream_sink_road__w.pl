:- initialization(main).
main :- write_to_atom(A, f(x, 'Y z')), write(A), nl, writeq_to_atom(B, f(x, 'Y z')), write(B), nl,
    format_to_atom(C, '~w-~a', [g(1), b]), write(C), nl, print_to_atom(D, [1,2]), write(D), nl.
