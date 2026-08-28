%-------------------------------------------------- 1 rung45_reflect_clause_rule
main :- assertz((greet :- write(hello), nl)),
        ( clause(greet, Body) -> call(Body) ; write(noclause), nl ).
