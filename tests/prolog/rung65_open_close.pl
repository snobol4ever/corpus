%----------------------------------------------------------- 1 rung65_open_close
:- initialization(main).
main :-
    open('/tmp/rung65_scrip.txt', write, S), write(S, hello), nl(S), write(S, world), nl(S), close(S),
    open('/tmp/rung65_scrip.txt', read, R), get_char(R, C1), get_char(R, C2), get_code(R, N3), close(R),
    write(readback(C1, C2, N3)), nl,
    open('/tmp/rung65_scrip.txt', append, A), write(A, more), nl(A), close(A, [force(true)]),
    open('/tmp/rung65_scrip.txt', read, R2, [type(text)]), get_char(R2, F1), close(R2),
    write(firstchar(F1)), nl,
    ( catch(open('/tmp/rung65_absent.txt', read, _), error(existence_error(source_sink, _), _), true) -> write(existence_ok) ; write(existence_bad) ), nl,
    ( catch(open('/tmp/rung65_scrip.txt', bogus, _), error(domain_error(io_mode, bogus), _), true) -> write(iomode_ok) ; write(iomode_bad) ), nl,
    ( catch(open(_Unbound, read, _), error(instantiation_error, _), true) -> write(inst_ok) ; write(inst_bad) ), nl,
    ( catch(open(123, read, _), error(domain_error(source_sink, 123), _), true) -> write(sourcesink_ok) ; write(sourcesink_bad) ), nl,
    write(done), nl.
