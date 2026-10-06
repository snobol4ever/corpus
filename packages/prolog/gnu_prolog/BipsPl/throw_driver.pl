% throw_driver.pl -- grades GNU Prolog's BipsPl/throw.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is throw.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% throw.pl defines only $-internals ('$throw'/4, '$throw_internal'/2, '$unwind'/1): throw/1 compiles to them, so this
% driver drives throw/1; t/1's own catch/3 is the catcher, and the ball it prints is the copy throw/1 unwound with.
% IMPLEMENTS: throw/1
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
    t(throw(oops)),
    t(throw(42)),
    t(throw(-1.5)),
    t(throw([a,b|_])),
    t(throw(f(_, b, 2.5, 'Q', [x|y]))),
    t(throw(g(X, X, _))),
    t(throw('hello world')),
    t(throw(error(type_error(integer, x), my_ctx))),
    t(throw(error(instantiation_error, _))),
    t(throw(error(foo, bar))),
    t(throw(h(i(j(k(l(m(n))))), [_, _], {curly}))),
    t(throw(_)),
    true.
