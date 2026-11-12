q(X, Y) :- Y is X - 1.
p(X, Z) :- Z is (X - 1) * (X + 2).
u(X) :- 1 = X.
v(X) :- X = 1.
:- initialization(main).
main :- q(5, Y), write(Y), nl, p(5, Z), write(Z), nl, ( u(1) -> write(u_ok) ; write(u_bad) ), nl, ( v(1) -> write(v_ok) ; write(v_bad) ), nl, ( u(2) -> write(u2_bad) ; write(u2_ok) ), nl.
