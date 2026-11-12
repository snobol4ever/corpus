:- initialization(main).
:- table path(index, index, first).
path(X, Y, N) :- path(X, Z, N1), edge(Z, Y), N is N1 + 1.
path(X, Y, 1) :- edge(X, Y).
edge(a, b). edge(b, a).
:- table conn(_, _, min).
conn(X, Y, 1) :- c(X, Y).
conn(X, Y, N) :- conn(X, Z, N1), c(Z, Y), N is N1 + 1.
:- table connx(_, _, max).
connx(X, Y, 1) :- c(X, Y).
connx(X, Y, N) :- connx(X, Z, N1), c(Z, Y), N is N1 + 1.
c(ams, sch). c(ams, haa). c(sch, lei). c(haa, lei). c(ams, lei).
:- table train(_, _, lattice(shortest/3)).
train(X, Y, [X, Y]) :- c(X, Y).
train(X, Y, P) :- train(X, Z, P0), c(Z, Y), append(P0, [Y], P).
shortest(P1, P2, P) :- length(P1, L1), length(P2, L2), ( L1 < L2 -> P = P1 ; P = P2 ).
:- table t1(+, +, max).
t1(L, L2, V) :- member(V1, L), member(V2, L2), V is V1 + V2.
:- table p2(lattice(orp/3)), s2(lattice(ors/3)).
orp(A, B, A+B).
ors(A, B, A-B).
p2(A) :- s2(A).
s2(1). s2(2).
:- table adv(_, _, lattice(plus/3)), r11(_, _, _, lattice(plus/3)).
adv(A, B, 1) :- proj(C, A), proj(C, B), A \== B, r11(A, B, C, _).
r11(A, B, C, 1) :- pub(D, A, C), pub(D, B, C).
proj(p1, h). proj(p1, b). proj(p2, h). proj(p2, b).
pub(x1, h, p1). pub(x1, b, p1). pub(x2, h, p1). pub(x2, b, p1). pub(x3, h, p2). pub(x3, b, p2).
:- table opa(_, _, lattice(or/3)), oe(_, _, lattice(or/3)).
opa(X, X, one).
opa(X, Y, C) :- oe(X, Z, A), opa(Z, Y, B), and(A, B, C).
opa(A, B, zero) :- nonvar(A), nonvar(B).
oe(a, b, e(a, b)). oe(b, e, e(b, e)). oe(a, e, e(a, e)).
oe(A, B, zero) :- nonvar(A), nonvar(B).
or(zero, B, B) :- !.
or(B, zero, B) :- !.
or(one, one, one) :- !.
or(A, A, A) :- !.
or(A, B, or(A, B)).
and(zero, _, _) :- !, fail.
and(_, zero, _) :- !, fail.
and(one, B, B) :- !.
and(B, one, B) :- !.
and(A, A, A) :- !.
and(A, B, and(A, B)).
:- table big(_, po('>'/2)).
big(k, 3). big(k, 9). big(k, 4).
:- table tot(_, sum).
tot(k, 3). tot(k, 9). tot(k, 4).
:- table two(_, min, max).
two(k, 5, 1). two(k, 2, 7). two(k, 8, 3).
:- table lst(_, last).
lst(k, x). lst(k, y). lst(k, z).
:- table bas/2.
bas --> "b".
bas --> bas, "a".
:- table d/1, e/1.
d(X) :- e(Y), Y < 3000, X is Y + 1.
d(0).
e(X) :- d(Y), Y < 3000, X is Y + 1.
e(0).
s(T, G) :- findall(T, G, L), msort(L, S), writeq(S), nl.
main :-
  s(t(X, Y, L), path(X, Y, L)),
  conn(ams, lei, N), writeq(N), nl, connx(ams, lei, M), writeq(M), nl,
  train(ams, lei, P), writeq(P), nl,
  L1 = [1, 2, 3, 5, 98, 3, 103, 4, 4, 21], t1(L1, L1, Max), writeq(Max), nl,
  s(A, p2(A)), s(Q, adv(h, b, Q)),
  ( opa(a, e, T), member(T, [or(e(a, e), and(e(a, b), e(b, e))), or(and(e(a, b), e(b, e)), e(a, e))]) -> writeq(or_join_ok) ; writeq(or_join_bad) ), nl,
  s(K-V, big(K, V)), s(K2-V2, tot(K2, V2)), s(K3-Mn-Mx, two(K3, Mn, Mx)), s(K4-V4, lst(K4, V4)),
  catch((conn(ams, sch, 3) -> writeq(y) ; writeq(n)), error(Er, _), writeq(caught(Er))), nl,
  length(As, 1000), maplist(=(0'a), As), findall(R, bas([0'b|As], R), Rs), length(Rs, NR), writeq(bas(NR)), nl,
  ( d(3000) -> writeq(deep_yes) ; writeq(deep_no) ), nl,
  abolish_all_tables, conn(ams, lei, N2), writeq(N2), nl,
  halt.
