% DESIGN-PLAN planner-finish witness: a clause asserted at run time calls a static predicate, and the static code calls the dynamic one
:- initialization(main).
:- dynamic d/1.
main :- assertz(d(zero)), assertz((d(X) :- number(X), s(X, Y), Y > 2)), ( d(3) -> write(yes) ; write(no) ), nl, ( d(1) -> write(yes) ; write(no) ), nl, d(Z), write(Z), nl, forall(d(W), (write(W), nl)).
s(X, Y) :- Y is X * 2.
