sum(S) :-
        findall(L, (between(1,1000,N),L is 1/N^2), Ls),
        sumlist(Ls, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum/1 (1/k^2 for k = 1..1000) and never calls it; the driver prints the sum.
:- initialization((sum(S), format("~w~n", [S]))).
