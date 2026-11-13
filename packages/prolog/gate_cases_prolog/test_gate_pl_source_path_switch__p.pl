foo.
main :- predicate_property(foo, file(F)), write(pred(F)), nl, source_file(foo, S), write(source(S)), nl, ( predicate_property(last(_,_), file(_)) -> write(lib_has_file) ; write(lib_no_file) ), nl.
:- initialization(main).
