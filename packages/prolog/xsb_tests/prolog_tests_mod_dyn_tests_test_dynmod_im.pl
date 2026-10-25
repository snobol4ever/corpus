:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.
my_writeln(Term) :-
	(do_all
	 numbervars(Term),
	 writeln(Term)
	).

my_writeq(Term) :-
	(do_all
	 numbervars(Term),
	 writeq(Term)
	).

:- import p/2 from modp_file as p1/2.

test :- write('Testing dynamic mod imp: '),my_writeln(modp_file:p1(_,_)),fail.
test :- findall(p1(X,Y),p1(X,Y),List), writeln(modp_file:List), fail.

:- import p/2 from modp>>modp_file as p2/2.

test :- write('Testing dynamic mod imp: '),my_writeln(modp>>modp_file:p2(_,_)),fail.
test :- findall(p2(X,Y),p2(X,Y),List), writeln(modp>>modp_file:List), fail.

:- import p/2 from modp_filec as p3/2.
test :- write('Testing dynamic mod imp: '),my_writeln(modp_filec:p3(_,_)),fail.
test :- findall(p3(X,Y),p3(X,Y),List), writeln(modp_filec:List), fail.

:- import p/2 from modpc>>modp_filec as p4/2.
test :- write('Testing dynamic mod imp: '),my_writeln(modpc>>modp_filec:p4(_,_)),fail.
test :- findall(p4(X,Y),p4(X,Y),List), writeln(modpc>>modp_filec:List), fail.


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_dynmod_im "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
