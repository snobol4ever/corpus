% catch instantiation_error from is/2 on unbound var
main :-
    catch(
        ( X is _ + 1, write(X) ),
        error(instantiation_error, _),
        write(caught_instantiation_error)
    ), nl.
