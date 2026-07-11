item(banana).
item(apple).
item(cherry).
item(apple).
main :-
    bagof(X, item(X), L),
    write(L), nl.
