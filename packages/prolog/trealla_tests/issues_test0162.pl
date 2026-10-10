:-initialization(main).

leak2 :-
    findall(_, inner, _).

leak3 :-
    findall(_, inner2, _).

% calling inner/0 from the toplevel is fine
inner :-
    do_something("abcdefg")
    ; do_something("fooobarbaz").

% calling inner2/0 from the toplevel seems to leak "qux" (but not the other strings)?
inner2 :-
    do_something_else("abcdefg")
    ; do_something_else("fooobarbaz").

do_something(_).

do_something_else(X) :- X \= "qux".

main :-
	leak2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
