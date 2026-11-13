:- initialization(main).
p.
q(1).
q(2).
r :- fail.
boom :- throw(mine).
a1(X) :- q(X), $, true.
a2(X) :- q(X), $, fail.
a3 :- $, q(_), true.
a4 :- $, q(_), !.
a5 :- $, \+ fail.
a6 :- $, call(q(_)).
a7 :- $, findall(X, q(X), _).
a8 :- $, throw(mine).
a9(X) :- q(X), $p, X >= 2.
a10(X) :- $q(X), true.
a11 :- $boom.
a12(X) :- $r, X = 1.
rdet(0) => true.
rdet(N) => $p, $, N1 is N - 1, rdet(N1).
t(G) :- catch((G -> writeq(yes(G)) ; writeq(no(G))), error(E, _), writeq(caught(E))), nl.
t2(G) :- catch((G -> writeq(yes(G)) ; writeq(no(G))), B, writeq(ball(B))), nl.
main :- t(a1(_)), t(a2(_)), t(a3), t(a4), t(a5), t(a6), t(a7), t2(a8), t(a9(_)), t(a10(_)), t2(a11), t(a12(_)),
  t($q(_)), t($r), t($p), t((X0 = 2, $q(X0))), t(rdet(500000)),
  writeq(($p, $)), nl, writeq(f($, $a, '$'(a, b), ($) - a)), nl, writeq($ (1 + 2)), nl,
  ( current_op(P, T, $) -> writeq(op(P, T)) ; writeq(no_op) ), nl.
