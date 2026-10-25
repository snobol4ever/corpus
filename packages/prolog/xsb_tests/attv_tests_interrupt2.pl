:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      interrupt2.P
** Author(s): Baoqiu Cui
**
** Test attributed variable interrupt triggered during the execution of
** verify_attributes/2.
** 
** $Id: interrupt2.P,v 1.1 1999-11-02 02:48:57 cbaoqiu Exp $
*/

:- import put_attributes/2, get_attributes/3 from machine.
:- import attv_unify/2 from machine.

test :-
	put_attributes(X, v(a)),
	put_attributes(Y, v(b)),
	p(X,Y),
	write('X = '), writeln(X),
	write('Y = '), writeln(Y).
	
verify_attributes(Var, Value) :-
	get_attributes(Var, Atts, _),
	writeln('In verify_attributes/2:'),
	write('   Var''s attribute = '), writeln(Atts),
	write('   Value = '), writeln(Value),
	(Atts = v(c)
	 ->	attv_unify(Var, Value)	% interrupt caused by the call of t/1
	 ;	put_attributes(X, v(c)),
		t(X),			% trigger another attv interrupt
		attv_unify(Var, X)
	).

% t/1 is called within verify_attributes/2.
t(X) :- X = 7.
	
p(X,Y) :- X = 5, Y = 6.


% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh (commented out there) runs gentest.sh interrupt2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
