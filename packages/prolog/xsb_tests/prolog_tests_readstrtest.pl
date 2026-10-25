:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import str_cat/3 from machine.
:- import file_open/3,file_close/1 from file_io.
:- import file_read/3 from xsb_read.
:- import excess_vars/4 from setof.
:- import numbervars/3 from num_vars.

test :-
	string_read('p(a,f(b,3.5,14,X),Y,X).',Term,Vars),
	numbervars(Term,0,_),islist(Vars),
	writeln([Term,Vars]),
	fail.
test :-
	string_read('qq(a,d(e),f(b,14,X),Y,X).',Term,Vars),
	numbervars(Term,0,_),islist(Vars),
	writeln([Term,Vars]),
	fail.
test :-
	string_read('p(a,f(b,3.5,14,X),Y,X) :- r(X),s(T).',Term,Vars),
	numbervars(Term,0,_),islist(Vars),
	writeln([Term,Vars]),
	fail.
test :-
	test_read_canonical,
	fail.

string_read(String,Term,Vars) :-
	file_open(String,3,File),
	file_read(File,Term,Vars),
	file_close(File).

string_call(String,Vars) :-
	str_cat(String,'.',Tstring),
	string_read(Tstring,Goal,Vars),
	Goal \== end_of_file,
	islist(Vars),
	call(Goal).

islist([]) :- !.
islist([_|L]) :- islist(L).

test_read_canonical :-
	see(readstrtest_data),
	repeat,
	read_canonical(X),
	(X == end_of_file
         ->    !,seen
         ;     numbervars(X,0,_),
	       writeln(X),
	       fail
	).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh readstrtest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
