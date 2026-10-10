:- use_module(library(clpfd)).

% Basic, Q = Quarter, D = Dime, N = Nickel, P = Penny
coins(Q, D, N, P, T) :-
	[Q,D,N,P] ins 0..T,
	T #= (Q * 25) + (D * 10) + (N * 5) + P.

coins_for(T) :-
	coins(Q,D,N,P,T),
	maplist(indomain, [Q,D,N,P]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines coins_for/1, which enumerates one way per solution, and never calls it; the driver counts the ways to change the task's 100 cents.
:- initialization((aggregate_all(count, coins_for(100), N), format("~w~n", [N]))).
