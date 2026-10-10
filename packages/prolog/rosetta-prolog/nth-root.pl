iroot(_, 0, 0) :- !.
iroot(M, N, R) :-
    M > 1,
    (N > 0 ->
        irootpos(M, N, R)
    ;
        N /\ 1 =:= 1,
        NegN is -N, irootpos(M, NegN, R0), R is -R0).

irootpos(N, A, R) :-
    X0 is 1 << (msb(A) div N),  % initial guess is 2^(log2(A) / N)
    newton(N, A, X0, X1),
    iroot_loop(A, X1, N, A, R).

iroot_loop(X1, X2, _, _, X1) :- X1 =< X2, !.
iroot_loop(_, X1, N, A, R) :-
    newton(N, A, X1, X2),
    iroot_loop(X1, X2, N, A, R).

newton(2, A, X0, X1) :- X1 is (X0 + A div X0) >> 1, !.  % fast special case
newton(N, A, X0, X1) :- X1 is ((N - 1)*X0 + A div X0**(N - 1)) div N.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines iroot/3 and never calls it; the driver prints integer M-th roots of a few numbers, sqrt(2) and cbrt(2) to many digits among them.
:- initialization(forall(member(M-N, [2-2, 3-1000, 5-100000, 2-(2*10**100), 3-(2*10**60)]), (A is N, iroot(M, A, R), format("~w root of ~w = ~w~n", [M, A, R])))).
