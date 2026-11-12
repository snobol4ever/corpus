:- initialization(main).
main :- catch(( X is foo + 1, write(X) ), error(type_error(evaluable, foo/0), _), write(caught_type_error)), nl.
