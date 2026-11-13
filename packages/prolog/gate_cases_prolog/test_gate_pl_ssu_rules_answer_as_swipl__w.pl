:- initialization(main).
p(X), X > 0 => writeq(pos(X)), nl.
p(0) => writeq(zero), nl.
p(_) => writeq(neg), nl.
q(f(Y)) => writeq(qf(Y)), nl.
r(X, Y) => Y = got(X).
s(a) => fail.
s(_) => writeq(s_other), nl.
t(G) :- catch((call(G) -> true ; (writeq(failed(G)), nl)), error(E, _), (writeq(caught(E)), nl)).
main :- t(p(3)), t(p(0)), t(p(-2)), t(p(_)), t(q(f(1))), t((q(V), writeq(after(V)), nl)), t(q(g)), t((r(1, R), writeq(R), nl)), t(s(a)), t(s(b)), t((s(Z), writeq(unbound_after(Z)), nl)).
