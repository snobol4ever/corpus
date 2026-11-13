:- dynamic t/2, u/1, w/2, e/1, nd/1, r2/1, big/2.
show(G) :- ( findall(G, G, L) -> \+ \+ ( numbervars(L, 0, _), write(L) ) ; write(none) ), nl.
:- assertz(t(1, a)), assertz(t(2, b)), asserta(t(0, z)), assertz(t(2, bb)).
:- show(t(_, _)).
:- show(t(2, _)).
:- show(t(_, b)).
:- show(t(7, _)).
:- setup_call_cleanup(true, t(1, _), ( write(det_cleanup_1), nl )).
:- setup_call_cleanup(true, t(2, _), ( write(det_cleanup_2), nl )), write(after_t2), nl, !.
:- setup_call_cleanup(true, t(0, _), ( write(det_cleanup_0), nl )).
:- assertz(u(g(1, 2))), assertz(u([a, b, c])), assertz(u(1.5)), assertz(u(-7)), assertz(u('A b')).
:- ( u(X), X = g(_, _), setarg(1, X, 99), write(changed(X)), nl, fail ; true ).
:- show(u(_)).
:- u(g(A, B)), write(A-B), nl.
:- show(u(g(1, _))).
:- show(u([a|_])).
:- show(u(-7)).
:- show(u(1.5)).
:- show(u(2.5)).
:- forall(t(K, _), assertz(t(K, new))).
:- show(t(2, _)).
:- forall(retract(t(2, V)), ( write(r(V)), nl )).
:- show(t(_, _)).
:- assertz(w(1, a)), assertz(w(2, b)).
:- assertz(w(_, anyv)).
:- show(w(1, _)).
:- show(w(3, _)).
:- show(w(_, _)).
:- assertz(e(1)), assertz(e(2)), assertz(e(3)).
:- forall(e(X), ( X == 2 -> assertz(( e(Y) :- Y = rule )) ; true )).
:- show(e(_)).
:- show(e(rule)).
:- show(e(2)).
:- assertz(r2(1)), assertz(r2(2)), retract(r2(1)), retract(r2(2)).
:- assertz(( r2(Z) :- Z = fromrule )).
:- show(r2(_)).
:- assertz(nd(1)), retractall(nd(_)), assertz(nd(2)), assertz(nd(3)), show(nd(_)).
:- show(nd(3)).
:- retractall(nd(2)), show(nd(_)).
:- forall(between(1, 30, I), ( J is I * I, assertz(big(I, J)) )).
:- show(big(30, _)).
:- show(big(_, 100)).
:- retract(big(30, _)), show(big(30, _)).
:- assertz(big(31, 961)), show(big(31, _)).
:- clause(big(5, X), B), write(X-B), nl.
:- aggregate_all(count, big(_, _), N), write(N), nl.
:- dynamic fa/1, fb/2, fc/1.
:- assertz(fa(1)), assertz(fa(2)), assertz(fa(3)).
:- ( freeze(X, ( write(woke(X)), nl )), fa(X), write(got(X)), nl, fail ; true ).
:- dif(X, 2), findall(X, fa(X), L), write(L), nl.
:- freeze(X, X > 1), findall(X, fa(X), L), write(L), nl.
:- assertz(fb(a, 1)), assertz(fb(b, 2)), assertz(fb(a, 3)).
:- catch(( fb(a, X), X > 2, write(x(X)), nl ), E, ( write(E), nl )).
:- forall(fb(K, V), ( write(K-V), nl )).
:- findall(K-V, ( fb(K, V), V > 1 ), L), write(L), nl.
:- bagof(V, fb(a, V), L), write(L), nl.
:- aggregate_all(count, fb(a, _), C), write(C), nl.
:- aggregate_all(sum(V), fb(_, V), S), write(S), nl.
:- setof(K, V^fb(K, V), L), write(L), nl.
:- ( \+ fb(c, _) -> write(no_c) ; write(c) ), nl.
:- ( fb(a, 3) -> write(yes) ; write(no) ), nl.
:- call(fb, b, W), write(w(W)), nl.
:- G = fb(a, Z), call(G), write(z(Z)), nl.
:- retract(fb(a, 1)), findall(V, fb(a, V), L), write(L), nl.
:- assertz(fc(f(X, Y))), write(unreachable), nl ; write(nonground_ok), nl.
:- fc(Q), write(Q), nl.
:- forall(between(1, 5, I), assertz(fb(k, I))), findall(V, fb(k, V), L), write(L), nl.
:- fb(k, 3), !, write(cut_ok), nl.
:- once(fb(k, V)), write(once(V)), nl.
:- \+ \+ ( fb(k, 4), write(inner), nl ).
:- length(L, 2), L = [fb(k, 5), fb(k, 1)], maplist(call, L), write(ok_maplist), nl.
