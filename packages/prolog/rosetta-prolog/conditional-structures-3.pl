fact(X) :-
    (   X = foo
    ;   X = bar
    ;   X = baz ).

go :-
    (   fact(booger)
    ;   fact(bar) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): go/0 succeeds through its second disjunct and prints nothing, so the coo's driver printed nothing; the driver prints whether go/0 succeeds.
:- initialization((go -> writeln('go: true') ; writeln('go: false'))).
