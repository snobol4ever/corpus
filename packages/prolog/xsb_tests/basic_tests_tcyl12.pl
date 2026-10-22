:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- ['tcyl-24-24-2'].

:- table a/2.

tw(X) :- a(X,Y), writeln(a(X,Y)), fail.
tw(_).	

ts(X) :- statistics, a(X,_Y), fail.
ts(_) :- statistics.

a(X,Y) :- cyl(X,Y).
a(X,Y) :- a(X,Z), cyl(Z,Y).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh tcyl12 "['tcyl-24-24-2'],tw(1)."
:- consult(basic_tests_tcyl_24_24_2).
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((tw(1)))).
