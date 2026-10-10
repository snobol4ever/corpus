% sockets_driver.pl -- grades GNU Prolog's BipsPl/sockets.pl through the built-ins it defines: socket/2, socket_bind/2,
% socket_listen/2, socket_connect/4, socket_accept/3,4, socket_close/1 and hostname_address/2 (Lon via the ceo, CEO-1312 and
% CEO-1523: every Prolog source file of the GNU package is graded through a driver; CEO-700, CEO-1269: a library is graded by
% its driver, NAME_driver beside it). gprolog's answer is sockets.pl's own code; SCRIP is graded three-way against it (m3 = m4 =
% gprolog). One process plays both ends over an AF_UNIX socket at the fixed path /tmp/gnu_drv_sockets (removed before it is
% bound, so a run never depends on the last): the server binds and listens, the client connects, the server accepts, and a
% line goes each way. A socket's descriptor and an AF_INET port are the process's and the kernel's own, so they are checked by
% property only; the loopback name is looked up, never the machine's own name.
:- initialization(main).

% t(G): every solution of G, or the formal error term G raises.
t(G) :- copy_term(G, C),
        catch(findall(C, C, L), E, true),
        (   var(E) -> R = L
        ;   E = error(F, _) -> R = error(F)
        ;   R = ball(E)
        ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).

% p(N, G): whether G holds, or the formal error term it raises, printed under the name N.
p(N, G) :- copy_term(G, C),
        catch(( C -> R = true ; R = false ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )),
        write(N), write(' => '), writeq(R), nl.

read_line_atom(S, A) :- get_char(S, C), read_line_chars(C, S, Cs), atom_chars(A, Cs).
read_line_chars(end_of_file, _, []) :- !.
read_line_chars('\n', _, []) :- !.
read_line_chars(C, S, [C|Cs]) :- get_char(S, C1), read_line_chars(C1, S, Cs).

% unix_round_trip(ToServer, ToClient): the whole exchange over one AF_UNIX socket, every stream closed.
unix_round_trip(Up, Down) :-
    Path = '/tmp/gnu_drv_sockets',
    socket('AF_UNIX', Srv), socket_bind(Srv, 'AF_UNIX'(Path)), socket_listen(Srv, 1),
    socket('AF_UNIX', Cli), socket_connect(Cli, 'AF_UNIX'(Path), CIn, COut),
    socket_accept(Srv, SIn, SOut),
    write(COut, 'ping from the client'), nl(COut), flush_output(COut),
    read_line_atom(SIn, Up),
    write(SOut, 'pong from the server'), nl(SOut), flush_output(SOut),
    read_line_atom(CIn, Down),
    close(COut), close(CIn), close(SOut), close(SIn), socket_close(Srv).

main :-
    t(shell('rm -f /tmp/gnu_drv_sockets')),
    p(socket_af_unix_is_an_integer_descriptor, (socket('AF_UNIX', S1), integer(S1), socket_close(S1))),
    p(socket_af_inet_is_an_integer_descriptor, (socket('AF_INET', S2), integer(S2), socket_close(S2))),
    t(socket(bogus, _)),
    t(socket(_, _)),
    t(socket('AF_UNIX', 3)),
    t(socket_close(_)),
    t(socket_close(foo)),
    t(unix_round_trip(_, _)),
    t(shell('rm -f /tmp/gnu_drv_sockets')),
    p(af_inet_bind_to_an_unbound_port_names_the_port,
      (socket('AF_INET', S3), socket_bind(S3, 'AF_INET'(H, P)), atom(H), integer(P), P > 0, socket_close(S3))),
    t(socket_bind(_, 'AF_UNIX'('/tmp/gnu_drv_sockets_x'))),
    p(socket_bind_to_a_bad_address_is_a_domain_error,
      (socket('AF_UNIX', S4), catch(socket_bind(S4, nonsense), error(domain_error(_, _), _), true), socket_close(S4))),
    t(socket_listen(_, 1)),
    t(hostname_address(localhost, _)),
    t(hostname_address(_, _)),
    t(hostname_address(42, _)),
    true.
