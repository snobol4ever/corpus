:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import file_open/3, file_flush/2, file_seek/4, file_close/1 from file_io.
:- import file_truncate/3, print_file_contents/1 from file_io.
:- import file_write/2 from xsb_writ.
:- import rm/1 from shell.

test1(FD) :-
	file_open(log, w, FD),
	file_write(FD, 'a.done '),
	file_flush(FD, _Ret).


test2(FD) :-
	file_seek(FD, 0, 0, _Ret), /* seek to the beginning */
	file_write(FD, 'b.done '),
	file_flush(FD, _Ret1).

test3(FD) :-
	(xsb_configuration(os_type,windows)  % no truncate in windows
	 ->	file_seek(FD,2,0,_),
		file_write(FD,'    '),
		file_flush(FD,_)
	 ;	file_truncate(FD, 2, _Ret) /* truncate file to 2 bytes */
	).

test4(FD) :-
	(xsb_configuration(os_type,windows)  % no truncate in windows
	 ->	file_seek(FD,2,0,_Ret)
	 ;	true
	),
	file_write(FD, 'c.done '),
	file_flush(FD, _Ret1),
	file_close(FD).


test :- test1(FD), print_file_contents(log),
	nl,
	test2(FD), print_file_contents(log),
	nl,
	test3(FD), print_file_contents(log),
	nl,
	test4(FD), print_file_contents(log),
	nl,
	rm(log).

% DRIVER (appended by the vendoring, CEO-700): XSB io_tests/test.sh runs gentest.sh io_basics "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
