:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    t(_ is inc(3)), t(_ is dec(3)), t(_ is inc(2.5)), t(_ is dec(-7)), t(_ is inc(dec(inc(10)))), t(_ is dec(0)),
    t(_ is inc(a)), t(_ is inc(_)), t(_ is dec(1, 2)), t(_ is inc(2 + 3) * 2), t(inc(3) =:= 4), t(dec(3) < 3),
    findall(P, evaluable_property(inc(_), P), L1), writeq(L1), nl,
    findall(P, evaluable_property(dec(_), P), L2), writeq(L2), nl,
    halt.
