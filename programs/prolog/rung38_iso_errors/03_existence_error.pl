% catch existence_error for calling undefined predicate
main :-
    catch(
        no_such_pred(42),
        error(existence_error(procedure, no_such_pred/1), _),
        write(caught_existence_error)
    ), nl.
