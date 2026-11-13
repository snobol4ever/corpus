:- initialization(main).
main :-
    open_null_stream(S),
    write(S, hello), nl(S),
    format(S, "~w~n", [x]),
    put_char(S, a),
    ( is_stream(S) -> write(is_stream) ; write(not_stream) ), nl,
    ( stream_property(S, mode(M)) -> write(M) ; write(nomode) ), nl,
    ( stream_property(S, output) -> write(output) ; write(not_output) ), nl,
    flush_output(S),
    close(S),
    catch(write(S, y), error(Err, _), true),
    ( nonvar(Err) -> Err =.. [Fn|_], write(Fn) ; write(no_error) ), nl,
    halt.
