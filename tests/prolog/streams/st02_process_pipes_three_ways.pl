:- use_module(library(process)).
:- initialization(main, main).
main :-
    process_create(path(cat), [], [stdin(pipe(In1)), stdout(null), process(P1)]),
    write(In1, one), nl(In1), write(In1, two), nl(In1), close(In1),
    process_wait(P1, S1), print(stdin_eof-S1), nl,
    process_create(path(tr), ['a-z', 'A-Z'], [stdin(pipe(In2)), stdout(pipe(Out2)), process(P2)]),
    write(In2, 'round trip via stdin pipe'), nl(In2), close(In2),
    read_line_to_string(Out2, L2), close(Out2), process_wait(P2, S2), print(L2-S2), nl,
    process_create(path(sh), ['-c', 'cat; echo done 1>&2'], [stdin(pipe(In3)), stdout(pipe(Out3)), stderr(pipe(Err3)), process(P3)]),
    write(In3, 'via all three pipes'), nl(In3), close(In3),
    read_line_to_string(Out3, O3), read_line_to_string(Err3, E3), close(Out3), close(Err3), process_wait(P3, S3), print(O3-E3-S3), nl,
    process_create(path(echo), ['pipe2 text'], [stdout(pipe(Out4, [type(text)])), process(P4)]),
    read_line_to_string(Out4, L4), close(Out4), process_wait(P4, S4), print(L4-S4), nl,
    process_create(path(echo), ['pipe2 binary'], [stdout(pipe(Out5, [type(binary)])), process(P5)]),
    get_byte(Out5, B5), close(Out5), process_wait(P5, S5), print(B5-S5), nl,
    process_create(path(echo), ['pipe2 encoding'], [stdout(pipe(Out6, [encoding(utf8)])), process(P6)]),
    read_line_to_string(Out6, L6), close(Out6), process_wait(P6, S6), print(L6-S6), nl,
    halt.
