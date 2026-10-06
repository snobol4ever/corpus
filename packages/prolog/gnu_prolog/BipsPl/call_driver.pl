% call_driver.pl -- grades GNU Prolog's BipsPl/call.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is call.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% NOT DRIVEN: call_nth/2 -- absent from the reference gprolog 1.4.5 (existence_error(procedure,call_nth/2)); the vendored call.pl is 1.6.0
% NOT DRIVEN: countall/2 -- absent from the reference gprolog 1.4.5 (existence_error(procedure,countall/2)); the vendored call.pl is 1.6.0
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% o(G): for a goal whose effect is OUTPUT -- what it printed between < and >, then true, fail or the formal error term.
o(G) :- write('<'),
        catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write('> '), writeq(R), nl.

main :-
    t(once(member(_, [a,b,c]))),
    t(once((member(X, [1,2,3]), X > 1))),
    t(once(fail)),
    t(once(_)),
    t(once(3)),
    t(\+ member(d, [a,b])),
    t(\+ member(a, [a,b])),
    t(\+ \+ _ = a),
    t(\+ _),
    t(\+ 7),
    t(call_det(true, _)),
    t(call_det(fail, _)),
    t(call_det((X = 1 ; X = 2), _)),
    t(call_det(true, false)),
    t(call_det(true, foo)),
    t(call_det(_, _)),
    t(false),
    t(forall(member(X, [1,2,3]), X > 0)),
    t(forall(member(X, [1,-2,3]), X > 0)),
    t(forall(fail, fail)),
    t(forall(_, true)),
    t(forall(member(_, [a]), 5)),
    true.
