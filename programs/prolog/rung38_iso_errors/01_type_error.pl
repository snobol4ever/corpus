% catch a type_error thrown by is/2 on non-numeric
main :-
    catch(
        ( X is foo + 1, write(X) ),
        error(type_error(evaluable, foo/0), _),
        write(caught_type_error)
    ), nl.
