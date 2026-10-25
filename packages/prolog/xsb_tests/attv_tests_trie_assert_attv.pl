:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      trie_assert_attv.P
** Author(s): Baoqiu Cui
**
** $Id: trie_assert_attv.P,v 1.2 2004-11-17 21:43:37 tswift Exp $
*/

:- import put_attr/3, get_attr/3 from machine.

:- index(p/2, trie).

test :-
	put_attr(X, ta, v(1)),
	assert(p(X,X)),
	fail.
test :-
	p(X,Y),
	get_attr(X, ta, VX),
	nonvar(VX), VX = v(1), writeln(VX),
	% update the attribute of X (== Y)
	put_attr(X, ta, v(11)),
	get_attr(Y, ta,  VY),
	nonvar(VY), VY = v(11), writeln(VY),
	writeln('Passed trie_assert_attv!').

% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh runs gentest.sh trie_assert_attv "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
