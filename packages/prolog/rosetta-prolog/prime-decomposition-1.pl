prime_decomp(N, L) :-
    SN is sqrt(N),
    prime_decomp_1(N, SN, 2, [], L).


prime_decomp_1(1, _, _, L, L) :- !.

% Special case for 2, increment 1
prime_decomp_1(N, SN, D, L, LF) :-
    (   0 is N mod D ->
        Q is N / D,
        SQ is sqrt(Q),
        prime_decomp_1(Q, SQ, D, [D |L], LF)
    ;
        D1 is D+1,
        (   D1 > SN ->
            LF = [N |L]
        ;
            prime_decomp_2(N, SN, D1, L, LF)
        )
    ).

% General case, increment 2
prime_decomp_2(1, _, _, L, L) :- !.

prime_decomp_2(N, SN, D, L, LF) :-
    (   0 is N mod D ->
        Q is N / D,
        SQ is sqrt(Q),
        prime_decomp_2(Q, SQ, D, [D |L], LF);
        D1 is D+2,
        (   D1 > SN ->
            LF = [N |L]
        ;
            prime_decomp_2(N, SN, D1, L, LF)
        )
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines prime_decomp/2 and never calls it; the driver decomposes two small numbers and prime-decomposition-2's first two examples (its third takes 8 s).
:- initialization(forall(member(N, [12, 1001, 9007199254740991, 576460752303423487]), (prime_decomp(N, L), format("~w: ~w~n", [N, L])))).
