:- use_module(library(plunit)).
f(a, X) => X = 1.
f(b, X) => X = 2.
g(-K, X) => X = K.
h(Y, X), Y == z => X = zz.
h(_, X) => X = other.
:- meta_predicate pt(+, 0, ?).
pt(N, G, X) :- catch((G -> R = ok(X) ; R = no), error(E, C), R = err(E, C)), \+ \+ ( numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl ).
:- begin_tests(u).
k(a, X) => X = 1.
k(-N, X) => X = N.
m(Y, X), Y == z => X = zz.
m(_, X) => X = other.
test(a) :- pt(user_f, f(a, X1), X1), pt(user_f2, f(b, X2), X2), pt(user_g, g(-a, X3), X3), pt(user_h1, h(z, X4), X4), pt(user_h2, h(q, X5), X5),
           pt(user_nomatch, f(c, _), _), pt(user_unbound, f(_, _), _).
test(b) :- pt(unit_k, k(a, Y1), Y1), pt(unit_k2, k(-b, Y2), Y2), pt(unit_m1, m(z, Y3), Y3), pt(unit_m2, m(q, Y4), Y4), pt(unit_nomatch, k(c, _), _).
:- end_tests(u).
