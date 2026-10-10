female(0,1).
female(N,F) :- N>0,
	       N1 is N-1,
	       female(N1,R),
	       male(R, R1),
	       F is N-R1.

male(0,0).
male(N,F) :- N>0,
	     N1 is N-1,
	     male(N1,R),
	     female(R, R1),
	     F is N-R1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines female/2 and male/2 and never calls them; the driver prints F(n) and M(n) for n = 0..19.
:- initialization((forall(between(0, 19, N), (female(N, F), format("~w ", [F]))), nl, forall(between(0, 19, N), (male(N, M), format("~w ", [M]))), nl)).
