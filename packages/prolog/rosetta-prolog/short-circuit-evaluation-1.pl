short_circuit :-
	(   a_or_b(true, true) -> writeln('==> true'); writeln('==> false')) , nl,
	(   a_or_b(true, false)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_or_b(false, true)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_or_b(false, false)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_and_b(true, true)-> writeln('==> true'); writeln('==> false')) , nl,
	(   a_and_b(true, false)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_and_b(false, true)-> writeln('==>  true'); writeln('==> false')) , nl,
	(   a_and_b(false, false)-> writeln('==>  true'); writeln('==> false')) .


a_and_b(X, Y) :-
	format('a(~w) and b(~w)~n', [X, Y]),
	(   a(X), b(Y)).

a_or_b(X, Y) :-
	format('a(~w) or b(~w)~n', [X, Y]),
	(   a(X); b(Y)).

a(X) :-
	format('a(~w)~n', [X]),
	X.

b(X) :-
	format('b(~w)~n', [X]),
	X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines short_circuit/0 and never calls it; the driver calls it once at load.
:- initialization(short_circuit).
