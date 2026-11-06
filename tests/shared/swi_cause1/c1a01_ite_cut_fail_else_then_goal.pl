p(St) :- arg(1,St,C), C < 2, C1 is C+1, nb_setarg(1,St,C1).
t(X) :- St = st(0), repeat, (p(St) -> true ; !, fail), writeln(X).
main :- forall(t(a), true), writeln(done).
:- initialization(main).
