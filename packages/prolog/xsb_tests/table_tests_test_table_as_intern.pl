:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- compiler_options([spec_off]).

test:- 	  buildlist(100000,_L), writeln(table_as_intern_working).

test_ni:- buildlist_1(20000,_L).

:- table buildlist/2 as intern.
buildlist(0,[]):- !.
buildlist(N,[N|T]):- 
	N1 is N - 1,
	buildlist(N1,T).

test_1(N):- 
	  buildlist_1(N,_L).

:- table buildlist_1/2.
buildlist_1(0,[]):- !.
buildlist_1(N,[N|T]):- 
	N1 is N - 1,
	buildlist_1(N1,T).

	  

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_table_as_intern "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
