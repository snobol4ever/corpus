fact(X) :-
    (   X = foo
    ;   X = bar
    ;   X = baz ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
