:-initialization(main).

ti(G_0, (A_0,B_0,C_0)) :-
   G_0 = (C_0,A_0,B_0),
   C_0 = unify_with_occurs_check(_,_),
   skel(A_0),
   skel(B_0),
   f(G_0).

f((unify_with_occurs_check(A,B),unify_with_occurs_check(A,[]*C),unify_with_occurs_check(C,B*_D))).

skel(unify_with_occurs_check(_,_*_)).

main :-
	ti(G_0,_),G_0.

main :-
	ti(_,R_0),R_0.

main.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): Trealla grades this program by exit status alone (it prints nothing, its .expected is empty); the driver calls main/0 once more and prints whether it succeeded, failed or raised.
:- initialization(((catch(main, E, true) -> (var(E) -> R = succeeded ; R = raised) ; R = failed), format("main ~w~n", [R]))).
