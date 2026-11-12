:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
r(G) :- catch(G, E, true), nodebug, r2(G, E).
r2(G, E) :- var(E), !, \+ \+ ( numbervars(G, 0, _), writeq(G), write(' => true'), nl ).
r2(G, error(F, _)) :- !, \+ \+ ( numbervars(G-F, 0, _), writeq(G), write(' => '), writeq(error(F)), nl ).
r2(G, B) :- \+ \+ ( numbervars(G-B, 0, _), writeq(G), write(' => '), writeq(ball(B)), nl ).
d_foo(1).
d_foo(_, _).
d_bar(_, _).
dz(_, _, _).
dz.
dz(_, _).
dz(_).
qa(_).
qb(_).
qc(_).
main :- t(leash([exception, call])), t(debugging), t(leash(half)), r(spy(d_foo/0-3)), t(debugging), r(spy([d_foo/1, d_bar/2])), r(spy(nonesuch)), r(spy(nonesuch/1-2)),
  r(spy(d_bar/9)), r(nospy(d_bar)), r(nospy([d_foo/2, nonesuch/1])), t(debugging), r(spypoint_condition(nonesuch(_), call, true)), t(spypoint_condition(3, call, true)),
  t(spy(d_foo/(-1))), t(spy(3/1)), t(spy(_/1)), t(spy(d_foo/_)), t(spy(d_foo/_-2)), set_prolog_flag(unknown, fail), t(debugging), set_prolog_flag(unknown, warning), t(debugging),
  set_prolog_flag(unknown, error), r(nospyall), r(nospyall), t(debugging), r(debug), r(notrace), t(leash(_)), t(leash([call|bogus])),
  r(spy(dz)), r(spy([qc/1, qa/1, qb/1])), t(debugging), r(spy(dz/1-2)).
