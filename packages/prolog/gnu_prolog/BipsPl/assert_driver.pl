% assert_driver.pl -- grades GNU Prolog's BipsPl/assert.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is assert.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% The driver declares its own dynamic predicates (cnt/1, pr/2, emp/1) and one static one (sp/1) and drives asserta/1,
% assertz/1, retract/1, retractall/1, clause/2 and abolish/1 on them, with the documented errors: modifying a static
% procedure, clause/2 on a private procedure and on a control construct, and the type/domain/instantiation errors.
:- initialization(main).

:- dynamic(cnt/1).
:- dynamic(pr/2).
:- dynamic(emp/1).

sp(1).
sp(2).

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
    t(assertz(cnt(1))),
    t(assertz(cnt(2))),
    t(asserta(cnt(0))),
    t(clause(cnt(_), _)),
    t(assertz((pr(X, Y) :- cnt(X), Y is X * 10))),
    t(asserta(pr(a, b))),
    t(clause(pr(_, _), _)),
    t(assertz((pv(G) :- G))),
    t(clause(pv(_), _)),
    t(assertz((pw(W) :- (W = 1 ; W = 2), \+ W = 3))),
    t(clause(pw(_), _)),
    t(asserta(_)),
    t(asserta(3)),
    t(asserta((foo :- 4))),
    t(assertz((foo :- a, 4))),
    t(assertz(sp(3))),
    t(asserta((sp(9) :- true))),
    t(assertz(atom_length(a, 1))),
    t(assertz(((a, b) :- true))),
    t(retract(cnt(1))),
    t(clause(cnt(_), _)),
    t(retract(cnt(9))),
    t(retract(nosuch(_))),
    t((retract(cnt(N)), N1 is N + 10, assertz(cnt(N1)))),
    t(clause(cnt(_), _)),
    t(retract((pr(_, _) :- _))),
    t(retract((pv(_) :- _))),
    t(retract(_)),
    t(retract(4)),
    t(retract((pw(_) :- 3))),
    t(retract(sp(1))),
    t(retract(atom_length(_, _))),
    t(retractall(cnt(_))),
    t(clause(cnt(_), _)),
    t(retractall(fresh(_))),
    t(clause(fresh(_), _)),
    t(retractall(_)),
    t(retractall(3)),
    t(retractall(sp(_))),
    t(clause(emp(_), _)),
    t(clause(nosuch(_), _)),
    t(clause(pw(1), _)),
    t(clause(_, true)),
    t(clause(4, _)),
    t(clause(pw(_), 5)),
    t(clause(sp(_), _)),
    t(clause(atom_length(_, _), _)),
    t(clause((a, b), _)),
    t(clause(call(_), _)),
    t(abolish(pw/1)),
    t(clause(pw(_), _)),
    t(abolish(nosuch/2)),
    t(abolish(_)),
    t(abolish(foo/_)),
    t(abolish(foo)),
    t(abolish(foo/a)),
    t(abolish(3/1)),
    t(abolish(foo/(-1))),
    t(abolish(sp/1)),
    t(abolish(atom_length/2)),
    true.
