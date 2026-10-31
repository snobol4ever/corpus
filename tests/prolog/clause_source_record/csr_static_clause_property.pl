:- use_module(library(lists)).
:- initialization(main).
:- dynamic dyn/2.

dyn(X, Y) :-
    Y is X + 1.
dyn(_, zero).

stat(a).
stat(b) :-
    true.

show(R) :-
    (   clause_property(R, file(F))
    ->  file_base_name(F, B), write(file(B))
    ;   write(nofile)
    ),
    write(' '),
    (   clause_property(R, line_count(L))
    ->  write(line(L))
    ;   write(noline)
    ),
    write(' '),
    (   clause_property(R, fact)
    ->  write(fact)
    ;   write(rule)
    ),
    write(' '),
    (   clause_property(R, predicate(PI))
    ->  write(PI)
    ;   write(nopred)
    ),
    nl.

main :-
    forall(clause(dyn(_, _), _, R), show(R)),
    forall(clause(stat(_), _, R), show(R)),
    assertz(dyn(9, nine)),
    clause(dyn(9, _), _, R9),
    show(R9),
    retract(dyn(9, nine)),
    (   clause_property(R9, erased)
    ->  write(erased)
    ;   write(live)
    ),
    nl,
    (   catch(clause_property(_, file(_)), error(T, _), (write(caught(T)), nl, fail))
    ->  write(unbound_ref_succeeded)
    ;   write(unbound_ref_failed)
    ),
    nl.
