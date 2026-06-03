% rung42_floatunify — unify variables against float literals (both operand orders)
% Expected output: 3.14 2.5
:- initialization(main).
main :-
    X = 3.14,
    2.5 = Y,
    write(X), write(' '), write(Y), nl.
