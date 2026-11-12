:- use_module(library(socket)).
:- initialization(main, main).
main :-
    tcp_socket(S), ( S = '$socket'(_) -> writeln(handle_is_dollar_socket) ; writeln(handle_is_a_blob) ),
    tcp_setopt(S, reuseaddr), tcp_setopt(S, nodelay),
    catch(tcp_setopt(S, bogus), error(F1, _), true), print(F1), nl,
    tcp_close_socket(S),
    catch(tcp_open_socket(not_a_socket, _), error(F2, _), true), print(F2), nl,
    tcp_socket(R), catch(tcp_connect(R, '127.0.0.1':1), error(F3, C3), true),
    ( C3 = tcp_connect/2 -> writeln(context_unifies) ; writeln(context_differs) ), F3 = socket_error(Code3, _), print(Code3), nl, tcp_close_socket(R),
    tcp_socket(B1), tcp_bind(B1, '127.0.0.1':P), tcp_listen(B1, 5), tcp_socket(B2),
    catch(tcp_bind(B2, '127.0.0.1':P), error(F4, _), true), F4 = socket_error(Code4, _), print(Code4), nl, tcp_close_socket(B2), tcp_close_socket(B1),
    gethostname(H), ( atom(H) -> writeln(hostname_atom) ; writeln(hostname_bad) ),
    tcp_host_to_address(localhost, A), print(A), nl,
    tcp_socket(F), tcp_open_socket(F, Pair), ( is_stream(Pair) -> writeln(fresh_open_ok) ; writeln(fresh_open_bad) ), close(Pair),
    halt.
