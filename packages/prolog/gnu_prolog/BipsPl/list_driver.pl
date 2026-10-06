% list_driver.pl -- grades GNU Prolog's BipsPl/list.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is list.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
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
    t(append([a,b], [c,d], _)),
    t(append(_, _, [1,2,3])),
    t(append(foo, [], _)),
    t(member(_, [x,y,z])),
    t(member(b, [a,b,c,b])),
    t(memberchk(b, [a,b,c,b])),
    t(memberchk(_, [])),
    t(reverse([1,2,3], _)),
    t(delete([a,b,a,c], a, _)),
    t(select(_, [p,q,r], _)),
    t(select(q, _, [p,r])),
    t(subtract([1,2,3,4], [2,4], _)),
    t(permutation([1,2,3], _)),
    t(prefix(_, [a,b,c])),
    t(suffix(_, [a,b,c])),
    t(sublist(_, [a,b,c])),
    t(last([1,2,3], _)),
    t(last([], _)),
    t(length([a,b,c], _)),
    t(length(_, 2)),
    t(length(_, -1)),
    t(length(a, _)),
    t(nth(2, [a,b,c], _)),
    t(nth0(_, [a,b,c], _)),
    t(nth1(_, [a,b,c], c)),
    t(max_list([3,1,4,1,5], _)),
    t(min_list([3,1,4,1,5], _)),
    t(sum_list([1,2,3.5], _)),
    t(max_list([], _)),
    t(flatten([a,[b,[c,d],[]],e], _)),
    t(maplist(atom, [a,b])),
    t(maplist(=(z), [_,_])),
    t(maplist(succ, [1,2,3], _)),
    t(maplist(succ, _, [2,3])),
    t(maplist(_, [a])),
    true.
