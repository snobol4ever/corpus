% pred_driver.pl -- grades GNU Prolog's BipsPl/pred.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is pred.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% current_predicate/1 and predicate_property/2 are asked about predicates this driver defines (pd/1 dynamic with a clause,
% pe/2 dynamic with none, pm/1 multifile, ps/2 static) and about a few built-ins, always with a bound name and a bound
% property: current_predicate(-) and predicate_property(-, ?) enumerate the whole predicate table, whose order and contents
% differ by system, and prolog_file(F) is a path that depends on where the driver sits, so those modes are left out.
:- initialization(main).

:- dynamic(pd/1).
:- dynamic(pe/2).
:- multifile(pm/1).

pd(1).

pm(a).

ps(X, Y) :- Y is X + 1.

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
    t(current_predicate(pd/1)),
    t(current_predicate(pe/2)),
    t(current_predicate(ps/2)),
    t(current_predicate(ps/_)),
    t(current_predicate(pm/1)),
    t(current_predicate(ps/3)),
    t(current_predicate(nosuch/3)),
    t(current_predicate(atom_length/2)),
    t(current_predicate(4)),
    t(current_predicate(foo/bar)),
    t(current_predicate(foo/(-1))),
    t(current_predicate(ps/2.0)),
    t(predicate_property(pd(_), dynamic)),
    t(predicate_property(pd(_), static)),
    t(predicate_property(pe(_, _), dynamic)),
    t(predicate_property(ps(_, _), static)),
    t(predicate_property(ps(_, _), dynamic)),
    t(predicate_property(ps(_, _), user)),
    t(predicate_property(ps(_, _), built_in)),
    t(predicate_property(ps(_, _), private)),
    t(predicate_property(ps(_, _), public)),
    t(predicate_property(pd(_), public)),
    t(predicate_property(pd(_), private)),
    t(predicate_property(pm(_), multifile)),
    t(predicate_property(pm(_), monofile)),
    t(predicate_property(ps(_, _), monofile)),
    t(predicate_property(ps(_, _), native_code)),
    t(predicate_property(ps(_, _), prolog_line(_))),
    t(predicate_property(pd(_), prolog_line(_))),
    t(predicate_property(ps(_, _), meta_predicate(_))),
    t(predicate_property(atom_length(_, _), built_in)),
    t(predicate_property(atom_length(_, _), static)),
    t(predicate_property(atom_length(_, _), user)),
    t(predicate_property(atom_length(_, _), native_code)),
    t(predicate_property(append(_, _, _), built_in)),
    t(predicate_property(fd_domain(_, _, _), built_in_fd)),
    t(predicate_property((_, _), control_construct)),
    t(predicate_property(call(_), control_construct)),
    t(predicate_property(atom_length(_, _), control_construct)),
    t(predicate_property(catch(_, _, _), meta_predicate(_))),
    t(predicate_property(findall(_, _, _), meta_predicate(_))),
    t(predicate_property(nosuch(_), dynamic)),
    t(predicate_property(nosuch(_), static)),
    t(predicate_property(4, dynamic)),
    t(predicate_property(ps(_, _), bogus)),
    t(predicate_property(ps(_, _), 3)),
    true.
