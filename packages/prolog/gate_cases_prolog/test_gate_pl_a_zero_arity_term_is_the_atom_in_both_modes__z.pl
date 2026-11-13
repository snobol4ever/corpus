t(G) :- catch((G -> write(yes) ; write(no)), error(E, _), writeq(E)), nl.
main :- X = foo(), t(atom(X)), t(compound(X)), t(functor(X, _, _)), t(arg(1, X, _)), t(X == foo),
    t(compound_name_arity(X, _, _)), t(X =.. _),
    read_term_from_atom('bar()', T, []), t(atom(T)), t(compound(T)), t(T == bar), t(compound_name_arguments(T, _, _)).
:- initialization(main).
