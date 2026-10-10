median(L, Z) :-
    length(L, Length),
    I is Length div 2,
    Rem is Length rem 2,
    msort(L, S),
    maplist(sumlist, [[I, Rem], [I, 1]], Mid),
    maplist(nth1, Mid, [S, S], X),
    sumlist(X, Y),
    Z is Y/2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines median/2 and never calls it; the driver prints the median of the task's odd- and even-length vectors.
:- initialization(forall(member(L, [[4.1, 5.6, 7.2, 1.7, 9.3, 4.4, 3.2], [4.1, 7.2, 1.7, 9.3, 4.4, 3.2]]), (median(L, Z), format("~w: ~w~n", [L, Z])))).
