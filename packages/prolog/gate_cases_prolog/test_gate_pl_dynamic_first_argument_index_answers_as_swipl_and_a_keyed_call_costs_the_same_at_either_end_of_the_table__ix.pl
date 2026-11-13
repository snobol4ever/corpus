:- dynamic t/2, u/1, v/2, w/1.
show(G) :- ( findall(G, G, L) -> \+ \+ ( numbervars(L, 0, _), write(L) ) ; write(none) ), nl.
fill :- forall(between(1, 40, I), (J is I * I, assertz(t(I, J)))).
:- fill.
:- show(clause(t(7, X), B)).
:- show(retract(t(7, X))).
:- show(clause(t(7, X), B)).
:- show(retract(t(99, X))).
:- assertz(t(7, a)), assertz(t(7, b)), assertz(t(8, c)).
:- show(clause(t(7, X), true)).
:- show(clause(t(8, X), true)).
:- asserta(t(7, first)).
:- show(clause(t(7, X), true)).
:- show(clause(t(X, 49), true)).
:- show(clause(t(X, Y), true)).
:- assertz((t(3, Z) :- Z = body)).
:- show(clause(t(3, X), B)).
:- show(retract((t(3, X) :- B))).
:- show(clause(t(3, X), B)).
:- assertz(t(1.5, flt)), format(string(S0), '~w', [str]), assertz(t(S0, s)), assertz(t(f(1), c1)), assertz(t(f(1, 2), c2)), assertz(t(-5, neg)), assertz(t(123456789012345678901234567890, big)), assertz(t('1', atomone)), assertz(t(1, intone)).
:- show(clause(t(1.5, X), true)).
:- format(string(S1), '~w', [str]), show(clause(t(S1, X), true)).
:- show(clause(t(f(1), X), true)).
:- show(clause(t(f(_), X), true)).
:- show(clause(t(f(1, 2), X), true)).
:- show(clause(t(f(_, _), X), true)).
:- show(clause(t(-5, X), true)).
:- show(clause(t(123456789012345678901234567890, X), true)).
:- show(clause(t('1', X), true)).
:- show(clause(t(1, X), true)).
:- show(clause(t(2.5, X), true)).
:- show(clause(t(zzz, X), true)).
:- forall(retract(t(5, X)), (assertz(t(5, again)), write(r(X)), nl)).
:- show(clause(t(5, X), true)).
:- show(retract(t(9, _))).
:- show(retract(t(1, X))).
:- show(clause(t(1, X), true)).
:- assertz(t(_, anyclause)).
:- show(clause(t(10, X), true)).
:- show(clause(t(f(1), X), true)).
:- show(retract(t(10, X))).
:- show(retract(t(10, X))).
:- forall(between(1, 30, I), (format(atom(A), 'k~w', [I]), assertz(u(A)))).
:- show(clause(u(k7), true)).
:- show(retract(u(k7))).
:- show(clause(u(k7), true)).
:- show(retract(u(k30))).
:- show(clause(u(X), true)).
:- forall(between(1, 12, I), (J is I mod 3, assertz(v(J, I)))).
:- show(clause(v(0, X), true)).
:- show(clause(v(1, X), true)).
:- show(clause(v(2, X), true)).
:- show(retract(v(1, 4))).
:- show(clause(v(1, X), true)).
:- show(retract(v(1, X))).
:- show(clause(v(1, X), true)).
:- assertz(w(1)), assertz(w(2)), asserta(w(0)).
:- forall(between(3, 20, I), assertz(w(I))).
:- show(clause(w(0), true)).
:- show(retract(w(15))).
:- show(clause(w(15), true)).
:- show(clause(w(X), true)).
:- abolish(w/1).
:- catch(show(clause(w(1), true)), error(E, _), (write(E), nl)).
:- show(retract(t(zzz, _))).
:- retractall(t(8, _)).
:- show(clause(t(8, X), true)).
:- show(clause(t(9, X), true)).
:- retractall(u(k3)).
:- show(clause(u(k3), true)).
:- show(clause(u(k4), true)).
:- retractall(t(f(1), _)).
:- show(clause(t(f(1), X), true)).
:- show(clause(t(f(1, 2), X), true)).
:- retractall(t(nokey, _)).
:- retractall(t(1.5, _)).
:- show(clause(t(1.5, X), true)).
:- retractall(v(_, 3)).
:- show(clause(v(0, X), true)).
:- retractall(v(_, _)).
:- show(clause(v(2, X), true)).
:- assertz(v(2, again)).
:- show(clause(v(2, X), true)).
