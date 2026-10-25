:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- dynamic rule/2.

:- table interp_g/1.

interp([]).
interp([G|Gs]) :- interp_g(G),interp(Gs).
interp_g(tnot(G)) :- tnot(interp_g(G)).
interp_g(G) :- rule(G,B),interp(B).

%-------------------------------------------------------------------------------

test :- new_program, query(Goal), interp_g(Goal), fail.
test :- writeln('Program interp1 finished execution...').

%-------------------------------------------------------------------------------

new_program :- cleanup, assert(query(p)),
	assert(rule(p, [tnot(q),p])),
	assert(rule(q, [tnot(q),p])),
	assert(rule(q, [tnot(p)])).
new_program :- cleanup, assert(query(q)),
	assert(rule(p, [tnot(q), p])),
	assert(rule(q, [tnot(p), q])),
	assert(rule(p, [tnot(p)])).
new_program :- cleanup, assert(query(p)),
	assert(rule(p, [tnot(q), p])),
	assert(rule(q, [tnot(p), q])),
	assert(rule(q, [tnot(p)])).

cleanup :- retractall(query(_)), retractall(rule(_,_)), abolish_all_tables.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh interp1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
