%------------------------------------------------------------- 1 rung74_dec10_io
:- initialization(main).
main :-
    put(72), put(105), put(33), nl,
    open('/tmp/rung74_in.txt', write, WS),
    write(WS, '  ab cd.efg'), nl(WS),
    close(WS),
    open('/tmp/rung74_in.txt', read, RS),
    set_input(RS),
    get0(C0),
    get(C1),
    get0(C2),
    skip(0'.),
    get0(C3),
    close(RS),
    write(chars(C0,C1,C2,C3)), nl,
    write(done), nl,
    halt.
