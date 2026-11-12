:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(R, 0, _), writeq(R), nl ).
main :- t(expand_term((a --> [x], b), _)), t(expand_term((a --> b, {c}, [d]), _)), t(expand_term((a, [p] --> b), _)), t(expand_term((a --> \+ b), _)),
  t(expand_term((a --> b ; []), _)), t(expand_term((a --> [x], !, [y]), _)), t(expand_term((a --> 3), _)), t(expand_term((a, q --> b), _)),
  t(phrase(3, [a])), t(phrase(([a], [b]), [a, b, c], _)), t(phrase((\+ [b], [a]), [a], [])).
