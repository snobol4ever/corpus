mean(List, Mean) :-
    length(List, Length),
    sumlist(List, Sum),
    Mean is Sum / Length.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines mean/2 and never calls it; the driver prints the mean of two vectors.
:- initialization(forall(member(L, [[1, 2, 3, 4, 5], [3, 1, 4, 1, 5, 9]]), (mean(L, M), format("~w: ~w~n", [L, M])))).
