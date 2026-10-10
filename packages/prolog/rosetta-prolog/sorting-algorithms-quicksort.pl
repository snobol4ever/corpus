qsort( [], [] ).
qsort( [H|U], S ) :- splitBy(H, U, L, R), qsort(L, SL), qsort(R, SR), append(SL, [H|SR], S).

% splitBy( H, U, LS, RS )
% True if LS = { L in U | L <= H }; RS = { R in U | R > H }
splitBy( _, [], [], []).
splitBy( H, [U|T], [U|LS], RS ) :- U =< H, splitBy(H, T, LS, RS).
splitBy( H, [U|T], LS, [U|RS] ) :- U  > H, splitBy(H, T, LS, RS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines qsort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((qsort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
