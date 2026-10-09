fact(X) :-
    (   X = bar ->  write('You got me!'), nl
    ;               write(X), write(' is not right!'), nl, fail ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
