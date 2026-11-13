:- initialization(main).
main :-
    pipe(In, Out),
    write(Out, hello), nl(Out), flush_output(Out),
    get_code(In, A), get_code(In, B), get_code(In, C), get_code(In, D), get_code(In, E), get_code(In, F),
    write([A,B,C,D,E,F]), nl,
    write(Out, xy), close(Out),
    get_code(In, G), get_code(In, H), get_code(In, I),
    write([G,H,I]), nl,
    close(In),
    pipe(I2, O2),
    ( is_stream(I2), is_stream(O2) -> write(both_streams) ; write(not_streams) ), nl,
    ( stream_property(I2, mode(M1)) -> write(M1) ; write(nomode) ), nl,
    ( stream_property(O2, mode(M2)) -> write(M2) ; write(nomode) ), nl,
    close(O2), close(I2),
    catch(write(O2, x), error(Err, _), true),
    ( nonvar(Err) -> Err =.. [Fn|_], write(Fn) ; write(no_error) ), nl,
    halt.
