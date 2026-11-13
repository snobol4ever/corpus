portray(Atom) :- atom(Atom), Atom \== [], write(Atom), write(Atom).
portray(Float) :- float(Float), Integer is truncate(Float), write(Integer).
main :- print(a(foo, b(c(foo, 3.14)))), nl, print([x, 2.5]), nl, current_output(S), print(S, f(bar)), nl,
        write_term(g(baz, 1.5), [portray(true)]), nl, write_term(S, h(qux), [portray(true), numbervars(true)]), nl,
        write_term(k(foo), [quoted(true)]), nl,
        ( predicate_property(portray(_), dynamic) -> write(dynamic) ; write(not_dynamic) ), nl,
        ( predicate_property(portray(_), multifile) -> write(multifile) ; write(not_multifile) ), nl.
:- initialization(main).
