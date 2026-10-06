% control_driver.pl -- grades GNU Prolog's BipsPl/control.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is control.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% NOT DRIVEN: halt/0 -- ends the process, so no later line could print
% NOT DRIVEN: halt/1 -- ends the process with the given status, so no later line could print
% NOT DRIVEN: abort/0 -- with no top level it halts the process (Pl_Halt_If_No_Top_Level_1(1))
% NOT DRIVEN: stop/0 -- with no top level it halts the process (Pl_Halt_If_No_Top_Level_1(0))
% repeat/0 is driven only under a cut that bounds it; the counter line retries it through ISO assertz/1 and retract/1.
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
    t((repeat, !)),
    t((repeat, between(1, 3, X), X >= 2, !)),
    t((repeat, (retract(gnu_drv_control_k(N)) -> true ; N = 0), N1 is N + 1, assertz(gnu_drv_control_k(N1)), N1 >= 3, !)),
    t(between(1, 3, _)),
    t(between(-2, 0, _)),
    t(between(3, 3, _)),
    t(between(3, 1, _)),
    t(between(1, 3, 2)),
    t(between(1, 3, 5)),
    t(between(_, 3, _)),
    t(between(1, _, _)),
    t(between(a, 3, _)),
    t(between(1, 3.0, _)),
    t(between(1, 3, x)),
    t(for(_, 1, 3)),
    t(for(2, 1, 3)),
    t(for(_, 5, 4)),
    t(for(x, 1, 2)),
    t(for(_, 1, _)),
    true.
