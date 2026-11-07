:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    t(countall(_, _)), t(countall(1, _)), t(countall(true, a)), t(countall(true, -1)), t(countall(true, 1.0)),
    t(countall(fail, _)), t(countall(member(_, [a, b, c]), _)), t(countall(true, 0)), t(countall(true, 1)),
    t(countall((member(X, [1, 2, 3]), X > 1), _)), t(countall(countall(true, _), _)), t(countall((true ; true), 2)),
    t(countall(throw(ball), _)), t(countall(nosuch_pred_zz, _)),
    halt.
