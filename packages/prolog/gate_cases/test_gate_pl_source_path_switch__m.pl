:- consult('$D/h.pl').
main :- predicate_property(hp, file(H)), write(helper(H)), nl, predicate_property(foo, file(F)), write(main(F)), nl.
foo.
:- initialization(main).
