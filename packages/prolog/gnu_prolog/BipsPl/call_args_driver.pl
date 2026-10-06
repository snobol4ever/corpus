% call_args_driver.pl -- grades GNU Prolog's BipsPl/call_args.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is call_args.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
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
    t(call(atom_length(abc), _)),
    t(call(member(_), [a,b])),
    t(call(=(f(X)), f(a))),
    t(call(_, a)),
    t(call(3, a)),
    t(call(atom_length, abc, _)),
    t(call(member, X, [p,q])),
    t(call(atom_concat, X, Y, ab)),
    t(call(atom_concat(ab), cd, _)),
    t(call(sub_atom(abcd), B, 2, 0, S)),
    t(call(sub_atom, abc, B, 1, A, S)),
    t(call(call, call, call, call, =, X, a7)),
    t(call(call, call, call, call, call, =, X, a8)),
    t(call(call, call, call, call, call, call, =, X, a9)),
    t(call(call, call, call, call, call, call, call, =, X, a10)),
    t(call(call, call, call, call, call, call, call, call, =, X, a11)),
    t(call(call, call, call, call, call, call, call, call, call, fail, x)),
    t(call(call, call, call, call, call, call, call, call, call, _, x)),
    t(call_with_args(true)),
    t(call_with_args(fail)),
    t(call_with_args(atom, a)),
    t(call_with_args(atom_length, abc, _)),
    t(call_with_args(member, X, [a,b])),
    t(call_with_args(atom_concat, X, Y, ab)),
    t(call_with_args(call, call, =, X, w5)),
    t(call_with_args(sub_atom, abc, B, 1, A, S)),
    t(call_with_args(call, call, call, call, =, X, w7)),
    t(call_with_args(call, call, call, call, call, =, X, w8)),
    t(call_with_args(call, call, call, call, call, call, call, =, X, w10)),
    t(call_with_args(call, call, call, call, call, call, call, call, =, X, w11)),
    t(call_with_args(_, a)),
    t(call_with_args(foo(a), b)),
    t(call_with_args(1, b)),
    true.
