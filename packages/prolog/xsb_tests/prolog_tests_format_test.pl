:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import format/2 from format.

test:- 
	test1,fail ; true.

test1:- 
	format("~d Hello ~q!~c",[1,'World',10]).
test1:- 
	format("~d Hello ~~world!~n",[2]).
test1:- 
	format("~d Hello~4cworld!~n",[3,0'x]).
test1:- 
	format("~d Hello~*cworld!~n",[4,4,0'x]).
test1:- 
	format("~d Hello ~a!~n",[5,world]).
test1:- 
	format("~d Hello ~4s ~4s!~n",[6,"new","world"]).
test1:- 
	format("~d Hello ~k world!~n",[7,a+b+c]).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh format_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
