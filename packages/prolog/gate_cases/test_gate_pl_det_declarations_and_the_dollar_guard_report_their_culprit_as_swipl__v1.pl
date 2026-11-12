:- use_module(library(lists)).
:- initialization(main).
:- det((p1/1, np/1, q/0)).
p1(1).
p1(2).
p1(2).
np(X) :- np1(X).
np1(X) :- np2(X).
np2(1).
np2(2).
q.
q.
nd(X) :- nd2(X).
nd2(X) :- nd3(X).
nd3(1).
nd3(2).
nd3(2).
ga(X) :- $, nd3(X).
gb(X) :- $, true, nd3(X).
gc(X) :- $, nd3(X), true.

ge(X) :- $, nd(X).
gcall :- $, call(nd3(_)).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, C), R = err(E, C)), \+ \+ ( numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl ).
main :- t(p1_det, p1(1)), t(p1_nondet, p1(2)), t(p1_fail, p1(3)), t(np_nondet, np(_)), t(np_fail, np(3)), t(np_det, np(1)), t(q, q),
    t(ga, ga(2)), t(ga_fail, ga(3)), t(gb, gb(2)), t(gc, gc(2)), t(ge, ge(2)), t(ge_fail, ge(3)), t(ge_det, ge(1)), t(gcall, gcall),
    set_prolog_flag(debug, true),
    t(dbg_np, np(_)), t(dbg_ge, ge(2)), t(dbg_p1, p1(2)).
