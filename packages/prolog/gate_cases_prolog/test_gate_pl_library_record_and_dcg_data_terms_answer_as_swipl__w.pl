:- use_module(library(record)).
:- record foo(x:integer).
:- record bar(x:foo).
:- record zot(x).
:- record point(x:integer=0, y:integer=0).
:- prolog_load_context(module, M), writeq(load_module-M), nl.
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
d1(C) --> { C = (RF=[H|RF1]), H = h, RF1 = [] }.
d2(C) --> { C = (a ; x, RF=[H|RF1], f(RF, H, RF1)) }.
d3(f(X=Y)) --> [X], { Y = 2 }.
main :- t(dcg_data_eq, (phrase(d1(C1), []), C1 = (_ = [h]))), t(dcg_data_eq_in_or, (phrase(d2(C2), []), C2 = (a ; x, R = [Hd|T], f(R0, H0, T0)), R == R0, Hd == H0, T == T0)),
    t(dcg_head_eq, (phrase(d3(T3), [1]), T3 == f(1=2))),
    t(make, (make_foo([x(10)], F), F == foo(10))), t(make_typed_record_field, (make_foo([x(10)], F2), make_bar([x(F2)], B), is_bar(B))),
    t(default, (default_foo(D), D = foo(V), var(V))), t(is_unbound_field, (default_foo(D2), is_foo(D2))), t(untyped, (make_zot([], Z), Z = zot(V2), var(V2), is_zot(Z))),
    t(access, (make_point([y(2), x(1)], P), point_x(P, X), point_y(P, Y), X-Y == 1-2)), t(defaults, (make_point([y(2)], P2), P2 == point(0,2))),
    t(type_error, make_point([x(1), y(foo)], _)), t(inst_error, make_point([x(1), y(_)], _)), t(unknown_field, make_point([x(1), z(3)], _)),
    t(rest, (make_point([z(123), y(0), y(10), x(1)], P3, Rest), P3-Rest == point(1,10)-[z(123)])),
    t(set, (set_x_of_point(5, point(1,2), P4), P4 == point(5,2))), t(setarg, (P5 = point(1,2), set_y_of_point(7, P5), P5 == point(1,7))),
    t(data, findall(N-Vv, point_data(N, point(3,4), Vv), [x-3, y-4])), t(current_record, (current_record(point, Mm:Tt), Mm:Tt == user:point(x:integer=0,y:integer=0))),
    t(strip_plain, (strip_module(foo, M1, P1), M1-P1 == user-foo)), t(strip_nested, (strip_module(a:b:c, M2, Pp2), M2-Pp2 == b-c)),
    t(strip_var_module, (strip_module(Q:f, M3, P6), M3 == user, P6 == Q:f)).
