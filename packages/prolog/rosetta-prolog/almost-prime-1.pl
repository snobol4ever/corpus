% almostPrime(K, +Take, List) succeeds if List can be unified with the
% first Take K-almost-primes.
% Notice that K need not be specified.
% To avoid having to cache or recompute the first Take primes, we define
% almostPrime/3 in terms of almostPrime/4 as follows:
%
almostPrime(K, Take, List) :-
  % Compute the list of the first Take primes:
  nPrimes(Take, Primes),
  almostPrime(K, Take, Primes, List).

almostPrime(1, Take, Primes, Primes).

almostPrime(K, Take, Primes, List) :-
  generate(2, K),  % generate K >= 2
  K1 is K - 1,
  almostPrime(K1, Take, Primes, L),
  multiplylist( Primes, L, Long),
  sort(Long, Sorted), % uniquifies
  take(Take, Sorted, List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in three blocks: this block's almostPrime/3 is the entry and calls nPrimes/2, multiplylist/3 and take/3 of almost-prime-2 and generate/2 of almost-prime-3, so the driver includes both and prints the task's first ten k-almost primes for k = 1..5.
:- include('almost-prime-2.pl').
:- include('almost-prime-3.pl').
:- initialization(forall(between(1, 5, K), (almostPrime(K, 10, L), format("~w: ~w~n", [K, L])))).
