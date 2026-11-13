:- use_module('m1.pl').
:- initialization(main).
s(L, G) :- ( catch(G, _, fail) -> R = yes ; R = no ), write(L), write(' '), write(R), nl.
main :-
    tirage(A), write(A), nl,
    assert('ia.pl':guess([0,1], [0,2])), tirage(B), write(B), nl, cnt(N1), write(N1), nl,
    assertz('ia.pl':guess([2,3], [1,1])), tirage(C), write(C), nl,
    asserta('ia.pl':guess([9,9], [9,9])), tirage(C2), write(C2), nl,
    retract('ia.pl':guess([9,9], _)), tirage(C3), write(C3), nl,
    retractall('ia.pl':guess(_, _)), tirage(D), write(D), nl,
    assert('ia.pl':guess([5], [6])), tirage(E), write(E), nl,
    assertz('ia.pl':(rr(X) :- X > 1)), s(rule_5, hasr(5)), s(rule_0, hasr(0)),
    halt.
