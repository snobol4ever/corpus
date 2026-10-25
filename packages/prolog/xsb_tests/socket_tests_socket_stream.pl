:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import spawn_process/5, process_control/2 from shell.
:- import slash/1 from machine.
:- import file_flush/2, file_clone/3, file_reopen/4 from file_io.
:- import file_read_line_atom/3, copyIOport/2 from file_io.


test :- xsb_configuration(config_bindir, Bindir), slash(S),
	fmt_write_string(Cmd, '%s%sxsb', args(Bindir,S)),
	spawn_process([Cmd, '--nobanner', '--quietload', '--noprompt',
		       '-e', '[''auxiliary/streamServer''].'],
		      ToServer, FromServer, ServErr, Servproc),
	%% Get rid of STDMSG output
	fmt_write(ToServer,
		  "file_reopen('/dev/null', w, 4, _), file_reopen('/dev/null', w, 6, _).\n", _),
	file_flush(ToServer,_),
	fmt_write(ToServer, "server.\n", _), file_flush(ToServer,_),
	spawn_process([Cmd, '--nobanner', '--quietload', '--noprompt',
		       '-e', '[''auxiliary/streamClient''].'],
		      ToClient, FromClient, ClientErr, ClientProc),
	%% Get rid of STDMSG output
	fmt_write(ToClient,
		  "file_reopen('/dev/null', w, 4, _), file_reopen('/dev/null', w, 6, _).\n", _),
	file_flush(ToClient,_),
	fmt_write(ToClient, "client.\n", _), file_flush(ToClient,_),
	file_write(ToClient, 'sddfg.'),
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToClient, 'h(sddsfd).'),
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToClient, 'h(X).'),
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToClient, 'g(X).'),
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToClient, 'end_of_file.'), % stop the client/server loop
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToClient, 'end_of_file.'), % stop client subprocess
	file_nl(ToClient), file_flush(ToClient,_),
	file_write(ToServer, 'end_of_file.'), % stop server subprocess
	file_nl(ToServer), file_flush(ToServer,_),
	file_close(ToServer),
	file_close(ToClient),
	file_reopen(temp, w, 1, _),
	copyIOport(FromServer, 1),
	copyIOport(FromClient, 1),
	copyIOport(ServErr, 1),
	copyIOport(ClientErr, 1),
	file_close(FromServer),
	file_close(FromClient),
	file_close(ServErr),
	file_close(ClientErr),
	process_control(Servproc,wait(XX)),
	process_control(ClientProc,wait(XX)),
	%% flush stdout
	file_flush(1,_).


% DRIVER (appended by the vendoring, CEO-700): XSB socket_tests/test.sh runs gentest.sh socket_stream "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
