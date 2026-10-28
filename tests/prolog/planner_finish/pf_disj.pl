% DESIGN-PLAN planner-finish witness: a predicate whose frame holds a disjunction and a range generator retried from a loop
:- initialization(main).
main :- forall(pick(X), (write(X), nl)), ( pick(Y), integer(Y), Y > 2 -> write(Y) ; write(none) ), nl.
pick(X) :- ( X = a ; between(1, 3, X) ; X = z ).
