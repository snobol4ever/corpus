% all_solut_driver.pl -- grades GNU Prolog's BipsPl/all_solut.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is all_solut.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
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
    t(findall(X, member(X, [c,a,b,a]), _)),
    t(findall(X-Y, (member(X, [1,2]), member(Y, [a,b])), _)),
    t(findall(f(X, _), member(X, [p,q]), _)),
    t(findall(_, fail, _)),
    t(findall(X, member(X, [1,2,3]), [_|_])),
    t(findall(X, member(X, [1,2]), [_])),
    t(findall(_, _, _)),
    t(findall(_, 3, _)),
    t(findall(_, true, foo)),
    t(findall(X, member(X, [1,2]), _, [z])),
    t(findall(X, member(X, [1,2]), _, _)),
    t(findall(_, fail, _, [end])),
    t(findall(_, _, _, [])),
    t(bagof(X, member(X, [c,a,b,a]), _)),
    t(bagof(X, member(X-_, [1-a,2-b,3-a]), _)),
    t(bagof(X, Y^member(X-Y, [1-a,2-b,3-a]), _)),
    t(bagof(X-Z, member(X-Y-Z, [1-a-p,2-b-q,3-a-r]), _)),
    t(bagof(_, fail, _)),
    t(bagof(_, _, _)),
    t(bagof(_, 4, _)),
    t(bagof(_, true, foo)),
    t(setof(X, member(X, [c,a,b,a]), _)),
    t(setof(X, member(X-_, [2-a,1-b,3-a,2-a]), _)),
    t(setof(X, Y^member(X-Y, [2-a,1-b,3-a]), _)),
    t(setof(X-Y, member(X-Y, [2-a,1-b,2-a]), _)),
    t(setof(X, member(X, [f(b),1,a,2.0,_]), [_,_,_,_,_])),
    t(setof(_, member(_, []), _)),
    t(setof(_, _, _)),
    t(setof(_, true, foo)),
    true.
