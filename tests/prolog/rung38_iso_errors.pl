%--------------------------------------------------------------- 1 01_type_error
% catch a type_error thrown by is/2 on non-numeric
main :-
    catch(
        ( X is foo + 1, write(X) ),
        error(type_error(evaluable, foo/0), _),
        write(caught_type_error)
    ), nl.
%------------------------------------------------------ 2 02_instantiation_error
% catch instantiation_error from is/2 on unbound var
main :-
    catch(
        ( X is _ + 1, write(X) ),
        error(instantiation_error, _),
        write(caught_instantiation_error)
    ), nl.
%--------------------------------------------------------------- 3 04_user_throw
% throw and catch a user-defined error term
main :-
    catch(
        throw(my_error(42, hello)),
        my_error(Code, Msg),
        (write(Code), write(' '), write(Msg), nl)
    ).
%------------------------------------------------------------- 4 05_nested_catch
% inner catch handles its own error; outer catch not triggered
risky :- throw(inner_err).

main :-
    catch(
        catch(risky, inner_err, write(inner_caught)),
        outer_err,
        write(outer_caught)
    ), nl.
