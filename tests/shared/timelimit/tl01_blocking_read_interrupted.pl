:- use_module(library(socket)).
:- use_module(library(time)).
:- initialization(main, main).
main :-
    tcp_socket(Srv), tcp_bind(Srv, '127.0.0.1':Port), tcp_listen(Srv, 5),
    tcp_socket(Cl), tcp_connect(Cl, '127.0.0.1':Port),
    tcp_accept(Srv, Sl, _),
    tcp_open_socket(Cl, C), tcp_open_socket(Sl, S),
    format(S, "x~n", []), flush_output(S),
    get_char(C, Ch), get_char(C, _), print(before(Ch)), nl,
    catch(call_with_time_limit(0.3, get_char(C, _)), E, true),
    print(E), nl,
    halt.
