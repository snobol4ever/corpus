primes(PS):- count(2, 1, NS), sieve(NS, PS).

count(N, D, [N|T]):- freeze(T, (N2 is N+D, count(N2, D, T))).

sieve([N|NS],[N|PS]):- N2 is N*N, count(N2,N,A), remove(A,NS,B), freeze(PS, sieve(B,PS)).

take(N, X, A):- length(A, N), append(A, _, X).

remove([A|T],[B|S],R):- A < B -> remove(T,[B|S],R) ;
                        A=:=B -> remove(T,S,R) ;
                        R = [B|R2], freeze(R2, remove([A|T], S, R2)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the lazy infinite list primes/1 and its take/3 and never calls them; the driver prints its first 25 primes (those below 100).
:- initialization((primes(PS), take(25, PS, A), format("~w~n", [A]))).
