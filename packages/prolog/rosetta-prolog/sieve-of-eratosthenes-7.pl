primes([2|PS]):-
    freeze(PS, (primes(BPS), count(3, 1, NS), sieve(NS, BPS, 4, PS))).

sieve([N|NS], BPS, Q, PS):-
    N < Q -> PS = [N|PS2], freeze(PS2, sieve(NS, BPS, Q, PS2))
    ;  BPS = [BP,BP2|BPS2], Q2 is BP2*BP2, count(Q, BP, MS),
       remove(MS, NS, R), sieve(R, [BP2|BPS2], Q2, PS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's primes/1 and sieve/4 (the lazy sieve postponed to the squares) are the entry and call count/3 and remove/3 of sieve-of-eratosthenes-6, so the driver takes that block over (CEO-1613; this block's primes/1 clause comes first and answers) and prints the first 25 primes with -6's take/3.
:- include('sieve-of-eratosthenes-6.pl').
:- initialization((primes(PS), take(25, PS, A), format("~w~n", [A]))).
