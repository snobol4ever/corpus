% type_inl_driver.pl -- grades GNU Prolog's BipsPl/type_inl.pl through the predicates it defines (Lon via the ceo, CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by its driver,
% NAME_driver beside it). gprolog's answer is type_inl.pl's own code; SCRIP is graded three-way against it (m3 = m4 = gprolog).
% Every predicate is called in a mode GNU Prolog's manual documents; an error prints as its ISO formal term only.
% The type tests raise no error, so each is driven on a success and a failure. fd_var/1, non_fd_var/1, generic_var/1 and
% non_generic_var/1 are GNU's finite-domain type tests, driven on plain terms only (no FD constraint is posted).
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
    t(var(_)),
    t(var(a)),
    t(var(f(_))),
    t(nonvar(f(_))),
    t(nonvar(_)),
    t(atom(abc)),
    t(atom([])),
    t(atom('hello world')),
    t(atom(f(a))),
    t(atom(1)),
    t(integer(42)),
    t(integer(-7)),
    t(integer(4.0)),
    t(float(4.0)),
    t(float(4)),
    t(number(3)),
    t(number(-2.5)),
    t(number(a)),
    t(atomic(a)),
    t(atomic(1.5)),
    t(atomic(f(x))),
    t(atomic(_)),
    t(compound(f(x))),
    t(compound([a])),
    t(compound(a)),
    t(compound(_)),
    t(callable(foo)),
    t(callable(foo(1))),
    t(callable(3)),
    t(callable(_)),
    t(ground(f(a, [b, 1]))),
    t(ground(f(a, _))),
    t(is_list([a, b, c])),
    t(is_list([])),
    t(is_list([a|_])),
    t(is_list(a)),
    t(list([1, 2])),
    t(list([])),
    t(list([1|_])),
    t(list(f(x))),
    t(partial_list(_)),
    t(partial_list([a, b|_])),
    t(partial_list([a, b])),
    t(partial_list(foo)),
    t(list_or_partial_list([a])),
    t(list_or_partial_list([a|_])),
    t(list_or_partial_list(_)),
    t(list_or_partial_list([a|b])),
    t(fd_var(_)),
    t(fd_var(a)),
    t(fd_var(3)),
    t(non_fd_var(_)),
    t(non_fd_var(a)),
    t(non_fd_var(3)),
    t(generic_var(_)),
    t(generic_var(a)),
    t(generic_var(3)),
    t(non_generic_var(_)),
    t(non_generic_var(a)),
    t(non_generic_var(f(_))),
    true.
