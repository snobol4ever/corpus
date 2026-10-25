:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      trie_assert_attv2.P
** Author(s): Baoqiu Cui
**
** $Id: trie_assert_attv2.P,v 1.3 1999-11-14 18:34:34 cbaoqiu Exp $
*/

:- import put_attributes/2, get_attributes/3, attv_unify/2 from machine.

:- index(p/2, trie).
:- index(q/2, trie).

test :- test1,
	test2.

verify_attributes(Var, Value) :-
	% write('  -- verify: '), writeln(Var-Value),
	attv_unify(Var, Value).

test1 :-
	put_attributes(X, v(1)),
	assert(p(X,X)),
	fail.
test1 :-
	p(5, Y),
	call(true),
	Y == 5,
	writeln('== test1 is OK').

%-----------------------------------------------------------------------
test2 :-
	assert(q(5, 'string')),
	fail.
test2 :-
	put_attributes(X, v(1)),
	put_attributes(Y, v(2)),
	q(X, Y),
	call(true),
	X == 5,
	Y == 'string',
	writeln('== test2 is OK').

% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh (commented out there) runs gentest.sh trie_assert_attv2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
