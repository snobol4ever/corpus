largest_left_truncatable_prime(N, N):-
    is_left_truncatable_prime(N),
    !.
largest_left_truncatable_prime(N, P):-
    N > 1,
    N1 is N - 1,
    largest_left_truncatable_prime(N1, P).

is_left_truncatable_prime(P):-
    is_prime(P),
    is_left_truncatable_prime(P, P, 10).

is_left_truncatable_prime(P, _, N):-
    P =< N,
    !.
is_left_truncatable_prime(P, Q, N):-
    Q1 is P mod N,
    is_prime(Q1),
    Q \= Q1,
    N1 is N * 10,
    is_left_truncatable_prime(P, Q1, N1).

largest_right_truncatable_prime(N, N):-
    is_right_truncatable_prime(N),
    !.
largest_right_truncatable_prime(N, P):-
    N > 1,
    N1 is N - 1,
    largest_right_truncatable_prime(N1, P).

is_right_truncatable_prime(P):-
    is_prime(P),
    Q is P // 10,
    (Q == 0, ! ; is_right_truncatable_prime(Q)).

main(N):-
    find_prime_numbers(N),
    largest_left_truncatable_prime(N, L),
    writef('Largest left-truncatable prime less than %t: %t\n', [N, L]),
    largest_right_truncatable_prime(N, R),
    writef('Largest right-truncatable prime less than %t: %t\n', [N, R]).

main:-
    main(1000000).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's main/0 is the entry and calls find_prime_numbers/1 and is_prime/1 of truncatable-primes-2 (module prime_numbers), so the driver takes that block over (CEO-1613; its module/2 directive errs inside an include and its clauses join user, as long-primes-1 composes) and calls main/0, the task's largest truncatable primes below 1000000.
:- include('truncatable-primes-2.pl').
:- initialization(main).
