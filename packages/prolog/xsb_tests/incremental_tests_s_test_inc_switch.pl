:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import incr_assert/1,incr_retractall/1,incr_assert/1,incr_retract/1 from increval.

test:- test_seq.
test_seq:- test1,fail.
test_seq:- test2.

% test of opaque -> incremental
test1:- po(X,Y),incr_writeln(first_po(X,Y)),fail.
test1:- incr_assert(qo(f,4)),fail.
test1:- abolish_all_tables,fail.
test1:- (dynamic qo/2 as incremental),fail.
test1:- po(X,Y),incr_writeln(second_po(X,Y)),fail.
test1:- incr_assert(qo(e,4)),fail.
test1:- po(X,Y),incr_writeln(third_po(X,Y)),fail.
test1.

% test of incremental -> opaque
test2:- pi(X,Y),incr_writeln(first_pi(X,Y)),fail.
test2:- incr_assert(qi(e,4)),fail.
test2:- pi(X,Y),incr_writeln(second_pi(X,Y)),fail.
test2:- abolish_all_tables,fail.
test2:- (dynamic qi/2 as opaque),fail.
test2:- pi(X,Y),incr_writeln(third_pi(X,Y)),fail.
test2:- incr_assert(qi(f,4)),fail.
test2:- pi(X,Y),incr_writeln(fourth_pi(X,Y)),fail.
test2.

incr_writeln(Term):- write(incr(Term)),writeln('.').

:- table po/2 as subsumptive, incremental.
po(X,Y) :- qo(X,Y),Y =< 5.

:- dynamic qo/2 as opaque.
qo(a,1).
qo(b,3).
qo(c,5).
qo(d,7).

:- table pi/2 as subsumptive, incremental.
pi(X,Y) :- qi(X,Y),Y =< 5.

:- dynamic qi/2 as incremental.
qi(a,1).
qi(b,3).
qi(c,5).
qi(d,7).


end_of_file.

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_test_inc_switch "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
