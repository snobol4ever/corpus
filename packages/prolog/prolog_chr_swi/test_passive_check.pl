:- module(passive_check,[passive_check/0]).
:- use_module(library(chr)).

:- chr_constraint a/1, b/1.

:- chr_option(debug,off).
:- chr_option(optimize,full).

a(X) # ID, b(X) <=> true pragma passive(ID).

passive_check :-
	a(_).

:- initialization(main, main).
main :- ( passive_check -> write(passive_check:yes) ; write(passive_check:no) ), nl.
