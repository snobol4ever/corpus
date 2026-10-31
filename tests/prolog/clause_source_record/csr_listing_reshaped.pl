:- use_module(library(lists)).
:- initialization(main).

greeting(Who) --> [hello], name_of(Who).

name_of(Name) --> [Name].

main :-
    listing(greeting//1),
    listing(name_of//1).
