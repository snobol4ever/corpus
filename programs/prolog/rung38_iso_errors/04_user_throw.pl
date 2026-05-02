% throw and catch a user-defined error term
main :-
    catch(
        throw(my_error(42, hello)),
        my_error(Code, Msg),
        (write(Code), write(' '), write(Msg), nl)
    ).
