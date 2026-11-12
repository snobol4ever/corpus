:- initialization(main).
main :- forall(member(G, [phrase(27, [], []), phrase(27, []), phrase(1.5, [], [])]), (catch((call(G) -> R = yes ; R = no), error(E, _), R = E), writeq(R), nl)), halt.
