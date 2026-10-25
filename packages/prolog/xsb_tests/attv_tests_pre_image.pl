:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      pre_image.P
** Author(s): Baoqiu Cui
**
** $Id: pre_image.P,v 1.1 1999-11-04 23:04:29 cbaoqiu Exp $
*/

:- import put_attributes/2, get_attributes/3 from machine.
:- import attv_unify/2 from machine.

test :-
	put_attributes(X, v(a)),
	put_attributes(Y, v(b)),
	p(X,Y),
	write('X-Y = '), writeln(X-Y),
	fail.

test :- writeln('-------------------------').
	
verify_attributes(Var, Value) :-
	attv_unify(Var, Value).

p(X,Y) :-
	X = 5,
	(q(Y); r(Y)).

q(6).
r(7).

% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh (commented out there) runs gentest.sh pre_image "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
