%%% Task 3. Use the previous function in creating [sic]
%%% another function that when given p returns whether p is prime
%%% using the AKS test.

% Even for testing whether a given number, N, is prime,
% this approach is inefficient, but here is a Prolog implementation:

   prime_test_per_requirements(N) :-
     coefficients(N, [1|Coefficients]),
     append(Cs, [_], Coefficients),
     forall( member(C, Cs), 0 is C mod N).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's prime_test_per_requirements/1 (task 3) calls coefficients/2 of aks-test-for-primes-3 (task 2), which runs over pascal/2 and optpascal/1 of aks-test-for-primes-2, and aks-test-for-primes-6 (tasks 4 and 5) runs aks-test-for-primes-5's prime/1, so the driver takes -2 over (CEO-1613) and includes -3, -5 and -6 in the page's order: -3's directive prints the coefficients for p = 0..7 and -6's print the primes under 35 and 50 as they load, and the driver then lists 1..49 by prime_test_per_requirements/1.
:- include('aks-test-for-primes-2.pl').
:- include('aks-test-for-primes-3.pl').
:- include('aks-test-for-primes-5.pl').
:- include('aks-test-for-primes-6.pl').
:- initialization((findall(N, (between(1, 49, N), prime_test_per_requirements(N)), Ps), format("prime_test_per_requirements, 1..49: ~w~n", [Ps]))).
