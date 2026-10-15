% debugger_driver.pl -- grades GNU Prolog's BipsPl/debugger.pl through the built-ins it defines that set the debugger's state:
% leash/1, spy/1, nospy/1, nospyall/0, spypoint_condition/3, debugging/0, debug/0, notrace/0 and nodebug/0 (Lon via the ceo,
% CEO-1312 and CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is
% graded by its driver, NAME_driver beside it). gprolog's answer is debugger.pl's own code; SCRIP is graded three-way against it
% (m3 = m4 = gprolog). Each call prints what the debugger says on standard output, then every solution or the formal error term
% it raises. No spied predicate is ever called: that enters the interactive debugger, which reads its commands from the
% terminal. The debugger is switched off at the end.
% r(G): a call that may switch the debugger on runs here, and nodebug/0 follows it at once: with the debugger on, gprolog 1.6.0 raises
% existence_error(procedure, '$get_cut_level'/1) in the next consulted if-then-else (t/1's own), which cut the reference at its 20th line
% and left every case after spy(d_foo/1) without an answer. So debugging/0 always reports the debugger switched off.
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

% r(G): G once, then nodebug; true, or the formal error term G raised.
r(G) :- catch(G, E, true), nodebug, r2(G, E).
r2(G, E) :- var(E), !, \+ \+ ( numbervars(G, 0, _), writeq(G), write(' => true'), nl ).
r2(G, error(F, _)) :- !, \+ \+ ( numbervars(G-F, 0, _), writeq(G), write(' => '), writeq(error(F)), nl ).
r2(G, B) :- \+ \+ ( numbervars(G-B, 0, _), writeq(G), write(' => '), writeq(ball(B)), nl ).

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
    r(spy(d_foo/1)),
    r(spy(d_foo)),
    r(nospy(d_foo/1)),
    r(nospy(d_foo/1)),
    r(spy(nonesuch/3)),
    t(spy(_)),
    t(spy(foo/bar)),
    t(spy(42)),
    t(nospy(_)),
    r(spypoint_condition(d_foo(_), call, true)),
    t(spypoint_condition(_, call, true)),
    r(spypoint_condition(d_foo(_), bogus, true)),
    t(debugging),
    r(nospyall),
    t(debugging),
    r(debug),
    t(debugging),
    r(notrace),
    r(nodebug),
    t(debugging),
    true.
