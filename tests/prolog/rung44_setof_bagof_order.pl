%-------------------------------------------------------------- 1 rung44_setof_bagof_order
item(banana).
item(apple).
item(cherry).
item(apple).
main :-
    bagof(X, item(X), L),
    write(L), nl.
