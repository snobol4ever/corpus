:- module(w2, [main/0]).
:- multifile user:term_expansion/2, user:goal_expansion/2.
:- dynamic user:term_expansion/2, user:goal_expansion/2.
:- discontiguous goal_expansion/2.
term_expansion(make_dcg, (a --> "")).
goal_expansion(g_b, g_c).
make_dcg.
g_c.
e_not :- not(g_b).
goal_expansion(foo, bar).
:- meta_predicate run(0).
test_foo_bar :- run(foo).
bar.
run(Goal) :- Goal.
goal_expansion(onetime(X), (X->true)).
one(X) :- ( onetime(X=1) ; X = 2 ).
:- dynamic da/1, db/1, dc/1.
main :- ( e_not -> writeq(e_not-yes) ; writeq(e_not-no) ), nl,
    ( test_foo_bar -> writeq(foo-yes) ; writeq(foo-no) ), nl,
    findall(X, one(X), L), writeq(one-L), nl,
    ( clause(a(L0, L1), B), B == (L0=L1) -> writeq(dcg-yes) ; writeq(dcg-no) ), nl,
    assertz((da(X1) :- ((X1=1->true), true ; X1=2))), assertz((db(X2) :- ((X2=1;X2=3), true ; X2=2))), assertz((dc(X3) :- (X3=1, true ; X3=2))),
    findall(Y1, da(Y1), L1a), writeq(da-L1a), nl, findall(Y2, db(Y2), L2a), writeq(db-L2a), nl, findall(Y3, dc(Y3), L3a), writeq(dc-L3a), nl.
:- initialization(main).
