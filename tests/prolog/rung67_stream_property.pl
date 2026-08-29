%------------------------------------------------------ 1 rung67_stream_property
:- initialization(main).
main :-
    open('/tmp/rung67_a.txt', write, S),
    ( stream_property(S, mode(write)) -> write(mode_write_ok) ; write(mode_write_bad) ), nl,
    ( stream_property(S, output) -> write(is_output) ; write(not_output) ), nl,
    ( stream_property(S, input) -> write(bug_input) ; write(correctly_not_input) ), nl,
    ( stream_property(S, type(text)) -> write(type_text_ok) ; write(type_text_bad) ), nl,
    ( ( stream_property(S, file_name(F)), atom(F) ) -> write(has_file_name) ; write(no_file_name) ), nl,
    ( stream_property(S, mode(read)) -> write(bug_read) ; write(correctly_not_read) ), nl,
    write(S, hello),
    close(S),
    open('/tmp/rung67_a.txt', read, S2),
    ( stream_property(S2, mode(read)) -> write(read_mode_ok) ; write(read_mode_bad) ), nl,
    ( stream_property(S2, input) -> write(read_is_input) ; write(read_not_input) ), nl,
    ( stream_property(S2, end_of_stream(not)) -> write(nonempty_not_eof) ; write(eof_bad) ), nl,
    close(S2),
    write(done), nl.
