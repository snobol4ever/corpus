:- initialization(main).
t(N, G) :- ( catch(G, error(E,_), true) -> ( var(E) -> write(N=success) ; E = permission_error(Op,Ty,_), write(N=perm(Op,Ty)) ) ; write(N=failed) ), nl.
main :-
    open('/tmp/rung79_w.txt', write, W),
    t(getchar_on_write, get_char(W, _)),
    t(getcode_on_write, get_code(W, _)),
    t(peekchar_on_write, peek_char(W, _)),
    t(getbyte_on_write, get_byte(W, _)),
    t(ateof_on_write, at_end_of_stream(W)),
    close(W),
    open('/tmp/rung79_w.txt', read, R),
    t(putchar_on_read, put_char(R, x)),
    t(putcode_on_read, put_code(R, 0'y)),
    t(putbyte_on_read, put_byte(R, 65)),
    close(R),
    write(done), nl,
    halt.
