example :-
    between(1,5,I), nl, between(1,I,_J),
    write('*'), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
