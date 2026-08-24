main :- assertz((greet :- write(hello), nl)),
        ( clause(greet, Body) -> call(Body) ; write(noclause), nl ).
