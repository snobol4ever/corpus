:- initialization(main).
:- dynamic(fr/1).
:- dynamic(rl/2).
:- dynamic(pr/2).
t(L, G) :- ( catch(G, _, fail) -> R = yes ; R = no ), write(L), write(' '), write(R), nl.
run :-
    A is 1 rdiv 4, B is 1 rdiv 8, C is 2 rdiv 8, G is 10^30, H is G + 1, I is 10^30,
    assertz(fr(A)), assertz(fr(G)), assertz((rl(A, k) :- true)), assertz((rl(G, k) :- true)), assertz(pr(a, A)),
    t(rational_other, fr(B)), t(rational_same, fr(A)), t(rational_same_value_other_form, fr(C)), t(rational_vs_integer, fr(1)),
    t(bigint_plus_one, fr(H)), t(bigint_same_value, fr(I)), t(bigint_vs_integer, fr(5)),
    t(rule_rational_other, rl(B, _)), t(rule_rational_same, rl(A, _)), t(rule_bigint_other, rl(H, _)), t(rule_bigint_same, rl(I, _)),
    t(second_argument_rational_other, pr(a, B)), t(second_argument_rational_same, pr(a, A)),
    t(lookup_count_rational_other, (findall(X, fr(X), L), L = [_, _])).
main :- run, set_prolog_flag(occurs_check, true), write(occurs_check), nl, retractall(fr(_)), retractall(rl(_, _)), retractall(pr(_, _)), run, halt.
