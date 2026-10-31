:- use_module(library(lists)).
:- use_module(library(listing)).
:- initialization(main).
:- dynamic pair/2.

pair(Left, Right) :-
    Right = r(Left, _Spare).
pair(Same, Same).

main :-
    listing(pair/2),
    clause(pair(X, Y), B, _),
    portray_clause(current_output, (pair(X, Y) :- B), [variable_names(['Left'=X])]).
