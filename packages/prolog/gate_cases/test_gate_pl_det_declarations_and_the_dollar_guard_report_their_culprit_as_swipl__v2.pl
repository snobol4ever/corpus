:- use_module(library(plunit)).
:- begin_tests(u).
nd(X) :- nd2(X), garbage_collect.
nd2(X) :- nd3(X).
nd3(1).
nd3(2).
nd3(2).
end.
d(X) :- $nd(X), end.
d1 :- $nd3(X), u(X).
u(_).
pt(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), \+ \+ ( numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl ).
test(a) :- pt(goal_det, d(1)), pt(goal_nondet, d(2)), pt(goal_fail, d(3)), pt(goal_var, d1).
:- end_tests(u).
