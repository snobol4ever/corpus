binary(X) :- format('~2r~n', [X]).
main :- maplist(binary, [5,50,9000]), halt.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
