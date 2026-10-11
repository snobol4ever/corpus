%------------------------------------------------------------------------
% Program that gives wrong results because it requires answer completion.
%
% Model T = {p}, F = {q,r}, U = {}.
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
		; writeln('i(p) is true (OK)') )
	; writeln('i(p) is false') ),
        ( interp_g(q) ->
		( tnot(interp_g(q)) -> writeln('i(q) is undefined')
		; writeln('i(q) is true') )
	; writeln('i(q) is false (OK)') ),
	( interp_g(r) ->
		( tnot(interp_g(r)) -> writeln('i(r) is undefined')
		; writeln('i(r) is true') )
	; writeln('i(r) is false (OK)') ), fail.
test :- writeln('Program interp13 finished execution...').

%-------------------------------------------------------------------------------

new_program :- cleanup, assert(query(r)),
	assert(rule(p,[tnot(q)])),
	assert(rule(r,[tnot(p)])),
	assert(rule(r,[r])),
	assert(rule(q,[tnot(r),q])).

cleanup :- retractall(query(_)), retractall(rule(_,_)), abolish_all_tables.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh interp13 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
