sym_diff :-
    A = ['John', 'Serena', 'Bob', 'Mary', 'Serena'],
    B = ['Jim', 'Mary', 'John', 'Jim', 'Bob'],
    format('A : ~w~n', [A]),
    format('B : ~w~n', [B]),
    list_to_set(A, SA),
    list_to_set(B, SB),
    format('set from A : ~w~n', [SA]),
    format('set from B : ~w~n', [SB]),
    subtract(SA, SB, DAB),
    format('difference A\\B : ~w~n', [DAB]),
    subtract(SB, SA, DBA),
    format('difference B\\A : ~w~n', [DBA]),
    union(DAB, DBA, Diff),
    format('symetric difference : ~w~n', [Diff]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sym_diff/0 and never calls it; the driver calls it once at load.
:- initialization(sym_diff).
