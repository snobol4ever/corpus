% oper_driver.pl -- grades GNU Prolog's BipsPl/oper.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is oper.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% op/3 defines, redefines and removes operators of this driver's own (===>, ++, ^^, ~~) and current_op/3 reads them back,
% always with the operator name bound (and the type bound where a name holds two types, since the order in which a
% system enumerates a name's types is not specified); the whole table is never enumerated. The documented errors of both.
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
    t(current_op(_, _, ===>)),
    t(op(700, xfx, ===>)),
    t(current_op(_, _, ===>)),
    t(op(710, xfx, ===>)),
    t(current_op(_, xfx, ===>)),
    t(op(0, xfx, ===>)),
    t(current_op(_, _, ===>)),
    t(op(200, xfy, [++, ^^])),
    t(current_op(_, _, ++)),
    t(current_op(_, _, ^^)),
    t((op(200, xfy, ++), _ = '++'(a, '++'(b, c)))),
    t(op(900, fy, ~~)),
    t(op(900, xfx, ~~)),
    t(current_op(_, fy, ~~)),
    t(current_op(_, xfx, ~~)),
    t(current_op(_, xf, ~~)),
    t(op(200, xf, ===>)),
    t(op(200, xfx, ===>)),
    t(current_op(_, _, mod)),
    t(current_op(_, xfx, is)),
    t(current_op(_, fy, -)),
    t(current_op(_, yfx, -)),
    t(current_op(200, _, -)),
    t(current_op(_, _, nosuchop)),
    t(op(_, xfx, foo)),
    t(op(700, _, foo)),
    t(op(700, xfx, _)),
    t(op(1201, xfx, foo)),
    t(op(-1, xfx, foo)),
    t(op(a, xfx, foo)),
    t(op(700, yfy, foo)),
    t(op(700, 3, foo)),
    t(op(700, xfx, 3)),
    t(op(700, xfx, [a, 3])),
    t(op(700, xfx, ',')),
    t(op(700, xfx, '|')),
    t(op(700, xfx, {})),
    t(current_op(1201, _, _)),
    t(current_op(_, foo, _)),
    t(current_op(_, _, 3)),
    t(current_op(a, _, _)),
    true.
