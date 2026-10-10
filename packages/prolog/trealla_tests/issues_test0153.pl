:-initialization(main).

main :-
	[1,1,2,1,1,2|L1]=L1, [1,1,2|R1]=R1, L1=R1,
	[1,1,2,1,1,2|L2]=L2, [1,1,2|R2]=R2, L2==R2,
	true.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
