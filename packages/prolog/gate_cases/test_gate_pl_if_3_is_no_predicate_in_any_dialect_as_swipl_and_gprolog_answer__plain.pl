:- initialization(main).
main :-
    catch(( if(true, true, true), write(called) ), error(E1, _), write(raised(E1))), nl,
    G = if(fail, true, true),
    catch(( call(G), write(called) ), error(E2, _), write(raised(E2))), nl,
    ( predicate_property(if(_, _, _), _) -> write(has_property) ; write(no_property) ), nl,
    halt.
