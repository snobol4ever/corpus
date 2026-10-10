plus :-
    read_line_to_codes(user_input,X),
    atom_codes(A, X),
    atomic_list_concat(L, ' ', A),
    maplist(atom_number, L, LN),
    sumlist(LN, N),
    write(N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines plus/0 (A+B from a line of input) and never calls it; a_b-1.in holds the task's line 2 3.
:- initialization((plus, nl)).
