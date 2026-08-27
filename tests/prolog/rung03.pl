%---------------------------------------------------------- 1 rung03_unify_unify
% rung03_unify — head unification, compound terms
% Expected output: b a
:- initialization(main).
main :-
    f(X, a) = f(b, Y),
    write(X), write(' '), write(Y), nl.
