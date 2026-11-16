% nth_prime.pl -- the exercism Prolog exercise nth-prime, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/nth_prime.example.pl, then its tests nth_prime_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
prime(2) :- !.
prime(3) :- !.
prime(P) :- P > 3, P mod 2 =\= 0, prime(P, 3), !.
prime(P, N) :- (N*N > P -> true; P mod N =\= 0, M is N + 2, prime(P, M)), !.

next_prime(N, N):- prime(N), !.
next_prime(N, Prime):- NextN is N + 1, next_prime(NextN, Prime).

nth_prime(1, 2) :- !.
nth_prime(2, 3) :- !.
nth_prime(N, Prime):-
    N > 2,
    PrevN is N - 1,
    nth_prime(PrevN, PrevPrime),
    NextN is PrevPrime + 1,
    next_prime(NextN, Prime).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(nth_prime).

    test(first_prime, condition(true)) :-
        nth_prime(1, Prime),
        Prime == 2.

    test(second_prime, condition(pending)) :-
        nth_prime(2, Prime),
        Prime == 3.

    test(sixth_prime, condition(pending)) :-
        nth_prime(6, Prime),
        Prime == 13.

    test(big_prime, condition(pending)) :-
        nth_prime(10001, Prime),
        Prime == 104743.

    test(there_is_no_zeroth_prime, [fail, condition(pending)]) :-
        nth_prime(0, _).

:- end_tests(nth_prime).
