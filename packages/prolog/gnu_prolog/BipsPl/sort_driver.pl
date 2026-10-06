% sort_driver.pl -- grades GNU Prolog's BipsPl/sort.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is sort.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% sort/1, msort/1 and keysort/1 sort in place, destroying the original list (manual 8.20.15: the assignment is not undone at
% backtracking). Each is called on a list built at run time inside the goal (by atom_chars/2, or holding a variable), so the
% list is fresh and no other term shares it; the solution prints the list after the call. No printed variable is bound to a
% list cell the sort rewrites.
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
    t(sort([c, a, b, a], _)),
    t(sort([], _)),
    t(sort([b, 1, f(x), 2.0, a, g(a, b), f(a), 1.0, 'B'], _)),
    t(sort([c, a], [a, c])),
    t(sort([c, a], [c, a])),
    t(sort(_, _)),
    t(sort([a|_], _)),
    t(sort([a|b], _)),
    t(sort([a], foo)),
    t(msort([c, a, b, a], _)),
    t(msort([2, 1.0, 1, 2], _)),
    t(msort([b, a], [b, a])),
    t(msort(foo, _)),
    t(keysort([b-1, a-2, b-0, a-1], _)),
    t(keysort([], _)),
    t(keysort([k-v], [_])),
    t(keysort([x-1, y-2], [y-2, x-1])),
    t(keysort([a-1, x], _)),
    t(keysort([a-1, _], _)),
    t(keysort([a-1], [x])),
    t((atom_chars(cbab, L), sort(L))),
    t((atom_chars(z, L), sort(L))),
    t(sort(_)),
    t(sort(foo)),
    t((atom_chars(baca, L), msort(L))),
    t(msort([a|_])),
    t((L = [X-1, a-2, X-3, b-4], X = c, keysort(L))),
    t(keysort([a-1, z])),
    true.
