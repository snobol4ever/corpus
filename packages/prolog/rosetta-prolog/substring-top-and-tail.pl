% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
remove_first_last_chars :-
    L = "Rosetta",
    L = [_|L1],
    remove_last(L, L2),
    remove_last(L1, L3),
    writef('Original string      : %s\n', [L]),
    writef('Without first char       : %s\n', [L1]),
    writef('Without last char        : %s\n', [L2]),
    writef('Without first/last chars : %s\n', [L3]).

remove_last(L, LR) :-
    append(LR, [_], L).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines remove_first_last_chars/0 and never calls it; written for code lists (L = "Rosetta", L = [_|L1]), so the flag is set at its head and the driver calls it once at load.
:- initialization(remove_first_last_chars).
