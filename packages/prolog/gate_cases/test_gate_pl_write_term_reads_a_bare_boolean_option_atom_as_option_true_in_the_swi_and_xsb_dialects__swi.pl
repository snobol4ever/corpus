:- use_module(library(lists)).
:- initialization(main).
main :-
    write_term('a b', [quoted]), nl,
    write_term([a,b], [ignore_ops]), nl,
    write_term('$VAR'(0), [numbervars]), nl,
    write_term('$VAR'(27), [numbervars]), nl,
    write_term(f(a, 'B c', 1+2), [quoted, ignore_ops]), nl,
    write_term(f('A b', g(x)), [quoted(true), max_depth(3)]), nl,
    write_term('a b', [quoted(false)]), nl,
    halt.
