:- initialization(main).
main :- consult(plainfacts), forall(f(X), (write(f(X)), nl)), halt.
