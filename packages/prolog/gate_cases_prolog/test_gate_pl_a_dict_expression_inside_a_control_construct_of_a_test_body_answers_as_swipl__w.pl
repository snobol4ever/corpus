:- use_module(library(plunit)).
dict(_{a:1}).
dict(_{a:3}).
:- begin_tests(dot_in_control).
test(bagof) :- bagof(A, M^(dict(M), A = M.a), As), writeq(bagof-As), nl.
test(setof) :- setof(A, M^(dict(M), A = M.a), S), writeq(setof-S), nl.
test(forall) :- forall(dict(M), (X = M.a, X > 0)), writeq(forall-ok), nl.
test(negation) :- \+ (dict(M), M.a > 5), writeq(negation-ok), nl.
test(ite) :- ( dict(M), M.a =:= 3 -> writeq(ite-found) ; writeq(ite-none) ), nl.
test(disj) :- findall(V, (dict(M), (M.a =:= 1 -> V = one ; V = M.a)), Vs), writeq(disj-Vs), nl.
:- end_tests(dot_in_control).
