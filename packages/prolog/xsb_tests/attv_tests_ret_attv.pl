:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
/* File:      ret_attv.P
** Author(s): Baoqiu Cui
** 
** $Id: ret_attv.P,v 1.6 2011-10-16 19:26:50 tswift Exp $
*/

:- import put_attr/3, get_attr/3 from machine.

/* uses get_calls, so abstraction changes results (as expected) */
:- set_prolog_flag(max_table_subgoal_size,20).

test :-
	test_get_calls,
	writeln('Passed ret_attv!').

% In this test, no attv interrupt is triggered.
% --------------------------------------------

%verify_attr(Var, Value) :-
%	write('  -- verify: '), writeln(Var-Value),
%	attv_unify(Var, Value).

:- table p/2.

p(X,Y) :-
	get_attr(Y, ret, VY),
	VY == v(1),
	X = 123,
	put_attr(Y, ret, v(2)).

test_get_calls :-
	put_attr(Y, ret, v(1)),
	p(_X, Y),
	fail.
test_get_calls :-
	get_calls(p(_X, _Y), Cs, Ret),
%	writeln(Ret),
	Ret = ret(_A, B),
	get_attr(B, ret, VB),
	writeln(VB),
	VB == v(1),
	get_returns(Cs, Ret),
%	 writeln(Ret),
	Ret = ret(A2, B2),
	A2 = 123,
	get_attr(B2, ret, VB2),
	writeln(VB2),
	VB2 == v(2).

% DRIVER (appended by the vendoring, CEO-700): XSB attv_tests/test.sh runs gentest.sh ret_attv "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
