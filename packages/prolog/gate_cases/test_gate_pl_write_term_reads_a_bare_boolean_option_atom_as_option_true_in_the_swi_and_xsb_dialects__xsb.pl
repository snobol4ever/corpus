:- op(1050, fy, import). :- op(1100, fx, export). :- op(1040, xfx, from). :- op(1100, fy, index). :- compiler_options([]). :- use_module(library(lists)).
:- initialization(main).
main :-
    write_term('a b', [quoted]), nl,
    write_term('$VAR'(0), [numbervars]), nl,
    halt.
