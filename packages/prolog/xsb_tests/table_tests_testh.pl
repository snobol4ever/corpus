:- compiler_options([spec_off]).

:- [cycle].

time2048:-
	writeln('--------------------------------------------------------'),
	cputime(T),
	time2048(10),cputime(T1),Tot is T1 - T, Tot = Tot, writeln(ok).

time2048(0):-!.
time2048(N):-
	abolish_all_tables,
	(win(1),fail; true),
	N1 is N - 1,
%	statistics,
	time2048(N1).

:- table win/1.
win(X):- move2k(X,Y),tnot(win(Y)).


% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh testh "time2048."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((time2048))).
