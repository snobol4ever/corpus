r(G) :- catch((call(G) -> write(yes) ; write(no)), error(permission_error(A, B, PI), _), (write(perm(A, B, PI)))), nl.
t :- r(call(clause((a, b), _))),
     r(clause((a ; b), _)),
     r(clause((a -> b), _)),
     r(clause(atom(_), _)),
     r(call(clause(nosuch(_), _))).
:- initialization(t).
