:- dynamic(cr/1).
:- dynamic(cs/1).
:- dynamic(ct/1).
:- dynamic(p/1).
cr(1). cr(2). cr(3).
cs(1). cs(2). cs(3).
ct(1). ct(2). ct(3).
p(1). p(2). p(3).
main :- ( clause(cr(X), true), write(X), retract(cr(_)), fail ; nl ),
        ( clause(cs(Y), true), write(Y), retract(cs(Y)), fail ; nl ),
        ( clause(ct(Z), true), write(Z), retract(ct(3)), fail ; nl ),
        ( clause(p(P), true), write(P), assertz(p(9)), fail ; nl ),
        ( retract(p(X2)), write(X2), fail ; nl ), ( p(W) -> write(W) ; write(empty) ), nl,
        assertz(q(1)), assertz(q(2)), ( retract(q(A)), write(A), assertz(q(3)), fail ; nl ),
        findall(B, q(B), Bs), write(Bs), nl.
:- initialization(main).
