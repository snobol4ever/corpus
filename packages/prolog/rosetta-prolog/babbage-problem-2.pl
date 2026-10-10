babbage :-
    Start is ceil(sqrt(269696)),
    between(Start, inf, N),
    Square is N * N,
    Square mod 100 =:= 96,           % speed up
    Square mod 1000000 =:= 269696,!, % break after first true
    format('lowest number is ~d which squared becomes ~d~n', [N, Square]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines babbage/0 and never calls it; the driver calls it once at load.
:- initialization(babbage).
