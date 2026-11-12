p(St) :- arg(1,St,C), C < 2, C1 is C+1, nb_setarg(1,St,C1).
t(X) :- St = st(0), repeat, (p(St) -> true ; !, fail), q(X).
q(X) :- writeln(X).
q(_) :- writeln(q2).
main :- forall(t(a), true), writeln(done).
:- initialization(main).
