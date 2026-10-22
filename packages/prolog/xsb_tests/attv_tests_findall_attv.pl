:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      findall_attv.P
** Author(s): Baoqiu Cui
**
** $Id: findall_attv.P,v 1.2 2004-11-17 21:43:37 tswift Exp $
*/

:- import put_attr/3, get_attr/3 from machine.
:- import numbervars/3 from num_vars.

test :-
	findall(f(X,X), p(X), L),
	L = [f(X11,X12), f(X21,X22)],
	get_attr(X11, fnd, V11),
	nonvar(V11), numbervars(V11, 0, _), write('V11 = '), writeq(V11), nl,
	get_attr(X21, fnd, V21),
	nonvar(V21), numbervars(V21, 0, _), write('V21 = '), writeq(V21), nl,

	% Now update the attribute of X11 and X21, the attributes of
	% X12 and X22 should also be changed.
	put_attr(X11, fnd, v(1,2,3)),
	put_attr(X21, fnd, v(4,5,6)),
	writeln('-- after update --'),
	get_attr(X12, fnd, V12),
	nonvar(V12), numbervars(V12, 0, _), write('V12 = '), writeq(V12), nl,
	get_attr(X22, fnd, V22),
	nonvar(V22), numbervars(V22, 0, _), write('V22 = '), writeq(V22), nl.
	
p(X) :- put_attr(X, fnd, v(1,A,A)).
p(X) :- put_attr(X, fnd, v(2,A,A)).

% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh runs gentest.sh findall_attv "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
