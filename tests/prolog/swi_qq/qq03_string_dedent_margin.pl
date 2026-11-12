:- use_module(library(strings)).
main :- A = {|string||
             | hello
             |   world
             |}, writeq(A), nl.
:- initialization(main).
