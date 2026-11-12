:- use_module(library(socket)).
:- initialization(main, main).
main :-
    tcp_socket(Srv), tcp_bind(Srv, '127.0.0.1':Port), ( integer(Port), Port > 0 -> writeln(ephemeral_ok) ; writeln(ephemeral_bad) ),
    tcp_listen(Srv, 5),
    tcp_socket(Cl), tcp_connect(Cl, '127.0.0.1':Port), tcp_open_socket(Cl, CS),
    format(CS, "ping~n", []), flush_output(CS),
    tcp_accept(Srv, Sl, Peer), print(peer(Peer)), nl,
    tcp_open_socket(Sl, SS), read_line_to_string(SS, L1), print(server_got(L1)), nl,
    format(SS, "pong~n", []), flush_output(SS),
    read_line_to_string(CS, L2), print(client_got(L2)), nl,
    stream_pair(CS, In, Out), ( is_stream(In), is_stream(Out) -> writeln(pair_ok) ; writeln(pair_bad) ),
    tcp_connect('127.0.0.1':Port, P3, []), format(P3, "yo~n", []), flush_output(P3),
    tcp_accept(Srv, Sl3, _), tcp_open_socket(Sl3, SS3), read_line_to_string(SS3, L3), print(got3(L3)), nl,
    close(P3), close(SS3), close(CS), close(SS), tcp_close_socket(Srv),
    halt.
