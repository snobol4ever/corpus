h3(2).
h3(3).
call1_a(X) :- X.
:- dynamic d1/1.
d1(5).
r(G) :- catch((call(G) -> write(yes) ; write(no)), error(permission_error(A, B, PI), _), (write(perm(A, B, PI)))), nl.
t :- T = atom(_), r(clause(T, _)),
     r(clause(atom(_), _)),
     r(call(clause(atom(_), _))),
     r((clause(h3(X), B), X == 2, B == true)),
     Y = h3, U =.. [Y, _], r(clause(U, _)),
     r(call(clause(h3(_), _))),
     r((G = clause(call1_a(Z), Body), call(G), Body == call(Z))),
     r(call(clause(d1(_), _))),
     r(call(clause(nosuch(_), _))),
     r(call(clause((a, b), _))).
:- initialization(t).
