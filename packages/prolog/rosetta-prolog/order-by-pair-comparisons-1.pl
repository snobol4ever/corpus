ask_sort(List, Sorted) :- predsort(ask, List, Sorted).

ask(Cmp, Left, Right) :-
    format("Comparing ~w with ~w:   ", [Left, Right]),
    get_single_char(Cmp0),
    char_code(Cmp1, Cmp0),
    (   memberchk(Cmp1, [<, =, >])
    ->  Cmp = Cmp1,
        writeln(Cmp1)
    ;   format("Please answer <, = or >."),
        ask(Cmp, Left, Right)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ask_sort/2 and never calls it; the driver sorts the task's seven colours, order-by-pair-comparisons-1.in holding the answers to each comparison, one a line (get_single_char/1).
:- initialization((ask_sort(["violet", "red", "green", "indigo", "blue", "yellow", "orange"], S), format("~w~n", [S]))).
