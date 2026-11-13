:- use_module(library(lists)).
sz(M, S) :- module_property(M, program_size(S)).
c(N, G) :- ( catch(G, E, (( E = error(F, _) -> true ; F = E ), format("~w: error ~q~n", [N, F]), fail)) -> format("~w: yes~n", [N]) ; format("~w: no~n", [N]) ).
t_too_low :- set_module(user:program_space(1000)).
t_retract :- set_module(psl:program_space(0)), dynamic(psl:test/0), sz(psl, S0), assertz(psl:test), retract(psl:test), sz(psl, S), S == S0.
t_abolish :- set_module(psl:program_space(0)), sz(psl, S0), assertz(psl:test), abolish(psl:test/0), sz(psl, S), S == S0.
t_assert :- set_module(psl:program_space(1000)), module_property(psl, program_space(Sp)), Sp == 1000, assertz(psl:test).
t_overflow :- abolish(psl:test/0), set_module(psl:program_space(1000)), forall(between(1, 100, X), assertz(psl:test(X))).
t_repeat :- abolish(psl:test/1), set_module(psl:program_space(100000)), sz(psl, S0), forall(between(1, 100, _), (forall(between(1, 100, X), assertz(psl:test(X))), retractall(psl:test(_)), sz(psl, S), S0 == S)).
t_called :- assertz(qm:t2(1)), qm:t2(1), \+ qm:t2(2).
t_user_untouched :- sz(user, S0), assertz(qm:t3(1)), sz(user, S), S == S0.
t_user_assert :- assertz(user:t9(1)), t9(1).
t_inner_module :- assertz(qm:qm2:t7(1)), qm2:t7(1).
t_asserta_order :- assertz(qm:t8(2)), asserta(qm:t8(1)), findall(X, qm:t8(X), L), L == [1, 2].
t_rule :- assertz((qm:t15(X) :- X > 1)), qm:t15(2), \+ qm:t15(0).
t_retract_binds :- assertz(qm:t14(a, b)), retract(qm:t14(X, Y)), X == a, Y == b.
t_meta_assertz :- G = assertz(qm:t6(1)), call(G), qm:t6(1).
t_meta_dynamic :- G = dynamic(qm:t10/1), call(G), \+ qm:t10(_).
t_meta_retract :- assertz(qm:t11(1)), G = retract(qm:t11(X)), call(G), X == 1, \+ qm:t11(_).
t_meta_retractall :- assertz(qm:t12(1)), G = retractall(qm:t12(_)), call(G), \+ qm:t12(_).
t_meta_abolish :- assertz(qm:t13(1)), G = abolish(qm:t13/1), call(G), \+ catch(qm:t13(_), _, fail).
t_var_module :- M = qm, assertz(M:t16(1)), M:t16(1).
t_ground_assertz :- set_module(gfz:program_space(1000)), forall(between(1, 200, _), assertz(gfz:g(1))).
t_ground_asserta :- set_module(gfa:program_space(1000)), forall(between(1, 200, _), asserta(gfa:g(1))).
t_ground_rule :- set_module(gfr:program_space(1000)), forall(between(1, 200, _), assertz((gfr:g(1) :- true))).
t_ground_meta :- set_module(gfk:program_space(1000)), G = assertz(gfk:g(1)), forall(between(1, 200, _), call(G)).
t_ground_other_limit :- set_module(gfo:program_space(1000000)), forall(between(1, 200, _), assertz(gfq:g(1))), gfq:g(1).
t_ground_under_limit :- set_module(gfu:program_space(1000000)), forall(between(1, 200, _), assertz(gfu:g(1))), gfu:g(1).
t_ground_user :- sz(user, S0), N is S0 + 1000, set_module(user:program_space(N)), forall(between(1, 200, _), assertz(ugf(1))).
:- initialization((c(too_low, t_too_low), c(retract, t_retract), c(abolish, t_abolish), c(assert, t_assert), c(overflow, t_overflow), c(repeat, t_repeat),
   c(called, t_called), c(user_untouched, t_user_untouched), c(user_assert, t_user_assert), c(inner_module, t_inner_module), c(asserta_order, t_asserta_order),
   c(rule, t_rule), c(retract_binds, t_retract_binds), c(meta_assertz, t_meta_assertz), c(meta_dynamic, t_meta_dynamic), c(meta_retract, t_meta_retract),
   c(meta_retractall, t_meta_retractall), c(meta_abolish, t_meta_abolish), c(var_module, t_var_module),
   c(ground_assertz, t_ground_assertz), c(ground_asserta, t_ground_asserta), c(ground_rule, t_ground_rule), c(ground_meta, t_ground_meta),
   c(ground_other_limit, t_ground_other_limit), c(ground_under_limit, t_ground_under_limit), c(ground_user, t_ground_user))).
