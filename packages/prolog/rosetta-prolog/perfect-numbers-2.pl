perfect(N) :-
   factor_2s(N, Chk, Exp),
   Chk =:= (1 << (Exp+1)) - 1,
   prime(Chk).

factor_2s(N, S, D) :- factor_2s(N, 0, S, D).

factor_2s(D, S, D, S) :- getbit(D, 0) =:= 1, !.
factor_2s(N, E, D, S) :-
   E2 is E + 1, N2 is N >> 1, factor_2s(N2, E2, D, S).

% check if a number is prime
%
wheel235(L) :-
   W = [4, 2, 4, 2, 4, 6, 2, 6 | W],
   L = [1, 2, 2 | W].

prime(N) :-
   N >= 2,
   wheel235(W),
   prime(N, 2, W).

prime(N, D, _) :- D*D > N, !.
prime(N, D, [A|As]) :-
    N mod D =\= 0,
    D2 is D + A, prime(N, D2, As).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines perfect/1 and never calls it; the driver prints the perfect numbers up to 10000 and its verdict on four larger even perfect numbers and one non-perfect.
:- initialization((findall(N, (between(1, 10000, N), perfect(N)), L), format("~w~n", [L]), forall(member(N, [33550336, 33550337, 8589869056, 137438691328, 2305843008139952128]), ((perfect(N) -> R = yes ; R = no), format("~w: ~w~n", [N, R]))))).
