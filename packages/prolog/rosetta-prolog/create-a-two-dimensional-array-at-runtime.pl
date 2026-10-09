:- dynamic array/2.

run :-
    write('Enter two positive integers, separated by a comma: '),
    read((I,J)),
    assert(array(I,J)),
    Value is I * J,
    format('a(~w,~w) = ~w', [I, J, Value]),
    retractall(array(_,_)).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines run/0 and never calls it; the driver calls it once at load.
:- initialization(run).
