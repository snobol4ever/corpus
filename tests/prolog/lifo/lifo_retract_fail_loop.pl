:- dynamic q/1.
q(1). q(2). q(3).
main :- ( retract(q(X)), write(r(X)), nl, fail ; true ), write(left), nl, ( q(Y), write(Y), nl, fail ; true ), write(done), nl.
:- initialization(main).
