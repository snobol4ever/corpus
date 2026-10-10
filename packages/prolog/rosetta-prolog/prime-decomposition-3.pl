factors( N, FS):-
    factors2( N, FS).

factors2( N, FS):-
    ( N < 2        -> FS = []
    ; 4 > N        -> FS = [N]
    ; 0 is N rem 2 -> FS = [K|FS2], N2 is N div 2, factors2( N2, FS2)
    ;                 factors( N, 3, FS)
    ).

factors( N, K, FS):-
    ( N < 2        -> FS = []
    ; K*K > N      -> FS = [N]
    ; 0 is N rem K -> FS = [K|FS2], N2 is N div K, factors( N2, K, FS2)
    ;                 K2 is K+2, factors( N, K2, FS)
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines factors/2 and never calls it; the driver prints factors(N, FS) for a few small numbers and two large ones (factors2/2 pushes an unbound K for each factor 2, so FS goes through numbervars/3 before printing).
:- initialization(forall(member(N, [2, 3, 12, 13, 97, 360, 1001, 2147483647, 600851475143]), (factors(N, FS), numbervars(FS, 0, _), format("~w: ~w~n", [N, FS])))).
