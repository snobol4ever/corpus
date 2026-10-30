:- use_module(library(socket)).
:- use_module(library(time)).
:- initialization(main, main).
main :-
    tcp_socket(Srv), tcp_bind(Srv, '127.0.0.1':Port), tcp_listen(Srv, 5),
    tcp_socket(Cl), tcp_connect(Cl, '127.0.0.1':Port),
    tcp_accept(Srv, Sl, _),
    tcp_open_socket(Cl, C), tcp_open_socket(Sl, S),
    format(S, "abc~n", []), flush_output(S),
    catch(call_with_time_limit(2.0, ( get_char(C, Ch1), get_char(C, Ch2), get_char(C, Ch3), get_char(C, Ch4) )), E, (print(unexpected(E)), nl, halt(1))),
    ( [Ch1,Ch2,Ch3,Ch4] == ['a','b','c','\n'] -> writeln('stream_buffered_read: all ok') ; print(mismatch([Ch1,Ch2,Ch3,Ch4])), nl ),
    close(C), close(S), tcp_close_socket(Srv),
    halt.
