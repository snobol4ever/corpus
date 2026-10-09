repeat(_, 0).
repeat(Callable, Times) :-
	succ(TimesLess1, Times),
	Callable,
	repeat(Callable, TimesLess1).

test :- write('Hello, World'), nl.	
test(Name) :- format('Hello, ~w~n', Name).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
