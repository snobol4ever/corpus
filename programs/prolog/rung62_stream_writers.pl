:- initialization(main).
main :-
    writeq(user_output, 'quoted atom'), nl,
    format(user_output, "~w=~d~n", [x, 42]),
    write_term(user_output, foo(bar), [quoted(true)]), nl,
    writeq(user_error, this_to_err), nl(user_error),
    format(user_error, "~w~n", [err_fmt]),
    write(done), nl.
