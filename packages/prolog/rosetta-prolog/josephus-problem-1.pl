josephus(N, K, Survivors) :- josephus(N, K, 1, Survivors).

:- table josephus/4.
josephus(N, K, M, Survivors) :-
    K > 0,
    N > 0,
    N0 is N - 1,
    (   M = N
    ->  numlist(0, N0, Survivors)
    ;   josephus(N0, K, M, Survivors0),
        findall(Survivor, (
            member(Survivor0, Survivors0),
            Survivor is (Survivor0 + K) mod N
        ), Survivors)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines josephus/3 and josephus/4 and never calls them; the driver prints the task's survivor for n = 41, k = 3 and the last three (extra credit).
:- initialization((josephus(41, 3, S), format("~w~n", [S]), josephus(41, 3, 3, S3), format("~w~n", [S3]))).
