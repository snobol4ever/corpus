:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
p(N, G) :- catch(( G -> R = true ; R = false ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write(N), write(' => '), writeq(R), nl.
line(S, A) :- get_char(S, C), line(C, S, Cs), atom_chars(A, Cs).
line(end_of_file, _, []) :- !.
line('\n', _, []) :- !.
line(C, S, [C|Cs]) :- get_char(S, C1), line(C1, S, Cs).
inet(Up, Down, Who) :- socket('AF_INET', Srv), socket_bind(Srv, 'AF_INET'(_, P)), socket_listen(Srv, 2),
  socket('AF_INET', Cli), socket_connect(Cli, 'AF_INET'(localhost, P), CIn, COut), socket_accept(Srv, Who, SIn, SOut),
  write(COut, up_inet), nl(COut), flush_output(COut), line(SIn, Up), write(SOut, down_inet), nl(SOut), flush_output(SOut), line(CIn, Down),
  close(COut), close(CIn), close(SOut), close(SIn), socket_close(Srv).
unix(Up) :- Path = 'skt_w.sock', socket('AF_UNIX', Srv), socket_bind(Srv, 'AF_UNIX'(Path)), socket_listen(Srv, 1), socket('AF_UNIX', Cli),
  socket_connect(Cli, 'AF_UNIX'(Path), _, COut), socket_accept(Srv, SIn, _), write(COut, 'hello unix'), nl(COut), flush_output(COut), line(SIn, Up),
  close(COut), close(SIn), socket_close(Srv).
main :- t(inet(_, _, _)), t(unix(_)), t(socket(1, _)), t(socket('AF_INET', x)), t(socket_close(1)), t(socket_close(-4)),
  p(bind_type_errors, ( socket('AF_INET', S1), catch(socket_bind(S1, 'AF_INET'(3, _)), error(E1, _), true), catch(socket_bind(S1, 'AF_INET'(_, x)), error(E2, _), true),
    catch(socket_bind(S1, 'AF_UNIX'(9)), error(E3, _), true), catch(socket_bind(S1, f(a, b, c)), error(E4, _), true), socket_close(S1), write([E1, E2, E3, E4]), nl )),
  t(socket_bind(x, 'AF_UNIX'(a))), t(socket_listen(1, a)), t(socket_listen(a, 1)), t(socket_accept(_, _, _)), t(socket_accept(3, a, _)), t(socket_accept(3, _, b, _)),
  t(socket_connect(_, 'AF_UNIX'(a), _, _)), t(socket_connect(3, _, _, _)), t(socket_connect(3, nonsense, _, _)), t(socket_connect(3, 'AF_UNIX'(a), x, _)),
  t(hostname_address(localhost, '127.0.0.1')), t(hostname_address(localhost, x)), t(hostname_address(localhost, 12)), t(hostname_address('no-such-host.invalid', _)).
