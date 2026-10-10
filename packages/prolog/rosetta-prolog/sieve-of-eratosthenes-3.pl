primes(X, PS) :- X > 1, range(2, X, R), sieve(X, R, PS).

sieve(X, [H | T], [H | T]) :- H*H > X, !.
sieve(X, [H | T], [H | S]) :- maplist( mult(H), [H | T], MS),
                              remove(MS, T, R), sieve(X, R, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's primes/2 and sieve/3 (the sieve stopped at the square root) are the entry and call range/3, mult/3 and remove/3 of sieve-of-eratosthenes-2, so the driver takes that block over (CEO-1613; this block's primes/2 clause comes first and answers) and prints the primes up to 100.
:- include('sieve-of-eratosthenes-2.pl').
:- initialization((primes(100, L), format("~w~n", [L]))).
