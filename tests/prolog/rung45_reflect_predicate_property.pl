%-------------------------------------------------------------- 1 rung45_reflect_predicate_property
main :- assertz(gadget(1)),
        ( predicate_property(gadget(_), dynamic) -> write(yes) ; write(no) ), nl.
