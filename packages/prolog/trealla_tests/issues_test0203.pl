:-initialization(main).

main :-
	B = a([B]), A = [a([B])], A = [a(A)],
	B = a([B]), A = [a(A)], A = [a([B])].

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
