:- module(m, [pub/1]).
:- initialization(main).
:- dynamic cnt/1.
pub(X) :- priv(X).
priv(1).
priv2(X, f(X)).
cm(M) :- context_module(M).
bump :- retract(cnt(N)), N1 is N + 1, assertz(cnt(N1)).
reflect :- clause(priv2(_, _), B), B == true.
main :- pub(X), writeq(X), nl, priv(Y), writeq(Y), nl, maplist(priv2, [a,b], L), writeq(L), nl,
        cm(M), writeq(M), nl, m:priv(Z), writeq(Z), nl, M2 = m, M2:priv(W), writeq(W), nl,
        assertz(cnt(0)), bump, bump, cnt(C), writeq(C), nl, findall(Q, priv(Q), Qs), writeq(Qs), nl,
        ( current_predicate(priv/1) -> writeq(cp_yes) ; writeq(cp_no) ), nl,
        G = cm(K), call(G), writeq(K), nl, ( reflect -> writeq(clause_yes) ; writeq(clause_no) ), nl,
        forall(member(V, [1]), priv(V)), writeq(forall_ok), nl, halt.
