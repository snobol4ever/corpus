% catch_driver.pl -- grades GNU Prolog's BipsPl/catch.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is catch.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% catch.pl defines only $-internals ('$catch'/6, '$catch_internal'/4, '$catch_a_throw'/5 ...): catch/3 compiles to them,
% so this driver drives catch/3. A caught built-in error is re-thrown as caught(Formal) so no context term prints.
% IMPLEMENTS: catch/3
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
    t(catch(true, _, true)),
    t(catch(fail, _, true)),
    t(catch(member(X, [a,b,c]), _, true)),
    t(catch(throw(oops), oops, true)),
    t(catch(throw(oops), _Ball, true)),
    t(catch(throw(oops), other, true)),
    t(catch(throw(f(X, b)), f(a, Y), true)),
    t(catch(throw(g(Z, Z)), g(1, _), true)),
    t(catch((X = 1, throw(e)), e, true)),
    t(catch(throw(a), a, X = recovered)),
    t(catch(throw(a), a, fail)),
    t(catch(throw(a), a, throw(b))),
    t(catch(catch(throw(inner), outer, true), inner, X = outer_caught)),
    t(catch(catch(throw(inner), inner, X = inner_caught), inner, X = outer_caught)),
    t(catch(catch(throw(a), X, throw(re(X))), re(Y), true)),
    t(catch(catch(throw(a), b, true), c, true)),
    t(catch((member(X, [1,2,3]), !), _, true)),
    t(catch(throw(a), a, (member(X, [p,q,r]), !))),
    t(catch(throw(a), a, member(X, [p,q]))),
    t(catch((member(X, [1,2,3]), X >= 2, (X =:= 3 -> throw(three) ; true)), three, true)),
    t(catch(throw(_), error(Err, _), throw(caught(Err)))),
    t(catch(atom_length(_, _), error(Err, _), throw(caught(Err)))),
    t(catch(atom_length(1, _), error(Err, _), throw(caught(Err)))),
    t(catch(foo_undefined_gnu_drv, error(existence_error(K, PI), _), throw(caught(K, PI)))),
    t(catch(foo_undefined_gnu_drv, no_match, true)),
    t(catch(throw(error(type_error(integer, x), my_ctx)), error(type_error(_, _), _), true)),
    t(catch(_, foo, true)),
    t(catch(4, foo, true)),
    t(catch(throw(a), a, _)),
    t(catch(throw(a), a, 5)),
    true.
