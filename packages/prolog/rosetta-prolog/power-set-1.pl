powerset(X,Y) :- bagof( S, subseq(S,X), Y).

subseq( [], []).
subseq( [], [_|_]).
subseq( [X|Xs], [X|Ys] ) :- subseq(Xs, Ys).
subseq( [X|Xs], [_|Ys] ) :- append(_, [X|Zs], Ys), subseq(Xs, Zs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines powerset/2 and never calls it; the driver prints the power set of the task's {1,2,3,4}.
:- initialization((powerset([1, 2, 3, 4], P), format("~w~n", [P]))).
