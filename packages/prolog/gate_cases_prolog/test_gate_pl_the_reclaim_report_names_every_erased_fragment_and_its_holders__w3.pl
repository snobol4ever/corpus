:- initialization(main).
:- dynamic(q/1).
:- dynamic(s/1).
r(X) :- q(X).
main :- assertz((s(X) :- member(X, [1, 2, 3]), X > 0)), assertz((q(X) :- s(Y), X = f(Y))), r(B), B == f(1), retract((s(_) :- _)), write(kept(B)), nl, halt.
