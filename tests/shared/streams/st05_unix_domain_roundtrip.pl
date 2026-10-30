:- use_module(library(socket)).
:- initialization(main, main).
main :-
    ( getenv('TMPDIR', D) -> true ; D = '/tmp' ), atom_concat(D, '/scrip-st05.sock', Path),
    catch(delete_file(Path), _, true),
    unix_domain_socket(Uv), tcp_bind(Uv, Path), tcp_listen(Uv, 5),
    ( access_file(Path, exist) -> writeln(inode_exists) ; writeln(no_inode) ),
    unix_domain_socket(Uc), tcp_connect(Uc, Path), tcp_open_socket(Uc, UCS),
    format(UCS, "ping~n", []), flush_output(UCS),
    tcp_accept(Uv, USl, _), tcp_open_socket(USl, USS), read_line_to_string(USS, U1), print(server_got(U1)), nl,
    format(USS, "pong~n", []), flush_output(USS),
    read_line_to_string(UCS, U2), print(client_got(U2)), nl,
    close(UCS), close(USS), tcp_close_socket(Uv),
    unix_domain_socket(Un), catch(tcp_connect(Un, '/no_such_dir_xyzzy/x.sock'), error(F, _), true), print(F), nl, tcp_close_socket(Un),
    catch(delete_file(Path), _, true),
    halt.
