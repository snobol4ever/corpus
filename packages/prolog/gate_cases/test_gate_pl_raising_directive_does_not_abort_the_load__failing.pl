a :- write(before), nl.
:- fail.
b :- write(after), nl.
:- initialization(main).
main :- a, b.
