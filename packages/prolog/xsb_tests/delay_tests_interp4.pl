:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that according to David causes a bus error.
%
% Model T = {}, F = {p,q,r,s}, U = {}.
%------------------------------------------------------------------------

:- dynamic rule/2.

:- table interp_g/1.

interp([]).
interp([tnot(G)|Gs]) :- tnot(interp_g(G)),interp(Gs).
interp([G|Gs]) :- interp_g(G),interp(Gs).

interp_g(G) :- rule(G,B),interp(B).

%-------------------------------------------------------------------------------

test :- new_program, query(Goal), interp_g(Goal), fail.
test :- ( interp_g(p) ->
		( tnot(interp_g(p)) -> writeln('i(p) is undefined')
		; writeln('i(p) is true') )
	; writeln('i(p) is false (OK)') ),
        ( interp_g(q) ->
		( tnot(interp_g(q)) -> writeln('i(q) is undefined')
		; writeln('i(q) is true') )
	; writeln('i(q) is false (OK)') ),
	( interp_g(r) ->
		( tnot(interp_g(r)) -> writeln('i(r) is undefined')
		; writeln('i(r) is true') )
	; writeln('i(r) is false (OK)') ),
	( interp_g(s) ->
		( tnot(interp_g(s)) -> writeln('i(r) is undefined')
		; writeln('i(s) is true') )
	; writeln('i(s) is false (OK)') ), fail.
test :- writeln('Program interp4 finished execution...').

%-------------------------------------------------------------------------------

new_program :- cleanup, assert(query(p)),
	assert(rule(p,[tnot(q),r])),
	assert(rule(s,[tnot(p),tnot(s),q])),
	assert(rule(r,[tnot(q),p])),
	assert(rule(p,[tnot(q),tnot(r),p])).

cleanup :- retractall(query(_)), retractall(rule(_,_)), abolish_all_tables.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh interp4 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
