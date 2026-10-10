% We need operators
:- op(700, xfx, <-).
:- op(450, xfx, ..).
:- op(1100, yfx, &).

% use for explicit list usage
my_bind(V, [H|_]) :- V = H.
my_bind(V, [_|T]) :- my_bind(V, T).

% we need to define the intervals of numbers
Vs <- M..N :-
        integer(M),
	integer(N),
	M =< N,
	between(M, N, Vs).

% for explicit list comprehension like Vs <- [1,2,3]
Vs <- Xs :-
	is_list(Xs),
	my_bind(Vs, Xs).

% finally we define list comprehension
% prototype is Vs <- {Var, Dec, Pred} where
% Var is the list of variables to output
% Dec is the list of intervals of the variables
% Pred is the list of predicates
Vs <- {Var & Dec & Pred} :-
	findall(Var,  maplist(call, [Dec, Pred]), Vs).

% for list comprehension without Pred
Vs <- {Var & Dec} :-
	findall(Var, maplist(call, [Dec]), Vs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the <- comprehension and never uses it; the driver builds the task's Pythagorean triples up to 20.
:- initialization((L <- {(X,Y,Z) & X <- 1..20, Y <- X..20, Z <- Y..20 & X*X+Y*Y =:= Z*Z}, format("~w~n", [L]))).
