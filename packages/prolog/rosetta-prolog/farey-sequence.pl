task(1) :-
	between(1, 11, I),
	farey(I, F),
	write(I), write(': '),
	rwrite(F), nl, fail; true.

task(2) :- between(1, 10, I),
	I100 is I*100,
	farey( I100, F),
	length(F,N),
	write('|F('), write(I100), write(')| = '), writeln(N), fail; true.

% farey(+Order, Sequence)
farey(Order, Sequence) :-
  bagof( R,
	 I^J^(between(1, Order, J), between(0, J, I), R is I rdiv J),
	 S),
  predsort( rcompare, S, Sequence ).

rprint( rdiv(A,B) ) :- write(A), write(/), write(B), !.
rprint( I ) :- integer(I), write(I), write(/), write(1), !.

rwrite([]).
rwrite([R]) :- rprint(R).
rwrite([R, T|Rs]) :- rprint(R), write(', '), rwrite([T|Rs]).

rcompare(<, A, B) :- A < B, !.
rcompare(>, A, B) :- A > B, !.
rcompare(=, A, B) :- A =< B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines task/1 and farey/2 and never calls them; task(1)'s printer rprint/1 expects rdiv/2 terms and fails on swipl's rationals, so the driver prints farey/2's sequences F1..F11 with ~w and the lengths of F100..F300 in task(2)'s format (F400..F1000 take 28 s).
:- initialization((forall(between(1, 11, I), (farey(I, F), format("~w: ~w~n", [I, F]))), forall(between(1, 3, I), (N is I*100, farey(N, F), length(F, L), format("|F(~w)| = ~w~n", [N, L]))))).
