%-------------------------------------------------------------- 1 rung45_reflect_current_predicate
main :- assertz(widget(1)), assertz(widget(2)),
        ( current_predicate(widget/1) -> write(yes) ; write(no) ), nl,
        ( current_predicate(nothing/3) -> write(yes) ; write(no) ), nl.
