main :-
	arg(2,"foo",V),
	writeq(V), nl.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this program defines main/0 and never calls it (Trealla's runner passes -g main); the driver calls it and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
