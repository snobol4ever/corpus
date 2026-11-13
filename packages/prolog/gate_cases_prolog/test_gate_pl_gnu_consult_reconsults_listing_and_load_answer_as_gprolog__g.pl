:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
w(F, Ls) :- open(F, write, S), forall(member(L, Ls), (write(S, L), nl(S))), close(S).
main :- w('c1.pl', [':- dynamic(cq/1).', 'cq(1).', 'cq(X) :- X = two ; X = three.']), w('c2.pl', ['cs(N, M) :- M is N * N.']),
  t((consult(c1), consult('c1.pl'), cq(_))), t((consult([c1, 'c2.pl']), cs(3, _))), t(consult(c0)), t(consult([abc, 1])), t(consult([])),
  t(load(c0)), t(load('c0.wbc')), t(load(_)), t(load(3)),
  assertz(ld(1, foo)), listing(cq/1), listing(cs), listing(ld/2), t(listing(nosuch/1)), t(listing(3/1)), t(listing(foo/(-1))), t(listing(f(x))).
