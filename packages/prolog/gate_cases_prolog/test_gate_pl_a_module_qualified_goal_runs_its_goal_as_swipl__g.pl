:- initialization(main).
p(1). p(2).
r(X, Y) :- Y is X * 10.
q(M, G) :- findall(X, call(M:G, X), L), write(L), nl.
t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), write(E)), nl.
main :-
  findall(X, user:p(X), L), write(L), nl,
  G = p(Y), call(user:G), write(Y), nl,
  q(user, p),
  lists:append([a], [b], Z), write(Z), nl,
  call(user:r, 4, R), write(R), nl,
  t(user:p(2)), t(user:p(3)),
  t(user:user:p(1)),
  t(call(_:p(1))),
  t(\+ user:p(3)),
  forall(user:p(V), (write(V), nl)),
  M = user, t(M:p(1)),
  halt.
