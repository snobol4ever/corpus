prime_partition(N, 1, [N], Min):-
    is_prime(N),
    N > Min,
    !.
prime_partition(N, K, [P|Rest], Min):-
    K > 1,
    is_prime(P),
    P > Min,
    P < N,
    K1 is K - 1,
    N1 is N - P,
    prime_partition(N1, K1, Rest, P),
    !.

prime_partition(N, K, Primes):-
    prime_partition(N, K, Primes, 1).

print_primes([Prime]):-
    !,
    writef('%w\n', [Prime]).
print_primes([Prime|Primes]):-
    writef('%w + ', [Prime]),
    print_primes(Primes).

print_prime_partition(N, K):-
    prime_partition(N, K, Primes),
    !,
    writef('%w = ', [N]),
    print_primes(Primes).
print_prime_partition(N, K):-
    writef('%w cannot be partitioned into %w primes.\n', [N, K]).

main:-
    find_prime_numbers(100000),
    print_prime_partition(99809, 1),
    print_prime_partition(18, 2),
    print_prime_partition(19, 3),
    print_prime_partition(20, 4),
    print_prime_partition(2017, 24),
    print_prime_partition(22699, 1),
    print_prime_partition(22699, 2),
    print_prime_partition(22699, 3),
    print_prime_partition(22699, 4),
    print_prime_partition(40355, 3).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's main/0 is the entry and calls find_prime_numbers/1 and is_prime/1 of partition-an-integer-x-into-n-primes-2 (module prime_numbers), so the driver takes that block over (CEO-1613; its module/2 directive errs inside an include and its clauses join user, as long-primes-1 composes) and calls main/0, the task's ten partitions.
:- include('partition-an-integer-x-into-n-primes-2.pl').
:- initialization(main).
