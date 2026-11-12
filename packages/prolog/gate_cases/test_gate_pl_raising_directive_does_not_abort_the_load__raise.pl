a :- write(before), nl.
:- no_such_directive(x).
b :- write(after), nl.
:- initialization(main).
main :- a, b.
