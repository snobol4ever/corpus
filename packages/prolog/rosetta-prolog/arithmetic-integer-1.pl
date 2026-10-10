print_expression_and_result(M, N, Operator) :-
    Expression =.. [Operator, M, N],
    Result is Expression,
    format('~w ~8|is ~d~n', [Expression, Result]).

arithmetic_integer :-
    read(M),
    read(N),
    maplist( print_expression_and_result(M, N), [+,-,*,//,rem,^] ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines arithmetic_integer/0 (reads two integers with read/1) and never calls it; arithmetic-integer-1.in holds -7 and 2, so the quotient's rounding and the remainder's sign show.
:- initialization(arithmetic_integer).
