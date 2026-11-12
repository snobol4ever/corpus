:- initialization(main).
:- dynamic(p/1).
main :- assertz((p(X) :- retract((p(_) :- _)), Y = done, X = Y)), p(A), write(self(A)), nl, halt.
