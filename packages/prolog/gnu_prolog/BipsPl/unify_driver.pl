% unify_driver.pl -- grades GNU Prolog's BipsPl/unify.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is unify.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% (=)/2 and (\=)/2 are operator heads; a goal whose left operand is a compound or an atom is written t((L = R)) -- the
% extra parentheses only group, the outer functor stays (=)/2. No goal builds a cyclic term: GNU permits the creation but
% not the unification or copy of one (manual, acyclic_term/1), and t/1 copies every answer.
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
    t(_ = a),
    t(X = X),
    t(_ = _),
    t((a = a)),
    t((a = b)),
    t(1 = 1),
    t(1 = 1.0),
    t((f(X, b) = f(a, Y))),
    t((f(X, Y, X) = f(Y, _, c))),
    t((f(a, b) = f(a, b, c))),
    t((f(a) = g(a))),
    t([X, b|T] = [a, Y, c]),
    t((g(X, h(X)) = g(k, Y))),
    t(unify_with_occurs_check(X, f(Y))),
    t(unify_with_occurs_check(f(X, b), f(a, Y))),
    t(unify_with_occurs_check(X, f(X))),
    t(unify_with_occurs_check(f(X, Y), f(Y, g(X)))),
    t(unify_with_occurs_check([X|T], [a, b, c])),
    t(unify_with_occurs_check(a, b)),
    t((a \= b)),
    t((a \= a)),
    t(_ \= a),
    t((f(X, b) \= f(a, c))),
    t((f(X, b) \= f(a, Y))),
    t(1 \= 1.0),
    t([X] \= [_, _]),
    true.
