% debugger_driver.pl -- grades GNU Prolog's BipsPl/debugger.pl through the built-ins it defines that set the debugger's state:
% leash/1, spy/1, nospy/1, nospyall/0, spypoint_condition/3, debugging/0, debug/0, notrace/0 and nodebug/0 (Lon via the ceo,
% CEO-1312 and CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is
% graded by its driver, NAME_driver beside it). gprolog's answer is debugger.pl's own code; SCRIP is graded three-way against it
% (m3 = m4 = gprolog). Each call prints what the debugger says on standard output, then every solution or the formal error term
% it raises. No spied predicate is ever called: that enters the interactive debugger, which reads its commands from the
% terminal. The debugger is switched off at the end.
:- initialization(main).

d_foo(1).
d_foo(2).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

main :-
    t(leash(full)),
    t(leash(half)),
    t(leash(loose)),
    t(leash(tight)),
    t(leash(none)),
    t(leash([call, exit])),
    t(leash([])),
    t(leash(bogus)),
    t(leash([call, bogus])),
    t(leash(_)),
    t(spy(d_foo/1)),
    t(spy(d_foo)),
    t(nospy(d_foo/1)),
    t(nospy(d_foo/1)),
    t(spy(nonesuch/3)),
    t(spy(_)),
    t(spy(foo/bar)),
    t(spy(42)),
    t(nospy(_)),
    t(spypoint_condition(d_foo(_), call, true)),
    t(spypoint_condition(_, call, true)),
    t(spypoint_condition(d_foo(_), bogus, true)),
    t(debugging),
    t(nospyall),
    t(debugging),
    t(debug),
    t(debugging),
    t(notrace),
    t(nodebug),
    t(debugging),
    true.
