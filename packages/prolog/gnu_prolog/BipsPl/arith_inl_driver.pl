% arith_inl_driver.pl -- grades GNU Prolog's BipsPl/arith_inl.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is arith_inl.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% NOT DRIVEN: current_evaluable/1 -- absent from the grading oracle gprolog 1.4.5 (every call raises
%   existence_error(procedure,current_evaluable/1)); the vendored arith_inl.pl is GNU's 1999-2025 source, newer than the oracle
% NOT DRIVEN: evaluable_property/2 -- absent from gprolog 1.4.5 the same way (existence_error(procedure,evaluable_property/2))
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
    t(_ is 3 + 4 * 2),
    t(_ is 7 / 2),
    t(_ is 7 // 2 - 7 mod 2),
    t(_ is max(3, 2.0) + abs(-4)),
    t(3 is 1 + 2),
    t(4 is 1 + 2),
    t(_ is _ + 1),
    t(_ is 1 + foo),
    t(_ is 1 // 0),
    t(1 + 2 =:= 3),
    t(1 =:= 1.0),
    t(1 =:= 2),
    t(_ =:= 1),
    t(1 =\= 2),
    t(2 * 3 =\= 6),
    t(1 =\= 1 + bar),
    t(1 < 2),
    t(2.5 < 2),
    t(_ < 3),
    t(2 =< 2),
    t(3 =< 2),
    t(1 =< 0 / 0),
    t(3 > 2),
    t(2 > 2.0),
    t(1 > _),
    t(2 >= 2.0),
    t(1 >= 2),
    t(1 >= 2 + baz(1)),
    t(succ(3, _)),
    t(succ(_, 4)),
    t(succ(0, 1)),
    t(succ(_, 0)),
    t(succ(_, _)),
    t(succ(a, _)),
    t(succ(-1, _)),
    true.
