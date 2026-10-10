accRev([H|T], A, R) :- accRev(T, [H|A], R).
accRev([], A, A).

rev(L,R) :- accRev(L,[],R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rev/2 over lists and never calls it; the driver reverses the task's asdf.
:- initialization((atom_chars(asdf, L), rev(L, R), atom_chars(A, R), writeln(A))).
