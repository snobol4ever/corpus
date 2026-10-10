:- use_module(library(charsio)).
:- op(300,xfx,\\).

main :-
	read_from_chars("arg(1,(\\) \\\\ '', Y).", X),
	read_from_chars("arg(1,\\ \\\\ '', Y).", X).

:- initialization(main).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
