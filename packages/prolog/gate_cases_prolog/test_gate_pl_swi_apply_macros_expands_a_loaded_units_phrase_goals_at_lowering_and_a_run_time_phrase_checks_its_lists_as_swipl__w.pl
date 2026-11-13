:- use_module(library(lists)).
:- use_module(library(apply_macros), []).
show(T) :- \+ \+ ( numbervars(T, 0, _), write_term(T, [numbervars(true), quoted(true), ignore_ops(true)]), nl ).
x(L, G) :- t(L, ( G, show(G) )).
t(L, G) :- catch(( call(G) -> R = ok ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(L), write(': '), print(R), nl.
:- initialization(main).
foo([x|T], T).
s_list :- phrase([], a).
s_nt_bad :- phrase(foo, a).
s_nt_ok :- phrase(foo, [x]).
s_str :- phrase("ab", [a,b]).
s_terms :- phrase([a,b], [a,b]).
s_terms_bad :- phrase([a,b], c).
s_conj_bad :- phrase((foo, foo), a).
s_conj_ok :- phrase((foo, [y]), [x,y]).
s_alt_bad :- phrase(([x] ; [y]), a).
s_alt_ok :- phrase(([x] ; [y]), [y]).
s_ite_bad :- phrase(([x] -> [y] ; [z]), a).
s_curly_bad :- phrase({true}, a).
s_curly_ok :- phrase({true}, []).
s_cut_bad :- phrase(!, a).
s_conj3_rest_bad :- phrase((foo, foo), [x,x], b).
s_conj3_ok :- phrase((foo, foo), [x,x], R), R == [].
digits([D|T]) --> [D], { code_type(D, digit) }, digits(T).
digits([]) --> [].
main :-
    t(eg_nt, ( expand_goal(phrase(a, L1), G1), show(G1) )),
    t(eg_nt3, ( expand_goal(phrase(a, L2, R2), G2), show(G2) )),
    t(eg_args, ( expand_goal(phrase(spec(_, []), S3), G3), show(G3) )),
    t(eg_var_nt, ( expand_goal(phrase(V4, V4), G4), show(G4) )),
    t(eg_var_nt3, ( expand_goal(phrase(V5, V5, V5), G5), show(G5) )),
    t(eg_plain_goal, ( expand_goal(quoniam, G6), show(G6) )),
    t(eg_nil, ( expand_goal(phrase([], L7), G7), show(G7) )),
    t(eg_list, ( expand_goal(phrase([a,b], L8, R8), G8), show(G8) )),
    t(eg_string, ( expand_goal(phrase("ab", L9, R9), G9), show(G9) )),
    t(eg_partial, ( expand_goal(phrase([a|T10], L10), G10), show(G10) )),
    t(eg_conj, ( expand_goal(phrase((a, b), L11), G11), show(G11) )),
    t(eg_alt, ( expand_goal(phrase((a ; b), L12), G12), show(G12) )),
    t(eg_curly, ( expand_goal(phrase({x}, L13), G13), show(G13) )),
    t(eg_qualified, ( expand_goal(phrase(m:foo, L14), G14), show(G14) )),
    t(eg_inside_conj, ( expand_goal((phrase(a, L15), true), G15), show(G15) )),
    t(eg_inside_findall, ( expand_goal(findall(X16, phrase(a, X16), _), G16), show(G16) )),
    t(et_clause, ( expand_term((p17 :- phrase(b, [1])), R17), show(R17) )),
    t(et_clause2, ( expand_term((alleq(Xs1) :- phrase(spec(Xs2, []), Xs1), alleq(Xs2)), R18), show(R18) )),
    t(et_control_clause, ( expand_term((p19(X19) :- phrase((a, b), X19)), R19), show(R19) )),
    t(s_list, s_list), t(s_nt_bad, s_nt_bad), t(s_nt_ok, s_nt_ok), t(s_str, s_str), t(s_terms, s_terms), t(s_terms_bad, s_terms_bad),
    t(s_conj_bad, s_conj_bad), t(s_conj_ok, s_conj_ok), t(s_alt_bad, s_alt_bad), t(s_alt_ok, s_alt_ok), t(s_ite_bad, s_ite_bad),
    t(s_curly_bad, s_curly_bad), t(s_curly_ok, s_curly_ok), t(s_cut_bad, s_cut_bad), t(s_conj3_rest_bad, s_conj3_rest_bad), t(s_conj3_ok, s_conj3_ok),
    t(dyn_list, ( G = phrase([],a), call(G) )),
    t(dyn_list3, ( G3 = phrase([],a,[]), call(G3) )),
    t(dyn_partial, ( G2 = phrase([], [a|b]), call(G2) )),
    t(dyn_rest, ( G4 = phrase([], [], a), call(G4) )),
    t(dyn_rest_partial, ( G5 = phrase([], [], [a|b]), call(G5) )),
    t(dyn_var, ( G6 = phrase([], _), call(G6) )),
    t(dyn_string, ( G7 = phrase([], "abc"), call(G7) )),
    t(dyn_nt, ( G8 = phrase(foo, a), call(G8) )),
    t(dyn_nt_ok, ( G9 = phrase(foo, [x]), call(G9) )),
    t(dyn_nt_rest_bad, ( G10 = phrase(foo, [x], b), call(G10) )),
    t(dyn_control, ( G11 = phrase((foo, foo), a), call(G11) )),
    t(dyn_control_ok, ( G12 = phrase(([x]; [y]), [y]), call(G12) )),
    t(dyn_digits, ( G13 = phrase(digits(Ds), `12`), call(G13), Ds == `12` )),
    t(dyn_built, ( Name = phrase, G14 =.. [Name, [], a], call(G14) )),
    t(dyn_findall, ( G15 = phrase([], a), findall(x, G15, _) )),
    t(dyn_once, ( G16 = phrase([], a), once(G16) )),
    t(dyn_unbound_rule, ( G17 = phrase(_, a), call(G17) )),
    t(dyn_unbound_rule_ok, ( G18 = phrase(_, []), call(G18) )),
    t(dyn_noncallable, ( G19 = phrase(27, []), call(G19) )),
    halt.
