:- module(tm, []).
:- use_module(library(plunit)).
f(a, X) => X = 1.
g(-K, X) => X = K.
h(Y, X), Y == z => X = zz.
h(_, X) => X = other.
:- meta_predicate pt(+, 0, ?).
pt(N, G, X) :- catch((G -> R = ok(X) ; R = no), error(E, C), R = err(E, C)), \+ \+ ( numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl ).
:- begin_tests(u).
test(a) :- pt(mod_f, f(a, X1), X1), pt(mod_g, g(-a, X2), X2), pt(mod_h1, h(z, X3), X3), pt(mod_h2, h(q, X4), X4), pt(mod_nomatch, f(b, _), _).
:- end_tests(u).
