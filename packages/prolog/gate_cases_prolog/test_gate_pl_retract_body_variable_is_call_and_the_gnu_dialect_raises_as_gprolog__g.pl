:- dynamic(pv/1).
:- dynamic(pw/1).
:- dynamic(ds/1).
sp(1).
sp(2).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true),
        (   var(E) -> R = L ;   E = error(F, _) -> R = error(F) ;   R = ball(E) ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
:- initialization(main).
main :- assertz((pv(G) :- G)), assertz((pw(W) :- (W = 1 ; W = 2), \+ W = 3)), assertz(ds(1)), assertz(ds(2)),
  t(retract((pv(_) :- _))),
  t(retract((pw(_) :- 3))),
  t(retract((ds(_) :- true))),
  t(clause(sp(_), _)),
  t(clause(ds(_), _)),
  t(retract(sp(1))).
