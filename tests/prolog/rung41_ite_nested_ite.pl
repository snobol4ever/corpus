%------------------------------------------------------- 1 rung41_ite_nested_ite
% rung41_ite_nested — if-then-else nested in conjunction/disjunction + bare arrow
:- initialization(main).
a(1). a(2). a(3).
main :-
    ( ( a(X) -> true ; fail ), write(X), nl, fail ; true ),
    ( a(Y) -> write(Y) ; write(none) ), nl,
    ( fail -> write(t) ; write(e) ), nl,
    ( fail -> write(a) ; fail -> write(b) ; write(c) ), nl.
