main :- ( current_op(P, T, :) -> write(op(P, T)) ; write(none) ), nl, X = (a:b+c), write_canonical(X), nl, Y = (a:b:c), write_canonical(Y), nl.
:- initialization(main).
