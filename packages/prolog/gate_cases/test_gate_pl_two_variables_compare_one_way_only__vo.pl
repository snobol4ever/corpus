:- initialization(main).
tot(A, B, T) :- ( A @< B -> X = lt ; X = ge ), ( B @< A -> Y = lt ; Y = ge ), ( X \== Y -> T = total ; T = both(X) ).
anti(O1, O2, R) :- ( O1 == (<), O2 == (>) -> R = antisymmetric ; O1 == (>), O2 == (<) -> R = antisymmetric ; R = same_both_ways ).
main :- A = f(_), B = f(_), tot(A, B, T1), write(T1), nl,
        C = g(_, _), C = g(P, Q), tot(C, g(Q, P), T2), write(T2), nl,
        D = h(_), compare(O1, D, h(_)), E = h(_), compare(O2, h(_), E), anti(O1, O2, R), write(R), nl,
        findall(W, bagof(t, (U = W ; V = W ; Z = W), _), Ws), length(Ws, N), write(N), nl,
        L = [_, _, _], sort(L, SL), length(SL, NL), write(NL), nl.
