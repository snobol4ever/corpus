%------------------------------------------ 1 rung14_retract_retract_nonexistent
main :-
    ( retract(ghost(x)) -> write(found) ; write(notfound) ), nl.
%------------------------------------------------ 2 rung14_retract_retract_unify
:- assertz(age(alice, 30)).
:- assertz(age(bob, 25)).

main :-
    retract(age(bob, X)),
    write(X), nl.
