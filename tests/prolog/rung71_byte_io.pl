%-------------------------------------------------------------- 1 rung71_byte_io
:- initialization(main).
main :-
    open('/tmp/rung71_br.bin', write, WS, [type(binary)]),
    put_byte(WS, 0), put_byte(WS, 65), put_byte(WS, 128), put_byte(WS, 255),
    close(WS),
    open('/tmp/rung71_br.bin', read, RS, [type(binary)]),
    get_byte(RS, B1), get_byte(RS, B2),
    peek_byte(RS, P3), get_byte(RS, B3),
    get_byte(RS, B4),
    peek_byte(RS, PE), get_byte(RS, BE),
    close(RS),
    write(read(B1,B2,B3,B4)), nl,
    write(peek_consistent(P3,B3)), nl,
    write(eof(PE,BE)), nl,
    ( catch((open('/tmp/rung71_br.bin', write, WS2, [type(binary)]), put_byte(WS2, 300), close(WS2)), error(type_error(T,V),_), (write(range_err(T,V)), nl)) -> true ; write(no_range_check), nl ),
    write(done), nl,
    halt.
